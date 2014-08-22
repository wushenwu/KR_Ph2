#ifndef CSHAPE_H_9F3A2156_2C28_4b94_BA29_D31C51BA32AB

#define CSHAPE_H_9F3A2156_2C28_4b94_BA29_D31C51BA32AB

#include "StdAfx.h"

//Shape
#define TOTAL_SHAPE   3

//Brick
#define BRICK_ROWS      4
#define BRICK_COLS      4

//for manage
#define USE_SMARTPTR

//Ҳ��������ָ��������Զ����ͷ�
template<typename T>
class CSmartPtr4Shape
{
public:
    CSmartPtr4Shape(T *pobj)
    {
        m_pobj = pobj;
    }
    
    virtual ~CSmartPtr4Shape()
    {
        delete m_pobj;
    }

public:
    operator T* ()
    {
        return m_pobj;
    }
    
protected:
    T *m_pobj;
};

class CShape
{
    friend class CRelease;
    friend class CGame;
public:

    CShape();

    CShape(int nIndex, const char *szData);

    virtual ~CShape();  
    
public:
    static CShape *GetRandom();

public:
    char m_Data[BRICK_ROWS][BRICK_COLS];  //4*4��������������״
    int m_nIndex;                         //������״�ķ���

#ifdef USE_SMARTPTR
    static CSmartPtr4Shape<CShape> BasicType[TOTAL_SHAPE];
#else
    static CShape *BasicType[TOTAL_SHAPE];    //һЩ������ͼ��
#endif

    static int Rotated[TOTAL_SHAPE];          //����ͼ����ת����ͼ���ڻ���ͼ���е��±�
};

//�����CShape��Դ���ͷ�
class CRelease
{
public:
    CRelease();
    ~CRelease();
};

#endif