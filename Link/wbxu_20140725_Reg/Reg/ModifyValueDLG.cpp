// ModifyValueDLG.cpp : implementation file
//

#include "stdafx.h"
#include "Reg.h"
#include "ModifyValueDLG.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CModifyValueDLG dialog


CModifyValueDLG::CModifyValueDLG(CWnd* pParent /*=NULL*/)
	: CDialog(CModifyValueDLG::IDD, pParent)
{
	//{{AFX_DATA_INIT(CModifyValueDLG)
	m_Value = _T("");
	m_Name = _T("");
	//}}AFX_DATA_INIT
}


void CModifyValueDLG::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CModifyValueDLG)
	DDX_Text(pDX, IDC_EDIT2, m_Value);
	DDX_Text(pDX, IDC_EDIT1, m_Name);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CModifyValueDLG, CDialog)
	//{{AFX_MSG_MAP(CModifyValueDLG)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CModifyValueDLG message handlers
