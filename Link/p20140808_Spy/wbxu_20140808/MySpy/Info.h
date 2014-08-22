// ClassInfo.h: interface for the CInfo class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_CLASSINFO_H__F27F11C2_974D_4907_BC86_FCEFF0B2505B__INCLUDED_)
#define AFX_CLASSINFO_H__F27F11C2_974D_4907_BC86_FCEFF0B2505B__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

class CInfo  
{
public:
	void Get1stChildWnd();
	void GetParentWnd();
    void GetPreWnd();
	void GetNextWnd();
	void GetWndExStyle();
	void GetWndStyle();
	void GetClientRect();
	void GetWndProc();
	void GetInstanceHandle();
	void GetBkgBrush();
	void GetCursorHandle();
	void GetIconHandle();
	void GetMenuName();
	void GetWndBytes();
	void GetWndRect();
    CInfo(HWND hWnd, CString &str);    

	virtual ~CInfo();

	void GetWndHandle();

    void GetWindowText();

    void GetClassName();
    void GetClassStyle();
    void GetClassBytes();
    void GetClassAtom();


public:
	void GetTID();
	void GetPID();
    HWND m_hWnd;
    CString &m_str;
};

#endif // !defined(AFX_CLASSINFO_H__F27F11C2_974D_4907_BC86_FCEFF0B2505B__INCLUDED_)
