/*
Ҫ�󲻰����κ�ͷ�ļ����ô�������
1. ����#define, typedef������͵Ķ����
2. ���MessageBoxA�ĵ�������
*/

//error C2146: syntax error : missing ';' before identifier 'WinMain'
#define  WINAPI __stdcall

//error C2065: 'HINSTANCE' : undeclared identifier
#define DECLARE_HANDLE(name) struct name##__ { int unused; }; typedef struct name##__ *name
DECLARE_HANDLE(HINSTANCE);

//error C2061: syntax error : identifier 'LPSTR'
#define  CHAR char
typedef CHAR * LPSTR;

//
DECLARE_HANDLE(HWND);

#define  CONST const
typedef CONST CHAR * LPCSTR;

typedef unsigned int UINT;

//
#define  NULL 0

#define MB_OK   0x00000000L

#define WINUSERAPI DECLSPEC_IMPORT
#define DECLSPEC_IMPORT __declspec(dllimport)

//error C2065: 'MessageBoxA' : undeclared identified
// extern "C" 
// {
//     WINUSERAPI
//     int
//     WINAPI
//     MessageBoxA(
//                 HWND hWnd ,
//                 LPCSTR lpText,
//                 LPCSTR lpCaption,
//                 UINT uType);
// }


int WINAPI WinMain(
                   HINSTANCE hInstance,      //Ӧ�ó���ʵ�����
                   HINSTANCE hPrevInstance,  //win32ΪNULL
                   LPSTR lpCmdLine,          //�����в���
                   int nCmdShow              //��ʾ��ʽ
                   )
{
    MessageBoxA(NULL, "Hello World!", "title", MB_OK);
    return 0;
}

