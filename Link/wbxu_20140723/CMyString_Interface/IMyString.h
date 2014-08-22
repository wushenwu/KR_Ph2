#ifndef IMYSTRING_H_EB5003E5_53E6_4d52_94EE_FCA8FB2B78FD

#define IMYSTRING_H_EB5003E5_53E6_4d52_94EE_FCA8FB2B78FD

#include "CMyString.h"

//这是CMyString的调用接口， 仅导出了CreateOjbect, ReleaseObject

#ifdef _USRDLL
    #define EXPORT_IMPORT   __declspec(dllexport)
#else
    #define EXPORT_IMPORT   __declspec(dllimport)
#endif

#define  CALL   __stdcall

extern "C"
{
    //在堆上产生对象，并返回使用
    EXPORT_IMPORT CMyString * CALL CreateObject();              
    
    //对CreateObject产生的对象，进行释放
    EXPORT_IMPORT void  CALL ReleaseObject(CMyString *pobj);    
}

typedef CMyString *(CALL *PFNCreateObject)();
typedef void (CALL *PFNReleaseObject)(CMyString *pobj);

#endif
