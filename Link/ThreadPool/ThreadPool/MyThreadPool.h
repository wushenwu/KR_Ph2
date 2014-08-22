// MyThreadPool.h: interface for the CMyThreadPool class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MYTHREADPOOL_H__7EE5F64F_E84C_4F66_B4BB_83E412A9C0FC__INCLUDED_)
#define AFX_MYTHREADPOOL_H__7EE5F64F_E84C_4F66_B4BB_83E412A9C0FC__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include <windows.h>
#include <queue>

#include "IWorkItemBase.h"

typedef std::queue<IWorkItemBase *> QueueWorkItem;

class CMyThreadPool  
{
public:
	CMyThreadPool();
	virtual ~CMyThreadPool();

public:
    virtual BOOL Create(int nThreads = 10,  //�������߳�����
                        int nTasks = 1000,  //��󲢷�������
                        LPVOID pParam = NULL);  //��û��
    virtual void Destroy();

    virtual void AddWork(IWorkItemBase *pWorkItem); //�û�������������������

    enum {WORK_EVENT, ABORT_EVENT, EVENT_NUM};

private:
	void UnInitEvent();
	BOOL InitEvent();
    static void ThreadProc(LPVOID pParam);
	BOOL InitThread(int nThreads);
    IWorkItemBase *RemoveWork();    //�����������ɾ��һ�����񣬽��в���

protected:
    int m_nThreads;
    HANDLE *m_phThreads;    //�߳�
    
    QueueWorkItem m_Queue;  //�������

    //ͬ������
    CRITICAL_SECTION m_CS;  
    HANDLE m_hEvents[EVENT_NUM];
};

#endif // !defined(AFX_MYTHREADPOOL_H__7EE5F64F_E84C_4F66_B4BB_83E412A9C0FC__INCLUDED_)
