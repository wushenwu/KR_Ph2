// FileMgrDlg.h : header file
//

#if !defined(AFX_FILEMGRDLG_H__D41489F8_0992_4D4E_9852_3666B24D2486__INCLUDED_)
#define AFX_FILEMGRDLG_H__D41489F8_0992_4D4E_9852_3666B24D2486__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CFileMgrDlg dialog

class CFileMgrDlg : public CDialog
{
// Construction
public:
	CFileMgrDlg(CWnd* pParent = NULL);	// standard constructor

public:
    virtual ~CFileMgrDlg();

// Dialog Data
	//{{AFX_DATA(CFileMgrDlg)
	enum { IDD = IDD_FILEMGR_DIALOG };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CFileMgrDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

    //
    CFileDialog *m_pDlgFile;
    

    BOOL  m_IsFileBufChanged;

	// Generated message map functions
	//{{AFX_MSG(CFileMgrDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnFileSelect();
	afx_msg void OnFileSave();
	afx_msg void OnFileBufferChange();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FILEMGRDLG_H__D41489F8_0992_4D4E_9852_3666B24D2486__INCLUDED_)
