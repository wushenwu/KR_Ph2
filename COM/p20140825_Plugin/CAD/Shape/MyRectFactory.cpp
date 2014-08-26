// MyRectFactory.cpp: implementation of the CMyRectFactory class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "..\CAD.h"
#include "MyRectFactory.h"
#include "MyRect.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CMyRectFactory::CMyRectFactory()
{

}

CMyRectFactory::~CMyRectFactory()
{

}

CMyShape *
CMyRectFactory::CreateShape(void)
{
    return new CMyRect();
}
