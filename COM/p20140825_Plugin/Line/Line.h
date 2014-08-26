#ifndef LINE_H_F00633C2_AE89_4937_996F_B2D9813C1944
#define LINE_H_F00633C2_AE89_4937_996F_B2D9813C1944

#include "..\\CAD\\IShape.h"

//////////////////////////////////////////////////////////////////////////
//Line
class CLine: public IShape
{
public:
    CLine();
    virtual ~CLine();

public:
    virtual void CALL Draw(CDC *pDC) ;
    virtual void CALL OnLButtonDown(UINT nFlags, CPoint point) ;
    virtual void CALL OnLButtonUp(UINT nFlags, CPoint point) ;
    virtual void CALL OnRButtonDown(UINT nFlags, CPoint point) ;
    virtual void CALL OnRButtonUp(UINT nFlags, CPoint point) ;
    virtual void CALL OnMouseMove(UINT nFlags, CPoint point) ;
    
    //�ж�point�Ƿ�ѡ���Լ�, �Լ�ѡ�к����ʾЧ��
    virtual BOOL CALL IsSelected(CPoint point) ;
    virtual void CALL OnSelected(CDC *pDC) ;
    
    //���������Լ���������
    virtual IShape *CALL CopySelf(void) ;
    virtual void CALL CopyOther(IShape *pobj) ;
    
    //�����ƶ�
    virtual void CALL SetPosition(CPoint point) ;
    virtual void CALL SetPosition_Rotate(CPoint point) ;
    
    virtual void CALL SetPen(tagPen pen) ;
    virtual void CALL SetBrush(tagBrush brush) ;
    virtual tagPen CALL GetPen() ;
    virtual tagBrush CALL GetBrush() ;
    
    //
    virtual void CALL GetPositionInfo(TCHAR *pszInfo) ;
    
    //////////////////////////////////////////////////////////////////////////
    //����Serialization
    DECLARE_SERIAL(CLine)
    virtual void CALL Serialize(CArchive& ar) ;

protected:
    CPoint m_ptBegin;
    CPoint m_ptEnd;
    tagPen m_tagPen;
    tagBrush m_tagBrush;
};

//////////////////////////////////////////////////////////////////////////
//LineFactory
class CLineFactory: public IShapeFactory
{
public:
    CLineFactory();
    virtual ~CLineFactory();

public:
    virtual const TCHAR *CALL GetName();
    virtual void CALL Release();
    virtual IShape * CALL CreateShape();
};

#endif
