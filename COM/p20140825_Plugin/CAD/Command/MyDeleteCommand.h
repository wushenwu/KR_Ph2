// MyDeleteCommand.h: interface for the CMyDeleteCommand class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MYDELETECOMMAND_H__5F4AA4B4_794E_42AE_AE5F_6335C0B5EB0C__INCLUDED_)
#define AFX_MYDELETECOMMAND_H__5F4AA4B4_794E_42AE_AE5F_6335C0B5EB0C__INCLUDED_

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

class CMyDeleteCommand : public CMyCommand  
{
public:
#ifdef USE_ISHAPE
    CMyDeleteCommand(CMyList<IShape> &ShapeList, IShape *pShape)
#else
    CMyDeleteCommand(CMyList<CMyShape> &ShapeList, CMyShape *pShape)
#endif
        :m_ShapeList(ShapeList),
        m_pShape(pShape)
    {
        
    }
    
    virtual ~CMyDeleteCommand()
    {
        m_pShape = NULL;
    }
    
    //��ز����ĳ���������
    virtual BOOL Execute(void);
    virtual BOOL Unexecute(void);
    
protected:
#ifdef USE_ISHAPE
    CMyList<IShape> &m_ShapeList;     //�ѻ��õ�ͼ���б�
    IShape *m_pShape;                 //��ǰҪ�������ͼ��
#else
    CMyList<CMyShape> &m_ShapeList;     //�ѻ��õ�ͼ���б�
    CMyShape *m_pShape;                 //��ǰҪ�������ͼ��
#endif

};

#endif // !defined(AFX_MYDELETECOMMAND_H__5F4AA4B4_794E_42AE_AE5F_6335C0B5EB0C__INCLUDED_)
