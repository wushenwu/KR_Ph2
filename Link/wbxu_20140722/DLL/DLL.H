#ifndef DLL_H_05BA1D4D_2CFC_4118_9C1A_E472D6DBAF4A

#define DLL_H_05BA1D4D_2CFC_4118_9C1A_E472D6DBAF4A

#ifdef _USRDLL  //处理导入、导出
    #define EXPORT_IMPORT __declspec(dllexport)
#else
    #define EXPORT_IMPORT __declspec(dllimport)
#endif

#define CALL   __stdcall    //调用约定

extern "C"
{
    EXPORT_IMPORT extern int g_nData;

    EXPORT_IMPORT int CALL Add(int x, int y);

    EXPORT_IMPORT void CALL ShowCurPath(void);

};

class EXPORT_IMPORT CTest
{
public:
    CTest();
    CTest(int n);
    ~CTest();

    void SayHello(void);

    static int nCount;    
};

#ifdef _USRDLL
    int CTest::nCount = 0;  //error C2491: 'CTest::nCount' :
                        //definition of dllimport static data member not allowed
#endif

#endif