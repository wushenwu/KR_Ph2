// MyLine.h: interface for the CMyLine class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MYLINE_H__1972D652_1703_49B5_A043_438AD06BCEE8__INCLUDED_)
#define AFX_MYLINE_H__1972D652_1703_49B5_A043_438AD06BCEE8__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "MyShape.h"

class CMyLine : public CMyShape     //already derived from CObject
{
public:
	CMyLine();
	virtual ~CMyLine();


    virtual void Draw(CDC *pDC);
    virtual void OnLButtonDown(UINT nFlags, CPoint point);
    virtual void OnLButtonUp(UINT nFlags, CPoint point);
    virtual void OnRButtonDown(UINT nFlags, CPoint point);
    virtual void OnRButtonUp(UINT nFlags, CPoint point);
    virtual void OnMouseMove(UINT nFlags, CPoint point);

    virtual BOOL IsSelected(CPoint point);
    virtual void OnSelected(CDC *pDC);

    virtual CMyShape *CopySelf(void);
    virtual void CopyOther(CMyShape *pobj);

    virtual void SetPosition(CPoint point);
    virtual void SetPosition_Rotate(CPoint point);

    //
    virtual void GetPositionInfo(TCHAR *pszInfo);

    //////////////////////////////////////////////////////////////////////////
    //”√”⁄Serialization
    DECLARE_SERIAL(CMyLine)
        
    virtual void Serialize(CArchive& ar);

protected:
    CPoint m_ptBegin;
    CPoint m_ptEnd;
};

#endif // !defined(AFX_MYLINE_H__1972D652_1703_49B5_A043_438AD06BCEE8__INCLUDED_)
