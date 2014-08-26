// MyShape.cpp: implementation of the CMyShape class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "..\CAD.h"
#include "MyShape.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////
void CMyShape::SetPen(tagPen pen)
{
    m_tagPen = pen;
}

void CMyShape::SetBrush(tagBrush brush)
{
    m_tagBrush = brush;
}

tagPen CMyShape::GetPen()
{
    return m_tagPen;
}

tagBrush CMyShape::GetBrush()
{
    return m_tagBrush;
}

//////////////////////////////////////////////////////////////////////////
//用于Serialization

//无需进行IMPLEMENT_SERIAL，

void CMyShape::Serialize(CArchive& ar)
{
    //先调用基类的
    CObject::Serialize(ar);

    if (ar.IsStoring())
    {
        //insertion
        ar << m_tagPen.m_nStyle << m_tagPen.m_nWidth << m_tagPen.m_Color
           << m_tagBrush.m_IsSolid << m_tagBrush.m_Color;
    }
    else
    {
        //extraction
        ar >> m_tagPen.m_nStyle >> m_tagPen.m_nWidth >> m_tagPen.m_Color
           >> m_tagBrush.m_IsSolid >> m_tagBrush.m_Color;
    }
}