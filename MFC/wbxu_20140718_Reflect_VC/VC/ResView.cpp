// ResView.cpp : implementation file
//

#include "stdafx.h"
#include "VC.h"
#include "ResView.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CResView dialog


CResView::CResView(CWnd* pParent /*=NULL*/)
	: CDialog(CResView::IDD, pParent)
{
	//{{AFX_DATA_INIT(CResView)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CResView::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CResView)
	DDX_Control(pDX, IDC_RESTREE, m_ResTreeCtrl);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CResView, CDialog)
	//{{AFX_MSG_MAP(CResView)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CResView message handlers

BOOL CResView::OnInitDialog() 
{
    CDialog::OnInitDialog();
    
    // TODO: Add extra initialization here
    if (m_ImgList != NULL)    //这样避免图片的重复加载
    {
        return FALSE;
    }
    
    //设置TreeView Style
    LONG lOld = GetWindowLong(GetSafeHwnd(), GWL_STYLE);
    SetWindowLong(GetSafeHwnd(), 
        GWL_STYLE, 
        lOld | TVS_HASBUTTONS | TVS_HASLINES | TVS_LINESATROOT
        );
    
    //加载图片列表
    m_ImgList.Create(16, 16, ILC_COLOR32 | ILC_MASK, 0, 2);
    m_ImgList.Add(LoadIcon(AfxGetInstanceHandle(), 
        MAKEINTRESOURCE(IDI_CLSVIEWFOLDER)));
    m_ImgList.Add(LoadIcon(AfxGetInstanceHandle(), 
        MAKEINTRESOURCE(IDI_FOLDEROPEN)));
    
    //设置图片列表
    CTreeCtrl *pCtrl = (CTreeCtrl *)GetDlgItem(IDC_RESTREE);
    pCtrl->SetImageList(&m_ImgList, TVSIL_NORMAL );
    
    //添加item
    HTREEITEM hParent = pCtrl->InsertItem("Reflect resources", 0, 1);
        pCtrl->InsertItem("Dialog", 0, 1, hParent);
        pCtrl->InsertItem("Icon", 0, 1, hParent);
    
    hParent   = pCtrl->InsertItem("VC resouces", 0, 1);
        pCtrl->InsertItem("Accelerator", 0, 1, hParent);
        pCtrl->InsertItem("Bitmap", 0, 1, hParent);

	
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}
