#ifndef MYCOPY_H_AEB3180A_C94E_415b_9BB0_DD12EF1BCE99

#define MYCOPY_H_AEB3180A_C94E_415b_9BB0_DD12EF1BCE99

#define  SUCCESS    0
#define  ERROR      -1

/*
Function: 拷贝文件，每4byte进行

Remark  : 利用ferror, perror 对错误处理进行了改进
*/
int
mycopy_v2(const char *pfilesrc, const char *pfiledst);

#endif

