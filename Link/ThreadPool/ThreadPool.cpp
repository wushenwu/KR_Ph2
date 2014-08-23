// ThreadPool.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"

#include "MyThreadPool.h"

class CMyWorkItem : public IWorkItemBase
{
public:
    CMyWorkItem(int nIndex)
    {
        m_nIndex = nIndex;
    }

public:
    virtual void Execute()
    {
        printf("%d , %d\r\n", GetCurrentThreadId(), m_nIndex);
    }

    virtual void Abort()
    {
        //
    }

protected:
    int m_nIndex;
};


int main(int argc, char* argv[])
{
	CMyThreadPool thePool;
    
    BOOL bRet = thePool.Create(50);
    if (!bRet)
    {
        return -1;
    }

    //ÃÌº”»ŒŒÒ
    for (int i = 0; i < 1000; i++)
    {
        CMyWorkItem *pWork = new CMyWorkItem(i);
        thePool.AddWork(pWork);
    }

    getchar();

    thePool.Destroy();

	return 0;
}

