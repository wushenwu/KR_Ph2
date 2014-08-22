#ifndef DLL_DEF_H_8425D22D_1497_4c92_8152_C296C3BCF3E4

#define DLL_DEF_H_8425D22D_1497_4c92_8152_C296C3BCF3E4

//使用def/export 导出函数

#define CALL __stdcall

extern "C"
{
    void CALL SayHello(void);
    int * CALL GetAddr(void);

    //函数指针
    typedef void (CALL *PFNSayHello)(void);
    typedef int * (CALL *PFNGetAddr)(void);
};

#endif

