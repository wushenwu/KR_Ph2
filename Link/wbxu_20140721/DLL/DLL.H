#ifndef DLL_H_05BA1D4D_2CFC_4118_9C1A_E472D6DBAF4A

#define DLL_H_05BA1D4D_2CFC_4118_9C1A_E472D6DBAF4A

#ifdef _USRDLL  //处理导入、导出

#define EXPORT_IMPORT   extern "C" __declspec(dllexport)

#else

#define EXPORT_IMPORT   extern "C" __declspec(dllimport)

#endif

#define CALL   __stdcall    //调用约定

EXPORT_IMPORT extern int g_nData;

EXPORT_IMPORT int CALL Add(int x, int y);

EXPORT_IMPORT void CALL ShowCurPath(void);

#endif