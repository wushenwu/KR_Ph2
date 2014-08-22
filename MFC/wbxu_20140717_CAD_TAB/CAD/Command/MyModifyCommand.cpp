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

BOOL CMyModifyCommand::Unexecute(void)      //重做
{
    //将ShapeList中的当前图形从新状态还原为原有状态
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
    //将ShapeList中的当前图形从原状态设为新状态
    POSITION pos = m_ShapeList.Find(m_pCurShape);
    if (pos)
    {
        m_pCurShape->CopyOther(m_pNewState);
        return TRUE;
    }
    
    return FALSE; 
}
