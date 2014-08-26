// MyShape.h: interface for the CMyShape class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MYSHAPE_H__DE2CCB92_BB63_411A_BF93_E9EC88CCF3E3__INCLUDED_)
#define AFX_MYSHAPE_H__DE2CCB92_BB63_411A_BF93_E9EC88CCF3E3__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "..\\struct.h"

class CMyShape  : public CObject    //1.����Serialization.
{  
public:
    //��������������������ʵ�֣�����virtual��ʽ�������������޷���������
    CMyShape() { }  //2.�յĹ��죬����Serialization�Ǳ����

    virtual ~CMyShape() { }
    
    
public:
    /*
    �����Խӿڹ淶���ж���:
    1. �ӿھ����򵥣���Ҫ������Ĳ����������ݽṹ������
    2. �������ݳ�Ա��������
    */
	virtual void Draw(CDC *pDC) = 0;
    virtual void OnLButtonDown(UINT nFlags, CPoint point) = 0;
    virtual void OnLButtonUp(UINT nFlags, CPoint point) = 0;
    virtual void OnRButtonDown(UINT nFlags, CPoint point) = 0;
    virtual void OnRButtonUp(UINT nFlags, CPoint point) = 0;
    virtual void OnMouseMove(UINT nFlags, CPoint point) = 0;

    //�ж�point�Ƿ�ѡ���Լ�, �Լ�ѡ�к����ʾЧ��
    virtual BOOL IsSelected(CPoint point) = 0;
    virtual void OnSelected(CDC *pDC) = 0;

    //���������Լ���������
    virtual CMyShape *CopySelf(void) = 0;
    virtual void CopyOther(CMyShape *pobj) = 0;

    //�����ƶ�
    virtual void SetPosition(CPoint point) = 0;
    virtual void SetPosition_Rotate(CPoint point) = 0;
    
    virtual void SetPen(tagPen pen);
    virtual void SetBrush(tagBrush brush);
    virtual tagPen GetPen();
    virtual tagBrush GetBrush();

    //
    virtual void GetPositionInfo(TCHAR *pszInfo) = 0;

    //////////////////////////////////////////////////////////////////////////
    //����Serialization
    //DECLARE_SERIAL(CMyShape) ����Ҫ

    virtual void Serialize(CArchive& ar);


protected:
    tagPen m_tagPen;
    tagBrush m_tagBrush;
};

#endif // !defined(AFX_MYSHAPE_H__DE2CCB92_BB63_411A_BF93_E9EC88CCF3E3__INCLUDED_)
