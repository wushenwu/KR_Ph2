#include <stdio.h>
#include "MyCopy.h"

int
mycopy_v2(const char *pfilesrc, const char *pfiledst)
{
    int result       = SUCCESS;
    FILE *fpsrc      = NULL;
    FILE *fpdst      = NULL;
    long lnfsize    =  0;
    unsigned ncount  = 0;
    unsigned nremain = 0;
    char buf[8]      = {0};
    unsigned i       = 0;
    
    fpsrc = fopen(pfilesrc, "rb");
    if (NULL == fpsrc)
    {
        result = ERROR;
        goto V2_ERROR_PROCESS;
    }
    
    fpdst = fopen(pfiledst, "wb");
    if (NULL == fpdst)
    {
        result = ERROR;
        goto V2_ERROR_PROCESS;
    }
    
    //get file size, 
    fseek(fpsrc, 0, SEEK_END);
    if (ferror(fpsrc))
    {
        perror("mycopy_v2 fseek error");
        
        result = ERROR;
        goto V2_ERROR_PROCESS;
    }

    lnfsize = ftell(fpsrc);
    if (-1L == lnfsize)
    {
        result = 0;
        goto V2_ERROR_PROCESS;
    }
    
    //restore to the beginning
    fseek(fpsrc, 0, SEEK_SET);
    
    //read 4 bytes every time.
    ncount  = lnfsize >> 2;     //ncount  = lnfsize / sizeof(int);
    nremain = lnfsize & 3;      //nremain = lnfsize % sizeof(int);
    
    //read and write now every 4 bytes
    for (i = 0; i < ncount; i++)
    {
        fread(buf, sizeof(int), 1, fpsrc);
        if (ferror(fpsrc))
        {
            perror("Read Error When Copy 4 bytes");

            result = ERROR;
            goto V2_ERROR_PROCESS;
        }
        
        fwrite(buf, sizeof(int), 1, fpdst);
        if (ferror(fpdst))
        {
            perror("Write Error When Copy 4 bytes");

            result = ERROR;
            goto V2_ERROR_PROCESS;
        }
    }//end for copy 4bytes everytime
    
    //deal with the remaining
    if (0 == nremain)
    {
        goto V2_ERROR_PROCESS;
    }
    
    fread(buf, nremain, 1, fpsrc);
    if (ferror(fpsrc))
    {
        perror("Read Error When Copy remained bytes");

        result = ERROR;
        goto V2_ERROR_PROCESS;
    }
    
    fwrite(buf, nremain, 1, fpdst);
    if (ferror(fpdst))
    {
        perror("Write Error When Write remained bytes");

        result = ERROR;
        goto V2_ERROR_PROCESS;
    }
    
V2_ERROR_PROCESS:
    if (fpsrc)
    {
        fclose(fpsrc);
        fpsrc = NULL;
    }
    
    if (fpdst)
    {
        fclose(fpdst);
        fpdst = NULL;
    }
    
    return result;
}