#ifndef MYSYNFUNC_H_4E7641CA_C1C6_431c_B8E6_C071729D553C

#define MYSYNFUNC_H_4E7641CA_C1C6_431c_B8E6_C071729D553C

#include <windows.h>

class CMySynObject
{
public:
    CMySynObject();
    virtual ~CMySynObject();

protected:
    HANDLE m_hObject;

    //error
    DWORD m_ErrCode;

};

//////////////////////////////////////////////////////////////////////////
/*
HANDLE CreateEvent(
                LPSECURITY_ATTRIBUTES lpEventAttributes, // SD
                BOOL bManualReset,                       // reset type
                BOOL bInitialState,                      // initial state
                LPCTSTR lpName                           // object name
                );

HANDLE OpenEvent(
                DWORD dwDesiredAccess,  // access
                BOOL bInheritHandle,    // inheritance option
                LPCTSTR lpName          // object name
                );

BOOL ResetEvent(
                HANDLE hEvent   // handle to event
                );

BOOL SetEvent(
                HANDLE hEvent   // handle to event
                );

BOOL PulseEvent(
        HANDLE hEvent   // handle to event object
        );


*/

class CMyEvent : public CMySynObject
{
public:
    CMyEvent(BOOL bManualReset = TRUE, 
             BOOL bInitalState = TRUE,
             LPCTSTR lpName = NULL, 
             LPSECURITY_ATTRIBUTES lpEventAttributes = NULL);

public:
    BOOL Reset();
    BOOL Set();
    BOOL Pulse();

};

//////////////////////////////////////////////////////////////////////////
/*
HANDLE CreateMutex(
                LPSECURITY_ATTRIBUTES lpMutexAttributes,  // SD
                BOOL bInitialOwner,                       // initial owner
                LPCTSTR lpName                            // object name
                );

*/

class CMyMutex : public CMySynObject
{
public:
    CMyMutex(BOOL bInitialOwner = FALSE,
             LPCTSTR lpName = NULL,
             LPSECURITY_ATTRIBUTES lpMutexAttributes = NULL);

public:
    BOOL Release();

};

//////////////////////////////////////////////////////////////////////////
/*
HANDLE CreateSemaphore(
                    LPSECURITY_ATTRIBUTES lpSemaphoreAttributes, // SD
                    LONG lInitialCount,                          // initial count
                    LONG lMaximumCount,                          // maximum count
                    LPCTSTR lpName                               // object name
                    );

BOOL ReleaseSemaphore(
                    HANDLE hSemaphore,       // handle to semaphore
                    LONG lReleaseCount,      // count increment amount
                    LPLONG lpPreviousCount   // previous count
                    );

*/
class CMySemaphore : public CMySynObject
{
public:
    CMySemaphore(LONG lInitialCount,
                 LONG lMaximumCount,
                 LPCTSTR lpName = NULL,
                 LPSECURITY_ATTRIBUTES lpSemaphoreAttributes = NULL);

public:
    BOOL Release(LONG lReleaseCount,
                 LPLONG lpPreviousCount
                 );
};

//////////////////////////////////////////////////////////////////////////
/*
VOID InitializeCriticalSection(
                            LPCRITICAL_SECTION lpCriticalSection  // critical section
                            );

BOOL InitializeCriticalSectionAndSpinCount(
                                  LPCRITICAL_SECTION lpCriticalSection,  // critical section
                                  DWORD dwSpinCount                      // spin count
                                );

DWORD SetCriticalSectionSpinCount(
                                  LPCRITICAL_SECTION lpCriticalSection, // critical section
                                  DWORD dwSpinCount                     // spin count
                                  );

VOID EnterCriticalSection(
                            LPCRITICAL_SECTION lpCriticalSection  // critical section
                         );

BOOL TryEnterCriticalSection(
                          LPCRITICAL_SECTION lpCriticalSection  // critical section
                          );

VOID LeaveCriticalSection(
                          LPCRITICAL_SECTION lpCriticalSection   // critical section
                          );

*/
class CMyCriticalSection : public CMySynObject
{
public:
    CMyCriticalSection();
    CMyCriticalSection(DWORD dwSpinCount);

public:
    DWORD SetSpinCount(DWORD dwSpinCount);
    BOOL  Enter();
    BOOL  TryEnter();
    VOID  Leave();

protected:
    CRITICAL_SECTION m_CS;
};

#endif