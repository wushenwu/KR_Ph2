// MyDrawCommand.cpp: implementation of the CMyDrawCommand class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "..\CAD.h"
#include "MyDrawCommand.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

BOOL CMyDrawCommand::Execute(void)      //����
{
    //���������ͼ��������
    m_ShapeList.AddTail(m_pShape);

    return TRUE;
}

BOOL CMyDrawCommand::Unexecute(void)    //����
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

