// MyRect.h: interface for the CMyRect class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MYRECT_H__A35809C2_424C_433A_89E8_E315C18D4D3C__INCLUDED_)
#define AFX_MYRECT_H__A35809C2_424C_433A_89E8_E315C18D4D3C__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "MyShape.h"

class CMyRect : public CMyShape  
{
public:
	CMyRect();
	virtual ~CMyRect();

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
    DECLARE_SERIAL(CMyRect)
        
    virtual void Serialize(CArchive& ar);

protected:
    CPoint m_ptBegin;
    CPoint m_ptEnd;
};

#endif // !defined(AFX_MYRECT_H__A35809C2_424C_433A_89E8_E315C18D4D3C__INCLUDED_)
