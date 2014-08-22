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

class CMyModifyCommand : public CMyCommand  
{
public:
	CMyModifyCommand(CMyList<CMyShape> &ShapeList, 
                    CMyShape *pCurShape,
                    CMyShape *pOldState, 
                    CMyShape *pNewState)
        :m_ShapeList(ShapeList)
    {
        m_pCurShape = pCurShape;
        m_pOldState = pOldState;
        m_pNewState = pNewState;
    }

    virtual ~CMyModifyCommand() { }

    //��ز����ĳ���������
    virtual BOOL Execute(void);
    virtual BOOL Unexecute(void);
    
protected:
    CMyList<CMyShape> &m_ShapeList;     //�ѻ��õ�ͼ���б�
    CMyShape *m_pCurShape;              //
    CMyShape *m_pOldState;              //ԭͼ��״̬         
    CMyShape *m_pNewState;              //�޸ĺ��ͼ��״̬
    
    //ShapeList��ʼ�մ����ŵ���m_pNewShape.��m_pOldShape����һ����ʱ״̬

};

#endif // !defined(AFX_MYMODIFYCOMMAND_H__931D6B4C_E1EC_4B4E_B3C8_2B6BAA4DBBCC__INCLUDED_)
