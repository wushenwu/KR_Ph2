// MyEllipseFactory.h: interface for the CMyEllipseFactory class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MYELLIPSEFACTORY_H__F7466144_81D9_4102_8CF3_8B4740A6C61D__INCLUDED_)
#define AFX_MYELLIPSEFACTORY_H__F7466144_81D9_4102_8CF3_8B4740A6C61D__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "MyShapeFactory.h"

class CMyEllipseFactory : public CMyShapeFactory  
{
public:
	CMyEllipseFactory();
	virtual ~CMyEllipseFactory();

    virtual CMyShape *CreateShape(void);

};

#endif // !defined(AFX_MYELLIPSEFACTORY_H__F7466144_81D9_4102_8CF3_8B4740A6C61D__INCLUDED_)
