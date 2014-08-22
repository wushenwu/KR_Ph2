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
    virtual BOOL Create(int nThreads = 10,  //开启的线程数量
                        int nTasks = 1000,  //最大并发任务量
                        LPVOID pParam = NULL);  //暂没用
    virtual void Destroy();

    virtual void AddWork(IWorkItemBase *pWorkItem); //用户向任务队列中添加任务

    enum {WORK_EVENT, ABORT_EVENT, EVENT_NUM};

private:
	void UnInitEvent();
	BOOL InitEvent();
    static void ThreadProc(LPVOID pParam);
	BOOL InitThread(int nThreads);
    IWorkItemBase *RemoveWork();    //从任务队列中删除一个任务，进行操作

protected:
    int m_nThreads;
    HANDLE *m_phThreads;    //线程
    
    QueueWorkItem m_Queue;  //任务队列

    //同步操作
    CRITICAL_SECTION m_CS;  
    HANDLE m_hEvents[EVENT_NUM];
};

#endif // !defined(AFX_MYTHREADPOOL_H__7EE5F64F_E84C_4F66_B4BB_83E412A9C0FC__INCLUDED_)
