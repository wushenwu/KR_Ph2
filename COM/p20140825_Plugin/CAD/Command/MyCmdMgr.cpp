// MyCmdMgr.cpp: implementation of the CMyCmdMgr class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "..\CAD.h"
#include "MyCmdMgr.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CMyCmdMgr::CMyCmdMgr()
{

}

CMyCmdMgr::~CMyCmdMgr()
{

}

void CMyCmdMgr::AddCommand(CMyCommand *pCmd)
{
    //
    m_UndoList.AddTail(pCmd);

    //将可重做的全部清除
    POSITION pos = m_RedoList.GetHeadPosition();
    while (pos)
    {
        CMyCommand *pCmd = m_RedoList.GetNext(pos);
        delete pCmd;
    }

    m_RedoList.RemoveAll();

}

BOOL CMyCmdMgr::Undo()
{
    if (0 == m_UndoList.GetCount())
    {
        return FALSE;
    }

    CMyCommand *pCmd = m_UndoList.RemoveTail();
    if (NULL == pCmd)
    {
        return NULL;
    }

    m_RedoList.AddTail(pCmd);

    if (pCmd->Unexecute())
    {
        return TRUE;
    }

    return FALSE;    
}

BOOL CMyCmdMgr::Redo()
{
    if (0 == m_RedoList.GetCount())
    {
        return FALSE;
    }

    CMyCommand *pCmd = m_RedoList.RemoveTail();
    if (NULL == pCmd)
    {
        return FALSE;
    }
    
    m_UndoList.AddTail(pCmd);
    
    if (pCmd->Execute())
    {
        return TRUE;
    }
    
    return FALSE; 
}
