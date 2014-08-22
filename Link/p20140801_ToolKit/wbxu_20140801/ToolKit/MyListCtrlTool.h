// MyListCtrlTool.h: interface for the CMyListCtrlTool class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MYLISTCTRLTOOL_H__3179F9EB_4CE7_4928_8F5D_8231F8CC9EFA__INCLUDED_)
#define AFX_MYLISTCTRLTOOL_H__3179F9EB_4CE7_4928_8F5D_8231F8CC9EFA__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

class CMyListCtrlTool  
{
public:
	static void InsertRecord(CListCtrl &ctrl, CString &strRecord);
	static void InsertHeader(CListCtrl &ctrl, CString &strHeader);
	static void InitCtrl(CListCtrl &ctrl, CRect &rect, CWnd* pParentWnd, UINT nID);
	static void AutoSize(CListCtrl &ctrl);
	CMyListCtrlTool();
	virtual ~CMyListCtrlTool();

};

#endif // !defined(AFX_MYLISTCTRLTOOL_H__3179F9EB_4CE7_4928_8F5D_8231F8CC9EFA__INCLUDED_)
