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

BOOL CMyDeleteCommand::Unexecute(void)      //����
{
    //���������ͼ��������
    m_ShapeList.AddTail(m_pShape);
    
    return TRUE;
}

BOOL CMyDeleteCommand::Execute(void)    //
{
    //�����ͼ��������ɾ��
    POSITION pos = m_ShapeList.Find(m_pShape);
    if (pos != NULL)
    {
        m_ShapeList.RemoveAt(pos);
        return TRUE;
    }
    
    return FALSE;
}

