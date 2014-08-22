// MyEllipse.h: interface for the CMyEllipse class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MYELLIPSE_H__9EC5D23A_E4C9_4766_A3E4_9DDF937A36FE__INCLUDED_)
#define AFX_MYELLIPSE_H__9EC5D23A_E4C9_4766_A3E4_9DDF937A36FE__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "MyShape.h"

class CMyEllipse : public CMyShape  
{
public:
	CMyEllipse();
	virtual ~CMyEllipse();

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

    virtual void GetPositionInfo(TCHAR *pszInfo);

    //////////////////////////////////////////////////////////////////////////
    //”√”⁄Serialization
    DECLARE_SERIAL(CMyEllipse)
        
    virtual void Serialize(CArchive& ar);

protected:
    CPoint m_ptBegin;
    CPoint m_ptEnd;

};

#endif // !defined(AFX_MYELLIPSE_H__9EC5D23A_E4C9_4766_A3E4_9DDF937A36FE__INCLUDED_)
