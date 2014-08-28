// IFastString.h: interface for the IFastString class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_IFASTSTRING_H__27554D4A_82B8_402F_943A_D6EE0FD219CA__INCLUDED_)
#define AFX_IFASTSTRING_H__27554D4A_82B8_402F_943A_D6EE0FD219CA__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "IBase.h"

//////////////////////////////////////////////////////////////////////////
//IFastString
class IFastString : public IBase  
{
public:
    virtual ~IFastString() {}
    
public:
    virtual HRESULT SetString(const char *psz) = 0;     //传入字符串       
    virtual HRESULT GetLen(unsigned long *pnLen) = 0;    //获取字符串的长度     
    virtual HRESULT Find(const char *psz,               //要查找的字符串
                        unsigned long *pnIndex) = 0;     //查找到，在原串中的位置
};

// {9D3F50E1-3CFF-491f-BB97-C072C3E46A7C}
static const GUID IID_IFastString = 
{ 0x9d3f50e1, 0x3cff, 0x491f, { 0xbb, 0x97, 0xc0, 0x72, 0xc3, 0xe4, 0x6a, 0x7c } };


#endif // !defined(AFX_IFASTSTRING_H__27554D4A_82B8_402F_943A_D6EE0FD219CA__INCLUDED_)
