// MyEllipseFactory.cpp: implementation of the CMyEllipseFactory class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "..\CAD.h"
#include "MyEllipseFactory.h"
#include "MyEllipse.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CMyEllipseFactory::CMyEllipseFactory()
{

}

CMyEllipseFactory::~CMyEllipseFactory()
{

}

CMyShape *CMyEllipseFactory::CreateShape(void)
{
    return new CMyEllipse();
}
