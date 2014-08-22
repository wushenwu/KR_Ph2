// MyEllipse.cpp: implementation of the CMyEllipse class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "..\CAD.h"
#include "MyEllipse.h"

#include <math.h>

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CMyEllipse::CMyEllipse()
:m_ptBegin(0, 0),
m_ptEnd(0, 0)
{

}

CMyEllipse::~CMyEllipse()
{

}

void CMyEllipse::Draw(CDC *pDC)
{
    //设置画笔和画刷
    CPen pen(m_tagPen.m_nStyle, m_tagPen.m_nWidth, m_tagPen.m_Color);
    pDC->SelectObject(pen);

    CBrush brush;

    if (m_tagBrush.m_IsSolid)
    {
        brush.CreateSolidBrush(m_tagBrush.m_Color);
        pDC->SelectObject(brush);
    }
    else
    {
        pDC->SelectObject(::GetStockObject(NULL_BRUSH));
    }

    pDC->Ellipse(CRect(m_ptBegin, m_ptEnd));
}

void CMyEllipse::OnLButtonDown(UINT nFlags, CPoint point)
{
    m_ptBegin = point;
}

void CMyEllipse::OnLButtonUp(UINT nFlags, CPoint point)
{
    m_ptEnd = point;
}

void CMyEllipse::OnRButtonDown(UINT nFlags, CPoint point)
{
    return;
}

void CMyEllipse::OnRButtonUp(UINT nFlags, CPoint point)
{
    return;
}

void CMyEllipse::OnMouseMove(UINT nFlags, CPoint point)
{
    m_ptEnd = point;
}

BOOL CMyEllipse::IsSelected(CPoint point)
{
    CRgn rgn;

    rgn.CreateEllipticRgn(m_ptBegin.x, m_ptBegin.y,
                         m_ptEnd.x, m_ptEnd.y);

    if (rgn.PtInRegion(point))
    {
        return TRUE;
    }
    
    return FALSE;
}

void CMyEllipse::OnSelected(CDC *pDC)
{
    //设置画笔和画刷
    CPen pen(m_tagPen.m_nStyle, m_tagPen.m_nWidth, RGB(255, 0, 0));
    pDC->SelectObject(pen);
    
    CBrush brush;
    if (m_tagBrush.m_IsSolid)
    {
        //实心
        brush.CreateSolidBrush(m_tagBrush.m_Color);
        pDC->SelectObject(brush);
    }
    else
    {
        pDC->SelectObject(::GetStockObject(NULL_BRUSH));
    }
    
    pDC->Ellipse(CRect(m_ptBegin, m_ptEnd)); 
}

CMyShape *CMyEllipse::CopySelf(void)
{
    CMyEllipse *pobj = new CMyEllipse();
    pobj->m_ptBegin = m_ptBegin;
    pobj->m_ptEnd = m_ptEnd;
    pobj->m_tagPen = m_tagPen;
    pobj->m_tagBrush = m_tagBrush;
    
    return pobj;
}

void CMyEllipse::CopyOther(CMyShape *pobj)
{
    m_ptBegin = ((CMyEllipse *)pobj)->m_ptBegin;
    m_ptEnd = ((CMyEllipse *)pobj)->m_ptEnd;
    m_tagPen = ((CMyEllipse *)pobj)->m_tagPen;
    m_tagBrush = ((CMyEllipse *)pobj)->m_tagBrush;  
}

void CMyEllipse::SetPosition(CPoint point)
{
    m_ptEnd = m_ptEnd + point - m_ptBegin;
    m_ptBegin = point;
}

void CMyEllipse::SetPosition_Rotate(CPoint point)
{
    //y= ax + b; (mX, mY)  (point.x, point.y)
    double mX = (m_ptBegin.x + m_ptEnd.x) / 2;
    double mY = (m_ptBegin.y + m_ptEnd.y) / 2;
    
    double da = (mY - point.y) / (mX - point.x);
    double db = m_ptBegin.y - da * m_ptBegin.x;
    
    //(x,y)在y=ax+b上，且与(mX, mY)的距离为线段一半
    //(x, y) = (x, da * x + b)
    //x 可变化范围为(m_ptBegin.x, m_ptEnd.x)
    long x;
    long y;
    
    double r2 = pow((mX - m_ptBegin.x), 2) + pow((mY - m_ptBegin.y), 2);
    
    int factor = m_ptEnd.x > m_ptBegin.x ? 1 : -1;
    for (x = m_ptBegin.x + factor; 
        x != m_ptEnd.x; 
        x += factor)
    {
        y = da * x + db;
        
        double r = pow((x - mX), 2) + pow((y - mY), 2);
        
        if ( r >= r2)
        {
            m_ptBegin.x = x;
            m_ptBegin.y = y;
            
            m_ptEnd.x = 2 * mX - m_ptBegin.x;
            m_ptEnd.y = 2 * mY - m_ptBegin.y;
            break;
        }  
     }
}


//////////////////////////////////////////////////////////////////////////
//用于Serialization
IMPLEMENT_SERIAL(CMyEllipse, CObject, VERSIONABLE_SCHEMA)

void CMyEllipse::Serialize(CArchive& ar)
{
    //先调用基类的
    CMyShape::Serialize(ar);
    
    if (ar.IsStoring())
    {
        //insertion
        ar << m_ptBegin.x << m_ptBegin.y 
            << m_ptEnd.x << m_ptEnd.y;
    }
    else
    {
        //extraction
        ar >> m_ptBegin.x >> m_ptBegin.y 
           >> m_ptEnd.x >> m_ptEnd.y;
    }
}

void CMyEllipse::GetPositionInfo(TCHAR *pszInfo)
{
    if (NULL == pszInfo)
    {
        return;
    }
    
    wsprintf(pszInfo, "(%d, %d), (%d, %d)",
                m_ptBegin.x, m_ptBegin.y,
                m_ptEnd.x, m_ptEnd.y
            );
    
}