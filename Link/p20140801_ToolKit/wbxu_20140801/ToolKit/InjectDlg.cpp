// InjectDlg.cpp : implementation file
//

#include "stdafx.h"
#include "ToolKit.h"
#include "InjectDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CInjectDlg dialog


CInjectDlg::CInjectDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CInjectDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CInjectDlg)
	m_DllPath = _T("");
	//}}AFX_DATA_INIT
}


void CInjectDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CInjectDlg)
	DDX_Text(pDX, IDC_INJECT_DLL_PATH, m_DllPath);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CInjectDlg, CDialog)
	//{{AFX_MSG_MAP(CInjectDlg)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CInjectDlg message handlers
