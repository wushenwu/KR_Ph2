// MyCmdMgr.h: interface for the CMyCmdMgr class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MYCMDMGR_H__A19578BE_F5C1_4AF2_834C_AB000DCAF6A3__INCLUDED_)
#define AFX_MYCMDMGR_H__A19578BE_F5C1_4AF2_834C_AB000DCAF6A3__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "MyCommand.h"
#include "..\MyList.h"

//√¸¡Óπ‹¿Ì∆˜
class CMyCmdMgr  
{
public:
	CMyCmdMgr();
	virtual ~CMyCmdMgr();

    //
    virtual void AddCommand(CMyCommand *pCmd);
    virtual BOOL Undo();
    virtual BOOL Redo();

protected:
    CMyList<CMyCommand> m_UndoList;
    CMyList<CMyCommand> m_RedoList;  
};

#endif // !defined(AFX_MYCMDMGR_H__A19578BE_F5C1_4AF2_834C_AB000DCAF6A3__INCLUDED_)
