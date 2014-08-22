// MyThreadPool.cpp: implementation of the CMyThreadPool class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "MyThreadPool.h"

#include <process.h>    //for _beginthread
#include <assert.h>

static int MAX_WORKS = 1000;   //��󲢷�������

#define MYDEBUG
#ifdef MYDEBUG
    #define DEBUG_ERROR DebugBreak()
#else
    #define DEBUG_ERROR 
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CMyThreadPool::CMyThreadPool()
{
    m_phThreads = NULL;

    //�ٽ����ĳ�ʼ��
    ::InitializeCriticalSection(&m_CS);

    memset(m_hEvents, 0, sizeof(m_hEvents));
}

CMyThreadPool::~CMyThreadPool()
{    
}

BOOL CMyThreadPool::Create(int nThreads, int nTasks, LPVOID pParam)
{
    //pParam not used now
    assert(pParam == NULL);

    //����ͬ������
    BOOL bRet = InitEvent();
    if (!bRet)
    {
        return FALSE;
    }

    MAX_WORKS = nTasks;

    //�����߳�
    bRet = InitThread(nThreads);
    if (!bRet)
    {
        return FALSE;
    }

    return TRUE;
}

void CMyThreadPool::ThreadProc(LPVOID pParam)
{
    CMyThreadPool *pobj = (CMyThreadPool *)pParam;
    assert(pobj != NULL);
    
    IWorkItemBase *pWorkItem = NULL;
    DWORD dwRet;
    
    while (TRUE)
    {
        //�����ź������¼��������ת����, �����ź�������������
        dwRet = ::WaitForMultipleObjects(EVENT_NUM, pobj->m_hEvents, FALSE, INFINITE);
        if (WAIT_OBJECT_0 + 1 == dwRet)
        {
            break;
        }
        else if (WAIT_FAILED == dwRet)
        {
            DEBUG_ERROR;
        }
        
        pWorkItem = pobj->RemoveWork();
        if (NULL == pWorkItem)
        {
            continue;
        }
        
        pWorkItem->Execute();
        delete pWorkItem;   //��Ҫ����ɾ��
    }
}

void CMyThreadPool::Destroy()
{
    //signal ABORT_EVENT, ��ֹ�����̵߳���ת
    BOOL bRet = SetEvent(m_hEvents[ABORT_EVENT]);
    if (!bRet)
    {
        DEBUG_ERROR;
        printf("Destroy Set ABORT_EVENT ERROR\r\n");
    }

    //�ȴ����������߳̽���
    DWORD dwRet = ::WaitForMultipleObjects(m_nThreads, m_phThreads, TRUE, INFINITE);
//     if (WAIT_FAILED == dwRet)
//     {
//         DEBUG_ERROR;
//         printf("Destroy WaitForMultipleObjects ERROR: %x\r\n", dwRet);
//     }

    //�̵߳�����
    if (m_phThreads != NULL)
    {
        delete[] m_phThreads;
        m_phThreads = NULL;
    }

    //ȡ����������δ���������
    IWorkItemBase *pWorkItem;
    size_t nCount = m_Queue.size();
    for (size_t i = 0; i < nCount; i++ )
    {
        pWorkItem = RemoveWork();
        if (NULL == pWorkItem)
        {
            continue;
        }

        pWorkItem->Abort();
        delete pWorkItem;   //��Ҫ��������
    }

    //ͬ�����������
    UnInitEvent();
    DeleteCriticalSection(&m_CS);
}

void CMyThreadPool::AddWork(IWorkItemBase *pWorkItem)
{
    //����ͬ��
    ::EnterCriticalSection(&m_CS);
    
    m_Queue.push(pWorkItem);

    BOOL bRet = ReleaseSemaphore(m_hEvents[WORK_EVENT], 1, NULL);
    if (!bRet)
    {
        //MAX_WORKS �����С����ᵼ��0x0000012a: �����ź������������
        //���ԣ�MAX_WORKS �����˲��������
        DEBUG_ERROR;
        printf("AddWork ReleaseSemaphore Error\r\n");
    }

    ::LeaveCriticalSection(&m_CS);
}

IWorkItemBase *CMyThreadPool::RemoveWork()
{
    //����ͬ��
    ::EnterCriticalSection(&m_CS);

    IWorkItemBase *pWorkItem = NULL;

    if (m_Queue.empty())
    {
        goto SAFE_EXIT;
    }
    
    pWorkItem = m_Queue.front();
    m_Queue.pop();
    
SAFE_EXIT:
    ::LeaveCriticalSection(&m_CS);
    
    return pWorkItem;
}


BOOL CMyThreadPool::InitThread(int nThreads)
{
    m_phThreads = new HANDLE[nThreads];
    if (NULL == m_phThreads)
    {
        return FALSE;
    }
    
    unsigned long hThread = -1;
    for (int i = 0; i < nThreads; i++)
    {
        hThread = _beginthread(ThreadProc, 0, this);
        if (-1 == hThread)
        {
            //no need to CloseHandle
            delete[] m_phThreads;
            m_phThreads = NULL;
            return FALSE;            
        }
        
        m_phThreads[i] = (HANDLE)hThread;
    }

    m_nThreads = nThreads;

    return TRUE;
}

BOOL CMyThreadPool::InitEvent()
{
    /*  
    ����ͬ������
    1) �ź����������� WORK_EVENT
    2) ��ֹ�źţ�����Destory
    */
    m_hEvents[WORK_EVENT] = ::CreateSemaphore(NULL, 0, MAX_WORKS, NULL);
    if (NULL == m_hEvents[WORK_EVENT])
    {
        return FALSE;
    }

    m_hEvents[ABORT_EVENT] = ::CreateEvent(NULL, TRUE, FALSE, NULL);
    if (NULL == m_hEvents[ABORT_EVENT])
    {
        CloseHandle(m_hEvents[WORK_EVENT]);
        return FALSE;
    }

    return TRUE;
}

void CMyThreadPool::UnInitEvent()
{
    if (m_hEvents[WORK_EVENT] != NULL)
    {
        CloseHandle(m_hEvents[WORK_EVENT]);
    }

    if (m_hEvents[ABORT_EVENT] != NULL)
    {
        CloseHandle(m_hEvents[ABORT_EVENT]);
    }

    //��NULL
    memset(m_hEvents, 0, sizeof(m_hEvents));
}
