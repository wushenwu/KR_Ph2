// MyShapeFactory.h: interface for the CMyShapeFactory class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MYSHAPEFACTORY_H__31764814_2C3A_4BB6_BA34_DE69AC23AFCF__INCLUDED_)
#define AFX_MYSHAPEFACTORY_H__31764814_2C3A_4BB6_BA34_DE69AC23AFCF__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "MyShape.h"

class CMyShapeFactory  
{
public:
	CMyShapeFactory();
	virtual ~CMyShapeFactory();

    virtual CMyShape *CreateShape(void)=0;

};

#endif // !defined(AFX_MYSHAPEFACTORY_H__31764814_2C3A_4BB6_BA34_DE69AC23AFCF__INCLUDED_)
