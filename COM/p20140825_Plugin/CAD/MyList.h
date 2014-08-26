// MyList.h: interface for the CMyList class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MYLIST_H__5C6589CB_F0F6_4497_88D7_360E89259F8E__INCLUDED_)
#define AFX_MYLIST_H__5C6589CB_F0F6_4497_88D7_360E89259F8E__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include <afxtempl.h>

template<typename T>
class CMyList: public CList<T *, T *>
{
public:
    CMyList() { }

	virtual ~CMyList()
    {
        POSITION pos = GetHeadPosition();
        while(pos)
        {
            T *pobj = GetNext(pos);
            delete pobj;
            pobj = NULL;
        }
    }
};


#endif // !defined(AFX_MYLIST_H__5C6589CB_F0F6_4497_88D7_360E89259F8E__INCLUDED_)
