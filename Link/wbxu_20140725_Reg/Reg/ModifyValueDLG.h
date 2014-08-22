#if !defined(AFX_MODIFYVALUEDLG_H__325AC149_4D14_4628_8EB7_3583BC1B20E0__INCLUDED_)
#define AFX_MODIFYVALUEDLG_H__325AC149_4D14_4628_8EB7_3583BC1B20E0__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ModifyValueDLG.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CModifyValueDLG dialog

class CModifyValueDLG : public CDialog
{
// Construction
public:
	CModifyValueDLG(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CModifyValueDLG)
	enum { IDD = IDD_DLG_MODIFYVALUE };
	CString	m_Value;
	CString	m_Name;
	//}}AFX_DATA

public:
    CString GetValue()
    {
        return m_Value;
    }

    void SetValue(CString &str)
    {
        m_Value = str;
    }

    void SetName(CString &str)
    {
        m_Name = str;
    }


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CModifyValueDLG)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CModifyValueDLG)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MODIFYVALUEDLG_H__325AC149_4D14_4628_8EB7_3583BC1B20E0__INCLUDED_)
