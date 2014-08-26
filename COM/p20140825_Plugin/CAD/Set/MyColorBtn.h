#if !defined(AFX_MYCOLORBTN_H__B2917B3B_7882_4B0F_9088_277214A6AFF2__INCLUDED_)
#define AFX_MYCOLORBTN_H__B2917B3B_7882_4B0F_9088_277214A6AFF2__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MyColorBtn.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CMyColorBtn window

class CMyColorBtn : public CButton
{
// Construction
public:
    CMyColorBtn();
    void DrawButton(LPDRAWITEMSTRUCT lpDrawItemStruct);
// Attributes
public:
  COLORREF m_BgColor;   //±³¾°É«
  COLORREF m_FontColor; //×ÖÌåÑÕÉ«  //not used here
// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMyColorBtn)
	public:
	virtual void DrawItem(LPDRAWITEMSTRUCT lpDrawItemStruct);
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CMyColorBtn();

	// Generated message map functions
protected:
	//{{AFX_MSG(CMyColorBtn)
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MYCOLORBTN_H__B2917B3B_7882_4B0F_9088_277214A6AFF2__INCLUDED_)
