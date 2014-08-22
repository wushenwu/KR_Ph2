// IWorkItemBase.h: interface for the IWorkItemBase class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_IWORKITEMBASE_H__4F4FC0C0_0359_4FE3_80B2_BE181A52CCF8__INCLUDED_)
#define AFX_IWORKITEMBASE_H__4F4FC0C0_0359_4FE3_80B2_BE181A52CCF8__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

class IWorkItemBase  
{
public:
    virtual ~IWorkItemBase() {}

public:
    virtual void Execute() = 0;
    virtual void Abort() = 0;
};

#endif // !defined(AFX_IWORKITEMBASE_H__4F4FC0C0_0359_4FE3_80B2_BE181A52CCF8__INCLUDED_)
