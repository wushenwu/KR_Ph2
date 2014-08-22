/*
要求不包含任何头文件，让代码运行
1. 利用#define, typedef完成类型的定义等
2. 解决MessageBoxA的调用链接
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
                   HINSTANCE hInstance,      //应用程序实例句柄
                   HINSTANCE hPrevInstance,  //win32为NULL
                   LPSTR lpCmdLine,          //命令行参数
                   int nCmdShow              //显示方式
                   )
{
    MessageBoxA(NULL, "Hello World!", "title", MB_OK);
    return 0;
}

