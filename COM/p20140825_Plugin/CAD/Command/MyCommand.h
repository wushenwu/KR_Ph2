// MyCommand.h: interface for the CMyCommand class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MYCOMMAND_H__59DE18E8_AE3B_4C10_B9FE_AD33F17507FB__INCLUDED_)
#define AFX_MYCOMMAND_H__59DE18E8_AE3B_4C10_B9FE_AD33F17507FB__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

class CMyCommand  
{
public:
	CMyCommand();
	virtual ~CMyCommand();
    
    //相关操作的撤销与重做
    virtual BOOL Execute(void) = 0;
    virtual BOOL Unexecute(void) = 0;
};

#endif // !defined(AFX_MYCOMMAND_H__59DE18E8_AE3B_4C10_B9FE_AD33F17507FB__INCLUDED_)
