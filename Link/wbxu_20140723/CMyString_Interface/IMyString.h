#ifndef IMYSTRING_H_EB5003E5_53E6_4d52_94EE_FCA8FB2B78FD

#define IMYSTRING_H_EB5003E5_53E6_4d52_94EE_FCA8FB2B78FD

#include "CMyString.h"

//����CMyString�ĵ��ýӿڣ� ��������CreateOjbect, ReleaseObject

#ifdef _USRDLL
    #define EXPORT_IMPORT   __declspec(dllexport)
#else
    #define EXPORT_IMPORT   __declspec(dllimport)
#endif

#define  CALL   __stdcall

extern "C"
{
    //�ڶ��ϲ������󣬲�����ʹ��
    EXPORT_IMPORT CMyString * CALL CreateObject();              
    
    //��CreateObject�����Ķ��󣬽����ͷ�
    EXPORT_IMPORT void  CALL ReleaseObject(CMyString *pobj);    
}

typedef CMyString *(CALL *PFNCreateObject)();
typedef void (CALL *PFNReleaseObject)(CMyString *pobj);

#endif
