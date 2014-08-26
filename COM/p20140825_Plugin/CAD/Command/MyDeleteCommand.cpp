// MyDeleteCommand.cpp: implementation of the CMyDeleteCommand class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "..\CAD.h"
#include "MyDeleteCommand.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

BOOL CMyDeleteCommand::Unexecute(void)      //重做
{
    //将其添加至图形链表中
    m_ShapeList.AddTail(m_pShape);
    
    return TRUE;
}

BOOL CMyDeleteCommand::Execute(void)    //
{
    //将其从图形链表中删除
    POSITION pos = m_ShapeList.Find(m_pShape);
    if (pos != NULL)
    {
        m_ShapeList.RemoveAt(pos);
        return TRUE;
    }
    
    return FALSE;
}

