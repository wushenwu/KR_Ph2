// IShape.h: interface for the IShape class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_ISHAPE_H__2D5EFE09_9AB5_41EC_A665_F75F626D7084__INCLUDED_)
#define AFX_ISHAPE_H__2D5EFE09_9AB5_41EC_A665_F75F626D7084__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include <tchar.h>
#include "struct.h"

#define  CALL   //__stdcall

//////////////////////////////////////////////////////////////////////////
//关于IShape

class IShape: public CObject
{
public:
    //虚基类的析构函数，必须实现，且以virtual形式，否则派生类无法正常析构
    IShape() { }  //2.空的构造，对于Serialization是必须的

    virtual ~IShape() { }
    
    
public:
    /*
    虚基类对接口规范进行定义:
    1. 接口尽量简单，不要求特殊的参数，对数据结构等限制
    2. 不对数据成员进行限制
    */
	virtual void CALL Draw(CDC *pDC) = 0;
    virtual void CALL OnLButtonDown(UINT nFlags, CPoint point) = 0;
    virtual void CALL OnLButtonUp(UINT nFlags, CPoint point) = 0;
    virtual void CALL OnRButtonDown(UINT nFlags, CPoint point) = 0;
    virtual void CALL OnRButtonUp(UINT nFlags, CPoint point) = 0;
    virtual void CALL OnMouseMove(UINT nFlags, CPoint point) = 0;

    //判断point是否选中自己, 以及选中后的提示效果
    virtual BOOL CALL IsSelected(CPoint point) = 0;
    virtual void CALL OnSelected(CDC *pDC) = 0;

    //自身拷贝，以及复制他人
    virtual IShape *CALL CopySelf(void) = 0;
    virtual void CALL CopyOther(IShape *pobj) = 0;

    //用于移动
    virtual void CALL SetPosition(CPoint point) = 0;
    virtual void CALL SetPosition_Rotate(CPoint point) = 0;
    
    virtual void CALL SetPen(tagPen pen) = 0;
    virtual void CALL SetBrush(tagBrush brush) = 0;
    virtual tagPen CALL GetPen() = 0;
    virtual tagBrush CALL GetBrush() = 0;

    //
    virtual void CALL GetPositionInfo(TCHAR *pszInfo) = 0;

    //////////////////////////////////////////////////////////////////////////
    //用于Serialization
    //DECLARE_SERIAL(IShape) 不需要

    virtual void CALL Serialize(CArchive& ar) = 0;
};

//////////////////////////////////////////////////////////////////////////
//关于IShapeFactory

class IShapeFactory
{
public:
    virtual ~IShapeFactory() {};
public:
    virtual const TCHAR * CALL GetName() = 0;
    virtual void CALL Release() = 0;
    virtual IShape * CALL CreateShape() = 0;
};

//dll 需导出的接口
extern "C"
{
    IShapeFactory * CALL CreateShapeFactory();
};

typedef IShapeFactory *(CALL *PFNCreateShapeFactory)();

#endif // !defined(AFX_ISHAPE_H__2D5EFE09_9AB5_41EC_A665_F75F626D7084__INCLUDED_)
