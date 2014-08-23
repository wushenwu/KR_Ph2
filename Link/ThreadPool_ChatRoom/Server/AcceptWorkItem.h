// AcceptWorkItem.h: interface for the CAcceptWorkItem class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_ACCEPTWORKITEM_H__BF2E75F4_80B0_4F73_A395_6E023A1EE8FE__INCLUDED_)
#define AFX_ACCEPTWORKITEM_H__BF2E75F4_80B0_4F73_A395_6E023A1EE8FE__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "..\\THREADPOOL\\IWorkItemBase.h"
#include "ServerDlg.h"

class CAcceptWorkItem : public IWorkItemBase  
{
public:
	CAcceptWorkItem(CServerDlg *pDlg);
	virtual ~CAcceptWorkItem();

public:
    virtual void Execute();
    virtual void Abort();

protected:
    CServerDlg *m_ServerDlg;

};

#endif // !defined(AFX_ACCEPTWORKITEM_H__BF2E75F4_80B0_4F73_A395_6E023A1EE8FE__INCLUDED_)
