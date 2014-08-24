// IFastString.h: interface for the IFastString class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_IFASTSTRING_H__D7702A58_7844_4405_A40B_DE1D13D3F206__INCLUDED_)
#define AFX_IFASTSTRING_H__D7702A58_7844_4405_A40B_DE1D13D3F206__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/*
��������Ϊ�ӿڣ�
1��������Խӿڽ��й淶
2�������������������Դ�������
*/

#ifdef _USRDLL
    #define IMPORT_EXPORT   __declspec(dllexport)
#else
    #define IMPORT_EXPORT   __declspec(dllimport)
#endif

class IFastString  
{
public:
    virtual ~IFastString() {}

public:
    virtual int GetLen() = 0;
    virtual int Find(const char *psz) = 0;
};

extern "C"
{
    IMPORT_EXPORT IFastString *CreateObject(const char *psz);

    //ReleaseObject Ҳ����û��Ҫ���ã���ΪIFastString��Delete�ӿڶ�����Ҳ����
    IMPORT_EXPORT void ReleaseObject(IFastString *pobj);    
};

typedef IFastString *(*PFNCreateObject)(const char *psz);
typedef void (*PFNReleaseObject)(IFastString *pobj);

#endif // !defined(AFX_IFASTSTRING_H__D7702A58_7844_4405_A40B_DE1D13D3F206__INCLUDED_)
