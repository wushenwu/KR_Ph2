// SetDLG.cpp : implementation file
//

#include "stdafx.h"
#include "..\CAD.h"
#include "SetDLG.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CSetDLG dialog


CSetDLG::CSetDLG(CWnd* pParent /*=NULL*/)
	: CDialog(CSetDLG::IDD, pParent)
{
	//{{AFX_DATA_INIT(CSetDLG)
	m_nPenStyle = -1;
	m_nBrushStyle = -1;
	m_nPenWidth = 0;
	//}}AFX_DATA_INIT
}


void CSetDLG::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CSetDLG)
	DDX_Control(pDX, IDC_BUTTON2_BRUSHCOLOR, m_BrushColor);
	DDX_Control(pDX, IDC_BUTTON1_PENCOLOR, m_PenColor);
	DDX_Radio(pDX, IDC_RADIO1_PENSTYLE_SOLID, m_nPenStyle);
	DDX_Radio(pDX, IDC_RADIO6_BRUSHSTYLE_NULL, m_nBrushStyle);
	DDX_Text(pDX, IDC_EDIT1_PENWIDTH, m_nPenWidth);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CSetDLG, CDialog)
	//{{AFX_MSG_MAP(CSetDLG)
	ON_BN_CLICKED(IDC_BUTTON1_PENCOLOR, OnPencolor)
	ON_BN_CLICKED(IDC_BUTTON2_BRUSHCOLOR, OnBrushcolor)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN1, OnDeltaposSpin1)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

//////////////////////////////////////////////////////////////////////////
void CSetDLG::SetPen(tagPen pen)
{
    m_tagPen = pen;
}

void CSetDLG::SetBrush(tagBrush brush)
{
    m_tagBrush = brush;
}

tagPen CSetDLG::GetPen(void)
{
    return m_tagPen;
}

tagBrush CSetDLG::GetBrush(void)
{
    return m_tagBrush;
}

/////////////////////////////////////////////////////////////////////////////
// CSetDLG message handlers

//颜色设置对话框与设置对话框间的通信
void CSetDLG::OnPencolor() 
{
	// TODO: Add your control notification handler code here
    CColorDialog dlg;
    if (IDOK == dlg.DoModal())
    {
        //设置颜色
        m_PenColor.m_BgColor = dlg.GetColor();
        
        //进行重绘
        m_PenColor.InvalidateRect(NULL, TRUE);
        UpdateWindow();
    }	
}

void CSetDLG::OnBrushcolor() 
{
	// TODO: Add your control notification handler code here
    CColorDialog dlg;
    if (IDOK == dlg.DoModal())
    {
        //设置颜色
        m_BrushColor.m_BgColor = dlg.GetColor(); 
        
        //进行重绘
        m_BrushColor.InvalidateRect(NULL, TRUE);
        UpdateWindow();
    }
}

BOOL CSetDLG::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	// TODO: Add extra initialization here

    //对各控件进行相应的初始化操作, 应该根据主窗口(View)的原有设置
    m_nPenStyle = m_tagPen.m_nStyle;
    m_nPenWidth = m_tagPen.m_nWidth;
    m_PenColor.m_BgColor = m_tagPen.m_Color;

    m_nBrushStyle = m_tagBrush.m_IsSolid;
    m_BrushColor.m_BgColor = m_tagBrush.m_Color;

    UpdateData(FALSE);

	
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

void CSetDLG::OnDeltaposSpin1(NMHDR* pNMHDR, LRESULT* pResult) 
{
	NM_UPDOWN* pNMUpDown = (NM_UPDOWN*)pNMHDR;
	// TODO: Add your control notification handler code here
    m_nPenWidth += pNMUpDown->iDelta;
    if (m_nPenWidth < 1)
    {
        m_nPenWidth = 1;
    }
    else if (m_nPenWidth > 10)
    {
        m_nPenWidth = 10;
    }

    UpdateData(FALSE);
	
	*pResult = 0;
}

void CSetDLG::OnOK() 
{
	// TODO: Add extra validation here
    UpdateData(TRUE);

    if (m_nPenStyle )
    {
    }
   
    /*
    #define PS_SOLID            0
    #define PS_DASH             1       // -------  
    #define PS_DOT              2       // .......  
    #define PS_DASHDOT          3       // _._._._  
    #define PS_DASHDOTDOT       4       // _.._.._  

    PS_SOLID   Creates a solid pen.
    PS_DASH   Creates a dashed pen. Valid only when the pen width is 1 or less, in device units.
    PS_DOT   Creates a dotted pen. Valid only when the pen width is 1 or less, in device units.
    PS_DASHDOT   Creates a pen with alternating dashes and dots. Valid only when the pen width is 1 or less, in device units.
    PS_DASHDOTDOT   Creates a pen with alternating dashes and double dots. Valid only when the pen width is 1 or less, in device units.
    */
    if (m_nPenStyle > PS_SOLID)
    {
        m_nPenWidth = 1;
    }

    m_tagPen = tagPen(m_nPenStyle, m_nPenWidth, m_PenColor.m_BgColor);
    m_tagBrush = tagBrush(m_nBrushStyle, m_BrushColor.m_BgColor);

	CDialog::OnOK();
}
