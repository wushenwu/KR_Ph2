// IBase.h: interface for the IBase class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_IBASE_H__AD932F18_5171_4421_9135_1B466A0D8227__INCLUDED_)
#define AFX_IBASE_H__AD932F18_5171_4421_9135_1B466A0D8227__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include <windows.h>

class IBase  
{
public:
    virtual ~IBase() {}

public:
    virtual HRESULT QueryInterface(REFIID iid, void **ppobj) = 0;
    virtual long AddRef() = 0;
    virtual long Release() = 0;
};

// {E6BD247E-6BB9-47a0-A860-D4D026B7E1AC}
static const GUID IID_IBase = 
{ 0xe6bd247e, 0x6bb9, 0x47a0, { 0xa8, 0x60, 0xd4, 0xd0, 0x26, 0xb7, 0xe1, 0xac } };


#endif // !defined(AFX_IBASE_H__AD932F18_5171_4421_9135_1B466A0D8227__INCLUDED_)
