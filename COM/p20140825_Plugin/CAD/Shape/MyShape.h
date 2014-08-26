// MyShape.h: interface for the CMyShape class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MYSHAPE_H__DE2CCB92_BB63_411A_BF93_E9EC88CCF3E3__INCLUDED_)
#define AFX_MYSHAPE_H__DE2CCB92_BB63_411A_BF93_E9EC88CCF3E3__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "..\\struct.h"

class CMyShape  : public CObject    //1.用于Serialization.
{  
public:
    //虚基类的析构函数，必须实现，且以virtual形式，否则派生类无法正常析构
    CMyShape() { }  //2.空的构造，对于Serialization是必须的

    virtual ~CMyShape() { }
    
    
public:
    /*
    虚基类对接口规范进行定义:
    1. 接口尽量简单，不要求特殊的参数，对数据结构等限制
    2. 不对数据成员进行限制
    */
	virtual void Draw(CDC *pDC) = 0;
    virtual void OnLButtonDown(UINT nFlags, CPoint point) = 0;
    virtual void OnLButtonUp(UINT nFlags, CPoint point) = 0;
    virtual void OnRButtonDown(UINT nFlags, CPoint point) = 0;
    virtual void OnRButtonUp(UINT nFlags, CPoint point) = 0;
    virtual void OnMouseMove(UINT nFlags, CPoint point) = 0;

    //判断point是否选中自己, 以及选中后的提示效果
    virtual BOOL IsSelected(CPoint point) = 0;
    virtual void OnSelected(CDC *pDC) = 0;

    //自身拷贝，以及复制他人
    virtual CMyShape *CopySelf(void) = 0;
    virtual void CopyOther(CMyShape *pobj) = 0;

    //用于移动
    virtual void SetPosition(CPoint point) = 0;
    virtual void SetPosition_Rotate(CPoint point) = 0;
    
    virtual void SetPen(tagPen pen);
    virtual void SetBrush(tagBrush brush);
    virtual tagPen GetPen();
    virtual tagBrush GetBrush();

    //
    virtual void GetPositionInfo(TCHAR *pszInfo) = 0;

    //////////////////////////////////////////////////////////////////////////
    //用于Serialization
    //DECLARE_SERIAL(CMyShape) 不需要

    virtual void Serialize(CArchive& ar);


protected:
    tagPen m_tagPen;
    tagBrush m_tagBrush;
};

#endif // !defined(AFX_MYSHAPE_H__DE2CCB92_BB63_411A_BF93_E9EC88CCF3E3__INCLUDED_)
