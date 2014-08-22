#if !defined(AFX_MYSTATIC_H__14B9B0C8_9F68_4DBD_B180_EE6991CA7121__INCLUDED_)
#define AFX_MYSTATIC_H__14B9B0C8_9F68_4DBD_B180_EE6991CA7121__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MyStatic.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CMyStatic window

class CMyStatic : public CStatic
{
// Construction
public:
	CMyStatic();

// Attributes
public:

protected:
    //���任
    HCURSOR m_hCursor;
    HCURSOR m_hOldCursor;

    //�Ƿ��ڲ���״̬
    BOOL m_IsFinding;

    //���ҵ��Ĵ���
    CWnd *m_pWnd;

    //static�ĸ����ڣ��������Ϊ�ɸ������Լ��趨
    CWnd *m_pParentWnd;

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMyStatic)
	//}}AFX_VIRTUAL

// Implementation
public:
	void SetParentWnd(CWnd *pParentWnd);
	void DrawBorder();
	virtual ~CMyStatic();

	// Generated message map functions
protected:
	//{{AFX_MSG(CMyStatic)
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
	afx_msg void OnMouseMove(UINT nFlags, CPoint point);
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MYSTATIC_H__14B9B0C8_9F68_4DBD_B180_EE6991CA7121__INCLUDED_)
