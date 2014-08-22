#line 1 "e:\\programming\\git\\ph2\\sdk\\selfnote\\wbxu_20140620\\winmain\\winmain.cpp"











struct HINSTANCE__ { int unused; }; typedef struct HINSTANCE__ *HINSTANCE;



typedef char * LPSTR;


struct HWND__ { int unused; }; typedef struct HWND__ *HWND;


typedef const char * LPCSTR;

typedef unsigned int UINT;






















MessageBoxA(
            HWND hWnd ,
            LPCSTR lpText,
            LPCSTR lpCaption,
                UINT uType)
{
    int i;
    i = 0;
}
  

int __stdcall WinMain(
                   HINSTANCE hInstance,      
                   HINSTANCE hPrevInstance,  
                   LPSTR lpCmdLine,          
                   int nCmdShow              
                   )
{
    MessageBoxA(0, "Hello World!", "title", 0x00000000L);
    return 0;
}

