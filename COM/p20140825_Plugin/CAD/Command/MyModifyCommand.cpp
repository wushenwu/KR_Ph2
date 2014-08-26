// MyModifyCommand.cpp: implementation of the CMyModifyCommand class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "..\CAD.h"
#include "MyModifyCommand.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

BOOL CMyModifyCommand::Unexecute(void)      //����
{
    //��ShapeList�еĵ�ǰͼ�δ���״̬��ԭΪԭ��״̬
    POSITION pos = m_ShapeList.Find(m_pCurShape);
    if (pos)
    {
        m_pCurShape->CopyOther(m_pOldState);
        return TRUE;
    }
    
    return FALSE;    
}

BOOL CMyModifyCommand::Execute(void)    //
{
    //��ShapeList�еĵ�ǰͼ�δ�ԭ״̬��Ϊ��״̬
    POSITION pos = m_ShapeList.Find(m_pCurShape);
    if (pos)
    {
        m_pCurShape->CopyOther(m_pNewState);
        return TRUE;
    }
    
    return FALSE; 
}
