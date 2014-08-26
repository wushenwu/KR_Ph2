// MyLineFactory.cpp: implementation of the CMyLineFactory class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "..\CAD.h"
#include "MyLineFactory.h"
#include "MyLine.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CMyLineFactory::CMyLineFactory()
{

}

CMyLineFactory::~CMyLineFactory()
{

}

CMyShape *
CMyLineFactory::CreateShape(void)
{
    return new CMyLine();
}
