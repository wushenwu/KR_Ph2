// MyLineFactory.h: interface for the CMyLineFactory class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MYLINEFACTORY_H__D2523938_1C4A_4B64_B68B_942071837176__INCLUDED_)
#define AFX_MYLINEFACTORY_H__D2523938_1C4A_4B64_B68B_942071837176__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "MyShapeFactory.h"

class CMyLineFactory : public CMyShapeFactory  
{
public:
	CMyLineFactory();
	virtual ~CMyLineFactory();

    virtual CMyShape *CreateShape(void);
};

#endif // !defined(AFX_MYLINEFACTORY_H__D2523938_1C4A_4B64_B68B_942071837176__INCLUDED_)
