#include <assert.h>

#include "MySynFunc.h"

//////////////////////////////////////////////////////////////////////////

CMySynObject::CMySynObject()
{
    m_hObject = NULL;
}

CMySynObject::~CMySynObject()
{
    if (m_hObject != NULL)
    {
        ::CloseHandle(m_hObject);
        m_hObject = NULL;
    }
}

//////////////////////////////////////////////////////////////////////////
CMyEvent::CMyEvent(BOOL bManualReset, 
                   BOOL bInitalState,
                   LPCTSTR lpName,
                   LPSECURITY_ATTRIBUTES lpEventAttributes)
                    
{
    m_hObject = ::CreateEvent(lpEventAttributes,
                            bManualReset,
                            bInitalState,
                            lpName);

    /*If the function succeeds, the return value is a handle to the event object. If the named event object existed before the function call, the function returns a handle to the existing object and GetLastError returns ERROR_ALREADY_EXISTS. 
    
    If the function fails, the return value is NULL. To get extended error information, call GetLastError
    */

}

BOOL CMyEvent::Set()
{
    assert(m_hObject != NULL);

    return ::SetEvent(m_hObject);
}

BOOL CMyEvent::Reset()
{
    assert(m_hObject != NULL);

    return ::ResetEvent(m_hObject);
}

BOOL CMyEvent::Pulse()
{
    assert(m_hObject != NULL);

    return ::PulseEvent(m_hObject);
}

//////////////////////////////////////////////////////////////////////////
CMyMutex::CMyMutex(BOOL bInitialOwner,
                    LPCTSTR lpName,
                    LPSECURITY_ATTRIBUTES lpMutexAttributes)
{
    m_hObject = ::CreateMutex(lpMutexAttributes,
                              bInitialOwner,
                              lpName);
}       

CMyMutex::Release()                        
{
    assert(m_hObject != NULL);

    return ::ReleaseMutex(m_hObject);
}

//////////////////////////////////////////////////////////////////////////
CMySemaphore::CMySemaphore(LONG lInitialCount,
                           LONG lMaximumCount,
                           LPCTSTR lpName,
                           LPSECURITY_ATTRIBUTES lpSemaphoreAttributes)
{
    m_hObject = ::CreateSemaphore(lpSemaphoreAttributes,
                                  lInitialCount,
                                  lMaximumCount,
                                  lpName);

}

BOOL CMySemaphore::Release(LONG lReleaseCount, LPLONG lpPreviousCount)
{
    assert(m_hObject != NULL);

    return ::ReleaseSemaphore(m_hObject,
                      lReleaseCount,
                      lpPreviousCount);
}

//////////////////////////////////////////////////////////////////////////
CMyCriticalSection::CMyCriticalSection()
{
    ::InitializeCriticalSection(&m_CS);
}

CMyCriticalSection::CMyCriticalSection(DWORD dwSpinCount)
{
    //::InitializeCriticalSectionAndSpinCount(&m_CS, dwSpinCount);
}

DWORD CMyCriticalSection::SetSpinCount(DWORD dwSpinCount)
{
    return 0; //::SetCriticalSectionSpinCount(&m_CS, dwSpinCount);
}

BOOL CMyCriticalSection::Enter()
{
    return TRUE; //::EnterCriticalSection(&m_CS);
}

BOOL CMyCriticalSection::TryEnter()
{
    return TRUE; //::TryEnterCriticalSection(&m_CS);
}

VOID CMyCriticalSection::Leave()
{
    ::LeaveCriticalSection(&m_CS);
}


