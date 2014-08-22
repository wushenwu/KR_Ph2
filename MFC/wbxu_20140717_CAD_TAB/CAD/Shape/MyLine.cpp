// MyLine.cpp: implementation of the CMyLine class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "..\CAD.h"
#include "MyLine.h"

#include <math.h>

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CMyLine::CMyLine()
:m_ptBegin(0, 0),
 m_ptEnd(0, 0)
{

}

CMyLine::~CMyLine()
{
    //Sth wrong here.
    //AfxMessageBox("~CMyLine");
}

void CMyLine::Draw(CDC *pDC)
{
    //对画笔、画刷进行设置(但对于直线，不存在画刷一说
    CPen pen(m_tagPen.m_nStyle, m_tagPen.m_nWidth, m_tagPen.m_Color);
    pDC->SelectObject(pen);

    pDC->MoveTo(m_ptBegin);
    pDC->LineTo(m_ptEnd);
}

void CMyLine::OnLButtonDown(UINT nFlags, CPoint point)
{
    m_ptBegin = point;
}

 void CMyLine::OnLButtonUp(UINT nFlags, CPoint point)
 {
    m_ptEnd = point;
 }

 void CMyLine::OnRButtonDown(UINT nFlags, CPoint point)
 {
    return;
 }

 void CMyLine::OnRButtonUp(UINT nFlags, CPoint point)
 {
     return;
 }

 void CMyLine::OnMouseMove(UINT nFlags, CPoint point)
 {
    m_ptEnd = point;
 }

 BOOL CMyLine::IsSelected(CPoint pt)
{
      CPoint pts[4];
  
      pts[0].x = m_ptBegin.x;
      pts[0].y = m_ptBegin.y - 5;

      pts[1].x = m_ptBegin.x;
      pts[1].y = m_ptBegin.y + 5;
  
      pts[2].x = m_ptEnd.x;
      pts[2].y = m_ptEnd.y + 5;
  
      pts[3].x = m_ptEnd.x;
      pts[3].y = m_ptEnd.y - 5;
  
      CRgn rgn;
      rgn.CreatePolygonRgn(pts, 4, ALTERNATE);
  
      return rgn.PtInRegion(pt);
}
 
 void CMyLine::OnSelected(CDC *pDC)
 {
     CPen pen(m_tagPen.m_nStyle, m_tagPen.m_nWidth, RGB(255, 0, 0));
     pDC->SelectObject(pen);

     pDC->MoveTo(m_ptBegin);
     pDC->LineTo(m_ptEnd);
}

 CMyShape *CMyLine::CopySelf(void)
 {
     CMyLine *pobj = new CMyLine();
     pobj->m_ptBegin = m_ptBegin;
     pobj->m_ptEnd = m_ptEnd;
     pobj->m_tagPen = m_tagPen;
     pobj->m_tagBrush = m_tagBrush;

     return pobj;
 }

 void CMyLine::CopyOther(CMyShape *pobj)
 {
     m_ptBegin = ((CMyLine *)pobj)->m_ptBegin;
     m_ptEnd = ((CMyLine *)pobj)->m_ptEnd;
     m_tagPen = ((CMyLine *)pobj)->m_tagPen;
     m_tagBrush = ((CMyLine *)pobj)->m_tagBrush;

 }

 void CMyLine::SetPosition(CPoint point)
 {
     m_ptEnd = m_ptEnd + point - m_ptBegin;
     m_ptBegin = point;
 }

 void CMyLine::SetPosition_Rotate(CPoint point)
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
IMPLEMENT_SERIAL(CMyLine, CObject, VERSIONABLE_SCHEMA)
     
void CMyLine::Serialize(CArchive& ar)
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

void CMyLine::GetPositionInfo(TCHAR *pszInfo)
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