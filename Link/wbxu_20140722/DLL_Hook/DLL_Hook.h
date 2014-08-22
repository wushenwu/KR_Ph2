
int* __stdcall GetData();
typedef int* (__stdcall *GET_DATA)();

int __stdcall Add(int a, int b);
typedef int (__stdcall *ADD)(int,int);

void __stdcall MyShowMsg(const char *pszMsg);
typedef void (__stdcall *MY_SHOW_MSG)(const char *);

class __declspec(dllexport) CTest
{
public:
    CTest();
    CTest(int n);
    ~CTest();
    void ShowMsg(const char *pszMsg);
};