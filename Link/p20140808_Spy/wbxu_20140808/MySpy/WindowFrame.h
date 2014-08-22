#if !defined(AFX_WINDOWFRAME_H__9F0BE2B0_6E8A_4381_9ADA_85835F57CABC__INCLUDED_)
#define AFX_WINDOWFRAME_H__9F0BE2B0_6E8A_4381_9ADA_85835F57CABC__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// WindowFrame.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CWindowFrame frame

class CWindowFrame : public CMDIChildWnd
{
	DECLARE_DYNCREATE(CWindowFrame)
protected:
	CWindowFrame();           // protected constructor used by dynamic creation

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CWindowFrame)
	//}}AFX_VIRTUAL

// Implementation
protected:
	virtual ~CWindowFrame();

	// Generated message map functions
	//{{AFX_MSG(CWindowFrame)
		// NOTE - the ClassWizard will add and remove member functions here.
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_WINDOWFRAME_H__9F0BE2B0_6E8A_4381_9ADA_85835F57CABC__INCLUDED_)
