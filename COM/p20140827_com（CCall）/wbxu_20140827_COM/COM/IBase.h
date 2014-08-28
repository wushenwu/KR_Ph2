// IBase.h: interface for the IBase class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_IBASE_H__AD932F18_5171_4421_9135_1B466A0D8227__INCLUDED_)
#define AFX_IBASE_H__AD932F18_5171_4421_9135_1B466A0D8227__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include <windows.h>

//////////////////////////////////////////////////////////////////////////
//IBase

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

//////////////////////////////////////////////////////////////////////////
//IFactory
class IFactory : public IBase
{
public:
    virtual ~IFactory() {}
    
public:
    virtual HRESULT CreateObject(REFIID iid, void **ppobj) = 0;     
};


//注意调用约定
extern "C"
{
    HRESULT __stdcall CreateFactory(REFCLSID clsid,   //要创建哪个具体功能类工厂？
                                      REFIID iid,       //哪个接口？ IBase or IFactory?   
                                      void **ppFactory);
}

typedef HRESULT (__stdcall *PFNCreateFactory)(REFCLSID clsid, REFIID iid, void **ppFactory);

// {63E9672D-AAEF-4140-8CFE-7BEDCB4F1741}
static const GUID IID_IFactory = 
{ 0x63e9672d, 0xaaef, 0x4140, { 0x8c, 0xfe, 0x7b, 0xed, 0xcb, 0x4f, 0x17, 0x41 } };


//////////////////////////////////////////////////////////////////////////
//各功能的工厂guid

// {EE02D369-99BD-40c2-8C5B-9CFA0F3614D5}
static const GUID CLSID_CFastStringFactory = 
{ 0xee02d369, 0x99bd, 0x40c2, { 0x8c, 0x5b, 0x9c, 0xfa, 0xf, 0x36, 0x14, 0xd5 } };


#endif // !defined(AFX_IBASE_H__AD932F18_5171_4421_9135_1B466A0D8227__INCLUDED_)
