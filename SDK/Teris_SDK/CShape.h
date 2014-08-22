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

//也可用智能指针来完成自动的释放
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
    char m_Data[BRICK_ROWS][BRICK_COLS];  //4*4数组来描述该形状
    int m_nIndex;                         //描述形状的分类

#ifdef USE_SMARTPTR
    static CSmartPtr4Shape<CShape> BasicType[TOTAL_SHAPE];
#else
    static CShape *BasicType[TOTAL_SHAPE];    //一些基本的图形
#endif

    static int Rotated[TOTAL_SHAPE];          //基本图形旋转所得图形在基本图形中的下标
};

//负责对CShape资源的释放
class CRelease
{
public:
    CRelease();
    ~CRelease();
};

#endif