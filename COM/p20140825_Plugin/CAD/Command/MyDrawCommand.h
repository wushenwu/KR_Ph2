// MyDrawCommand.h: interface for the CMyDrawCommand class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MYDRAWCOMMAND_H__C3EA7D03_1996_4EDB_92CB_29D0208200B0__INCLUDED_)
#define AFX_MYDRAWCOMMAND_H__C3EA7D03_1996_4EDB_92CB_29D0208200B0__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "MyCommand.h"
#include "..\MyList.h"

#define  USE_ISHAPE

#ifdef USE_ISHAPE
    #include "..\\IShape.h"
#else
    #include "..\\Shape\\MyShape.h"
#endif

class CMyDrawCommand : public CMyCommand  
{
public:
#ifdef USE_ISHAPE
    CMyDrawCommand(CMyList<IShape> &ShapeList, IShape *pShape)
#else
	CMyDrawCommand(CMyList<CMyShape> &ShapeList, CMyShape *pShape)
#endif
        :m_ShapeList(ShapeList),
         m_pShape(pShape)
    {

    }

	virtual ~CMyDrawCommand()
    {
        m_pShape = NULL;
    }

    //相关操作的撤销与重做
    virtual BOOL Execute(void);
    virtual BOOL Unexecute(void);

protected:
#ifdef USE_ISHAPE
    CMyList<IShape> &m_ShapeList;
    IShape *m_pShape;
#else
    CMyList<CMyShape> &m_ShapeList;     //已画好的图形列表
    CMyShape *m_pShape;                 //当前要求操作的图形 
#endif
    
};

#endif // !defined(AFX_MYDRAWCOMMAND_H__C3EA7D03_1996_4EDB_92CB_29D0208200B0__INCLUDED_)
