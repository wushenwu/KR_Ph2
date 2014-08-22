// ClassView.cpp : implementation file
//

#include "stdafx.h"
#include "VC.h"
#include "ClassView.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CClassView dialog


CClassView::CClassView(CWnd* pParent /*=NULL*/)
	: CDialog(CClassView::IDD, pParent)
{
	//{{AFX_DATA_INIT(CClassView)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CClassView::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CClassView)
	DDX_Control(pDX, IDC_CLASSTREE, m_ClsTreeCtrl);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CClassView, CDialog)
	//{{AFX_MSG_MAP(CClassView)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CClassView message handlers

BOOL CClassView::OnInitDialog() 
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
    m_ImgList.Create(16, 16, ILC_COLOR32 | ILC_MASK, 0, 3);
    m_ImgList.Add(LoadIcon(AfxGetInstanceHandle(), 
        MAKEINTRESOURCE(IDI_CLSVIEWCLASSES)));
    m_ImgList.Add(LoadIcon(AfxGetInstanceHandle(), 
        MAKEINTRESOURCE(IDI_CLSVIEWFOLDER)));
    m_ImgList.Add(LoadIcon(AfxGetInstanceHandle(), 
        MAKEINTRESOURCE(IDI_CLASSVIEW)));
    
    //设置图片列表
    CTreeCtrl *pCtrl = (CTreeCtrl *)GetDlgItem(IDC_CLASSTREE);
    pCtrl->SetImageList(&m_ImgList, TVSIL_NORMAL);
    
    //添加item
    HTREEITEM hParent = pCtrl->InsertItem("Reflect classes", 0, 0);
            pCtrl->InsertItem("CAboutDlg", 2, 2, hParent);
            pCtrl->InsertItem("CMyBTN", 2, 2, hParent);

    hParent   = pCtrl->InsertItem("VC classes", 0, 0);
        HTREEITEM hSub = pCtrl->InsertItem("CompileBar", 1, 1, hParent);
            pCtrl->InsertItem("CCompileBar", 2, 2, hSub);
        pCtrl->InsertItem("WorkSpaceBar", 1, 1, hParent);
	
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}
