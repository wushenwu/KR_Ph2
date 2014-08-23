// RecvWorkItem.h: interface for the CRecvWorkItem class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_RECVWORKITEM_H__7A0DA916_8056_4831_998A_2EA096ED5D2A__INCLUDED_)
#define AFX_RECVWORKITEM_H__7A0DA916_8056_4831_998A_2EA096ED5D2A__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "..\\THREADPOOL\\IWorkItemBase.h"
#include "ServerDlg.h"

class CRecvWorkItem : public IWorkItemBase  
{
public:
	CRecvWorkItem(CServerDlg *pDlg, SOCKET sClient);
	virtual ~CRecvWorkItem();

public:
    virtual void Execute();
    virtual void Abort();

protected:
    CServerDlg *m_pServerDlg;
    SOCKET m_sClient;
};

#endif // !defined(AFX_RECVWORKITEM_H__7A0DA916_8056_4831_998A_2EA096ED5D2A__INCLUDED_)
