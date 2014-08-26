// MyRectFactory.h: interface for the CMyRectFactory class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MYRECTFACTORY_H__4CD123CF_D831_4C02_8F4F_FAAFFFA18DF7__INCLUDED_)
#define AFX_MYRECTFACTORY_H__4CD123CF_D831_4C02_8F4F_FAAFFFA18DF7__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "MyShapeFactory.h"

class CMyRectFactory : public CMyShapeFactory  
{
public:
	CMyRectFactory();
	virtual ~CMyRectFactory();

    virtual CMyShape *CreateShape(void);

};

#endif // !defined(AFX_MYRECTFACTORY_H__4CD123CF_D831_4C02_8F4F_FAAFFFA18DF7__INCLUDED_)
