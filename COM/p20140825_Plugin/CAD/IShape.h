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
//����IShape

class IShape: public CObject
{
public:
    //��������������������ʵ�֣�����virtual��ʽ�������������޷���������
    IShape() { }  //2.�յĹ��죬����Serialization�Ǳ����

    virtual ~IShape() { }
    
    
public:
    /*
    �����Խӿڹ淶���ж���:
    1. �ӿھ����򵥣���Ҫ������Ĳ����������ݽṹ������
    2. �������ݳ�Ա��������
    */
	virtual void CALL Draw(CDC *pDC) = 0;
    virtual void CALL OnLButtonDown(UINT nFlags, CPoint point) = 0;
    virtual void CALL OnLButtonUp(UINT nFlags, CPoint point) = 0;
    virtual void CALL OnRButtonDown(UINT nFlags, CPoint point) = 0;
    virtual void CALL OnRButtonUp(UINT nFlags, CPoint point) = 0;
    virtual void CALL OnMouseMove(UINT nFlags, CPoint point) = 0;

    //�ж�point�Ƿ�ѡ���Լ�, �Լ�ѡ�к����ʾЧ��
    virtual BOOL CALL IsSelected(CPoint point) = 0;
    virtual void CALL OnSelected(CDC *pDC) = 0;

    //���������Լ���������
    virtual IShape *CALL CopySelf(void) = 0;
    virtual void CALL CopyOther(IShape *pobj) = 0;

    //�����ƶ�
    virtual void CALL SetPosition(CPoint point) = 0;
    virtual void CALL SetPosition_Rotate(CPoint point) = 0;
    
    virtual void CALL SetPen(tagPen pen) = 0;
    virtual void CALL SetBrush(tagBrush brush) = 0;
    virtual tagPen CALL GetPen() = 0;
    virtual tagBrush CALL GetBrush() = 0;

    //
    virtual void CALL GetPositionInfo(TCHAR *pszInfo) = 0;

    //////////////////////////////////////////////////////////////////////////
    //����Serialization
    //DECLARE_SERIAL(IShape) ����Ҫ

    virtual void CALL Serialize(CArchive& ar) = 0;
};

//////////////////////////////////////////////////////////////////////////
//����IShapeFactory

class IShapeFactory
{
public:
    virtual ~IShapeFactory() {};
public:
    virtual const TCHAR * CALL GetName() = 0;
    virtual void CALL Release() = 0;
    virtual IShape * CALL CreateShape() = 0;
};

//dll �赼���Ľӿ�
extern "C"
{
    IShapeFactory * CALL CreateShapeFactory();
};

typedef IShapeFactory *(CALL *PFNCreateShapeFactory)();

#endif // !defined(AFX_ISHAPE_H__2D5EFE09_9AB5_41EC_A665_F75F626D7084__INCLUDED_)
