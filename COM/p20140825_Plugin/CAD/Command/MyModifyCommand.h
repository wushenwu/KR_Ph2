// MyModifyCommand.h: interface for the CMyModifyCommand class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MYMODIFYCOMMAND_H__931D6B4C_E1EC_4B4E_B3C8_2B6BAA4DBBCC__INCLUDED_)
#define AFX_MYMODIFYCOMMAND_H__931D6B4C_E1EC_4B4E_B3C8_2B6BAA4DBBCC__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "MyCommand.h"
#include "..\MyList.h"
#include "..\Shape\MyShape.h"

#define USE_ISHAPE
#ifdef USE_ISHAPE
    #include "..\\IShape.h"
#endif


class CMyModifyCommand : public CMyCommand  
{
public:
#ifdef USE_ISHAPE
    CMyModifyCommand(CMyList<IShape> &ShapeList, 
                    IShape *pCurShape,
                    IShape *pOldState, 
                    IShape *pNewState)
#else
	CMyModifyCommand(CMyList<CMyShape> &ShapeList, 
                    CMyShape *pCurShape,
                    CMyShape *pOldState, 
                    CMyShape *pNewState)
#endif
        :m_ShapeList(ShapeList)
    {
        m_pCurShape = pCurShape;
        m_pOldState = pOldState;
        m_pNewState = pNewState;
    }

    virtual ~CMyModifyCommand() { }

    //相关操作的撤销与重做
    virtual BOOL Execute(void);
    virtual BOOL Unexecute(void);
    
protected:
#ifdef USE_ISHAPE
    CMyList<IShape> &m_ShapeList;     //已画好的图形列表
    IShape *m_pCurShape;              //
    IShape *m_pOldState;              //原图形状态         
    IShape *m_pNewState;              //修改后的图形状态
#else
    CMyList<CMyShape> &m_ShapeList;     //已画好的图形列表
    CMyShape *m_pCurShape;              //
    CMyShape *m_pOldState;              //原图形状态         
    CMyShape *m_pNewState;              //修改后的图形状态
#endif    
    //ShapeList中始终存在着的是m_pNewShape.而m_pOldShape仅是一种临时状态

};

#endif // !defined(AFX_MYMODIFYCOMMAND_H__931D6B4C_E1EC_4B4E_B3C8_2B6BAA4DBBCC__INCLUDED_)
