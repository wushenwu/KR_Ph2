#line 1 "e:\\programming\\git\\ph2\\link\\program\\p20140808_spy\\wbxu_20140808\\injectdll\\process.cpp"
#line 1 "e:\\programming\\git\\ph2\\link\\program\\p20140808_spy\\wbxu_20140808\\injectdll\\stdafx.h"









#pragma once
#line 12 "e:\\programming\\git\\ph2\\link\\program\\p20140808_spy\\wbxu_20140808\\injectdll\\stdafx.h"





#line 1 "e:\\program\\vc98\\include\\windows.h"


























#line 28 "e:\\program\\vc98\\include\\windows.h"














#line 43 "e:\\program\\vc98\\include\\windows.h"





#pragma once
#line 50 "e:\\program\\vc98\\include\\windows.h"

















































#line 100 "e:\\program\\vc98\\include\\windows.h"




















#line 121 "e:\\program\\vc98\\include\\windows.h"



#line 125 "e:\\program\\vc98\\include\\windows.h"



#line 129 "e:\\program\\vc98\\include\\windows.h"



#line 133 "e:\\program\\vc98\\include\\windows.h"



#line 137 "e:\\program\\vc98\\include\\windows.h"



#line 141 "e:\\program\\vc98\\include\\windows.h"



#line 145 "e:\\program\\vc98\\include\\windows.h"




#line 150 "e:\\program\\vc98\\include\\windows.h"
#line 151 "e:\\program\\vc98\\include\\windows.h"



#pragma warning(disable:4001)
#pragma warning(disable:4201)
#pragma warning(disable:4214)
#pragma warning(disable:4514)
#line 159 "e:\\program\\vc98\\include\\windows.h"
#line 1 "e:\\program\\vc98\\include\\excpt.h"















#pragma once
#line 18 "e:\\program\\vc98\\include\\excpt.h"






#line 25 "e:\\program\\vc98\\include\\excpt.h"







#pragma pack(push,8)
#line 34 "e:\\program\\vc98\\include\\excpt.h"


extern "C" {
#line 38 "e:\\program\\vc98\\include\\excpt.h"










#line 49 "e:\\program\\vc98\\include\\excpt.h"
#line 50 "e:\\program\\vc98\\include\\excpt.h"






#line 57 "e:\\program\\vc98\\include\\excpt.h"








#line 66 "e:\\program\\vc98\\include\\excpt.h"
#line 67 "e:\\program\\vc98\\include\\excpt.h"





typedef enum _EXCEPTION_DISPOSITION {
    ExceptionContinueExecution,
    ExceptionContinueSearch,
    ExceptionNestedException,
    ExceptionCollidedUnwind
} EXCEPTION_DISPOSITION;











struct _EXCEPTION_RECORD;
struct _CONTEXT;

EXCEPTION_DISPOSITION __cdecl _except_handler (
    struct _EXCEPTION_RECORD *ExceptionRecord,
    void * EstablisherFrame,
    struct _CONTEXT *ContextRecord,
    void * DispatcherContext
    );



















#line 118 "e:\\program\\vc98\\include\\excpt.h"















unsigned long __cdecl _exception_code(void);
void *        __cdecl _exception_info(void);
int           __cdecl _abnormal_termination(void);

#line 138 "e:\\program\\vc98\\include\\excpt.h"













}
#line 153 "e:\\program\\vc98\\include\\excpt.h"


#pragma pack(pop)
#line 157 "e:\\program\\vc98\\include\\excpt.h"

#line 159 "e:\\program\\vc98\\include\\excpt.h"
#line 160 "e:\\program\\vc98\\include\\windows.h"
#line 1 "e:\\program\\vc98\\include\\stdarg.h"















#pragma once
#line 18 "e:\\program\\vc98\\include\\stdarg.h"






#line 25 "e:\\program\\vc98\\include\\stdarg.h"







#pragma pack(push,8)
#line 34 "e:\\program\\vc98\\include\\stdarg.h"


extern "C" {
#line 38 "e:\\program\\vc98\\include\\stdarg.h"










typedef char *  va_list;
#line 50 "e:\\program\\vc98\\include\\stdarg.h"

#line 52 "e:\\program\\vc98\\include\\stdarg.h"




































































































#line 153 "e:\\program\\vc98\\include\\stdarg.h"



}
#line 158 "e:\\program\\vc98\\include\\stdarg.h"


#pragma pack(pop)
#line 162 "e:\\program\\vc98\\include\\stdarg.h"

#line 164 "e:\\program\\vc98\\include\\stdarg.h"
#line 161 "e:\\program\\vc98\\include\\windows.h"
#line 162 "e:\\program\\vc98\\include\\windows.h"

#line 1 "e:\\program\\vc98\\include\\windef.h"















#line 17 "e:\\program\\vc98\\include\\windef.h"
#line 18 "e:\\program\\vc98\\include\\windef.h"












extern "C" {
#line 32 "e:\\program\\vc98\\include\\windef.h"











typedef unsigned long ULONG;
typedef ULONG *PULONG;
typedef unsigned short USHORT;
typedef USHORT *PUSHORT;
typedef unsigned char UCHAR;
typedef UCHAR *PUCHAR;
typedef char *PSZ;
#line 51 "e:\\program\\vc98\\include\\windef.h"








#line 60 "e:\\program\\vc98\\include\\windef.h"
#line 61 "e:\\program\\vc98\\include\\windef.h"



#line 65 "e:\\program\\vc98\\include\\windef.h"



#line 69 "e:\\program\\vc98\\include\\windef.h"



#line 73 "e:\\program\\vc98\\include\\windef.h"



#line 77 "e:\\program\\vc98\\include\\windef.h"



#line 81 "e:\\program\\vc98\\include\\windef.h"











#line 93 "e:\\program\\vc98\\include\\windef.h"






#line 100 "e:\\program\\vc98\\include\\windef.h"



#line 104 "e:\\program\\vc98\\include\\windef.h"
#line 105 "e:\\program\\vc98\\include\\windef.h"


























#line 132 "e:\\program\\vc98\\include\\windef.h"







#line 140 "e:\\program\\vc98\\include\\windef.h"

typedef unsigned long       DWORD;
typedef int                 BOOL;
typedef unsigned char       BYTE;
typedef unsigned short      WORD;
typedef float               FLOAT;
typedef FLOAT               *PFLOAT;
typedef BOOL            *PBOOL;
typedef BOOL             *LPBOOL;
typedef BYTE            *PBYTE;
typedef BYTE             *LPBYTE;
typedef int             *PINT;
typedef int              *LPINT;
typedef WORD            *PWORD;
typedef WORD             *LPWORD;
typedef long             *LPLONG;
typedef DWORD           *PDWORD;
typedef DWORD            *LPDWORD;
typedef void             *LPVOID;
typedef const void       *LPCVOID;

typedef int                 INT;
typedef unsigned int        UINT;
typedef unsigned int        *PUINT;


#line 1 "e:\\program\\vc98\\include\\winnt.h"





















extern "C" {
#line 24 "e:\\program\\vc98\\include\\winnt.h"

#line 1 "e:\\program\\vc98\\include\\ctype.h"














#pragma once
#line 17 "e:\\program\\vc98\\include\\ctype.h"






#line 24 "e:\\program\\vc98\\include\\ctype.h"



extern "C" {
#line 29 "e:\\program\\vc98\\include\\ctype.h"


















#line 48 "e:\\program\\vc98\\include\\ctype.h"












typedef unsigned short wchar_t;

#line 63 "e:\\program\\vc98\\include\\ctype.h"



typedef wchar_t wint_t;
typedef wchar_t wctype_t;

#line 70 "e:\\program\\vc98\\include\\ctype.h"



#line 74 "e:\\program\\vc98\\include\\ctype.h"
#line 75 "e:\\program\\vc98\\include\\ctype.h"



 extern unsigned short _ctype[];
 extern unsigned short *_pctype;

 extern wctype_t *_pwctype;
#line 83 "e:\\program\\vc98\\include\\ctype.h"
#line 84 "e:\\program\\vc98\\include\\ctype.h"








                                













 int __cdecl _isctype(int, int);
 int __cdecl isalpha(int);
 int __cdecl isupper(int);
 int __cdecl islower(int);
 int __cdecl isdigit(int);
 int __cdecl isxdigit(int);
 int __cdecl isspace(int);
 int __cdecl ispunct(int);
 int __cdecl isalnum(int);
 int __cdecl isprint(int);
 int __cdecl isgraph(int);
 int __cdecl iscntrl(int);
 int __cdecl toupper(int);
 int __cdecl tolower(int);
 int __cdecl _tolower(int);
 int __cdecl _toupper(int);
 int __cdecl __isascii(int);
 int __cdecl __toascii(int);
 int __cdecl __iscsymf(int);
 int __cdecl __iscsym(int);

#line 128 "e:\\program\\vc98\\include\\ctype.h"









 int __cdecl iswalpha(wint_t);
 int __cdecl iswupper(wint_t);
 int __cdecl iswlower(wint_t);
 int __cdecl iswdigit(wint_t);
 int __cdecl iswxdigit(wint_t);
 int __cdecl iswspace(wint_t);
 int __cdecl iswpunct(wint_t);
 int __cdecl iswalnum(wint_t);
 int __cdecl iswprint(wint_t);
 int __cdecl iswgraph(wint_t);
 int __cdecl iswcntrl(wint_t);
 int __cdecl iswascii(wint_t);
 int __cdecl isleadbyte(int);

 wchar_t __cdecl towupper(wchar_t);
 wchar_t __cdecl towlower(wchar_t);

 int __cdecl iswctype(wint_t, wctype_t);


 int __cdecl is_wctype(wint_t, wctype_t);



#line 162 "e:\\program\\vc98\\include\\ctype.h"
#line 163 "e:\\program\\vc98\\include\\ctype.h"













 extern int __mb_cur_max;

#line 179 "e:\\program\\vc98\\include\\ctype.h"








































































#line 252 "e:\\program\\vc98\\include\\ctype.h"

#line 254 "e:\\program\\vc98\\include\\ctype.h"








































#line 295 "e:\\program\\vc98\\include\\ctype.h"

#line 297 "e:\\program\\vc98\\include\\ctype.h"






#line 304 "e:\\program\\vc98\\include\\ctype.h"
















#line 321 "e:\\program\\vc98\\include\\ctype.h"

#line 323 "e:\\program\\vc98\\include\\ctype.h"


}
#line 327 "e:\\program\\vc98\\include\\ctype.h"


#line 330 "e:\\program\\vc98\\include\\ctype.h"
#line 26 "e:\\program\\vc98\\include\\winnt.h"




#line 31 "e:\\program\\vc98\\include\\winnt.h"

#line 33 "e:\\program\\vc98\\include\\winnt.h"



#line 37 "e:\\program\\vc98\\include\\winnt.h"

#line 39 "e:\\program\\vc98\\include\\winnt.h"



#line 43 "e:\\program\\vc98\\include\\winnt.h"



#line 47 "e:\\program\\vc98\\include\\winnt.h"

#line 49 "e:\\program\\vc98\\include\\winnt.h"































#line 81 "e:\\program\\vc98\\include\\winnt.h"



#line 85 "e:\\program\\vc98\\include\\winnt.h"

typedef unsigned long POINTER_64_INT;
#line 88 "e:\\program\\vc98\\include\\winnt.h"

#line 90 "e:\\program\\vc98\\include\\winnt.h"

#line 1 "e:\\program\\vc98\\include\\basetsd.h"
























extern "C" {
#line 27 "e:\\program\\vc98\\include\\basetsd.h"





typedef int LONG32, *PLONG32;
typedef int INT32, *PINT32;





typedef unsigned int ULONG32, *PULONG32;
typedef unsigned int DWORD32, *PDWORD32;
typedef unsigned int UINT32, *PUINT32;

















































































typedef long INT_PTR, *PINT_PTR;
typedef unsigned long UINT_PTR, *PUINT_PTR;





typedef unsigned short UHALF_PTR, *PUHALF_PTR;
typedef short HALF_PTR, *PHALF_PTR;











#line 144 "e:\\program\\vc98\\include\\basetsd.h"






typedef UINT_PTR SIZE_T, *PSIZE_T;
typedef INT_PTR SSIZE_T, *PSSIZE_T;





typedef __int64 LONG64, *PLONG64;
typedef __int64 INT64, *PINT64;






typedef unsigned __int64 ULONG64, *PULONG64;
typedef unsigned __int64 DWORD64, *PDWORD64;
typedef unsigned __int64 UINT64, *PUINT64;


}
#line 172 "e:\\program\\vc98\\include\\basetsd.h"

#line 174 "e:\\program\\vc98\\include\\basetsd.h"
#line 92 "e:\\program\\vc98\\include\\winnt.h"






#line 99 "e:\\program\\vc98\\include\\winnt.h"





#line 105 "e:\\program\\vc98\\include\\winnt.h"

typedef void *PVOID;
typedef void *  PVOID64;







#line 116 "e:\\program\\vc98\\include\\winnt.h"









#line 126 "e:\\program\\vc98\\include\\winnt.h"








typedef char CHAR;
typedef short SHORT;
typedef long LONG;
#line 138 "e:\\program\\vc98\\include\\winnt.h"






typedef wchar_t WCHAR;    



#line 149 "e:\\program\\vc98\\include\\winnt.h"

typedef WCHAR *PWCHAR;
typedef WCHAR *LPWCH, *PWCH;
typedef const WCHAR *LPCWCH, *PCWCH;
typedef WCHAR *NWPSTR;
typedef WCHAR *LPWSTR, *PWSTR;

typedef const WCHAR *LPCWSTR, *PCWSTR;




typedef CHAR *PCHAR;
typedef CHAR *LPCH, *PCH;

typedef const CHAR *LPCCH, *PCCH;
typedef CHAR *NPSTR;
typedef CHAR *LPSTR, *PSTR;
typedef const CHAR *LPCSTR, *PCSTR;





















typedef char TCHAR, *PTCHAR;
typedef unsigned char TBYTE , *PTBYTE ;

#line 193 "e:\\program\\vc98\\include\\winnt.h"

typedef LPSTR LPTCH, PTCH;
typedef LPSTR PTSTR, LPTSTR;
typedef LPCSTR LPCTSTR;


#line 200 "e:\\program\\vc98\\include\\winnt.h"



typedef SHORT *PSHORT;  
typedef LONG *PLONG;    


typedef void *HANDLE;




#line 213 "e:\\program\\vc98\\include\\winnt.h"
typedef HANDLE *PHANDLE;





typedef BYTE   FCHAR;
typedef WORD   FSHORT;
typedef DWORD  FLONG;





typedef LONG HRESULT;

#line 230 "e:\\program\\vc98\\include\\winnt.h"


    


#line 236 "e:\\program\\vc98\\include\\winnt.h"









#line 246 "e:\\program\\vc98\\include\\winnt.h"













#line 260 "e:\\program\\vc98\\include\\winnt.h"
















typedef char CCHAR;          
typedef DWORD LCID;         
typedef PDWORD PLCID;       
typedef WORD   LANGID;      
  
  





















typedef struct _FLOAT128 {
    __int64 LowPart;
    __int64 HighPart;
} FLOAT128;

typedef FLOAT128 *PFLOAT128;






#line 316 "e:\\program\\vc98\\include\\winnt.h"









typedef __int64 LONGLONG;
typedef unsigned __int64 ULONGLONG;














#line 342 "e:\\program\\vc98\\include\\winnt.h"

typedef LONGLONG *PLONGLONG;
typedef ULONGLONG *PULONGLONG;



typedef LONGLONG USN;



#line 353 "e:\\program\\vc98\\include\\winnt.h"
typedef union _LARGE_INTEGER {
    struct {
        DWORD LowPart;
        LONG HighPart;
    };
    struct {
        DWORD LowPart;
        LONG HighPart;
    } u;
#line 363 "e:\\program\\vc98\\include\\winnt.h"
    LONGLONG QuadPart;
} LARGE_INTEGER;

typedef LARGE_INTEGER *PLARGE_INTEGER;




#line 372 "e:\\program\\vc98\\include\\winnt.h"
typedef union _ULARGE_INTEGER {
    struct {
        DWORD LowPart;
        DWORD HighPart;
    };
    struct {
        DWORD LowPart;
        DWORD HighPart;
    } u;
#line 382 "e:\\program\\vc98\\include\\winnt.h"
    ULONGLONG QuadPart;
} ULARGE_INTEGER;

typedef ULARGE_INTEGER *PULARGE_INTEGER;








typedef struct _LUID {
    DWORD LowPart;
    LONG HighPart;
} LUID, *PLUID;


typedef ULONGLONG  DWORDLONG;
typedef DWORDLONG *PDWORDLONG;






















#line 425 "e:\\program\\vc98\\include\\winnt.h"































































#line 489 "e:\\program\\vc98\\include\\winnt.h"











ULONGLONG
__stdcall
Int64ShllMod32 (
    ULONGLONG Value,
    DWORD ShiftCount
    );

LONGLONG
__stdcall
Int64ShraMod32 (
    LONGLONG Value,
    DWORD ShiftCount
    );

ULONGLONG
__stdcall
Int64ShrlMod32 (
    ULONGLONG Value,
    DWORD ShiftCount
    );

#pragma warning(disable:4035)               

__inline ULONGLONG
__stdcall
Int64ShllMod32 (
    ULONGLONG Value,
    DWORD ShiftCount
    )
{
    __asm    {
        mov     ecx, ShiftCount
        mov     eax, dword ptr [Value]
        mov     edx, dword ptr [Value+4]
        shld    edx, eax, cl
        shl     eax, cl
    }
}

__inline LONGLONG
__stdcall
Int64ShraMod32 (
    LONGLONG Value,
    DWORD ShiftCount
    )
{
    __asm {
        mov     ecx, ShiftCount
        mov     eax, dword ptr [Value]
        mov     edx, dword ptr [Value+4]
        shrd    eax, edx, cl
        sar     edx, cl
    }
}

__inline ULONGLONG
__stdcall
Int64ShrlMod32 (
    ULONGLONG Value,
    DWORD ShiftCount
    )
{
    __asm    {
        mov     ecx, ShiftCount
        mov     eax, dword ptr [Value]
        mov     edx, dword ptr [Value+4]
        shrd    eax, edx, cl
        shr     edx, cl
    }
}

#pragma warning(default:4035)




























































#line 633 "e:\\program\\vc98\\include\\winnt.h"



typedef BYTE  BOOLEAN;           
typedef BOOLEAN *PBOOLEAN;       





typedef struct _LIST_ENTRY {
   struct _LIST_ENTRY *Flink;
   struct _LIST_ENTRY *Blink;
} LIST_ENTRY, *PLIST_ENTRY, * PRLIST_ENTRY;






typedef struct _SINGLE_LIST_ENTRY {
    struct _SINGLE_LIST_ENTRY *Next;
} SINGLE_LIST_ENTRY, *PSINGLE_LIST_ENTRY;








typedef struct _GUID {          
    DWORD Data1;
    WORD   Data2;
    WORD   Data3;
    BYTE  Data4[8];
} GUID;

#line 672 "e:\\program\\vc98\\include\\winnt.h"




typedef struct  _OBJECTID {     
    GUID Lineage;
    DWORD Uniquifier;
} OBJECTID;
#line 681 "e:\\program\\vc98\\include\\winnt.h"















































































































































































































































































































































































#line 1049 "e:\\program\\vc98\\include\\winnt.h"



  

































  
#line 1088 "e:\\program\\vc98\\include\\winnt.h"




typedef UINT_PTR KSPIN_LOCK;
typedef KSPIN_LOCK *PKSPIN_LOCK;














#line 1109 "e:\\program\\vc98\\include\\winnt.h"
struct _TEB *
NtCurrentTeb(void);
#line 1112 "e:\\program\\vc98\\include\\winnt.h"








































































































































































































































































































































































































#pragma warning(disable:4164)   
                                

#pragma function(_enable)
#pragma function(_disable)
#line 1510 "e:\\program\\vc98\\include\\winnt.h"

#pragma warning(default:4164)   

#line 1514 "e:\\program\\vc98\\include\\winnt.h"
#line 1515 "e:\\program\\vc98\\include\\winnt.h"



#pragma warning (disable:4035)        
_inline PVOID GetFiberData( void ) { __asm {
                                        mov eax, fs:[0x10]
                                        mov eax,[eax]
                                        }
                                     }
_inline PVOID GetCurrentFiber( void ) { __asm mov eax, fs:[0x10] }

#pragma warning (default:4035)        
#line 1528 "e:\\program\\vc98\\include\\winnt.h"
































#line 1561 "e:\\program\\vc98\\include\\winnt.h"



typedef struct _FLOATING_SAVE_AREA {
    DWORD   ControlWord;
    DWORD   StatusWord;
    DWORD   TagWord;
    DWORD   ErrorOffset;
    DWORD   ErrorSelector;
    DWORD   DataOffset;
    DWORD   DataSelector;
    BYTE    RegisterArea[80];
    DWORD   Cr0NpxState;
} FLOATING_SAVE_AREA;

typedef FLOATING_SAVE_AREA *PFLOATING_SAVE_AREA;











typedef struct _CONTEXT {

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    DWORD ContextFlags;

    
    
    
    
    

    DWORD   Dr0;
    DWORD   Dr1;
    DWORD   Dr2;
    DWORD   Dr3;
    DWORD   Dr6;
    DWORD   Dr7;

    
    
    
    

    FLOATING_SAVE_AREA FloatSave;

    
    
    
    

    DWORD   SegGs;
    DWORD   SegFs;
    DWORD   SegEs;
    DWORD   SegDs;

    
    
    
    

    DWORD   Edi;
    DWORD   Esi;
    DWORD   Ebx;
    DWORD   Edx;
    DWORD   Ecx;
    DWORD   Eax;

    
    
    
    

    DWORD   Ebp;
    DWORD   Eip;
    DWORD   SegCs;              
    DWORD   EFlags;             
    DWORD   Esp;
    DWORD   SegSs;

    
    
    
    
    

    BYTE    ExtendedRegisters[512];

} CONTEXT;



typedef CONTEXT *PCONTEXT;



#line 1681 "e:\\program\\vc98\\include\\winnt.h"





typedef struct _LDT_ENTRY {
    WORD    LimitLow;
    WORD    BaseLow;
    union {
        struct {
            BYTE    BaseMid;
            BYTE    Flags1;     
            BYTE    Flags2;     
            BYTE    BaseHi;
        } Bytes;
        struct {
            DWORD   BaseMid : 8;
            DWORD   Type : 5;
            DWORD   Dpl : 2;
            DWORD   Pres : 1;
            DWORD   LimitHi : 4;
            DWORD   Sys : 1;
            DWORD   Reserved_0 : 1;
            DWORD   Default_Big : 1;
            DWORD   Granularity : 1;
            DWORD   BaseHi : 8;
        } Bits;
    } HighWord;
} LDT_ENTRY, *PLDT_ENTRY;

#line 1712 "e:\\program\\vc98\\include\\winnt.h"

























































































































































































































































































































































#line 2058 "e:\\program\\vc98\\include\\winnt.h"










#line 2069 "e:\\program\\vc98\\include\\winnt.h"





































































































































































































































#line 2299 "e:\\program\\vc98\\include\\winnt.h"




































































































































































































































#line 2528 "e:\\program\\vc98\\include\\winnt.h"















#line 2544 "e:\\program\\vc98\\include\\winnt.h"






































































































































































































































































































































































































































































































































































































typedef struct _EXCEPTION_RECORD {
    DWORD    ExceptionCode;
    DWORD ExceptionFlags;
    struct _EXCEPTION_RECORD *ExceptionRecord;
    PVOID ExceptionAddress;
    DWORD NumberParameters;
    UINT_PTR ExceptionInformation[15];
    } EXCEPTION_RECORD;

typedef EXCEPTION_RECORD *PEXCEPTION_RECORD;





typedef struct _EXCEPTION_POINTERS {
    PEXCEPTION_RECORD ExceptionRecord;
    PCONTEXT ContextRecord;
} EXCEPTION_POINTERS, *PEXCEPTION_POINTERS;
typedef PVOID PACCESS_TOKEN;            
typedef PVOID PSECURITY_DESCRIPTOR;     
typedef PVOID PSID;     







































typedef DWORD ACCESS_MASK;
typedef ACCESS_MASK *PACCESS_MASK;
























































typedef struct _GENERIC_MAPPING {
    ACCESS_MASK GenericRead;
    ACCESS_MASK GenericWrite;
    ACCESS_MASK GenericExecute;
    ACCESS_MASK GenericAll;
} GENERIC_MAPPING;
typedef GENERIC_MAPPING *PGENERIC_MAPPING;












#line 1 "e:\\program\\vc98\\include\\pshpack4.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "e:\\program\\vc98\\include\\pshpack4.h"
#pragma pack(4)


#line 32 "e:\\program\\vc98\\include\\pshpack4.h"
#line 33 "e:\\program\\vc98\\include\\pshpack4.h"
#line 3265 "e:\\program\\vc98\\include\\winnt.h"

typedef struct _LUID_AND_ATTRIBUTES {
    LUID Luid;
    DWORD Attributes;
    } LUID_AND_ATTRIBUTES, * PLUID_AND_ATTRIBUTES;
typedef LUID_AND_ATTRIBUTES LUID_AND_ATTRIBUTES_ARRAY[1];
typedef LUID_AND_ATTRIBUTES_ARRAY *PLUID_AND_ATTRIBUTES_ARRAY;

#line 1 "e:\\program\\vc98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "e:\\program\\vc98\\include\\poppack.h"


#line 36 "e:\\program\\vc98\\include\\poppack.h"
#line 37 "e:\\program\\vc98\\include\\poppack.h"
#line 3274 "e:\\program\\vc98\\include\\winnt.h"


































typedef struct _SID_IDENTIFIER_AUTHORITY {
    BYTE  Value[6];
} SID_IDENTIFIER_AUTHORITY, *PSID_IDENTIFIER_AUTHORITY;
#line 3312 "e:\\program\\vc98\\include\\winnt.h"




typedef struct _SID {
   BYTE  Revision;
   BYTE  SubAuthorityCount;
   SID_IDENTIFIER_AUTHORITY IdentifierAuthority;



   DWORD SubAuthority[1];
#line 3325 "e:\\program\\vc98\\include\\winnt.h"
} SID, *PISID;
#line 3327 "e:\\program\\vc98\\include\\winnt.h"




                                                

typedef enum _SID_NAME_USE {
    SidTypeUser = 1,
    SidTypeGroup,
    SidTypeDomain,
    SidTypeAlias,
    SidTypeWellKnownGroup,
    SidTypeDeletedAccount,
    SidTypeInvalid,
    SidTypeUnknown,
    SidTypeComputer
} SID_NAME_USE, *PSID_NAME_USE;

typedef struct _SID_AND_ATTRIBUTES {
    PSID Sid;
    DWORD Attributes;
    } SID_AND_ATTRIBUTES, * PSID_AND_ATTRIBUTES;

typedef SID_AND_ATTRIBUTES SID_AND_ATTRIBUTES_ARRAY[1];
typedef SID_AND_ATTRIBUTES_ARRAY *PSID_AND_ATTRIBUTES_ARRAY;






















































































































































































































typedef struct _ACL {
    BYTE  AclRevision;
    BYTE  Sbz1;
    WORD   AclSize;
    WORD   AceCount;
    WORD   Sbz2;
} ACL;
typedef ACL *PACL;





















typedef struct _ACE_HEADER {
    BYTE  AceType;
    BYTE  AceFlags;
    WORD   AceSize;
} ACE_HEADER;
typedef ACE_HEADER *PACE_HEADER;




























































































typedef struct _ACCESS_ALLOWED_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
} ACCESS_ALLOWED_ACE;

typedef ACCESS_ALLOWED_ACE *PACCESS_ALLOWED_ACE;

typedef struct _ACCESS_DENIED_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
} ACCESS_DENIED_ACE;
typedef ACCESS_DENIED_ACE *PACCESS_DENIED_ACE;

typedef struct _SYSTEM_AUDIT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
} SYSTEM_AUDIT_ACE;
typedef SYSTEM_AUDIT_ACE *PSYSTEM_AUDIT_ACE;

typedef struct _SYSTEM_ALARM_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
} SYSTEM_ALARM_ACE;
typedef SYSTEM_ALARM_ACE *PSYSTEM_ALARM_ACE;




typedef struct _ACCESS_ALLOWED_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
} ACCESS_ALLOWED_OBJECT_ACE, *PACCESS_ALLOWED_OBJECT_ACE;

typedef struct _ACCESS_DENIED_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
} ACCESS_DENIED_OBJECT_ACE, *PACCESS_DENIED_OBJECT_ACE;

typedef struct _SYSTEM_AUDIT_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
} SYSTEM_AUDIT_OBJECT_ACE, *PSYSTEM_AUDIT_OBJECT_ACE;

typedef struct _SYSTEM_ALARM_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
} SYSTEM_ALARM_OBJECT_ACE, *PSYSTEM_ALARM_OBJECT_ACE;















typedef enum _ACL_INFORMATION_CLASS {
    AclRevisionInformation = 1,
    AclSizeInformation
} ACL_INFORMATION_CLASS;






typedef struct _ACL_REVISION_INFORMATION {
    DWORD AclRevision;
} ACL_REVISION_INFORMATION;
typedef ACL_REVISION_INFORMATION *PACL_REVISION_INFORMATION;





typedef struct _ACL_SIZE_INFORMATION {
    DWORD AceCount;
    DWORD AclBytesInUse;
    DWORD AclBytesFree;
} ACL_SIZE_INFORMATION;
typedef ACL_SIZE_INFORMATION *PACL_SIZE_INFORMATION;


























typedef WORD   SECURITY_DESCRIPTOR_CONTROL, *PSECURITY_DESCRIPTOR_CONTROL;
























































































typedef struct _SECURITY_DESCRIPTOR_RELATIVE {
    BYTE  Revision;
    BYTE  Sbz1;
    SECURITY_DESCRIPTOR_CONTROL Control;
    DWORD Owner;
    DWORD Group;
    DWORD Sacl;
    DWORD Dacl;
    } SECURITY_DESCRIPTOR_RELATIVE, *PISECURITY_DESCRIPTOR_RELATIVE;

typedef struct _SECURITY_DESCRIPTOR {
   BYTE  Revision;
   BYTE  Sbz1;
   SECURITY_DESCRIPTOR_CONTROL Control;
   PSID Owner;
   PSID Group;
   PACL Sacl;
   PACL Dacl;

   } SECURITY_DESCRIPTOR, *PISECURITY_DESCRIPTOR;

















































typedef struct _OBJECT_TYPE_LIST {
    WORD   Level;
    WORD   Sbz;
    GUID *ObjectType;
} OBJECT_TYPE_LIST, *POBJECT_TYPE_LIST;















typedef enum _AUDIT_EVENT_TYPE {
    AuditEventObjectAccess,
    AuditEventDirectoryServiceAccess
} AUDIT_EVENT_TYPE, *PAUDIT_EVENT_TYPE;













































typedef struct _PRIVILEGE_SET {
    DWORD PrivilegeCount;
    DWORD Control;
    LUID_AND_ATTRIBUTES Privilege[1];
    } PRIVILEGE_SET, * PPRIVILEGE_SET;


















































typedef enum _SECURITY_IMPERSONATION_LEVEL {
    SecurityAnonymous,
    SecurityIdentification,
    SecurityImpersonation,
    SecurityDelegation
    } SECURITY_IMPERSONATION_LEVEL, * PSECURITY_IMPERSONATION_LEVEL;

























































typedef enum _TOKEN_TYPE {
    TokenPrimary = 1,
    TokenImpersonation
    } TOKEN_TYPE;
typedef TOKEN_TYPE *PTOKEN_TYPE;







typedef enum _TOKEN_INFORMATION_CLASS {
    TokenUser = 1,
    TokenGroups,
    TokenPrivileges,
    TokenOwner,
    TokenPrimaryGroup,
    TokenDefaultDacl,
    TokenSource,
    TokenType,
    TokenImpersonationLevel,
    TokenStatistics,
    TokenRestrictedSids,
    TokenSessionId
} TOKEN_INFORMATION_CLASS, *PTOKEN_INFORMATION_CLASS;






typedef struct _TOKEN_USER {
    SID_AND_ATTRIBUTES User;
} TOKEN_USER, *PTOKEN_USER;

typedef struct _TOKEN_GROUPS {
    DWORD GroupCount;
    SID_AND_ATTRIBUTES Groups[1];
} TOKEN_GROUPS, *PTOKEN_GROUPS;


typedef struct _TOKEN_PRIVILEGES {
    DWORD PrivilegeCount;
    LUID_AND_ATTRIBUTES Privileges[1];
} TOKEN_PRIVILEGES, *PTOKEN_PRIVILEGES;


typedef struct _TOKEN_OWNER {
    PSID Owner;
} TOKEN_OWNER, *PTOKEN_OWNER;


typedef struct _TOKEN_PRIMARY_GROUP {
    PSID PrimaryGroup;
} TOKEN_PRIMARY_GROUP, *PTOKEN_PRIMARY_GROUP;


typedef struct _TOKEN_DEFAULT_DACL {
    PACL DefaultDacl;
} TOKEN_DEFAULT_DACL, *PTOKEN_DEFAULT_DACL;





typedef struct _TOKEN_SOURCE {
    CHAR SourceName[8];
    LUID SourceIdentifier;
} TOKEN_SOURCE, *PTOKEN_SOURCE;


typedef struct _TOKEN_STATISTICS {
    LUID TokenId;
    LUID AuthenticationId;
    LARGE_INTEGER ExpirationTime;
    TOKEN_TYPE TokenType;
    SECURITY_IMPERSONATION_LEVEL ImpersonationLevel;
    DWORD DynamicCharged;
    DWORD DynamicAvailable;
    DWORD GroupCount;
    DWORD PrivilegeCount;
    LUID ModifiedId;
} TOKEN_STATISTICS, *PTOKEN_STATISTICS;



typedef struct _TOKEN_CONTROL {
    LUID TokenId;
    LUID AuthenticationId;
    LUID ModifiedId;
    TOKEN_SOURCE TokenSource;
    } TOKEN_CONTROL, *PTOKEN_CONTROL;








typedef BOOLEAN SECURITY_CONTEXT_TRACKING_MODE,
                    * PSECURITY_CONTEXT_TRACKING_MODE;







typedef struct _SECURITY_QUALITY_OF_SERVICE {
    DWORD Length;
    SECURITY_IMPERSONATION_LEVEL ImpersonationLevel;
    SECURITY_CONTEXT_TRACKING_MODE ContextTrackingMode;
    BOOLEAN EffectiveOnly;
    } SECURITY_QUALITY_OF_SERVICE, * PSECURITY_QUALITY_OF_SERVICE;






typedef struct _SE_IMPERSONATION_STATE {
    PACCESS_TOKEN Token;
    BOOLEAN CopyOnOpen;
    BOOLEAN EffectiveOnly;
    SECURITY_IMPERSONATION_LEVEL Level;
} SE_IMPERSONATION_STATE, *PSE_IMPERSONATION_STATE;


typedef DWORD SECURITY_INFORMATION, *PSECURITY_INFORMATION;















































typedef struct _NT_TIB {
    struct _EXCEPTION_REGISTRATION_RECORD *ExceptionList;
    PVOID StackBase;
    PVOID StackLimit;
    PVOID SubSystemTib;
    union {
        PVOID FiberData;
        DWORD Version;
    };
    PVOID ArbitraryUserPointer;
    struct _NT_TIB *Self;
} NT_TIB;
typedef NT_TIB *PNT_TIB;



#line 4366 "e:\\program\\vc98\\include\\winnt.h"






typedef struct _QUOTA_LIMITS {
    SIZE_T PagedPoolLimit;
    SIZE_T NonPagedPoolLimit;
    DWORD MinimumWorkingSetSize;
    DWORD MaximumWorkingSetSize;
    SIZE_T PagefileLimit;
    LARGE_INTEGER TimeLimit;
} QUOTA_LIMITS;
typedef QUOTA_LIMITS *PQUOTA_LIMITS;



typedef struct _JOBOBJECT_BASIC_ACCOUNTING_INFORMATION {
    LARGE_INTEGER TotalUserTime;
    LARGE_INTEGER TotalKernelTime;
    LARGE_INTEGER ThisPeriodTotalUserTime;
    LARGE_INTEGER ThisPeriodTotalKernelTime;
    DWORD TotalPageFaultCount;
    DWORD TotalProcesses;
    DWORD ActiveProcesses;
    DWORD TotalTerminatedProcesses;
} JOBOBJECT_BASIC_ACCOUNTING_INFORMATION, *PJOBOBJECT_BASIC_ACCOUNTING_INFORMATION;

typedef struct _JOBOBJECT_BASIC_LIMIT_INFORMATION {
    LARGE_INTEGER PerProcessUserTimeLimit;
    LARGE_INTEGER PerJobUserTimeLimit;
    DWORD LimitFlags;
    DWORD MinimumWorkingSetSize;
    DWORD MaximumWorkingSetSize;
    DWORD ActiveProcessLimit;
    DWORD Affinity;
    DWORD PriorityClass;
} JOBOBJECT_BASIC_LIMIT_INFORMATION, *PJOBOBJECT_BASIC_LIMIT_INFORMATION;

typedef struct _JOBOBJECT_BASIC_PROCESS_ID_LIST {
    DWORD NumberOfAssignedProcesses;
    DWORD NumberOfProcessIdsInList;
    UINT_PTR ProcessIdList[1];
} JOBOBJECT_BASIC_PROCESS_ID_LIST, *PJOBOBJECT_BASIC_PROCESS_ID_LIST;

typedef struct _JOBOBJECT_BASIC_UI_RESTRICTIONS {
    DWORD UIRestrictionsClass;
} JOBOBJECT_BASIC_UI_RESTRICTIONS, *PJOBOBJECT_BASIC_UI_RESTRICTIONS;

typedef struct _JOBOBJECT_SECURITY_LIMIT_INFORMATION {
    DWORD SecurityLimitFlags ;
    HANDLE JobToken ;
    PTOKEN_GROUPS SidsToDisable ;
    PTOKEN_PRIVILEGES PrivilegesToDelete ;
    PTOKEN_GROUPS RestrictedSids ;
} JOBOBJECT_SECURITY_LIMIT_INFORMATION, *PJOBOBJECT_SECURITY_LIMIT_INFORMATION ;

typedef struct _JOBOBJECT_END_OF_JOB_TIME_INFORMATION {
    DWORD EndOfJobTimeAction;
} JOBOBJECT_END_OF_JOB_TIME_INFORMATION, *PJOBOBJECT_END_OF_JOB_TIME_INFORMATION;

typedef struct _JOBOBJECT_ASSOCIATE_COMPLETION_PORT {
    PVOID CompletionKey;
    HANDLE CompletionPort;
} JOBOBJECT_ASSOCIATE_COMPLETION_PORT, *PJOBOBJECT_ASSOCIATE_COMPLETION_PORT;




















































typedef enum _JOBOBJECTINFOCLASS {
    JobObjectBasicAccountingInformation = 1,
    JobObjectBasicLimitInformation,
    JobObjectBasicProcessIdList,
    JobObjectBasicUIRestrictions,
    JobObjectSecurityLimitInformation,
    JobObjectEndOfJobTimeInformation,
    JobObjectAssociateCompletionPortInformation,
    MaxJobObjectInfoClass
    } JOBOBJECTINFOCLASS;

































































typedef struct _MEMORY_BASIC_INFORMATION {
    PVOID BaseAddress;
    PVOID AllocationBase;
    DWORD AllocationProtect;
    SIZE_T RegionSize;
    DWORD State;
    DWORD Protect;
    DWORD Type;
} MEMORY_BASIC_INFORMATION, *PMEMORY_BASIC_INFORMATION;

typedef struct _MEMORY_BASIC_INFORMATION_VLM {
    union {
        PVOID64 BaseAddress;
        ULONGLONG BaseAddressAsUlongLong;
    };
    union {
        PVOID64 AllocationBase;
        ULONGLONG AllocationBaseAsUlongLong;
    };
    ULONGLONG RegionSize;
    DWORD AllocationProtect;
    DWORD State;
    DWORD Protect;
    DWORD Type;
} MEMORY_BASIC_INFORMATION_VLM, *PMEMORY_BASIC_INFORMATION_VLM;


















































































































































typedef struct _FILE_NOTIFY_INFORMATION {
    DWORD NextEntryOffset;
    DWORD Action;
    DWORD FileNameLength;
    WCHAR FileName[1];
} FILE_NOTIFY_INFORMATION, *PFILE_NOTIFY_INFORMATION;






typedef union _FILE_SEGMENT_ELEMENT {
    PVOID64 Buffer;
    ULONGLONG Alignment;
}FILE_SEGMENT_ELEMENT, *PFILE_SEGMENT_ELEMENT;











typedef struct _REPARSE_DATA_BUFFER {
    DWORD  ReparseTag;
    WORD   ReparseDataLength;
    WORD   Reserved;
    union {
        struct {
            WORD   SubstituteNameOffset;
            WORD   SubstituteNameLength;
            WORD   PrintNameOffset;
            WORD   PrintNameLength;
            WCHAR PathBuffer[1];
        } SymbolicLinkReparseBuffer;
        struct {
            WORD   SubstituteNameOffset;
            WORD   SubstituteNameLength;
            WORD   PrintNameOffset;
            WORD   PrintNameLength;
            WCHAR PathBuffer[1];
        } MountPointReparseBuffer;
        struct {
            BYTE   DataBuffer[1];
        } GenericReparseBuffer;
    };
} REPARSE_DATA_BUFFER, *PREPARSE_DATA_BUFFER;












typedef struct _REPARSE_GUID_DATA_BUFFER {
    DWORD  ReparseTag;
    WORD   ReparseDataLength;
    WORD   Reserved;
    GUID   ReparseGuid;
    struct {
        BYTE   DataBuffer[1];
    } GenericReparseBuffer;
} REPARSE_GUID_DATA_BUFFER, *PREPARSE_GUID_DATA_BUFFER;









typedef struct _REPARSE_POINT_INFORMATION {
    WORD   ReparseDataLength;
    WORD   UnparsedNameLength;
} REPARSE_POINT_INFORMATION, *PREPARSE_POINT_INFORMATION;
















































































































typedef DWORD EXECUTION_STATE;

typedef enum {
    LT_DONT_CARE,
    LT_LOWEST_LATENCY
} LATENCY_TIME;


typedef struct _POWER_DEVICE_TIMEOUTS {
    DWORD   ConservationIdleTime;
    DWORD   PerformanceIdleTime;
} POWER_DEVICE_TIMEOUTS, *PPOWER_DEVICE_TIMEOUTS;










#line 1 "e:\\program\\vc98\\include\\pshpack4.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "e:\\program\\vc98\\include\\pshpack4.h"
#pragma pack(4)


#line 32 "e:\\program\\vc98\\include\\pshpack4.h"
#line 33 "e:\\program\\vc98\\include\\pshpack4.h"
#line 4950 "e:\\program\\vc98\\include\\winnt.h"







#line 1 "e:\\program\\vc98\\include\\pshpack2.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "e:\\program\\vc98\\include\\pshpack2.h"
#pragma pack(2)


#line 32 "e:\\program\\vc98\\include\\pshpack2.h"
#line 33 "e:\\program\\vc98\\include\\pshpack2.h"
#line 4958 "e:\\program\\vc98\\include\\winnt.h"









#line 4968 "e:\\program\\vc98\\include\\winnt.h"

typedef struct _IMAGE_DOS_HEADER {      
    WORD   e_magic;                     
    WORD   e_cblp;                      
    WORD   e_cp;                        
    WORD   e_crlc;                      
    WORD   e_cparhdr;                   
    WORD   e_minalloc;                  
    WORD   e_maxalloc;                  
    WORD   e_ss;                        
    WORD   e_sp;                        
    WORD   e_csum;                      
    WORD   e_ip;                        
    WORD   e_cs;                        
    WORD   e_lfarlc;                    
    WORD   e_ovno;                      
    WORD   e_res[4];                    
    WORD   e_oemid;                     
    WORD   e_oeminfo;                   
    WORD   e_res2[10];                  
    LONG   e_lfanew;                    
  } IMAGE_DOS_HEADER, *PIMAGE_DOS_HEADER;

typedef struct _IMAGE_OS2_HEADER {      
    WORD   ne_magic;                    
    CHAR   ne_ver;                      
    CHAR   ne_rev;                      
    WORD   ne_enttab;                   
    WORD   ne_cbenttab;                 
    LONG   ne_crc;                      
    WORD   ne_flags;                    
    WORD   ne_autodata;                 
    WORD   ne_heap;                     
    WORD   ne_stack;                    
    LONG   ne_csip;                     
    LONG   ne_sssp;                     
    WORD   ne_cseg;                     
    WORD   ne_cmod;                     
    WORD   ne_cbnrestab;                
    WORD   ne_segtab;                   
    WORD   ne_rsrctab;                  
    WORD   ne_restab;                   
    WORD   ne_modtab;                   
    WORD   ne_imptab;                   
    LONG   ne_nrestab;                  
    WORD   ne_cmovent;                  
    WORD   ne_align;                    
    WORD   ne_cres;                     
    BYTE   ne_exetyp;                   
    BYTE   ne_flagsothers;              
    WORD   ne_pretthunks;               
    WORD   ne_psegrefbytes;             
    WORD   ne_swaparea;                 
    WORD   ne_expver;                   
  } IMAGE_OS2_HEADER, *PIMAGE_OS2_HEADER;

typedef struct _IMAGE_VXD_HEADER {      
    WORD   e32_magic;                   
    BYTE   e32_border;                  
    BYTE   e32_worder;                  
    DWORD  e32_level;                   
    WORD   e32_cpu;                     
    WORD   e32_os;                      
    DWORD  e32_ver;                     
    DWORD  e32_mflags;                  
    DWORD  e32_mpages;                  
    DWORD  e32_startobj;                
    DWORD  e32_eip;                     
    DWORD  e32_stackobj;                
    DWORD  e32_esp;                     
    DWORD  e32_pagesize;                
    DWORD  e32_lastpagesize;            
    DWORD  e32_fixupsize;               
    DWORD  e32_fixupsum;                
    DWORD  e32_ldrsize;                 
    DWORD  e32_ldrsum;                  
    DWORD  e32_objtab;                  
    DWORD  e32_objcnt;                  
    DWORD  e32_objmap;                  
    DWORD  e32_itermap;                 
    DWORD  e32_rsrctab;                 
    DWORD  e32_rsrccnt;                 
    DWORD  e32_restab;                  
    DWORD  e32_enttab;                  
    DWORD  e32_dirtab;                  
    DWORD  e32_dircnt;                  
    DWORD  e32_fpagetab;                
    DWORD  e32_frectab;                 
    DWORD  e32_impmod;                  
    DWORD  e32_impmodcnt;               
    DWORD  e32_impproc;                 
    DWORD  e32_pagesum;                 
    DWORD  e32_datapage;                
    DWORD  e32_preload;                 
    DWORD  e32_nrestab;                 
    DWORD  e32_cbnrestab;               
    DWORD  e32_nressum;                 
    DWORD  e32_autodata;                
    DWORD  e32_debuginfo;               
    DWORD  e32_debuglen;                
    DWORD  e32_instpreload;             
    DWORD  e32_instdemand;              
    DWORD  e32_heapsize;                
    BYTE   e32_res3[12];                
    DWORD  e32_winresoff;
    DWORD  e32_winreslen;
    WORD   e32_devid;                   
    WORD   e32_ddkver;                  
  } IMAGE_VXD_HEADER, *PIMAGE_VXD_HEADER;


#line 1 "e:\\program\\vc98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "e:\\program\\vc98\\include\\poppack.h"


#line 36 "e:\\program\\vc98\\include\\poppack.h"
#line 37 "e:\\program\\vc98\\include\\poppack.h"
#line 5080 "e:\\program\\vc98\\include\\winnt.h"
#line 5081 "e:\\program\\vc98\\include\\winnt.h"





typedef struct _IMAGE_FILE_HEADER {
    WORD    Machine;
    WORD    NumberOfSections;
    DWORD   TimeDateStamp;
    DWORD   PointerToSymbolTable;
    DWORD   NumberOfSymbols;
    WORD    SizeOfOptionalHeader;
    WORD    Characteristics;
} IMAGE_FILE_HEADER, *PIMAGE_FILE_HEADER;












































typedef struct _IMAGE_DATA_DIRECTORY {
    DWORD   VirtualAddress;
    DWORD   Size;
} IMAGE_DATA_DIRECTORY, *PIMAGE_DATA_DIRECTORY;







typedef struct _IMAGE_OPTIONAL_HEADER {
    
    
    

    WORD    Magic;
    BYTE    MajorLinkerVersion;
    BYTE    MinorLinkerVersion;
    DWORD   SizeOfCode;
    DWORD   SizeOfInitializedData;
    DWORD   SizeOfUninitializedData;
    DWORD   AddressOfEntryPoint;
    DWORD   BaseOfCode;
    DWORD   BaseOfData;

    
    
    

    DWORD   ImageBase;
    DWORD   SectionAlignment;
    DWORD   FileAlignment;
    WORD    MajorOperatingSystemVersion;
    WORD    MinorOperatingSystemVersion;
    WORD    MajorImageVersion;
    WORD    MinorImageVersion;
    WORD    MajorSubsystemVersion;
    WORD    MinorSubsystemVersion;
    DWORD   Win32VersionValue;
    DWORD   SizeOfImage;
    DWORD   SizeOfHeaders;
    DWORD   CheckSum;
    WORD    Subsystem;
    WORD    DllCharacteristics;
    DWORD   SizeOfStackReserve;
    DWORD   SizeOfStackCommit;
    DWORD   SizeOfHeapReserve;
    DWORD   SizeOfHeapCommit;
    DWORD   LoaderFlags;
    DWORD   NumberOfRvaAndSizes;
    IMAGE_DATA_DIRECTORY DataDirectory[16];
} IMAGE_OPTIONAL_HEADER32, *PIMAGE_OPTIONAL_HEADER32;

typedef struct _IMAGE_ROM_OPTIONAL_HEADER {
    WORD   Magic;
    BYTE   MajorLinkerVersion;
    BYTE   MinorLinkerVersion;
    DWORD  SizeOfCode;
    DWORD  SizeOfInitializedData;
    DWORD  SizeOfUninitializedData;
    DWORD  AddressOfEntryPoint;
    DWORD  BaseOfCode;
    DWORD  BaseOfData;
    DWORD  BaseOfBss;
    DWORD  GprMask;
    DWORD  CprMask[4];
    DWORD  GpValue;
} IMAGE_ROM_OPTIONAL_HEADER, *PIMAGE_ROM_OPTIONAL_HEADER;

typedef struct _IMAGE_OPTIONAL_HEADER64 {
    WORD        Magic;
    BYTE        MajorLinkerVersion;
    BYTE        MinorLinkerVersion;
    DWORD       SizeOfCode;
    DWORD       SizeOfInitializedData;
    DWORD       SizeOfUninitializedData;
    DWORD       AddressOfEntryPoint;
    DWORD       BaseOfCode;
    ULONGLONG   ImageBase;
    DWORD       SectionAlignment;
    DWORD       FileAlignment;
    WORD        MajorOperatingSystemVersion;
    WORD        MinorOperatingSystemVersion;
    WORD        MajorImageVersion;
    WORD        MinorImageVersion;
    WORD        MajorSubsystemVersion;
    WORD        MinorSubsystemVersion;
    DWORD       Win32VersionValue;
    DWORD       SizeOfImage;
    DWORD       SizeOfHeaders;
    DWORD       CheckSum;
    WORD        Subsystem;
    WORD        DllCharacteristics;
    ULONGLONG   SizeOfStackReserve;
    ULONGLONG   SizeOfStackCommit;
    ULONGLONG   SizeOfHeapReserve;
    ULONGLONG   SizeOfHeapCommit;
    DWORD       LoaderFlags;
    DWORD       NumberOfRvaAndSizes;
    IMAGE_DATA_DIRECTORY DataDirectory[16];
} IMAGE_OPTIONAL_HEADER64, *PIMAGE_OPTIONAL_HEADER64;
















typedef IMAGE_OPTIONAL_HEADER32             IMAGE_OPTIONAL_HEADER;
typedef PIMAGE_OPTIONAL_HEADER32            PIMAGE_OPTIONAL_HEADER;


#line 5262 "e:\\program\\vc98\\include\\winnt.h"

typedef struct _IMAGE_NT_HEADERS64 {
    DWORD Signature;
    IMAGE_FILE_HEADER FileHeader;
    IMAGE_OPTIONAL_HEADER64 OptionalHeader;
} IMAGE_NT_HEADERS64, *PIMAGE_NT_HEADERS64;

typedef struct _IMAGE_NT_HEADERS {
    DWORD Signature;
    IMAGE_FILE_HEADER FileHeader;
    IMAGE_OPTIONAL_HEADER32 OptionalHeader;
} IMAGE_NT_HEADERS32, *PIMAGE_NT_HEADERS32;

typedef struct _IMAGE_ROM_HEADERS {
    IMAGE_FILE_HEADER FileHeader;
    IMAGE_ROM_OPTIONAL_HEADER OptionalHeader;
} IMAGE_ROM_HEADERS, *PIMAGE_ROM_HEADERS;


















typedef IMAGE_NT_HEADERS32                  IMAGE_NT_HEADERS;
typedef PIMAGE_NT_HEADERS32                 PIMAGE_NT_HEADERS;

#line 5301 "e:\\program\\vc98\\include\\winnt.h"














































typedef struct _IMAGE_SECTION_HEADER {
    BYTE    Name[8];
    union {
            DWORD   PhysicalAddress;
            DWORD   VirtualSize;
    } Misc;
    DWORD   VirtualAddress;
    DWORD   SizeOfRawData;
    DWORD   PointerToRawData;
    DWORD   PointerToRelocations;
    DWORD   PointerToLinenumbers;
    WORD    NumberOfRelocations;
    WORD    NumberOfLinenumbers;
    DWORD   Characteristics;
} IMAGE_SECTION_HEADER, *PIMAGE_SECTION_HEADER;
































































#line 1 "e:\\program\\vc98\\include\\pshpack2.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "e:\\program\\vc98\\include\\pshpack2.h"
#pragma pack(2)


#line 32 "e:\\program\\vc98\\include\\pshpack2.h"
#line 33 "e:\\program\\vc98\\include\\pshpack2.h"
#line 5427 "e:\\program\\vc98\\include\\winnt.h"
#line 5428 "e:\\program\\vc98\\include\\winnt.h"





typedef struct _IMAGE_SYMBOL {
    union {
        BYTE    ShortName[8];
        struct {
            DWORD   Short;     
            DWORD   Long;      
        } Name;
        PBYTE   LongName[2];
    } N;
    DWORD   Value;
    SHORT   SectionNumber;
    WORD    Type;
    BYTE    StorageClass;
    BYTE    NumberOfAuxSymbols;
} IMAGE_SYMBOL;
typedef IMAGE_SYMBOL  *PIMAGE_SYMBOL;































































































#line 5545 "e:\\program\\vc98\\include\\winnt.h"




#line 5550 "e:\\program\\vc98\\include\\winnt.h"





#line 5556 "e:\\program\\vc98\\include\\winnt.h"




#line 5561 "e:\\program\\vc98\\include\\winnt.h"



#line 5565 "e:\\program\\vc98\\include\\winnt.h"


#line 5568 "e:\\program\\vc98\\include\\winnt.h"





typedef union _IMAGE_AUX_SYMBOL {
    struct {
        DWORD    TagIndex;                      
        union {
            struct {
                WORD    Linenumber;             
                WORD    Size;                   
            } LnSz;
           DWORD    TotalSize;
        } Misc;
        union {
            struct {                            
                DWORD    PointerToLinenumber;
                DWORD    PointerToNextFunction;
            } Function;
            struct {                            
                WORD     Dimension[4];
            } Array;
        } FcnAry;
        WORD    TvIndex;                        
    } Sym;
    struct {
        BYTE    Name[18];
    } File;
    struct {
        DWORD   Length;                         
        WORD    NumberOfRelocations;            
        WORD    NumberOfLinenumbers;            
        DWORD   CheckSum;                       
        SHORT   Number;                         
        BYTE    Selection;                      
    } Section;
} IMAGE_AUX_SYMBOL;
typedef IMAGE_AUX_SYMBOL  *PIMAGE_AUX_SYMBOL;























typedef struct _IMAGE_RELOCATION {
    union {
        DWORD   VirtualAddress;
        DWORD   RelocCount;             
    };
    DWORD   SymbolTableIndex;
    WORD    Type;
} IMAGE_RELOCATION;
typedef IMAGE_RELOCATION  *PIMAGE_RELOCATION;




















































































































































































































typedef struct _IMAGE_LINENUMBER {
    union {
        DWORD   SymbolTableIndex;               
        DWORD   VirtualAddress;                 
    } Type;
    WORD    Linenumber;                         
} IMAGE_LINENUMBER;
typedef IMAGE_LINENUMBER  *PIMAGE_LINENUMBER;




#line 1 "e:\\program\\vc98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "e:\\program\\vc98\\include\\poppack.h"


#line 36 "e:\\program\\vc98\\include\\poppack.h"
#line 37 "e:\\program\\vc98\\include\\poppack.h"
#line 5864 "e:\\program\\vc98\\include\\winnt.h"
#line 5865 "e:\\program\\vc98\\include\\winnt.h"





typedef struct _IMAGE_BASE_RELOCATION {
    DWORD   VirtualAddress;
    DWORD   SizeOfBlock;

} IMAGE_BASE_RELOCATION;
typedef IMAGE_BASE_RELOCATION  * PIMAGE_BASE_RELOCATION;

































typedef struct _IMAGE_ARCHIVE_MEMBER_HEADER {
    BYTE     Name[16];                          
    BYTE     Date[12];                          
    BYTE     UserID[6];                         
    BYTE     GroupID[6];                        
    BYTE     Mode[8];                           
    BYTE     Size[10];                          
    BYTE     EndHeader[2];                      
} IMAGE_ARCHIVE_MEMBER_HEADER, *PIMAGE_ARCHIVE_MEMBER_HEADER;











typedef struct _IMAGE_EXPORT_DIRECTORY {
    DWORD   Characteristics;
    DWORD   TimeDateStamp;
    WORD    MajorVersion;
    WORD    MinorVersion;
    DWORD   Name;
    DWORD   Base;
    DWORD   NumberOfFunctions;
    DWORD   NumberOfNames;
    DWORD   AddressOfFunctions;     
    DWORD   AddressOfNames;         
    DWORD   AddressOfNameOrdinals;  
} IMAGE_EXPORT_DIRECTORY, *PIMAGE_EXPORT_DIRECTORY;





typedef struct _IMAGE_IMPORT_BY_NAME {
    WORD    Hint;
    BYTE    Name[1];
} IMAGE_IMPORT_BY_NAME, *PIMAGE_IMPORT_BY_NAME;

#line 1 "e:\\program\\vc98\\include\\pshpack8.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "e:\\program\\vc98\\include\\pshpack8.h"
#pragma pack(8)


#line 32 "e:\\program\\vc98\\include\\pshpack8.h"
#line 33 "e:\\program\\vc98\\include\\pshpack8.h"
#line 5953 "e:\\program\\vc98\\include\\winnt.h"

typedef struct _IMAGE_THUNK_DATA64 {
    union {
        PBYTE  ForwarderString;
        PDWORD Function;
        ULONGLONG Ordinal;
        PIMAGE_IMPORT_BY_NAME  AddressOfData;
    } u1;
} IMAGE_THUNK_DATA64;
typedef IMAGE_THUNK_DATA64 * PIMAGE_THUNK_DATA64;

#line 1 "e:\\program\\vc98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "e:\\program\\vc98\\include\\poppack.h"


#line 36 "e:\\program\\vc98\\include\\poppack.h"
#line 37 "e:\\program\\vc98\\include\\poppack.h"
#line 5965 "e:\\program\\vc98\\include\\winnt.h"

typedef struct _IMAGE_THUNK_DATA32 {
    union {
        PBYTE  ForwarderString;
        PDWORD Function;
        DWORD Ordinal;
        PIMAGE_IMPORT_BY_NAME  AddressOfData;
    } u1;
} IMAGE_THUNK_DATA32;
typedef IMAGE_THUNK_DATA32 * PIMAGE_THUNK_DATA32;












typedef void
(__stdcall *PIMAGE_TLS_CALLBACK) (
    PVOID DllHandle,
    DWORD Reason,
    PVOID Reserved
    );

typedef struct _IMAGE_TLS_DIRECTORY64 {
    ULONGLONG   StartAddressOfRawData;
    ULONGLONG   EndAddressOfRawData;
    PDWORD  AddressOfIndex;
    PIMAGE_TLS_CALLBACK *AddressOfCallBacks;
    DWORD   SizeOfZeroFill;
    DWORD   Characteristics;
} IMAGE_TLS_DIRECTORY64;
typedef IMAGE_TLS_DIRECTORY64 * PIMAGE_TLS_DIRECTORY64;

typedef struct _IMAGE_TLS_DIRECTORY32 {
    DWORD   StartAddressOfRawData;
    DWORD   EndAddressOfRawData;
    PDWORD  AddressOfIndex;
    PIMAGE_TLS_CALLBACK *AddressOfCallBacks;
    DWORD   SizeOfZeroFill;
    DWORD   Characteristics;
} IMAGE_TLS_DIRECTORY32;
typedef IMAGE_TLS_DIRECTORY32 * PIMAGE_TLS_DIRECTORY32;












typedef IMAGE_THUNK_DATA32              IMAGE_THUNK_DATA;
typedef PIMAGE_THUNK_DATA32             PIMAGE_THUNK_DATA;

typedef IMAGE_TLS_DIRECTORY32           IMAGE_TLS_DIRECTORY;
typedef PIMAGE_TLS_DIRECTORY32          PIMAGE_TLS_DIRECTORY;
#line 6031 "e:\\program\\vc98\\include\\winnt.h"

typedef struct _IMAGE_IMPORT_DESCRIPTOR {
    union {
        DWORD   Characteristics;            
        DWORD   OriginalFirstThunk;         
    };
    DWORD   TimeDateStamp;                  
                                            
                                            
                                            

    DWORD   ForwarderChain;                 
    DWORD   Name;
    DWORD   FirstThunk;                     
} IMAGE_IMPORT_DESCRIPTOR;
typedef IMAGE_IMPORT_DESCRIPTOR  *PIMAGE_IMPORT_DESCRIPTOR;





typedef struct _IMAGE_BOUND_IMPORT_DESCRIPTOR {
    DWORD   TimeDateStamp;
    WORD    OffsetModuleName;
    WORD    NumberOfModuleForwarderRefs;

} IMAGE_BOUND_IMPORT_DESCRIPTOR,  *PIMAGE_BOUND_IMPORT_DESCRIPTOR;

typedef struct _IMAGE_BOUND_FORWARDER_REF {
    DWORD   TimeDateStamp;
    WORD    OffsetModuleName;
    WORD    Reserved;
} IMAGE_BOUND_FORWARDER_REF, *PIMAGE_BOUND_FORWARDER_REF;


































typedef struct _IMAGE_RESOURCE_DIRECTORY {
    DWORD   Characteristics;
    DWORD   TimeDateStamp;
    WORD    MajorVersion;
    WORD    MinorVersion;
    WORD    NumberOfNamedEntries;
    WORD    NumberOfIdEntries;

} IMAGE_RESOURCE_DIRECTORY, *PIMAGE_RESOURCE_DIRECTORY;


















typedef struct _IMAGE_RESOURCE_DIRECTORY_ENTRY {
    union {
        struct {
            DWORD NameOffset:31;
            DWORD NameIsString:1;
        };
        DWORD   Name;
        WORD    Id;
    };
    union {
        DWORD   OffsetToData;
        struct {
            DWORD   OffsetToDirectory:31;
            DWORD   DataIsDirectory:1;
        };
    };
} IMAGE_RESOURCE_DIRECTORY_ENTRY, *PIMAGE_RESOURCE_DIRECTORY_ENTRY;










typedef struct _IMAGE_RESOURCE_DIRECTORY_STRING {
    WORD    Length;
    CHAR    NameString[ 1 ];
} IMAGE_RESOURCE_DIRECTORY_STRING, *PIMAGE_RESOURCE_DIRECTORY_STRING;


typedef struct _IMAGE_RESOURCE_DIR_STRING_U {
    WORD    Length;
    WCHAR   NameString[ 1 ];
} IMAGE_RESOURCE_DIR_STRING_U, *PIMAGE_RESOURCE_DIR_STRING_U;











typedef struct _IMAGE_RESOURCE_DATA_ENTRY {
    DWORD   OffsetToData;
    DWORD   Size;
    DWORD   CodePage;
    DWORD   Reserved;
} IMAGE_RESOURCE_DATA_ENTRY, *PIMAGE_RESOURCE_DATA_ENTRY;





typedef struct _IMAGE_LOAD_CONFIG_DIRECTORY {
    DWORD   Characteristics;
    DWORD   TimeDateStamp;
    WORD    MajorVersion;
    WORD    MinorVersion;
    DWORD   GlobalFlagsClear;
    DWORD   GlobalFlagsSet;
    DWORD   CriticalSectionDefaultTimeout;
    DWORD   DeCommitFreeBlockThreshold;
    DWORD   DeCommitTotalFreeThreshold;
    PVOID   LockPrefixTable;
    DWORD   MaximumAllocationSize;
    DWORD   VirtualMemoryThreshold;
    DWORD   ProcessHeapFlags;
    DWORD   ProcessAffinityMask;
    WORD    CSDVersion;
    WORD    Reserved1;
    PVOID   EditList;
    DWORD   Reserved[ 1 ];
} IMAGE_LOAD_CONFIG_DIRECTORY, *PIMAGE_LOAD_CONFIG_DIRECTORY;









typedef struct _IMAGE_IA64_RUNTIME_FUNCTION_ENTRY {
    DWORD BeginAddress;
    DWORD EndAddress;
    DWORD UnwindInfoAddress;
} IMAGE_IA64_RUNTIME_FUNCTION_ENTRY, *PIMAGE_IA64_RUNTIME_FUNCTION_ENTRY;








typedef struct _IMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY {
    DWORD BeginAddress;
    DWORD EndAddress;
    DWORD ExceptionHandler;
    DWORD HandlerData;
    DWORD PrologEndAddress;
} IMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY, *PIMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY;

typedef struct _IMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY {
    ULONGLONG BeginAddress;
    ULONGLONG EndAddress;
    ULONGLONG ExceptionHandler;
    ULONGLONG HandlerData;
    ULONGLONG PrologEndAddress;
} IMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY, *PIMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY;

typedef  IMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY  IMAGE_AXP64_RUNTIME_FUNCTION_ENTRY;
typedef PIMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY PIMAGE_AXP64_RUNTIME_FUNCTION_ENTRY;





typedef struct _IMAGE_CE_RUNTIME_FUNCTION_ENTRY {
    DWORD FuncStart;
    DWORD PrologLen : 8;
    DWORD FuncLen : 22;
    DWORD ThirtyTwoBit : 1;
    DWORD ExceptionFlag : 1;
} IMAGE_CE_RUNTIME_FUNCTION_ENTRY, * PIMAGE_CE_RUNTIME_FUNCTION_ENTRY;






#line 6263 "e:\\program\\vc98\\include\\winnt.h"

typedef  IMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY  IMAGE_RUNTIME_FUNCTION_ENTRY;
typedef PIMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY PIMAGE_RUNTIME_FUNCTION_ENTRY;

#line 6268 "e:\\program\\vc98\\include\\winnt.h"





typedef struct _IMAGE_DEBUG_DIRECTORY {
    DWORD   Characteristics;
    DWORD   TimeDateStamp;
    WORD    MajorVersion;
    WORD    MinorVersion;
    DWORD   Type;
    DWORD   SizeOfData;
    DWORD   AddressOfRawData;
    DWORD   PointerToRawData;
} IMAGE_DEBUG_DIRECTORY, *PIMAGE_DEBUG_DIRECTORY;














typedef struct _IMAGE_COFF_SYMBOLS_HEADER {
    DWORD   NumberOfSymbols;
    DWORD   LvaToFirstSymbol;
    DWORD   NumberOfLinenumbers;
    DWORD   LvaToFirstLinenumber;
    DWORD   RvaToFirstByteOfCode;
    DWORD   RvaToLastByteOfCode;
    DWORD   RvaToFirstByteOfData;
    DWORD   RvaToLastByteOfData;
} IMAGE_COFF_SYMBOLS_HEADER, *PIMAGE_COFF_SYMBOLS_HEADER;






typedef struct _FPO_DATA {
    DWORD       ulOffStart;             
    DWORD       cbProcSize;             
    DWORD       cdwLocals;              
    WORD        cdwParams;              
    WORD        cbProlog : 8;           
    WORD        cbRegs   : 3;           
    WORD        fHasSEH  : 1;           
    WORD        fUseBP   : 1;           
    WORD        reserved : 1;           
    WORD        cbFrame  : 2;           
} FPO_DATA, *PFPO_DATA;





typedef struct _IMAGE_DEBUG_MISC {
    DWORD       DataType;               
    DWORD       Length;                 
                                        
    BOOLEAN     Unicode;                
    BYTE        Reserved[ 3 ];
    BYTE        Data[ 1 ];              
} IMAGE_DEBUG_MISC, *PIMAGE_DEBUG_MISC;
















#line 6355 "e:\\program\\vc98\\include\\winnt.h"

typedef struct _IMAGE_FUNCTION_ENTRY {
    DWORD   StartingAddress;
    DWORD   EndingAddress;
    DWORD   EndOfPrologue;
} IMAGE_FUNCTION_ENTRY, *PIMAGE_FUNCTION_ENTRY;

#line 6363 "e:\\program\\vc98\\include\\winnt.h"
typedef struct _IMAGE_FUNCTION_ENTRY64 {
    ULONGLONG   StartingAddress;
    ULONGLONG   EndingAddress;
    ULONGLONG   EndOfPrologue;
} IMAGE_FUNCTION_ENTRY64, *PIMAGE_FUNCTION_ENTRY64;





















typedef struct _IMAGE_SEPARATE_DEBUG_HEADER {
    WORD        Signature;
    WORD        Flags;
    WORD        Machine;
    WORD        Characteristics;
    DWORD       TimeDateStamp;
    DWORD       CheckSum;
    DWORD       ImageBase;
    DWORD       SizeOfImage;
    DWORD       NumberOfSections;
    DWORD       ExportedNamesSize;
    DWORD       DebugDirectorySize;
    DWORD       SectionAlignment;
    DWORD       Reserved[2];
} IMAGE_SEPARATE_DEBUG_HEADER, *PIMAGE_SEPARATE_DEBUG_HEADER;





#line 6410 "e:\\program\\vc98\\include\\winnt.h"



                                                









typedef struct _ImageArchitectureHeader {
    unsigned int AmaskValue: 1;                 
                                                
    int :7;                                     
    unsigned int AmaskShift: 8;                 
    int :16;                                    
    DWORD FirstEntryRVA;                        
} IMAGE_ARCHITECTURE_HEADER, *PIMAGE_ARCHITECTURE_HEADER;

typedef struct _ImageArchitectureEntry {
    DWORD FixupInstRVA;                         
    DWORD NewInst;                              
} IMAGE_ARCHITECTURE_ENTRY, *PIMAGE_ARCHITECTURE_ENTRY;

#line 1 "e:\\program\\vc98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "e:\\program\\vc98\\include\\poppack.h"


#line 36 "e:\\program\\vc98\\include\\poppack.h"
#line 37 "e:\\program\\vc98\\include\\poppack.h"
#line 6438 "e:\\program\\vc98\\include\\winnt.h"








typedef struct IMPORT_OBJECT_HEADER {
    WORD    Sig1;                       
    WORD    Sig2;                       
    WORD    Version;
    WORD    Machine;
    DWORD   TimeDateStamp;              
    DWORD   SizeOfData;                 

    union {
        WORD    Ordinal;                
        WORD    Hint;
    };

    WORD    Type : 2;                   
    WORD    NameType : 3;               
    WORD    Reserved : 11;              
} IMPORT_OBJECT_HEADER;

typedef enum IMPORT_OBJECT_TYPE
{
    IMPORT_OBJECT_CODE = 0,
    IMPORT_OBJECT_DATA = 1,
    IMPORT_OBJECT_CONST = 2,
} IMPORT_OBJECT_TYPE;

typedef enum IMPORT_OBJECT_NAME_TYPE
{
    IMPORT_OBJECT_ORDINAL = 0,          
    IMPORT_OBJECT_NAME = 1,             
    IMPORT_OBJECT_NAME_NO_PREFIX = 2,   
    IMPORT_OBJECT_NAME_UNDECORATE = 3,  
                                        
} IMPORT_OBJECT_NAME_TYPE;













#line 1 "e:\\program\\vc98\\include\\string.h"















#pragma once
#line 18 "e:\\program\\vc98\\include\\string.h"






#line 25 "e:\\program\\vc98\\include\\string.h"



extern "C" {
#line 30 "e:\\program\\vc98\\include\\string.h"

















#line 48 "e:\\program\\vc98\\include\\string.h"













typedef unsigned int size_t;

#line 64 "e:\\program\\vc98\\include\\string.h"







#line 72 "e:\\program\\vc98\\include\\string.h"




#line 77 "e:\\program\\vc98\\include\\string.h"
























        void *  __cdecl memcpy(void *, const void *, size_t);
        int     __cdecl memcmp(const void *, const void *, size_t);
        void *  __cdecl memset(void *, int, size_t);
        char *  __cdecl _strset(char *, int);
        char *  __cdecl strcpy(char *, const char *);
        char *  __cdecl strcat(char *, const char *);
        int     __cdecl strcmp(const char *, const char *);
        size_t  __cdecl strlen(const char *);
#line 110 "e:\\program\\vc98\\include\\string.h"
 void *  __cdecl _memccpy(void *, const void *, int, unsigned int);
 void *  __cdecl memchr(const void *, int, size_t);
 int     __cdecl _memicmp(const void *, const void *, unsigned int);





 void *  __cdecl memmove(void *, const void *, size_t);
#line 120 "e:\\program\\vc98\\include\\string.h"


 char *  __cdecl strchr(const char *, int);
 int     __cdecl _strcmpi(const char *, const char *);
 int     __cdecl _stricmp(const char *, const char *);
 int     __cdecl strcoll(const char *, const char *);
 int     __cdecl _stricoll(const char *, const char *);
 int     __cdecl _strncoll(const char *, const char *, size_t);
 int     __cdecl _strnicoll(const char *, const char *, size_t);
 size_t  __cdecl strcspn(const char *, const char *);
 char *  __cdecl _strdup(const char *);
 char *  __cdecl _strerror(const char *);
 char *  __cdecl strerror(int);
 char *  __cdecl _strlwr(char *);
 char *  __cdecl strncat(char *, const char *, size_t);
 int     __cdecl strncmp(const char *, const char *, size_t);
 int     __cdecl _strnicmp(const char *, const char *, size_t);
 char *  __cdecl strncpy(char *, const char *, size_t);
 char *  __cdecl _strnset(char *, int, size_t);
 char *  __cdecl strpbrk(const char *, const char *);
 char *  __cdecl strrchr(const char *, int);
 char *  __cdecl _strrev(char *);
 size_t  __cdecl strspn(const char *, const char *);
 char *  __cdecl strstr(const char *, const char *);
 char *  __cdecl strtok(char *, const char *);
 char *  __cdecl _strupr(char *);
 size_t  __cdecl strxfrm (char *, const char *, size_t);














 void * __cdecl memccpy(void *, const void *, int, unsigned int);
 int __cdecl memicmp(const void *, const void *, unsigned int);
 int __cdecl strcmpi(const char *, const char *);
 int __cdecl stricmp(const char *, const char *);
 char * __cdecl strdup(const char *);
 char * __cdecl strlwr(char *);
 int __cdecl strnicmp(const char *, const char *, size_t);
 char * __cdecl strnset(char *, int, size_t);
 char * __cdecl strrev(char *);
        char * __cdecl strset(char *, int);
 char * __cdecl strupr(char *);

#line 174 "e:\\program\\vc98\\include\\string.h"







 wchar_t * __cdecl wcscat(wchar_t *, const wchar_t *);
 wchar_t * __cdecl wcschr(const wchar_t *, wchar_t);
 int __cdecl wcscmp(const wchar_t *, const wchar_t *);
 wchar_t * __cdecl wcscpy(wchar_t *, const wchar_t *);
 size_t __cdecl wcscspn(const wchar_t *, const wchar_t *);
 size_t __cdecl wcslen(const wchar_t *);
 wchar_t * __cdecl wcsncat(wchar_t *, const wchar_t *, size_t);
 int __cdecl wcsncmp(const wchar_t *, const wchar_t *, size_t);
 wchar_t * __cdecl wcsncpy(wchar_t *, const wchar_t *, size_t);
 wchar_t * __cdecl wcspbrk(const wchar_t *, const wchar_t *);
 wchar_t * __cdecl wcsrchr(const wchar_t *, wchar_t);
 size_t __cdecl wcsspn(const wchar_t *, const wchar_t *);
 wchar_t * __cdecl wcsstr(const wchar_t *, const wchar_t *);
 wchar_t * __cdecl wcstok(wchar_t *, const wchar_t *);

 wchar_t * __cdecl _wcsdup(const wchar_t *);
 int __cdecl _wcsicmp(const wchar_t *, const wchar_t *);
 int __cdecl _wcsnicmp(const wchar_t *, const wchar_t *, size_t);
 wchar_t * __cdecl _wcsnset(wchar_t *, wchar_t, size_t);
 wchar_t * __cdecl _wcsrev(wchar_t *);
 wchar_t * __cdecl _wcsset(wchar_t *, wchar_t);

 wchar_t * __cdecl _wcslwr(wchar_t *);
 wchar_t * __cdecl _wcsupr(wchar_t *);
 size_t __cdecl wcsxfrm(wchar_t *, const wchar_t *, size_t);
 int __cdecl wcscoll(const wchar_t *, const wchar_t *);
 int __cdecl _wcsicoll(const wchar_t *, const wchar_t *);
 int __cdecl _wcsncoll(const wchar_t *, const wchar_t *, size_t);
 int __cdecl _wcsnicoll(const wchar_t *, const wchar_t *, size_t);







 wchar_t * __cdecl wcsdup(const wchar_t *);
 int __cdecl wcsicmp(const wchar_t *, const wchar_t *);
 int __cdecl wcsnicmp(const wchar_t *, const wchar_t *, size_t);
 wchar_t * __cdecl wcsnset(wchar_t *, wchar_t, size_t);
 wchar_t * __cdecl wcsrev(wchar_t *);
 wchar_t * __cdecl wcsset(wchar_t *, wchar_t);
 wchar_t * __cdecl wcslwr(wchar_t *);
 wchar_t * __cdecl wcsupr(wchar_t *);
 int __cdecl wcsicoll(const wchar_t *, const wchar_t *);

#line 228 "e:\\program\\vc98\\include\\string.h"


#line 231 "e:\\program\\vc98\\include\\string.h"

#line 233 "e:\\program\\vc98\\include\\string.h"


}
#line 237 "e:\\program\\vc98\\include\\string.h"

#line 239 "e:\\program\\vc98\\include\\string.h"
#line 6493 "e:\\program\\vc98\\include\\winnt.h"
#line 6494 "e:\\program\\vc98\\include\\winnt.h"












































__declspec(dllimport)
SIZE_T
__stdcall
RtlCompareMemory (
    const void *Source1,
    const void *Source2,
    SIZE_T Length
    );


















































#line 6597 "e:\\program\\vc98\\include\\winnt.h"







#line 6605 "e:\\program\\vc98\\include\\winnt.h"






























#line 6636 "e:\\program\\vc98\\include\\winnt.h"

typedef struct _MESSAGE_RESOURCE_ENTRY {
    WORD   Length;
    WORD   Flags;
    BYTE  Text[ 1 ];
} MESSAGE_RESOURCE_ENTRY, *PMESSAGE_RESOURCE_ENTRY;



typedef struct _MESSAGE_RESOURCE_BLOCK {
    DWORD LowId;
    DWORD HighId;
    DWORD OffsetToEntries;
} MESSAGE_RESOURCE_BLOCK, *PMESSAGE_RESOURCE_BLOCK;

typedef struct _MESSAGE_RESOURCE_DATA {
    DWORD NumberOfBlocks;
    MESSAGE_RESOURCE_BLOCK Blocks[ 1 ];
} MESSAGE_RESOURCE_DATA, *PMESSAGE_RESOURCE_DATA;


typedef struct _RTL_CRITICAL_SECTION_DEBUG {
    WORD   Type;
    WORD   CreatorBackTraceIndex;
    struct _RTL_CRITICAL_SECTION *CriticalSection;
    LIST_ENTRY ProcessLocksList;
    DWORD EntryCount;
    DWORD ContentionCount;
    DWORD Spare[ 2 ];
} RTL_CRITICAL_SECTION_DEBUG, *PRTL_CRITICAL_SECTION_DEBUG, RTL_RESOURCE_DEBUG, *PRTL_RESOURCE_DEBUG;




typedef struct _RTL_CRITICAL_SECTION {
    PRTL_CRITICAL_SECTION_DEBUG DebugInfo;

    
    
    
    

    LONG LockCount;
    LONG RecursionCount;
    HANDLE OwningThread;        
    HANDLE LockSemaphore;
    DWORD SpinCount;
} RTL_CRITICAL_SECTION, *PRTL_CRITICAL_SECTION;










typedef void (__stdcall * WAITORTIMERCALLBACKFUNC) (PVOID, BOOLEAN );   
typedef void (__stdcall * WORKERCALLBACKFUNC) (PVOID );                 











































typedef struct _EVENTLOGRECORD {
    DWORD  Length;        
    DWORD  Reserved;      
    DWORD  RecordNumber;  
    DWORD  TimeGenerated; 
    DWORD  TimeWritten;   
    DWORD  EventID;
    WORD   EventType;
    WORD   NumStrings;
    WORD   EventCategory;
    WORD   ReservedFlags; 
    DWORD  ClosingRecordNumber; 
    DWORD  StringOffset;  
    DWORD  UserSidLength;
    DWORD  UserSidOffset;
    DWORD  DataLength;
    DWORD  DataOffset;    
    
    
    
    
    
    
    
    
    
    
    
} EVENTLOGRECORD, *PEVENTLOGRECORD;





#pragma warning(disable : 4200)
typedef struct _EVENTSFORLOGFILE{
	DWORD			ulSize;
    WCHAR   		szLogicalLogFile[256];        
    DWORD			ulNumRecords;
	EVENTLOGRECORD 	pEventLogRecords[];
}EVENTSFORLOGFILE, *PEVENTSFORLOGFILE;

typedef struct _PACKEDEVENTINFO{
    DWORD               ulSize;  
    DWORD               ulNumEventsForLogFile; 
    DWORD 				ulOffsets[];           
}PACKEDEVENTINFO, *PPACKEDEVENTINFO;

#pragma warning(default : 4200)
























































                                                    


                                                    


                                                    


                                                    
                                                    


















































                                            




























































typedef enum _CM_SERVICE_NODE_TYPE {
    DriverType               = 0x00000001,
    FileSystemType           = 0x00000002,
    Win32ServiceOwnProcess   = 0x00000010,
    Win32ServiceShareProcess = 0x00000020,
    AdapterType              = 0x00000004,
    RecognizerType           = 0x00000008
} SERVICE_NODE_TYPE;

typedef enum _CM_SERVICE_LOAD_TYPE {
    BootLoad    = 0x00000000,
    SystemLoad  = 0x00000001,
    AutoLoad    = 0x00000002,
    DemandLoad  = 0x00000003,
    DisableLoad = 0x00000004
} SERVICE_LOAD_TYPE;

typedef enum _CM_ERROR_CONTROL_TYPE {
    IgnoreError   = 0x00000000,
    NormalError   = 0x00000001,
    SevereError   = 0x00000002,
    CriticalError = 0x00000003
} SERVICE_ERROR_TYPE;










typedef struct _TAPE_ERASE {
    DWORD Type;
    BOOLEAN Immediate;
} TAPE_ERASE, *PTAPE_ERASE;












typedef struct _TAPE_PREPARE {
    DWORD Operation;
    BOOLEAN Immediate;
} TAPE_PREPARE, *PTAPE_PREPARE;










typedef struct _TAPE_WRITE_MARKS {
    DWORD Type;
    DWORD Count;
    BOOLEAN Immediate;
} TAPE_WRITE_MARKS, *PTAPE_WRITE_MARKS;









typedef struct _TAPE_GET_POSITION {
    DWORD Type;
    DWORD Partition;
    LARGE_INTEGER Offset;
} TAPE_GET_POSITION, *PTAPE_GET_POSITION;
















typedef struct _TAPE_SET_POSITION {
    DWORD Method;
    DWORD Partition;
    LARGE_INTEGER Offset;
    BOOLEAN Immediate;
} TAPE_SET_POSITION, *PTAPE_SET_POSITION;























































































typedef struct _TAPE_GET_DRIVE_PARAMETERS {
    BOOLEAN ECC;
    BOOLEAN Compression;
    BOOLEAN DataPadding;
    BOOLEAN ReportSetmarks;
    DWORD DefaultBlockSize;
    DWORD MaximumBlockSize;
    DWORD MinimumBlockSize;
    DWORD MaximumPartitionCount;
    DWORD FeaturesLow;
    DWORD FeaturesHigh;
    DWORD EOTWarningZoneSize;
} TAPE_GET_DRIVE_PARAMETERS, *PTAPE_GET_DRIVE_PARAMETERS;





typedef struct _TAPE_SET_DRIVE_PARAMETERS {
    BOOLEAN ECC;
    BOOLEAN Compression;
    BOOLEAN DataPadding;
    BOOLEAN ReportSetmarks;
    DWORD EOTWarningZoneSize;
} TAPE_SET_DRIVE_PARAMETERS, *PTAPE_SET_DRIVE_PARAMETERS;





typedef struct _TAPE_GET_MEDIA_PARAMETERS {
    LARGE_INTEGER Capacity;
    LARGE_INTEGER Remaining;
    DWORD BlockSize;
    DWORD PartitionCount;
    BOOLEAN WriteProtected;
} TAPE_GET_MEDIA_PARAMETERS, *PTAPE_GET_MEDIA_PARAMETERS;





typedef struct _TAPE_SET_MEDIA_PARAMETERS {
    DWORD BlockSize;
} TAPE_SET_MEDIA_PARAMETERS, *PTAPE_SET_MEDIA_PARAMETERS;









typedef struct _TAPE_CREATE_PARTITION {
    DWORD Method;
    DWORD Count;
    DWORD Size;
} TAPE_CREATE_PARTITION, *PTAPE_CREATE_PARTITION;



}
#line 7221 "e:\\program\\vc98\\include\\winnt.h"

#line 7223 "e:\\program\\vc98\\include\\winnt.h"
#line 167 "e:\\program\\vc98\\include\\windef.h"
#line 168 "e:\\program\\vc98\\include\\windef.h"


typedef UINT WPARAM;
typedef LONG LPARAM;
typedef LONG LRESULT;





#line 179 "e:\\program\\vc98\\include\\windef.h"



#line 183 "e:\\program\\vc98\\include\\windef.h"

#line 185 "e:\\program\\vc98\\include\\windef.h"










struct HWND__ { int unused; }; typedef struct HWND__ *HWND;
struct HHOOK__ { int unused; }; typedef struct HHOOK__ *HHOOK;



#line 201 "e:\\program\\vc98\\include\\windef.h"

typedef WORD                ATOM;

typedef HANDLE          *SPHANDLE;
typedef HANDLE           *LPHANDLE;
typedef HANDLE              HGLOBAL;
typedef HANDLE              HLOCAL;
typedef HANDLE              GLOBALHANDLE;
typedef HANDLE              LOCALHANDLE;

typedef int ( __stdcall *FARPROC)();
typedef int ( __stdcall *NEARPROC)();
typedef int (__stdcall *PROC)();




#line 219 "e:\\program\\vc98\\include\\windef.h"



typedef void * HGDIOBJ;


#line 226 "e:\\program\\vc98\\include\\windef.h"
#line 227 "e:\\program\\vc98\\include\\windef.h"


struct HACCEL__ { int unused; }; typedef struct HACCEL__ *HACCEL;
#line 231 "e:\\program\\vc98\\include\\windef.h"

struct HBITMAP__ { int unused; }; typedef struct HBITMAP__ *HBITMAP;
struct HBRUSH__ { int unused; }; typedef struct HBRUSH__ *HBRUSH;
#line 235 "e:\\program\\vc98\\include\\windef.h"

struct HCOLORSPACE__ { int unused; }; typedef struct HCOLORSPACE__ *HCOLORSPACE;
#line 238 "e:\\program\\vc98\\include\\windef.h"

struct HDC__ { int unused; }; typedef struct HDC__ *HDC;
#line 241 "e:\\program\\vc98\\include\\windef.h"
struct HGLRC__ { int unused; }; typedef struct HGLRC__ *HGLRC;          
struct HDESK__ { int unused; }; typedef struct HDESK__ *HDESK;
struct HENHMETAFILE__ { int unused; }; typedef struct HENHMETAFILE__ *HENHMETAFILE;

struct HFONT__ { int unused; }; typedef struct HFONT__ *HFONT;
#line 247 "e:\\program\\vc98\\include\\windef.h"
struct HICON__ { int unused; }; typedef struct HICON__ *HICON;

struct HMENU__ { int unused; }; typedef struct HMENU__ *HMENU;
#line 251 "e:\\program\\vc98\\include\\windef.h"
struct HMETAFILE__ { int unused; }; typedef struct HMETAFILE__ *HMETAFILE;
struct HINSTANCE__ { int unused; }; typedef struct HINSTANCE__ *HINSTANCE;
typedef HINSTANCE HMODULE;      

struct HPALETTE__ { int unused; }; typedef struct HPALETTE__ *HPALETTE;
struct HPEN__ { int unused; }; typedef struct HPEN__ *HPEN;
#line 258 "e:\\program\\vc98\\include\\windef.h"
struct HRGN__ { int unused; }; typedef struct HRGN__ *HRGN;
struct HRSRC__ { int unused; }; typedef struct HRSRC__ *HRSRC;
struct HSTR__ { int unused; }; typedef struct HSTR__ *HSTR;
struct HTASK__ { int unused; }; typedef struct HTASK__ *HTASK;
struct HWINSTA__ { int unused; }; typedef struct HWINSTA__ *HWINSTA;
struct HKL__ { int unused; }; typedef struct HKL__ *HKL;







#line 272 "e:\\program\\vc98\\include\\windef.h"


typedef int HFILE;
typedef HICON HCURSOR;      



#line 280 "e:\\program\\vc98\\include\\windef.h"

typedef DWORD   COLORREF;
typedef DWORD   *LPCOLORREF;



typedef struct tagRECT
{
    LONG    left;
    LONG    top;
    LONG    right;
    LONG    bottom;
} RECT, *PRECT,  *NPRECT,  *LPRECT;

typedef const RECT * LPCRECT;

typedef struct _RECTL       
{
    LONG    left;
    LONG    top;
    LONG    right;
    LONG    bottom;
} RECTL, *PRECTL, *LPRECTL;

typedef const RECTL * LPCRECTL;

typedef struct tagPOINT
{
    LONG  x;
    LONG  y;
} POINT, *PPOINT,  *NPPOINT,  *LPPOINT;

typedef struct _POINTL      
{
    LONG  x;
    LONG  y;
} POINTL, *PPOINTL;

typedef struct tagSIZE
{
    LONG        cx;
    LONG        cy;
} SIZE, *PSIZE, *LPSIZE;

typedef SIZE               SIZEL;
typedef SIZE               *PSIZEL, *LPSIZEL;

typedef struct tagPOINTS
{

    SHORT   x;
    SHORT   y;



#line 336 "e:\\program\\vc98\\include\\windef.h"
} POINTS, *PPOINTS, *LPPOINTS;

































}
#line 372 "e:\\program\\vc98\\include\\windef.h"

#line 374 "e:\\program\\vc98\\include\\windef.h"

#line 164 "e:\\program\\vc98\\include\\windows.h"
#line 1 "e:\\program\\vc98\\include\\winbase.h"























#line 25 "e:\\program\\vc98\\include\\winbase.h"





#line 31 "e:\\program\\vc98\\include\\winbase.h"





#line 37 "e:\\program\\vc98\\include\\winbase.h"


extern "C" {
#line 41 "e:\\program\\vc98\\include\\winbase.h"



































































#line 109 "e:\\program\\vc98\\include\\winbase.h"















































#line 157 "e:\\program\\vc98\\include\\winbase.h"


























































typedef struct _OVERLAPPED {
    DWORD   Internal;
    DWORD   InternalHigh;
    DWORD   Offset;
    DWORD   OffsetHigh;
    HANDLE  hEvent;
} OVERLAPPED, *LPOVERLAPPED;

typedef struct _SECURITY_ATTRIBUTES {
    DWORD nLength;
    LPVOID lpSecurityDescriptor;
    BOOL bInheritHandle;
} SECURITY_ATTRIBUTES, *PSECURITY_ATTRIBUTES, *LPSECURITY_ATTRIBUTES;

typedef struct _PROCESS_INFORMATION {
    HANDLE hProcess;
    HANDLE hThread;
    DWORD dwProcessId;
    DWORD dwThreadId;
} PROCESS_INFORMATION, *PPROCESS_INFORMATION, *LPPROCESS_INFORMATION;





typedef struct _FILETIME {
    DWORD dwLowDateTime;
    DWORD dwHighDateTime;
} FILETIME, *PFILETIME, *LPFILETIME;





typedef struct _SYSTEMTIME {
    WORD wYear;
    WORD wMonth;
    WORD wDayOfWeek;
    WORD wDay;
    WORD wHour;
    WORD wMinute;
    WORD wSecond;
    WORD wMilliseconds;
} SYSTEMTIME, *PSYSTEMTIME, *LPSYSTEMTIME;

typedef DWORD (__stdcall *PTHREAD_START_ROUTINE)(
    LPVOID lpThreadParameter
    );
typedef PTHREAD_START_ROUTINE LPTHREAD_START_ROUTINE;






#line 271 "e:\\program\\vc98\\include\\winbase.h"

typedef RTL_CRITICAL_SECTION CRITICAL_SECTION;
typedef PRTL_CRITICAL_SECTION PCRITICAL_SECTION;
typedef PRTL_CRITICAL_SECTION LPCRITICAL_SECTION;

typedef RTL_CRITICAL_SECTION_DEBUG CRITICAL_SECTION_DEBUG;
typedef PRTL_CRITICAL_SECTION_DEBUG PCRITICAL_SECTION_DEBUG;
typedef PRTL_CRITICAL_SECTION_DEBUG LPCRITICAL_SECTION_DEBUG;


typedef PLDT_ENTRY LPLDT_ENTRY;


#line 285 "e:\\program\\vc98\\include\\winbase.h"









































































































typedef struct _COMMPROP {
    WORD wPacketLength;
    WORD wPacketVersion;
    DWORD dwServiceMask;
    DWORD dwReserved1;
    DWORD dwMaxTxQueue;
    DWORD dwMaxRxQueue;
    DWORD dwMaxBaud;
    DWORD dwProvSubType;
    DWORD dwProvCapabilities;
    DWORD dwSettableParams;
    DWORD dwSettableBaud;
    WORD wSettableData;
    WORD wSettableStopParity;
    DWORD dwCurrentTxQueue;
    DWORD dwCurrentRxQueue;
    DWORD dwProvSpec1;
    DWORD dwProvSpec2;
    WCHAR wcProvChar[1];
} COMMPROP,*LPCOMMPROP;







typedef struct _COMSTAT {
    DWORD fCtsHold : 1;
    DWORD fDsrHold : 1;
    DWORD fRlsdHold : 1;
    DWORD fXoffHold : 1;
    DWORD fXoffSent : 1;
    DWORD fEof : 1;
    DWORD fTxim : 1;
    DWORD fReserved : 25;
    DWORD cbInQue;
    DWORD cbOutQue;
} COMSTAT, *LPCOMSTAT;
















typedef struct _DCB {
    DWORD DCBlength;      
    DWORD BaudRate;       
    DWORD fBinary: 1;     
    DWORD fParity: 1;     
    DWORD fOutxCtsFlow:1; 
    DWORD fOutxDsrFlow:1; 
    DWORD fDtrControl:2;  
    DWORD fDsrSensitivity:1; 
    DWORD fTXContinueOnXoff: 1; 
    DWORD fOutX: 1;       
    DWORD fInX: 1;        
    DWORD fErrorChar: 1;  
    DWORD fNull: 1;       
    DWORD fRtsControl:2;  
    DWORD fAbortOnError:1; 
    DWORD fDummy2:17;     
    WORD wReserved;       
    WORD XonLim;          
    WORD XoffLim;         
    BYTE ByteSize;        
    BYTE Parity;          
    BYTE StopBits;        
    char XonChar;         
    char XoffChar;        
    char ErrorChar;       
    char EofChar;         
    char EvtChar;         
    WORD wReserved1;      
} DCB, *LPDCB;

typedef struct _COMMTIMEOUTS {
    DWORD ReadIntervalTimeout;          
    DWORD ReadTotalTimeoutMultiplier;   
    DWORD ReadTotalTimeoutConstant;     
    DWORD WriteTotalTimeoutMultiplier;  
    DWORD WriteTotalTimeoutConstant;    
} COMMTIMEOUTS,*LPCOMMTIMEOUTS;

typedef struct _COMMCONFIG {
    DWORD dwSize;               
    WORD wVersion;              
    WORD wReserved;             
    DCB dcb;                    
    DWORD dwProviderSubType;    

    DWORD dwProviderOffset;     

    DWORD dwProviderSize;       
    WCHAR wcProviderData[1];    
} COMMCONFIG,*LPCOMMCONFIG;

typedef struct _SYSTEM_INFO {
    union {
        DWORD dwOemId;          
        struct {
            WORD wProcessorArchitecture;
            WORD wReserved;
        };
    };
    DWORD dwPageSize;
    LPVOID lpMinimumApplicationAddress;
    LPVOID lpMaximumApplicationAddress;
    DWORD dwActiveProcessorMask;
    DWORD dwNumberOfProcessors;
    DWORD dwProcessorType;
    DWORD dwAllocationGranularity;
    WORD wProcessorLevel;
    WORD wProcessorRevision;
} SYSTEM_INFO, *LPSYSTEM_INFO;




































typedef struct _MEMORYSTATUS {
    DWORD dwLength;
    DWORD dwMemoryLoad;
    DWORD dwTotalPhys;
    DWORD dwAvailPhys;
    DWORD dwTotalPageFile;
    DWORD dwAvailPageFile;
    DWORD dwTotalVirtual;
    DWORD dwAvailVirtual;
} MEMORYSTATUS, *LPMEMORYSTATUS;















































































typedef struct _EXCEPTION_DEBUG_INFO {
    EXCEPTION_RECORD ExceptionRecord;
    DWORD dwFirstChance;
} EXCEPTION_DEBUG_INFO, *LPEXCEPTION_DEBUG_INFO;

typedef struct _CREATE_THREAD_DEBUG_INFO {
    HANDLE hThread;
    LPVOID lpThreadLocalBase;
    LPTHREAD_START_ROUTINE lpStartAddress;
} CREATE_THREAD_DEBUG_INFO, *LPCREATE_THREAD_DEBUG_INFO;

typedef struct _CREATE_PROCESS_DEBUG_INFO {
    HANDLE hFile;
    HANDLE hProcess;
    HANDLE hThread;
    LPVOID lpBaseOfImage;
    DWORD dwDebugInfoFileOffset;
    DWORD nDebugInfoSize;
    LPVOID lpThreadLocalBase;
    LPTHREAD_START_ROUTINE lpStartAddress;
    LPVOID lpImageName;
    WORD fUnicode;
} CREATE_PROCESS_DEBUG_INFO, *LPCREATE_PROCESS_DEBUG_INFO;

typedef struct _EXIT_THREAD_DEBUG_INFO {
    DWORD dwExitCode;
} EXIT_THREAD_DEBUG_INFO, *LPEXIT_THREAD_DEBUG_INFO;

typedef struct _EXIT_PROCESS_DEBUG_INFO {
    DWORD dwExitCode;
} EXIT_PROCESS_DEBUG_INFO, *LPEXIT_PROCESS_DEBUG_INFO;

typedef struct _LOAD_DLL_DEBUG_INFO {
    HANDLE hFile;
    LPVOID lpBaseOfDll;
    DWORD dwDebugInfoFileOffset;
    DWORD nDebugInfoSize;
    LPVOID lpImageName;
    WORD fUnicode;
} LOAD_DLL_DEBUG_INFO, *LPLOAD_DLL_DEBUG_INFO;

typedef struct _UNLOAD_DLL_DEBUG_INFO {
    LPVOID lpBaseOfDll;
} UNLOAD_DLL_DEBUG_INFO, *LPUNLOAD_DLL_DEBUG_INFO;

typedef struct _OUTPUT_DEBUG_STRING_INFO {
    LPSTR lpDebugStringData;
    WORD fUnicode;
    WORD nDebugStringLength;
} OUTPUT_DEBUG_STRING_INFO, *LPOUTPUT_DEBUG_STRING_INFO;

typedef struct _RIP_INFO {
    DWORD dwError;
    DWORD dwType;
} RIP_INFO, *LPRIP_INFO;


typedef struct _DEBUG_EVENT {
    DWORD dwDebugEventCode;
    DWORD dwProcessId;
    DWORD dwThreadId;
    union {
        EXCEPTION_DEBUG_INFO Exception;
        CREATE_THREAD_DEBUG_INFO CreateThread;
        CREATE_PROCESS_DEBUG_INFO CreateProcessInfo;
        EXIT_THREAD_DEBUG_INFO ExitThread;
        EXIT_PROCESS_DEBUG_INFO ExitProcess;
        LOAD_DLL_DEBUG_INFO LoadDll;
        UNLOAD_DLL_DEBUG_INFO UnloadDll;
        OUTPUT_DEBUG_STRING_INFO DebugString;
        RIP_INFO RipInfo;
    } u;
} DEBUG_EVENT, *LPDEBUG_EVENT;


typedef PCONTEXT LPCONTEXT;
typedef PEXCEPTION_RECORD LPEXCEPTION_RECORD;
typedef PEXCEPTION_POINTERS LPEXCEPTION_POINTERS;
#line 719 "e:\\program\\vc98\\include\\winbase.h"














#line 734 "e:\\program\\vc98\\include\\winbase.h"














































































































































































































typedef struct _OFSTRUCT {
    BYTE cBytes;
    BYTE fFixedDisk;
    WORD nErrCode;
    WORD Reserved1;
    WORD Reserved2;
    CHAR szPathName[128];
} OFSTRUCT, *LPOFSTRUCT, *POFSTRUCT;






















































#line 1003 "e:\\program\\vc98\\include\\winbase.h"



__declspec(dllimport)
LONG
__stdcall
InterlockedIncrement(
    LPLONG lpAddend
    );

__declspec(dllimport)
LONG
__stdcall
InterlockedDecrement(
    LPLONG lpAddend
    );

__declspec(dllimport)
LONG
__stdcall
InterlockedExchange(
    LPLONG Target,
    LONG Value
    );

__declspec(dllimport)
LONG
__stdcall
InterlockedExchangeAdd(
    LPLONG Addend,
    LONG Value
    );

__declspec(dllimport)
PVOID
__stdcall
InterlockedCompareExchange (
    PVOID *Destination,
    PVOID Exchange,
    PVOID Comperand
    );

#line 1046 "e:\\program\\vc98\\include\\winbase.h"

#line 1048 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
FreeResource(
        HGLOBAL hResData
        );

__declspec(dllimport)
LPVOID
__stdcall
LockResource(
        HGLOBAL hResData
        );







int
__stdcall



#line 1075 "e:\\program\\vc98\\include\\winbase.h"
WinMain(
    HINSTANCE hInstance,
    HINSTANCE hPrevInstance,
    LPSTR lpCmdLine,
    int nShowCmd
    );

__declspec(dllimport)
BOOL
__stdcall
FreeLibrary(
    HMODULE hLibModule
    );


__declspec(dllimport)
void
__stdcall
FreeLibraryAndExitThread(
    HMODULE hLibModule,
    DWORD dwExitCode
    );

__declspec(dllimport)
BOOL
__stdcall
DisableThreadLibraryCalls(
    HMODULE hLibModule
    );

__declspec(dllimport)
FARPROC
__stdcall
GetProcAddress(
    HMODULE hModule,
    LPCSTR lpProcName
    );

__declspec(dllimport)
DWORD
__stdcall
GetVersion( void );

__declspec(dllimport)
HGLOBAL
__stdcall
GlobalAlloc(
    UINT uFlags,
    DWORD dwBytes
    );

__declspec(dllimport)
HGLOBAL
__stdcall
GlobalReAlloc(
    HGLOBAL hMem,
    DWORD dwBytes,
    UINT uFlags
    );

__declspec(dllimport)
DWORD
__stdcall
GlobalSize(
    HGLOBAL hMem
    );

__declspec(dllimport)
UINT
__stdcall
GlobalFlags(
    HGLOBAL hMem
    );


__declspec(dllimport)
LPVOID
__stdcall
GlobalLock(
    HGLOBAL hMem
    );


__declspec(dllimport)
HGLOBAL
__stdcall
GlobalHandle(
    LPCVOID pMem
    );


__declspec(dllimport)
BOOL
__stdcall
GlobalUnlock(
    HGLOBAL hMem
    );


__declspec(dllimport)
HGLOBAL
__stdcall
GlobalFree(
    HGLOBAL hMem
    );

__declspec(dllimport)
UINT
__stdcall
GlobalCompact(
    DWORD dwMinFree
    );

__declspec(dllimport)
void
__stdcall
GlobalFix(
    HGLOBAL hMem
    );

__declspec(dllimport)
void
__stdcall
GlobalUnfix(
    HGLOBAL hMem
    );

__declspec(dllimport)
LPVOID
__stdcall
GlobalWire(
    HGLOBAL hMem
    );

__declspec(dllimport)
BOOL
__stdcall
GlobalUnWire(
    HGLOBAL hMem
    );

__declspec(dllimport)
void
__stdcall
GlobalMemoryStatus(
    LPMEMORYSTATUS lpBuffer
    );

__declspec(dllimport)
HLOCAL
__stdcall
LocalAlloc(
    UINT uFlags,
    UINT uBytes
    );

__declspec(dllimport)
HLOCAL
__stdcall
LocalReAlloc(
    HLOCAL hMem,
    UINT uBytes,
    UINT uFlags
    );

__declspec(dllimport)
LPVOID
__stdcall
LocalLock(
    HLOCAL hMem
    );

__declspec(dllimport)
HLOCAL
__stdcall
LocalHandle(
    LPCVOID pMem
    );

__declspec(dllimport)
BOOL
__stdcall
LocalUnlock(
    HLOCAL hMem
    );

__declspec(dllimport)
UINT
__stdcall
LocalSize(
    HLOCAL hMem
    );

__declspec(dllimport)
UINT
__stdcall
LocalFlags(
    HLOCAL hMem
    );

__declspec(dllimport)
HLOCAL
__stdcall
LocalFree(
    HLOCAL hMem
    );

__declspec(dllimport)
UINT
__stdcall
LocalShrink(
    HLOCAL hMem,
    UINT cbNewSize
    );

__declspec(dllimport)
UINT
__stdcall
LocalCompact(
    UINT uMinFree
    );

__declspec(dllimport)
BOOL
__stdcall
FlushInstructionCache(
    HANDLE hProcess,
    LPCVOID lpBaseAddress,
    DWORD dwSize
    );

__declspec(dllimport)
LPVOID
__stdcall
VirtualAlloc(
    LPVOID lpAddress,
    DWORD dwSize,
    DWORD flAllocationType,
    DWORD flProtect
    );

__declspec(dllimport)
BOOL
__stdcall
VirtualFree(
    LPVOID lpAddress,
    DWORD dwSize,
    DWORD dwFreeType
    );

__declspec(dllimport)
BOOL
__stdcall
VirtualProtect(
    LPVOID lpAddress,
    DWORD dwSize,
    DWORD flNewProtect,
    PDWORD lpflOldProtect
    );

__declspec(dllimport)
DWORD
__stdcall
VirtualQuery(
    LPCVOID lpAddress,
    PMEMORY_BASIC_INFORMATION lpBuffer,
    DWORD dwLength
    );

__declspec(dllimport)
LPVOID
__stdcall
VirtualAllocEx(
    HANDLE hProcess,
    LPVOID lpAddress,
    DWORD dwSize,
    DWORD flAllocationType,
    DWORD flProtect
    );

__declspec(dllimport)
BOOL
__stdcall
VirtualFreeEx(
    HANDLE hProcess,
    LPVOID lpAddress,
    DWORD dwSize,
    DWORD dwFreeType
    );

__declspec(dllimport)
BOOL
__stdcall
VirtualProtectEx(
    HANDLE hProcess,
    LPVOID lpAddress,
    DWORD dwSize,
    DWORD flNewProtect,
    PDWORD lpflOldProtect
    );

__declspec(dllimport)
DWORD
__stdcall
VirtualQueryEx(
    HANDLE hProcess,
    LPCVOID lpAddress,
    PMEMORY_BASIC_INFORMATION lpBuffer,
    DWORD dwLength
    );

__declspec(dllimport)
HANDLE
__stdcall
HeapCreate(
    DWORD flOptions,
    DWORD dwInitialSize,
    DWORD dwMaximumSize
    );

__declspec(dllimport)
BOOL
__stdcall
HeapDestroy(
    HANDLE hHeap
    );


__declspec(dllimport)
LPVOID
__stdcall
HeapAlloc(
    HANDLE hHeap,
    DWORD dwFlags,
    DWORD dwBytes
    );

__declspec(dllimport)
LPVOID
__stdcall
HeapReAlloc(
    HANDLE hHeap,
    DWORD dwFlags,
    LPVOID lpMem,
    DWORD dwBytes
    );

__declspec(dllimport)
BOOL
__stdcall
HeapFree(
    HANDLE hHeap,
    DWORD dwFlags,
    LPVOID lpMem
    );

__declspec(dllimport)
DWORD
__stdcall
HeapSize(
    HANDLE hHeap,
    DWORD dwFlags,
    LPCVOID lpMem
    );

__declspec(dllimport)
BOOL
__stdcall
HeapValidate(
    HANDLE hHeap,
    DWORD dwFlags,
    LPCVOID lpMem
    );

__declspec(dllimport)
UINT
__stdcall
HeapCompact(
    HANDLE hHeap,
    DWORD dwFlags
    );

__declspec(dllimport)
HANDLE
__stdcall
GetProcessHeap( void );

__declspec(dllimport)
DWORD
__stdcall
GetProcessHeaps(
    DWORD NumberOfHeaps,
    PHANDLE ProcessHeaps
    );

typedef struct _PROCESS_HEAP_ENTRY {
    PVOID lpData;
    DWORD cbData;
    BYTE cbOverhead;
    BYTE iRegionIndex;
    WORD wFlags;
    union {
        struct {
            HANDLE hMem;
            DWORD dwReserved[ 3 ];
        } Block;
        struct {
            DWORD dwCommittedSize;
            DWORD dwUnCommittedSize;
            LPVOID lpFirstBlock;
            LPVOID lpLastBlock;
        } Region;
    };
} PROCESS_HEAP_ENTRY, *LPPROCESS_HEAP_ENTRY, *PPROCESS_HEAP_ENTRY;







__declspec(dllimport)
BOOL
__stdcall
HeapLock(
    HANDLE hHeap
    );

__declspec(dllimport)
BOOL
__stdcall
HeapUnlock(
    HANDLE hHeap
    );


__declspec(dllimport)
BOOL
__stdcall
HeapWalk(
    HANDLE hHeap,
    LPPROCESS_HEAP_ENTRY lpEntry
    );










__declspec(dllimport)
BOOL
__stdcall
GetBinaryTypeA(
    LPCSTR lpApplicationName,
    LPDWORD lpBinaryType
    );
__declspec(dllimport)
BOOL
__stdcall
GetBinaryTypeW(
    LPCWSTR lpApplicationName,
    LPDWORD lpBinaryType
    );




#line 1547 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetShortPathNameA(
    LPCSTR lpszLongPath,
    LPSTR  lpszShortPath,
    DWORD    cchBuffer
    );
__declspec(dllimport)
DWORD
__stdcall
GetShortPathNameW(
    LPCWSTR lpszLongPath,
    LPWSTR  lpszShortPath,
    DWORD    cchBuffer
    );




#line 1569 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetLongPathNameA(
    LPCSTR lpszShortPath,
    LPSTR  lpszLongPath,
    DWORD    cchBuffer
    );
__declspec(dllimport)
DWORD
__stdcall
GetLongPathNameW(
    LPCWSTR lpszShortPath,
    LPWSTR  lpszLongPath,
    DWORD    cchBuffer
    );




#line 1591 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
GetProcessAffinityMask(
    HANDLE hProcess,
    LPDWORD lpProcessAffinityMask,
    LPDWORD lpSystemAffinityMask
    );

__declspec(dllimport)
BOOL
__stdcall
SetProcessAffinityMask(
    HANDLE hProcess,
    DWORD dwProcessAffinityMask
    );


__declspec(dllimport)
BOOL
__stdcall
GetProcessTimes(
    HANDLE hProcess,
    LPFILETIME lpCreationTime,
    LPFILETIME lpExitTime,
    LPFILETIME lpKernelTime,
    LPFILETIME lpUserTime
    );

__declspec(dllimport)
BOOL
__stdcall
GetProcessWorkingSetSize(
    HANDLE hProcess,
    LPDWORD lpMinimumWorkingSetSize,
    LPDWORD lpMaximumWorkingSetSize
    );

__declspec(dllimport)
BOOL
__stdcall
SetProcessWorkingSetSize(
    HANDLE hProcess,
    DWORD dwMinimumWorkingSetSize,
    DWORD dwMaximumWorkingSetSize
    );

__declspec(dllimport)
HANDLE
__stdcall
OpenProcess(
    DWORD dwDesiredAccess,
    BOOL bInheritHandle,
    DWORD dwProcessId
    );

__declspec(dllimport)
HANDLE
__stdcall
GetCurrentProcess(
    void
    );

__declspec(dllimport)
DWORD
__stdcall
GetCurrentProcessId(
    void
    );

__declspec(dllimport)
void
__stdcall
ExitProcess(
    UINT uExitCode
    );

__declspec(dllimport)
BOOL
__stdcall
TerminateProcess(
    HANDLE hProcess,
    UINT uExitCode
    );

__declspec(dllimport)
BOOL
__stdcall
GetExitCodeProcess(
    HANDLE hProcess,
    LPDWORD lpExitCode
    );


__declspec(dllimport)
void
__stdcall
FatalExit(
    int ExitCode
    );

__declspec(dllimport)
LPSTR
__stdcall
GetEnvironmentStrings(
    void
    );

__declspec(dllimport)
LPWSTR
__stdcall
GetEnvironmentStringsW(
    void
    );





#line 1712 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
FreeEnvironmentStringsA(
    LPSTR
    );
__declspec(dllimport)
BOOL
__stdcall
FreeEnvironmentStringsW(
    LPWSTR
    );




#line 1730 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
void
__stdcall
RaiseException(
    DWORD dwExceptionCode,
    DWORD dwExceptionFlags,
    DWORD nNumberOfArguments,
    const DWORD *lpArguments
    );

__declspec(dllimport)
LONG
__stdcall
UnhandledExceptionFilter(
    struct _EXCEPTION_POINTERS *ExceptionInfo
    );

typedef LONG (__stdcall *PTOP_LEVEL_EXCEPTION_FILTER)(
    struct _EXCEPTION_POINTERS *ExceptionInfo
    );
typedef PTOP_LEVEL_EXCEPTION_FILTER LPTOP_LEVEL_EXCEPTION_FILTER;

__declspec(dllimport)
LPTOP_LEVEL_EXCEPTION_FILTER
__stdcall
SetUnhandledExceptionFilter(
    LPTOP_LEVEL_EXCEPTION_FILTER lpTopLevelExceptionFilter
    );






































#line 1798 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
CreateThread(
    LPSECURITY_ATTRIBUTES lpThreadAttributes,
    DWORD dwStackSize,
    LPTHREAD_START_ROUTINE lpStartAddress,
    LPVOID lpParameter,
    DWORD dwCreationFlags,
    LPDWORD lpThreadId
    );

__declspec(dllimport)
HANDLE
__stdcall
CreateRemoteThread(
    HANDLE hProcess,
    LPSECURITY_ATTRIBUTES lpThreadAttributes,
    DWORD dwStackSize,
    LPTHREAD_START_ROUTINE lpStartAddress,
    LPVOID lpParameter,
    DWORD dwCreationFlags,
    LPDWORD lpThreadId
    );

__declspec(dllimport)
HANDLE
__stdcall
GetCurrentThread(
    void
    );

__declspec(dllimport)
DWORD
__stdcall
GetCurrentThreadId(
    void
    );

__declspec(dllimport)
DWORD
__stdcall
SetThreadAffinityMask(
    HANDLE hThread,
    DWORD dwThreadAffinityMask
    );









#line 1855 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
SetProcessPriorityBoost(
    HANDLE hProcess,
    BOOL bDisablePriorityBoost
    );

__declspec(dllimport)
BOOL
__stdcall
GetProcessPriorityBoost(
    HANDLE hProcess,
    PBOOL pDisablePriorityBoost
    );

__declspec(dllimport)
BOOL
__stdcall
RequestWakeupLatency(
    LATENCY_TIME latency
    );

__declspec(dllimport)
BOOL
__stdcall
SetThreadPriority(
    HANDLE hThread,
    int nPriority
    );

__declspec(dllimport)
BOOL
__stdcall
SetThreadPriorityBoost(
    HANDLE hThread,
    BOOL bDisablePriorityBoost
    );

__declspec(dllimport)
BOOL
__stdcall
GetThreadPriorityBoost(
    HANDLE hThread,
    PBOOL pDisablePriorityBoost
    );

__declspec(dllimport)
int
__stdcall
GetThreadPriority(
    HANDLE hThread
    );

__declspec(dllimport)
BOOL
__stdcall
GetThreadTimes(
    HANDLE hThread,
    LPFILETIME lpCreationTime,
    LPFILETIME lpExitTime,
    LPFILETIME lpKernelTime,
    LPFILETIME lpUserTime
    );

__declspec(dllimport)
void
__stdcall
ExitThread(
    DWORD dwExitCode
    );

__declspec(dllimport)
BOOL
__stdcall
TerminateThread(
    HANDLE hThread,
    DWORD dwExitCode
    );

__declspec(dllimport)
BOOL
__stdcall
GetExitCodeThread(
    HANDLE hThread,
    LPDWORD lpExitCode
    );

__declspec(dllimport)
BOOL
__stdcall
GetThreadSelectorEntry(
    HANDLE hThread,
    DWORD dwSelector,
    LPLDT_ENTRY lpSelectorEntry
    );

__declspec(dllimport)
EXECUTION_STATE
__stdcall
SetThreadExecutionState(
    EXECUTION_STATE esFlags
    );

__declspec(dllimport)
DWORD
__stdcall
GetLastError(
    void
    );

__declspec(dllimport)
void
__stdcall
SetLastError(
    DWORD dwErrCode
    );



__declspec(dllimport)
BOOL
__stdcall
GetOverlappedResult(
    HANDLE hFile,
    LPOVERLAPPED lpOverlapped,
    LPDWORD lpNumberOfBytesTransferred,
    BOOL bWait
    );

__declspec(dllimport)
HANDLE
__stdcall
CreateIoCompletionPort(
    HANDLE FileHandle,
    HANDLE ExistingCompletionPort,
    DWORD CompletionKey,
    DWORD NumberOfConcurrentThreads
    );

__declspec(dllimport)
BOOL
__stdcall
GetQueuedCompletionStatus(
    HANDLE CompletionPort,
    LPDWORD lpNumberOfBytesTransferred,
    LPDWORD lpCompletionKey,
    LPOVERLAPPED *lpOverlapped,
    DWORD dwMilliseconds
    );

__declspec(dllimport)
BOOL
__stdcall
PostQueuedCompletionStatus(
    HANDLE CompletionPort,
    DWORD dwNumberOfBytesTransferred,
    DWORD dwCompletionKey,
    LPOVERLAPPED lpOverlapped
    );






__declspec(dllimport)
UINT
__stdcall
SetErrorMode(
    UINT uMode
    );

__declspec(dllimport)
BOOL
__stdcall
ReadProcessMemory(
    HANDLE hProcess,
    LPCVOID lpBaseAddress,
    LPVOID lpBuffer,
    DWORD nSize,
    LPDWORD lpNumberOfBytesRead
    );

__declspec(dllimport)
BOOL
__stdcall
WriteProcessMemory(
    HANDLE hProcess,
    LPVOID lpBaseAddress,
    LPVOID lpBuffer,
    DWORD nSize,
    LPDWORD lpNumberOfBytesWritten
    );


__declspec(dllimport)
BOOL
__stdcall
GetThreadContext(
    HANDLE hThread,
    LPCONTEXT lpContext
    );

__declspec(dllimport)
BOOL
__stdcall
SetThreadContext(
    HANDLE hThread,
    const CONTEXT *lpContext
    );
#line 2068 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
SuspendThread(
    HANDLE hThread
    );

__declspec(dllimport)
DWORD
__stdcall
ResumeThread(
    HANDLE hThread
    );


















#line 2101 "e:\\program\\vc98\\include\\winbase.h"








#line 2110 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
void
__stdcall
DebugBreak(
    void
    );

__declspec(dllimport)
BOOL
__stdcall
WaitForDebugEvent(
    LPDEBUG_EVENT lpDebugEvent,
    DWORD dwMilliseconds
    );

__declspec(dllimport)
BOOL
__stdcall
ContinueDebugEvent(
    DWORD dwProcessId,
    DWORD dwThreadId,
    DWORD dwContinueStatus
    );

__declspec(dllimport)
BOOL
__stdcall
DebugActiveProcess(
    DWORD dwProcessId
    );

__declspec(dllimport)
void
__stdcall
InitializeCriticalSection(
    LPCRITICAL_SECTION lpCriticalSection
    );

__declspec(dllimport)
void
__stdcall
EnterCriticalSection(
    LPCRITICAL_SECTION lpCriticalSection
    );

__declspec(dllimport)
void
__stdcall
LeaveCriticalSection(
    LPCRITICAL_SECTION lpCriticalSection
    );

















#line 2180 "e:\\program\\vc98\\include\\winbase.h"








#line 2189 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
void
__stdcall
DeleteCriticalSection(
    LPCRITICAL_SECTION lpCriticalSection
    );

__declspec(dllimport)
BOOL
__stdcall
SetEvent(
    HANDLE hEvent
    );

__declspec(dllimport)
BOOL
__stdcall
ResetEvent(
    HANDLE hEvent
    );

__declspec(dllimport)
BOOL
__stdcall
PulseEvent(
    HANDLE hEvent
    );

__declspec(dllimport)
BOOL
__stdcall
ReleaseSemaphore(
    HANDLE hSemaphore,
    LONG lReleaseCount,
    LPLONG lpPreviousCount
    );

__declspec(dllimport)
BOOL
__stdcall
ReleaseMutex(
    HANDLE hMutex
    );

__declspec(dllimport)
DWORD
__stdcall
WaitForSingleObject(
    HANDLE hHandle,
    DWORD dwMilliseconds
    );

__declspec(dllimport)
DWORD
__stdcall
WaitForMultipleObjects(
    DWORD nCount,
    const HANDLE *lpHandles,
    BOOL bWaitAll,
    DWORD dwMilliseconds
    );

__declspec(dllimport)
void
__stdcall
Sleep(
    DWORD dwMilliseconds
    );

__declspec(dllimport)
HGLOBAL
__stdcall
LoadResource(
    HMODULE hModule,
    HRSRC hResInfo
    );

__declspec(dllimport)
DWORD
__stdcall
SizeofResource(
    HMODULE hModule,
    HRSRC hResInfo
    );


__declspec(dllimport)
ATOM
__stdcall
GlobalDeleteAtom(
    ATOM nAtom
    );

__declspec(dllimport)
BOOL
__stdcall
InitAtomTable(
    DWORD nSize
    );

__declspec(dllimport)
ATOM
__stdcall
DeleteAtom(
    ATOM nAtom
    );

__declspec(dllimport)
UINT
__stdcall
SetHandleCount(
    UINT uNumber
    );

__declspec(dllimport)
DWORD
__stdcall
GetLogicalDrives(
    void
    );

__declspec(dllimport)
BOOL
__stdcall
LockFile(
    HANDLE hFile,
    DWORD dwFileOffsetLow,
    DWORD dwFileOffsetHigh,
    DWORD nNumberOfBytesToLockLow,
    DWORD nNumberOfBytesToLockHigh
    );

__declspec(dllimport)
BOOL
__stdcall
UnlockFile(
    HANDLE hFile,
    DWORD dwFileOffsetLow,
    DWORD dwFileOffsetHigh,
    DWORD nNumberOfBytesToUnlockLow,
    DWORD nNumberOfBytesToUnlockHigh
    );

__declspec(dllimport)
BOOL
__stdcall
LockFileEx(
    HANDLE hFile,
    DWORD dwFlags,
    DWORD dwReserved,
    DWORD nNumberOfBytesToLockLow,
    DWORD nNumberOfBytesToLockHigh,
    LPOVERLAPPED lpOverlapped
    );




__declspec(dllimport)
BOOL
__stdcall
UnlockFileEx(
    HANDLE hFile,
    DWORD dwReserved,
    DWORD nNumberOfBytesToUnlockLow,
    DWORD nNumberOfBytesToUnlockHigh,
    LPOVERLAPPED lpOverlapped
    );

typedef struct _BY_HANDLE_FILE_INFORMATION {
    DWORD dwFileAttributes;
    FILETIME ftCreationTime;
    FILETIME ftLastAccessTime;
    FILETIME ftLastWriteTime;
    DWORD dwVolumeSerialNumber;
    DWORD nFileSizeHigh;
    DWORD nFileSizeLow;
    DWORD nNumberOfLinks;
    DWORD nFileIndexHigh;
    DWORD nFileIndexLow;
} BY_HANDLE_FILE_INFORMATION, *PBY_HANDLE_FILE_INFORMATION, *LPBY_HANDLE_FILE_INFORMATION;

__declspec(dllimport)
BOOL
__stdcall
GetFileInformationByHandle(
    HANDLE hFile,
    LPBY_HANDLE_FILE_INFORMATION lpFileInformation
    );

__declspec(dllimport)
DWORD
__stdcall
GetFileType(
    HANDLE hFile
    );

__declspec(dllimport)
DWORD
__stdcall
GetFileSize(
    HANDLE hFile,
    LPDWORD lpFileSizeHigh
    );

__declspec(dllimport)
HANDLE
__stdcall
GetStdHandle(
    DWORD nStdHandle
    );

__declspec(dllimport)
BOOL
__stdcall
SetStdHandle(
    DWORD nStdHandle,
    HANDLE hHandle
    );

__declspec(dllimport)
BOOL
__stdcall
WriteFile(
    HANDLE hFile,
    LPCVOID lpBuffer,
    DWORD nNumberOfBytesToWrite,
    LPDWORD lpNumberOfBytesWritten,
    LPOVERLAPPED lpOverlapped
    );

__declspec(dllimport)
BOOL
__stdcall
ReadFile(
    HANDLE hFile,
    LPVOID lpBuffer,
    DWORD nNumberOfBytesToRead,
    LPDWORD lpNumberOfBytesRead,
    LPOVERLAPPED lpOverlapped
    );

__declspec(dllimport)
BOOL
__stdcall
FlushFileBuffers(
    HANDLE hFile
    );

__declspec(dllimport)
BOOL
__stdcall
DeviceIoControl(
    HANDLE hDevice,
    DWORD dwIoControlCode,
    LPVOID lpInBuffer,
    DWORD nInBufferSize,
    LPVOID lpOutBuffer,
    DWORD nOutBufferSize,
    LPDWORD lpBytesReturned,
    LPOVERLAPPED lpOverlapped
    );

__declspec(dllimport)
BOOL
__stdcall
GetDevicePowerState(
    HANDLE hFile
    );

__declspec(dllimport)
BOOL
__stdcall
SetEndOfFile(
    HANDLE hFile
    );

__declspec(dllimport)
DWORD
__stdcall
SetFilePointer(
    HANDLE hFile,
    LONG lDistanceToMove,
    PLONG lpDistanceToMoveHigh,
    DWORD dwMoveMethod
    );

__declspec(dllimport)
BOOL
__stdcall
FindClose(
    HANDLE hFindFile
    );

__declspec(dllimport)
BOOL
__stdcall
GetFileTime(
    HANDLE hFile,
    LPFILETIME lpCreationTime,
    LPFILETIME lpLastAccessTime,
    LPFILETIME lpLastWriteTime
    );

__declspec(dllimport)
BOOL
__stdcall
SetFileTime(
    HANDLE hFile,
    const FILETIME *lpCreationTime,
    const FILETIME *lpLastAccessTime,
    const FILETIME *lpLastWriteTime
    );

__declspec(dllimport)
BOOL
__stdcall
CloseHandle(
    HANDLE hObject
    );

__declspec(dllimport)
BOOL
__stdcall
DuplicateHandle(
    HANDLE hSourceProcessHandle,
    HANDLE hSourceHandle,
    HANDLE hTargetProcessHandle,
    LPHANDLE lpTargetHandle,
    DWORD dwDesiredAccess,
    BOOL bInheritHandle,
    DWORD dwOptions
    );

__declspec(dllimport)
BOOL
__stdcall
GetHandleInformation(
    HANDLE hObject,
    LPDWORD lpdwFlags
    );

__declspec(dllimport)
BOOL
__stdcall
SetHandleInformation(
    HANDLE hObject,
    DWORD dwMask,
    DWORD dwFlags
    );






__declspec(dllimport)
DWORD
__stdcall
LoadModule(
    LPCSTR lpModuleName,
    LPVOID lpParameterBlock
    );

__declspec(dllimport)
UINT
__stdcall
WinExec(
    LPCSTR lpCmdLine,
    UINT uCmdShow
    );

__declspec(dllimport)
BOOL
__stdcall
ClearCommBreak(
    HANDLE hFile
    );

__declspec(dllimport)
BOOL
__stdcall
ClearCommError(
    HANDLE hFile,
    LPDWORD lpErrors,
    LPCOMSTAT lpStat
    );

__declspec(dllimport)
BOOL
__stdcall
SetupComm(
    HANDLE hFile,
    DWORD dwInQueue,
    DWORD dwOutQueue
    );

__declspec(dllimport)
BOOL
__stdcall
EscapeCommFunction(
    HANDLE hFile,
    DWORD dwFunc
    );

__declspec(dllimport)
BOOL
__stdcall
GetCommConfig(
    HANDLE hCommDev,
    LPCOMMCONFIG lpCC,
    LPDWORD lpdwSize
    );

__declspec(dllimport)
BOOL
__stdcall
GetCommMask(
    HANDLE hFile,
    LPDWORD lpEvtMask
    );

__declspec(dllimport)
BOOL
__stdcall
GetCommProperties(
    HANDLE hFile,
    LPCOMMPROP lpCommProp
    );

__declspec(dllimport)
BOOL
__stdcall
GetCommModemStatus(
    HANDLE hFile,
    LPDWORD lpModemStat
    );

__declspec(dllimport)
BOOL
__stdcall
GetCommState(
    HANDLE hFile,
    LPDCB lpDCB
    );

__declspec(dllimport)
BOOL
__stdcall
GetCommTimeouts(
    HANDLE hFile,
    LPCOMMTIMEOUTS lpCommTimeouts
    );

__declspec(dllimport)
BOOL
__stdcall
PurgeComm(
    HANDLE hFile,
    DWORD dwFlags
    );

__declspec(dllimport)
BOOL
__stdcall
SetCommBreak(
    HANDLE hFile
    );

__declspec(dllimport)
BOOL
__stdcall
SetCommConfig(
    HANDLE hCommDev,
    LPCOMMCONFIG lpCC,
    DWORD dwSize
    );

__declspec(dllimport)
BOOL
__stdcall
SetCommMask(
    HANDLE hFile,
    DWORD dwEvtMask
    );

__declspec(dllimport)
BOOL
__stdcall
SetCommState(
    HANDLE hFile,
    LPDCB lpDCB
    );

__declspec(dllimport)
BOOL
__stdcall
SetCommTimeouts(
    HANDLE hFile,
    LPCOMMTIMEOUTS lpCommTimeouts
    );

__declspec(dllimport)
BOOL
__stdcall
TransmitCommChar(
    HANDLE hFile,
    char cChar
    );

__declspec(dllimport)
BOOL
__stdcall
WaitCommEvent(
    HANDLE hFile,
    LPDWORD lpEvtMask,
    LPOVERLAPPED lpOverlapped
    );


__declspec(dllimport)
DWORD
__stdcall
SetTapePosition(
    HANDLE hDevice,
    DWORD dwPositionMethod,
    DWORD dwPartition,
    DWORD dwOffsetLow,
    DWORD dwOffsetHigh,
    BOOL bImmediate
    );

__declspec(dllimport)
DWORD
__stdcall
GetTapePosition(
    HANDLE hDevice,
    DWORD dwPositionType,
    LPDWORD lpdwPartition,
    LPDWORD lpdwOffsetLow,
    LPDWORD lpdwOffsetHigh
    );

__declspec(dllimport)
DWORD
__stdcall
PrepareTape(
    HANDLE hDevice,
    DWORD dwOperation,
    BOOL bImmediate
    );

__declspec(dllimport)
DWORD
__stdcall
EraseTape(
    HANDLE hDevice,
    DWORD dwEraseType,
    BOOL bImmediate
    );

__declspec(dllimport)
DWORD
__stdcall
CreateTapePartition(
    HANDLE hDevice,
    DWORD dwPartitionMethod,
    DWORD dwCount,
    DWORD dwSize
    );

__declspec(dllimport)
DWORD
__stdcall
WriteTapemark(
    HANDLE hDevice,
    DWORD dwTapemarkType,
    DWORD dwTapemarkCount,
    BOOL bImmediate
    );

__declspec(dllimport)
DWORD
__stdcall
GetTapeStatus(
    HANDLE hDevice
    );

__declspec(dllimport)
DWORD
__stdcall
GetTapeParameters(
    HANDLE hDevice,
    DWORD dwOperation,
    LPDWORD lpdwSize,
    LPVOID lpTapeInformation
    );




__declspec(dllimport)
DWORD
__stdcall
SetTapeParameters(
    HANDLE hDevice,
    DWORD dwOperation,
    LPVOID lpTapeInformation
    );




__declspec(dllimport)
BOOL
__stdcall
Beep(
    DWORD dwFreq,
    DWORD dwDuration
    );

__declspec(dllimport)
int
__stdcall
MulDiv(
    int nNumber,
    int nNumerator,
    int nDenominator
    );

__declspec(dllimport)
void
__stdcall
GetSystemTime(
    LPSYSTEMTIME lpSystemTime
    );

__declspec(dllimport)
void
__stdcall
GetSystemTimeAsFileTime(
    LPFILETIME lpSystemTimeAsFileTime
    );

__declspec(dllimport)
BOOL
__stdcall
SetSystemTime(
    const SYSTEMTIME *lpSystemTime
    );

__declspec(dllimport)
void
__stdcall
GetLocalTime(
    LPSYSTEMTIME lpSystemTime
    );

__declspec(dllimport)
BOOL
__stdcall
SetLocalTime(
    const SYSTEMTIME *lpSystemTime
    );

__declspec(dllimport)
void
__stdcall
GetSystemInfo(
    LPSYSTEM_INFO lpSystemInfo
    );

__declspec(dllimport)
BOOL
__stdcall
IsProcessorFeaturePresent(
    DWORD ProcessorFeature
    );

typedef struct _TIME_ZONE_INFORMATION {
    LONG Bias;
    WCHAR StandardName[ 32 ];
    SYSTEMTIME StandardDate;
    LONG StandardBias;
    WCHAR DaylightName[ 32 ];
    SYSTEMTIME DaylightDate;
    LONG DaylightBias;
} TIME_ZONE_INFORMATION, *PTIME_ZONE_INFORMATION, *LPTIME_ZONE_INFORMATION;

__declspec(dllimport)
BOOL
__stdcall
SystemTimeToTzSpecificLocalTime(
    LPTIME_ZONE_INFORMATION lpTimeZoneInformation,
    LPSYSTEMTIME lpUniversalTime,
    LPSYSTEMTIME lpLocalTime
    );

__declspec(dllimport)
DWORD
__stdcall
GetTimeZoneInformation(
    LPTIME_ZONE_INFORMATION lpTimeZoneInformation
    );

__declspec(dllimport)
BOOL
__stdcall
SetTimeZoneInformation(
    const TIME_ZONE_INFORMATION *lpTimeZoneInformation
    );






__declspec(dllimport)
BOOL
__stdcall
SystemTimeToFileTime(
    const SYSTEMTIME *lpSystemTime,
    LPFILETIME lpFileTime
    );

__declspec(dllimport)
BOOL
__stdcall
FileTimeToLocalFileTime(
    const FILETIME *lpFileTime,
    LPFILETIME lpLocalFileTime
    );

__declspec(dllimport)
BOOL
__stdcall
LocalFileTimeToFileTime(
    const FILETIME *lpLocalFileTime,
    LPFILETIME lpFileTime
    );

__declspec(dllimport)
BOOL
__stdcall
FileTimeToSystemTime(
    const FILETIME *lpFileTime,
    LPSYSTEMTIME lpSystemTime
    );

__declspec(dllimport)
LONG
__stdcall
CompareFileTime(
    const FILETIME *lpFileTime1,
    const FILETIME *lpFileTime2
    );

__declspec(dllimport)
BOOL
__stdcall
FileTimeToDosDateTime(
    const FILETIME *lpFileTime,
    LPWORD lpFatDate,
    LPWORD lpFatTime
    );

__declspec(dllimport)
BOOL
__stdcall
DosDateTimeToFileTime(
    WORD wFatDate,
    WORD wFatTime,
    LPFILETIME lpFileTime
    );

__declspec(dllimport)
DWORD
__stdcall
GetTickCount(
    void
    );

__declspec(dllimport)
BOOL
__stdcall
SetSystemTimeAdjustment(
    DWORD dwTimeAdjustment,
    BOOL  bTimeAdjustmentDisabled
    );

__declspec(dllimport)
BOOL
__stdcall
GetSystemTimeAdjustment(
    PDWORD lpTimeAdjustment,
    PDWORD lpTimeIncrement,
    PBOOL  lpTimeAdjustmentDisabled
    );


__declspec(dllimport)
DWORD
__stdcall
FormatMessageA(
    DWORD dwFlags,
    LPCVOID lpSource,
    DWORD dwMessageId,
    DWORD dwLanguageId,
    LPSTR lpBuffer,
    DWORD nSize,
    va_list *Arguments
    );
__declspec(dllimport)
DWORD
__stdcall
FormatMessageW(
    DWORD dwFlags,
    LPCVOID lpSource,
    DWORD dwMessageId,
    DWORD dwLanguageId,
    LPWSTR lpBuffer,
    DWORD nSize,
    va_list *Arguments
    );




#line 3019 "e:\\program\\vc98\\include\\winbase.h"
#line 3020 "e:\\program\\vc98\\include\\winbase.h"










__declspec(dllimport)
BOOL
__stdcall
CreatePipe(
    PHANDLE hReadPipe,
    PHANDLE hWritePipe,
    LPSECURITY_ATTRIBUTES lpPipeAttributes,
    DWORD nSize
    );

__declspec(dllimport)
BOOL
__stdcall
ConnectNamedPipe(
    HANDLE hNamedPipe,
    LPOVERLAPPED lpOverlapped
    );

__declspec(dllimport)
BOOL
__stdcall
DisconnectNamedPipe(
    HANDLE hNamedPipe
    );

__declspec(dllimport)
BOOL
__stdcall
SetNamedPipeHandleState(
    HANDLE hNamedPipe,
    LPDWORD lpMode,
    LPDWORD lpMaxCollectionCount,
    LPDWORD lpCollectDataTimeout
    );

__declspec(dllimport)
BOOL
__stdcall
GetNamedPipeInfo(
    HANDLE hNamedPipe,
    LPDWORD lpFlags,
    LPDWORD lpOutBufferSize,
    LPDWORD lpInBufferSize,
    LPDWORD lpMaxInstances
    );

__declspec(dllimport)
BOOL
__stdcall
PeekNamedPipe(
    HANDLE hNamedPipe,
    LPVOID lpBuffer,
    DWORD nBufferSize,
    LPDWORD lpBytesRead,
    LPDWORD lpTotalBytesAvail,
    LPDWORD lpBytesLeftThisMessage
    );

__declspec(dllimport)
BOOL
__stdcall
TransactNamedPipe(
    HANDLE hNamedPipe,
    LPVOID lpInBuffer,
    DWORD nInBufferSize,
    LPVOID lpOutBuffer,
    DWORD nOutBufferSize,
    LPDWORD lpBytesRead,
    LPOVERLAPPED lpOverlapped
    );

__declspec(dllimport)
HANDLE
__stdcall
CreateMailslotA(
    LPCSTR lpName,
    DWORD nMaxMessageSize,
    DWORD lReadTimeout,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );
__declspec(dllimport)
HANDLE
__stdcall
CreateMailslotW(
    LPCWSTR lpName,
    DWORD nMaxMessageSize,
    DWORD lReadTimeout,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );




#line 3124 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
GetMailslotInfo(
    HANDLE hMailslot,
    LPDWORD lpMaxMessageSize,
    LPDWORD lpNextSize,
    LPDWORD lpMessageCount,
    LPDWORD lpReadTimeout
    );

__declspec(dllimport)
BOOL
__stdcall
SetMailslotInfo(
    HANDLE hMailslot,
    DWORD lReadTimeout
    );

__declspec(dllimport)
LPVOID
__stdcall
MapViewOfFile(
    HANDLE hFileMappingObject,
    DWORD dwDesiredAccess,
    DWORD dwFileOffsetHigh,
    DWORD dwFileOffsetLow,
    DWORD dwNumberOfBytesToMap
    );


__declspec(dllimport)
PVOID64
__stdcall
MapViewOfFileVlm(
    HANDLE hFileMappingObject,
    DWORD dwDesiredAccess,
    DWORDLONG ulOffset,
    DWORDLONG ulNumberOfBytesToMap,
    PVOID64 lpBaseAddress
    );

__declspec(dllimport)
BOOL
__stdcall
FlushViewOfFile(
    LPCVOID lpBaseAddress,
    DWORD dwNumberOfBytesToFlush
    );

__declspec(dllimport)
BOOL
__stdcall
UnmapViewOfFile(
    LPCVOID lpBaseAddress
    );

__declspec(dllimport)
BOOL
__stdcall
UnmapViewOfFileVlm(
    PVOID64 lpBaseAddress
    );





__declspec(dllimport)
BOOL
__stdcall
EncryptFileA(
    LPCSTR lpFileName
    );
__declspec(dllimport)
BOOL
__stdcall
EncryptFileW(
    LPCWSTR lpFileName
    );




#line 3210 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
DecryptFileA(
    LPCSTR lpFileName,
    DWORD    dwReserved
    );
__declspec(dllimport)
BOOL
__stdcall
DecryptFileW(
    LPCWSTR lpFileName,
    DWORD    dwReserved
    );




#line 3230 "e:\\program\\vc98\\include\\winbase.h"







typedef
DWORD
(*PFE_EXPORT_FUNC)(
    PBYTE pbData,
    PVOID pvCallbackContext,
    ULONG ulLength
    );

typedef
DWORD
(*PFE_IMPORT_FUNC)(
    PBYTE pbData,
    PVOID pvCallbackContext,
    PULONG ulLength
    );










__declspec(dllimport)
DWORD
__stdcall
OpenRawA(
    LPCSTR        lpFileName,
    ULONG           ulFlags,
    PVOID *         pvContext
    );
__declspec(dllimport)
DWORD
__stdcall
OpenRawW(
    LPCWSTR        lpFileName,
    ULONG           ulFlags,
    PVOID *         pvContext
    );




#line 3283 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
ReadRaw(
    PFE_EXPORT_FUNC pfExportCallback,
    PVOID           pvCallbackContext,
    PVOID           pvContext
    );

__declspec(dllimport)
DWORD
__stdcall
WriteRaw(
    PFE_IMPORT_FUNC pfImportCallback,
    PVOID           pvCallbackContext,
    PVOID           pvContext
    );

__declspec(dllimport)
void
__stdcall
CloseRaw(
    PVOID           pvContext
    );

typedef struct _RECOVERY_AGENT_INFORMATIONA {
    DWORD NextEntryOffset;
    DWORD AgentNameLength;
    CHAR   AgentInformation[1];
} RECOVERY_AGENT_INFORMATIONA, *LPRECOVERY_AGENT_INFORMATIONA;
typedef struct _RECOVERY_AGENT_INFORMATIONW {
    DWORD NextEntryOffset;
    DWORD AgentNameLength;
    WCHAR  AgentInformation[1];
} RECOVERY_AGENT_INFORMATIONW, *LPRECOVERY_AGENT_INFORMATIONW;




typedef RECOVERY_AGENT_INFORMATIONA RECOVERY_AGENT_INFORMATION;
typedef LPRECOVERY_AGENT_INFORMATIONA LPRECOVERY_AGENT_INFORMATION;
#line 3326 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
QueryRecoveryAgentsA(
           LPCSTR                        lpFileName,
          PDWORD                          AgentCount,
          LPRECOVERY_AGENT_INFORMATIONA * RecoveryAgentInformation
     );
__declspec(dllimport)
DWORD
__stdcall
QueryRecoveryAgentsW(
           LPCWSTR                        lpFileName,
          PDWORD                          AgentCount,
          LPRECOVERY_AGENT_INFORMATIONW * RecoveryAgentInformation
     );




#line 3348 "e:\\program\\vc98\\include\\winbase.h"





__declspec(dllimport)
int
__stdcall
lstrcmpA(
    LPCSTR lpString1,
    LPCSTR lpString2
    );
__declspec(dllimport)
int
__stdcall
lstrcmpW(
    LPCWSTR lpString1,
    LPCWSTR lpString2
    );




#line 3372 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
int
__stdcall
lstrcmpiA(
    LPCSTR lpString1,
    LPCSTR lpString2
    );
__declspec(dllimport)
int
__stdcall
lstrcmpiW(
    LPCWSTR lpString1,
    LPCWSTR lpString2
    );




#line 3392 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
LPSTR
__stdcall
lstrcpynA(
    LPSTR lpString1,
    LPCSTR lpString2,
    int iMaxLength
    );
__declspec(dllimport)
LPWSTR
__stdcall
lstrcpynW(
    LPWSTR lpString1,
    LPCWSTR lpString2,
    int iMaxLength
    );




#line 3414 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
LPSTR
__stdcall
lstrcpyA(
    LPSTR lpString1,
    LPCSTR lpString2
    );
__declspec(dllimport)
LPWSTR
__stdcall
lstrcpyW(
    LPWSTR lpString1,
    LPCWSTR lpString2
    );




#line 3434 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
LPSTR
__stdcall
lstrcatA(
    LPSTR lpString1,
    LPCSTR lpString2
    );
__declspec(dllimport)
LPWSTR
__stdcall
lstrcatW(
    LPWSTR lpString1,
    LPCWSTR lpString2
    );




#line 3454 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
int
__stdcall
lstrlenA(
    LPCSTR lpString
    );
__declspec(dllimport)
int
__stdcall
lstrlenW(
    LPCWSTR lpString
    );




#line 3472 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
HFILE
__stdcall
OpenFile(
    LPCSTR lpFileName,
    LPOFSTRUCT lpReOpenBuff,
    UINT uStyle
    );

__declspec(dllimport)
HFILE
__stdcall
_lopen(
    LPCSTR lpPathName,
    int iReadWrite
    );

__declspec(dllimport)
HFILE
__stdcall
_lcreat(
    LPCSTR lpPathName,
    int  iAttribute
    );

__declspec(dllimport)
UINT
__stdcall
_lread(
    HFILE hFile,
    LPVOID lpBuffer,
    UINT uBytes
    );

__declspec(dllimport)
UINT
__stdcall
_lwrite(
    HFILE hFile,
    LPCSTR lpBuffer,
    UINT uBytes
    );

__declspec(dllimport)
long
__stdcall
_hread(
    HFILE hFile,
    LPVOID lpBuffer,
    long lBytes
    );

__declspec(dllimport)
long
__stdcall
_hwrite(
    HFILE hFile,
    LPCSTR lpBuffer,
    long lBytes
    );

__declspec(dllimport)
HFILE
__stdcall
_lclose(
    HFILE hFile
    );

__declspec(dllimport)
LONG
__stdcall
_llseek(
    HFILE hFile,
    LONG lOffset,
    int iOrigin
    );

__declspec(dllimport)
BOOL
__stdcall
IsTextUnicode(
    const LPVOID lpBuffer,
    int cb,
    LPINT lpi
    );

__declspec(dllimport)
DWORD
__stdcall
TlsAlloc(
    void
    );



__declspec(dllimport)
LPVOID
__stdcall
TlsGetValue(
    DWORD dwTlsIndex
    );

__declspec(dllimport)
BOOL
__stdcall
TlsSetValue(
    DWORD dwTlsIndex,
    LPVOID lpTlsValue
    );

__declspec(dllimport)
BOOL
__stdcall
TlsFree(
    DWORD dwTlsIndex
    );

typedef
void
(__stdcall *LPOVERLAPPED_COMPLETION_ROUTINE)(
    DWORD dwErrorCode,
    DWORD dwNumberOfBytesTransfered,
    LPOVERLAPPED lpOverlapped
    );

__declspec(dllimport)
DWORD
__stdcall
SleepEx(
    DWORD dwMilliseconds,
    BOOL bAlertable
    );

__declspec(dllimport)
DWORD
__stdcall
WaitForSingleObjectEx(
    HANDLE hHandle,
    DWORD dwMilliseconds,
    BOOL bAlertable
    );

__declspec(dllimport)
DWORD
__stdcall
WaitForMultipleObjectsEx(
    DWORD nCount,
    const HANDLE *lpHandles,
    BOOL bWaitAll,
    DWORD dwMilliseconds,
    BOOL bAlertable
    );











#line 3637 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
ReadFileEx(
    HANDLE hFile,
    LPVOID lpBuffer,
    DWORD nNumberOfBytesToRead,
    LPOVERLAPPED lpOverlapped,
    LPOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine
    );

__declspec(dllimport)
BOOL
__stdcall
WriteFileEx(
    HANDLE hFile,
    LPCVOID lpBuffer,
    DWORD nNumberOfBytesToWrite,
    LPOVERLAPPED lpOverlapped,
    LPOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine
    );

__declspec(dllimport)
BOOL
__stdcall
BackupRead(
    HANDLE hFile,
    LPBYTE lpBuffer,
    DWORD nNumberOfBytesToRead,
    LPDWORD lpNumberOfBytesRead,
    BOOL bAbort,
    BOOL bProcessSecurity,
    LPVOID *lpContext
    );

__declspec(dllimport)
BOOL
__stdcall
BackupSeek(
    HANDLE hFile,
    DWORD  dwLowBytesToSeek,
    DWORD  dwHighBytesToSeek,
    LPDWORD lpdwLowByteSeeked,
    LPDWORD lpdwHighByteSeeked,
    LPVOID *lpContext
    );

__declspec(dllimport)
BOOL
__stdcall
BackupWrite(
    HANDLE hFile,
    LPBYTE lpBuffer,
    DWORD nNumberOfBytesToWrite,
    LPDWORD lpNumberOfBytesWritten,
    BOOL bAbort,
    BOOL bProcessSecurity,
    LPVOID *lpContext
    );




typedef struct _WIN32_STREAM_ID {
        DWORD          dwStreamId ;
        DWORD          dwStreamAttributes ;
        LARGE_INTEGER  Size ;
        DWORD          dwStreamNameSize ;
        WCHAR          cStreamName[ 1 ] ;
} WIN32_STREAM_ID, *LPWIN32_STREAM_ID ;



























__declspec(dllimport)
BOOL
__stdcall
ReadFileScatter(
    HANDLE hFile,
    FILE_SEGMENT_ELEMENT aSegmentArray[],
    DWORD nNumberOfBytesToRead,
    LPDWORD lpReserved,
    LPOVERLAPPED lpOverlapped
    );

__declspec(dllimport)
BOOL
__stdcall
WriteFileGather(
    HANDLE hFile,
    FILE_SEGMENT_ELEMENT aSegmentArray[],
    DWORD nNumberOfBytesToWrite,
    LPDWORD lpReserved,
    LPOVERLAPPED lpOverlapped
    );
















#line 3773 "e:\\program\\vc98\\include\\winbase.h"

typedef struct _STARTUPINFOA {
    DWORD   cb;
    LPSTR   lpReserved;
    LPSTR   lpDesktop;
    LPSTR   lpTitle;
    DWORD   dwX;
    DWORD   dwY;
    DWORD   dwXSize;
    DWORD   dwYSize;
    DWORD   dwXCountChars;
    DWORD   dwYCountChars;
    DWORD   dwFillAttribute;
    DWORD   dwFlags;
    WORD    wShowWindow;
    WORD    cbReserved2;
    LPBYTE  lpReserved2;
    HANDLE  hStdInput;
    HANDLE  hStdOutput;
    HANDLE  hStdError;
} STARTUPINFOA, *LPSTARTUPINFOA;
typedef struct _STARTUPINFOW {
    DWORD   cb;
    LPWSTR  lpReserved;
    LPWSTR  lpDesktop;
    LPWSTR  lpTitle;
    DWORD   dwX;
    DWORD   dwY;
    DWORD   dwXSize;
    DWORD   dwYSize;
    DWORD   dwXCountChars;
    DWORD   dwYCountChars;
    DWORD   dwFillAttribute;
    DWORD   dwFlags;
    WORD    wShowWindow;
    WORD    cbReserved2;
    LPBYTE  lpReserved2;
    HANDLE  hStdInput;
    HANDLE  hStdOutput;
    HANDLE  hStdError;
} STARTUPINFOW, *LPSTARTUPINFOW;




typedef STARTUPINFOA STARTUPINFO;
typedef LPSTARTUPINFOA LPSTARTUPINFO;
#line 3821 "e:\\program\\vc98\\include\\winbase.h"



typedef struct _WIN32_FIND_DATAA {
    DWORD dwFileAttributes;
    FILETIME ftCreationTime;
    FILETIME ftLastAccessTime;
    FILETIME ftLastWriteTime;
    DWORD nFileSizeHigh;
    DWORD nFileSizeLow;
    DWORD dwReserved0;
    DWORD dwReserved1;
    CHAR   cFileName[ 260 ];
    CHAR   cAlternateFileName[ 14 ];





} WIN32_FIND_DATAA, *PWIN32_FIND_DATAA, *LPWIN32_FIND_DATAA;
typedef struct _WIN32_FIND_DATAW {
    DWORD dwFileAttributes;
    FILETIME ftCreationTime;
    FILETIME ftLastAccessTime;
    FILETIME ftLastWriteTime;
    DWORD nFileSizeHigh;
    DWORD nFileSizeLow;
    DWORD dwReserved0;
    DWORD dwReserved1;
    WCHAR  cFileName[ 260 ];
    WCHAR  cAlternateFileName[ 14 ];





} WIN32_FIND_DATAW, *PWIN32_FIND_DATAW, *LPWIN32_FIND_DATAW;





typedef WIN32_FIND_DATAA WIN32_FIND_DATA;
typedef PWIN32_FIND_DATAA PWIN32_FIND_DATA;
typedef LPWIN32_FIND_DATAA LPWIN32_FIND_DATA;
#line 3867 "e:\\program\\vc98\\include\\winbase.h"

typedef struct _WIN32_FILE_ATTRIBUTE_DATA {
    DWORD dwFileAttributes;
    FILETIME ftCreationTime;
    FILETIME ftLastAccessTime;
    FILETIME ftLastWriteTime;
    DWORD nFileSizeHigh;
    DWORD nFileSizeLow;
} WIN32_FILE_ATTRIBUTE_DATA, *LPWIN32_FILE_ATTRIBUTE_DATA;

__declspec(dllimport)
HANDLE
__stdcall
CreateMutexA(
    LPSECURITY_ATTRIBUTES lpMutexAttributes,
    BOOL bInitialOwner,
    LPCSTR lpName
    );
__declspec(dllimport)
HANDLE
__stdcall
CreateMutexW(
    LPSECURITY_ATTRIBUTES lpMutexAttributes,
    BOOL bInitialOwner,
    LPCWSTR lpName
    );




#line 3898 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
OpenMutexA(
    DWORD dwDesiredAccess,
    BOOL bInheritHandle,
    LPCSTR lpName
    );
__declspec(dllimport)
HANDLE
__stdcall
OpenMutexW(
    DWORD dwDesiredAccess,
    BOOL bInheritHandle,
    LPCWSTR lpName
    );




#line 3920 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
CreateEventA(
    LPSECURITY_ATTRIBUTES lpEventAttributes,
    BOOL bManualReset,
    BOOL bInitialState,
    LPCSTR lpName
    );
__declspec(dllimport)
HANDLE
__stdcall
CreateEventW(
    LPSECURITY_ATTRIBUTES lpEventAttributes,
    BOOL bManualReset,
    BOOL bInitialState,
    LPCWSTR lpName
    );




#line 3944 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
OpenEventA(
    DWORD dwDesiredAccess,
    BOOL bInheritHandle,
    LPCSTR lpName
    );
__declspec(dllimport)
HANDLE
__stdcall
OpenEventW(
    DWORD dwDesiredAccess,
    BOOL bInheritHandle,
    LPCWSTR lpName
    );




#line 3966 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
CreateSemaphoreA(
    LPSECURITY_ATTRIBUTES lpSemaphoreAttributes,
    LONG lInitialCount,
    LONG lMaximumCount,
    LPCSTR lpName
    );
__declspec(dllimport)
HANDLE
__stdcall
CreateSemaphoreW(
    LPSECURITY_ATTRIBUTES lpSemaphoreAttributes,
    LONG lInitialCount,
    LONG lMaximumCount,
    LPCWSTR lpName
    );




#line 3990 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
OpenSemaphoreA(
    DWORD dwDesiredAccess,
    BOOL bInheritHandle,
    LPCSTR lpName
    );
__declspec(dllimport)
HANDLE
__stdcall
OpenSemaphoreW(
    DWORD dwDesiredAccess,
    BOOL bInheritHandle,
    LPCWSTR lpName
    );




#line 4012 "e:\\program\\vc98\\include\\winbase.h"








































































#line 4085 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
CreateFileMappingA(
    HANDLE hFile,
    LPSECURITY_ATTRIBUTES lpFileMappingAttributes,
    DWORD flProtect,
    DWORD dwMaximumSizeHigh,
    DWORD dwMaximumSizeLow,
    LPCSTR lpName
    );
__declspec(dllimport)
HANDLE
__stdcall
CreateFileMappingW(
    HANDLE hFile,
    LPSECURITY_ATTRIBUTES lpFileMappingAttributes,
    DWORD flProtect,
    DWORD dwMaximumSizeHigh,
    DWORD dwMaximumSizeLow,
    LPCWSTR lpName
    );




#line 4113 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
OpenFileMappingA(
    DWORD dwDesiredAccess,
    BOOL bInheritHandle,
    LPCSTR lpName
    );
__declspec(dllimport)
HANDLE
__stdcall
OpenFileMappingW(
    DWORD dwDesiredAccess,
    BOOL bInheritHandle,
    LPCWSTR lpName
    );




#line 4135 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetLogicalDriveStringsA(
    DWORD nBufferLength,
    LPSTR lpBuffer
    );
__declspec(dllimport)
DWORD
__stdcall
GetLogicalDriveStringsW(
    DWORD nBufferLength,
    LPWSTR lpBuffer
    );




#line 4155 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
HMODULE
__stdcall
LoadLibraryA(
    LPCSTR lpLibFileName
    );
__declspec(dllimport)
HMODULE
__stdcall
LoadLibraryW(
    LPCWSTR lpLibFileName
    );




#line 4173 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
HMODULE
__stdcall
LoadLibraryExA(
    LPCSTR lpLibFileName,
    HANDLE hFile,
    DWORD dwFlags
    );
__declspec(dllimport)
HMODULE
__stdcall
LoadLibraryExW(
    LPCWSTR lpLibFileName,
    HANDLE hFile,
    DWORD dwFlags
    );




#line 4195 "e:\\program\\vc98\\include\\winbase.h"







__declspec(dllimport)
DWORD
__stdcall
GetModuleFileNameA(
    HMODULE hModule,
    LPSTR lpFilename,
    DWORD nSize
    );
__declspec(dllimport)
DWORD
__stdcall
GetModuleFileNameW(
    HMODULE hModule,
    LPWSTR lpFilename,
    DWORD nSize
    );




#line 4223 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
HMODULE
__stdcall
GetModuleHandleA(
    LPCSTR lpModuleName
    );
__declspec(dllimport)
HMODULE
__stdcall
GetModuleHandleW(
    LPCWSTR lpModuleName
    );




#line 4241 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
CreateProcessA(
    LPCSTR lpApplicationName,
    LPSTR lpCommandLine,
    LPSECURITY_ATTRIBUTES lpProcessAttributes,
    LPSECURITY_ATTRIBUTES lpThreadAttributes,
    BOOL bInheritHandles,
    DWORD dwCreationFlags,
    LPVOID lpEnvironment,
    LPCSTR lpCurrentDirectory,
    LPSTARTUPINFOA lpStartupInfo,
    LPPROCESS_INFORMATION lpProcessInformation
    );
__declspec(dllimport)
BOOL
__stdcall
CreateProcessW(
    LPCWSTR lpApplicationName,
    LPWSTR lpCommandLine,
    LPSECURITY_ATTRIBUTES lpProcessAttributes,
    LPSECURITY_ATTRIBUTES lpThreadAttributes,
    BOOL bInheritHandles,
    DWORD dwCreationFlags,
    LPVOID lpEnvironment,
    LPCWSTR lpCurrentDirectory,
    LPSTARTUPINFOW lpStartupInfo,
    LPPROCESS_INFORMATION lpProcessInformation
    );




#line 4277 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
SetProcessShutdownParameters(
    DWORD dwLevel,
    DWORD dwFlags
    );

__declspec(dllimport)
BOOL
__stdcall
GetProcessShutdownParameters(
    LPDWORD lpdwLevel,
    LPDWORD lpdwFlags
    );

__declspec(dllimport)
DWORD
__stdcall
GetProcessVersion(
    DWORD ProcessId
    );

__declspec(dllimport)
void
__stdcall
FatalAppExitA(
    UINT uAction,
    LPCSTR lpMessageText
    );
__declspec(dllimport)
void
__stdcall
FatalAppExitW(
    UINT uAction,
    LPCWSTR lpMessageText
    );




#line 4320 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
void
__stdcall
GetStartupInfoA(
    LPSTARTUPINFOA lpStartupInfo
    );
__declspec(dllimport)
void
__stdcall
GetStartupInfoW(
    LPSTARTUPINFOW lpStartupInfo
    );




#line 4338 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
LPSTR
__stdcall
GetCommandLineA(
    void
    );
__declspec(dllimport)
LPWSTR
__stdcall
GetCommandLineW(
    void
    );




#line 4356 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetEnvironmentVariableA(
    LPCSTR lpName,
    LPSTR lpBuffer,
    DWORD nSize
    );
__declspec(dllimport)
DWORD
__stdcall
GetEnvironmentVariableW(
    LPCWSTR lpName,
    LPWSTR lpBuffer,
    DWORD nSize
    );




#line 4378 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
SetEnvironmentVariableA(
    LPCSTR lpName,
    LPCSTR lpValue
    );
__declspec(dllimport)
BOOL
__stdcall
SetEnvironmentVariableW(
    LPCWSTR lpName,
    LPCWSTR lpValue
    );




#line 4398 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
ExpandEnvironmentStringsA(
    LPCSTR lpSrc,
    LPSTR lpDst,
    DWORD nSize
    );
__declspec(dllimport)
DWORD
__stdcall
ExpandEnvironmentStringsW(
    LPCWSTR lpSrc,
    LPWSTR lpDst,
    DWORD nSize
    );




#line 4420 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
void
__stdcall
OutputDebugStringA(
    LPCSTR lpOutputString
    );
__declspec(dllimport)
void
__stdcall
OutputDebugStringW(
    LPCWSTR lpOutputString
    );




#line 4438 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
HRSRC
__stdcall
FindResourceA(
    HMODULE hModule,
    LPCSTR lpName,
    LPCSTR lpType
    );
__declspec(dllimport)
HRSRC
__stdcall
FindResourceW(
    HMODULE hModule,
    LPCWSTR lpName,
    LPCWSTR lpType
    );




#line 4460 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
HRSRC
__stdcall
FindResourceExA(
    HMODULE hModule,
    LPCSTR lpType,
    LPCSTR lpName,
    WORD    wLanguage
    );
__declspec(dllimport)
HRSRC
__stdcall
FindResourceExW(
    HMODULE hModule,
    LPCWSTR lpType,
    LPCWSTR lpName,
    WORD    wLanguage
    );




#line 4484 "e:\\program\\vc98\\include\\winbase.h"


typedef BOOL (__stdcall* ENUMRESTYPEPROC)(HMODULE hModule, LPTSTR lpType,
        LONG lParam);
typedef BOOL (__stdcall* ENUMRESNAMEPROC)(HMODULE hModule, LPCTSTR lpType,
        LPTSTR lpName, LONG lParam);
typedef BOOL (__stdcall* ENUMRESLANGPROC)(HMODULE hModule, LPCTSTR lpType,
        LPCTSTR lpName, WORD  wLanguage, LONG lParam);




#line 4497 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
EnumResourceTypesA(
    HMODULE hModule,
    ENUMRESTYPEPROC lpEnumFunc,
    LONG lParam
    );
__declspec(dllimport)
BOOL
__stdcall
EnumResourceTypesW(
    HMODULE hModule,
    ENUMRESTYPEPROC lpEnumFunc,
    LONG lParam
    );




#line 4519 "e:\\program\\vc98\\include\\winbase.h"


__declspec(dllimport)
BOOL
__stdcall
EnumResourceNamesA(
    HMODULE hModule,
    LPCSTR lpType,
    ENUMRESNAMEPROC lpEnumFunc,
    LONG lParam
    );
__declspec(dllimport)
BOOL
__stdcall
EnumResourceNamesW(
    HMODULE hModule,
    LPCWSTR lpType,
    ENUMRESNAMEPROC lpEnumFunc,
    LONG lParam
    );




#line 4544 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
EnumResourceLanguagesA(
    HMODULE hModule,
    LPCSTR lpType,
    LPCSTR lpName,
    ENUMRESLANGPROC lpEnumFunc,
    LONG lParam
    );
__declspec(dllimport)
BOOL
__stdcall
EnumResourceLanguagesW(
    HMODULE hModule,
    LPCWSTR lpType,
    LPCWSTR lpName,
    ENUMRESLANGPROC lpEnumFunc,
    LONG lParam
    );




#line 4570 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
BeginUpdateResourceA(
    LPCSTR pFileName,
    BOOL bDeleteExistingResources
    );
__declspec(dllimport)
HANDLE
__stdcall
BeginUpdateResourceW(
    LPCWSTR pFileName,
    BOOL bDeleteExistingResources
    );




#line 4590 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
UpdateResourceA(
    HANDLE      hUpdate,
    LPCSTR     lpType,
    LPCSTR     lpName,
    WORD        wLanguage,
    LPVOID      lpData,
    DWORD       cbData
    );
__declspec(dllimport)
BOOL
__stdcall
UpdateResourceW(
    HANDLE      hUpdate,
    LPCWSTR     lpType,
    LPCWSTR     lpName,
    WORD        wLanguage,
    LPVOID      lpData,
    DWORD       cbData
    );




#line 4618 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
EndUpdateResourceA(
    HANDLE      hUpdate,
    BOOL        fDiscard
    );
__declspec(dllimport)
BOOL
__stdcall
EndUpdateResourceW(
    HANDLE      hUpdate,
    BOOL        fDiscard
    );




#line 4638 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
ATOM
__stdcall
GlobalAddAtomA(
    LPCSTR lpString
    );
__declspec(dllimport)
ATOM
__stdcall
GlobalAddAtomW(
    LPCWSTR lpString
    );




#line 4656 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
ATOM
__stdcall
GlobalFindAtomA(
    LPCSTR lpString
    );
__declspec(dllimport)
ATOM
__stdcall
GlobalFindAtomW(
    LPCWSTR lpString
    );




#line 4674 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
UINT
__stdcall
GlobalGetAtomNameA(
    ATOM nAtom,
    LPSTR lpBuffer,
    int nSize
    );
__declspec(dllimport)
UINT
__stdcall
GlobalGetAtomNameW(
    ATOM nAtom,
    LPWSTR lpBuffer,
    int nSize
    );




#line 4696 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
ATOM
__stdcall
AddAtomA(
    LPCSTR lpString
    );
__declspec(dllimport)
ATOM
__stdcall
AddAtomW(
    LPCWSTR lpString
    );




#line 4714 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
ATOM
__stdcall
FindAtomA(
    LPCSTR lpString
    );
__declspec(dllimport)
ATOM
__stdcall
FindAtomW(
    LPCWSTR lpString
    );




#line 4732 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
UINT
__stdcall
GetAtomNameA(
    ATOM nAtom,
    LPSTR lpBuffer,
    int nSize
    );
__declspec(dllimport)
UINT
__stdcall
GetAtomNameW(
    ATOM nAtom,
    LPWSTR lpBuffer,
    int nSize
    );




#line 4754 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
UINT
__stdcall
GetProfileIntA(
    LPCSTR lpAppName,
    LPCSTR lpKeyName,
    INT nDefault
    );
__declspec(dllimport)
UINT
__stdcall
GetProfileIntW(
    LPCWSTR lpAppName,
    LPCWSTR lpKeyName,
    INT nDefault
    );




#line 4776 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetProfileStringA(
    LPCSTR lpAppName,
    LPCSTR lpKeyName,
    LPCSTR lpDefault,
    LPSTR lpReturnedString,
    DWORD nSize
    );
__declspec(dllimport)
DWORD
__stdcall
GetProfileStringW(
    LPCWSTR lpAppName,
    LPCWSTR lpKeyName,
    LPCWSTR lpDefault,
    LPWSTR lpReturnedString,
    DWORD nSize
    );




#line 4802 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
WriteProfileStringA(
    LPCSTR lpAppName,
    LPCSTR lpKeyName,
    LPCSTR lpString
    );
__declspec(dllimport)
BOOL
__stdcall
WriteProfileStringW(
    LPCWSTR lpAppName,
    LPCWSTR lpKeyName,
    LPCWSTR lpString
    );




#line 4824 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetProfileSectionA(
    LPCSTR lpAppName,
    LPSTR lpReturnedString,
    DWORD nSize
    );
__declspec(dllimport)
DWORD
__stdcall
GetProfileSectionW(
    LPCWSTR lpAppName,
    LPWSTR lpReturnedString,
    DWORD nSize
    );




#line 4846 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
WriteProfileSectionA(
    LPCSTR lpAppName,
    LPCSTR lpString
    );
__declspec(dllimport)
BOOL
__stdcall
WriteProfileSectionW(
    LPCWSTR lpAppName,
    LPCWSTR lpString
    );




#line 4866 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
UINT
__stdcall
GetPrivateProfileIntA(
    LPCSTR lpAppName,
    LPCSTR lpKeyName,
    INT nDefault,
    LPCSTR lpFileName
    );
__declspec(dllimport)
UINT
__stdcall
GetPrivateProfileIntW(
    LPCWSTR lpAppName,
    LPCWSTR lpKeyName,
    INT nDefault,
    LPCWSTR lpFileName
    );




#line 4890 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetPrivateProfileStringA(
    LPCSTR lpAppName,
    LPCSTR lpKeyName,
    LPCSTR lpDefault,
    LPSTR lpReturnedString,
    DWORD nSize,
    LPCSTR lpFileName
    );
__declspec(dllimport)
DWORD
__stdcall
GetPrivateProfileStringW(
    LPCWSTR lpAppName,
    LPCWSTR lpKeyName,
    LPCWSTR lpDefault,
    LPWSTR lpReturnedString,
    DWORD nSize,
    LPCWSTR lpFileName
    );




#line 4918 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
WritePrivateProfileStringA(
    LPCSTR lpAppName,
    LPCSTR lpKeyName,
    LPCSTR lpString,
    LPCSTR lpFileName
    );
__declspec(dllimport)
BOOL
__stdcall
WritePrivateProfileStringW(
    LPCWSTR lpAppName,
    LPCWSTR lpKeyName,
    LPCWSTR lpString,
    LPCWSTR lpFileName
    );




#line 4942 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetPrivateProfileSectionA(
    LPCSTR lpAppName,
    LPSTR lpReturnedString,
    DWORD nSize,
    LPCSTR lpFileName
    );
__declspec(dllimport)
DWORD
__stdcall
GetPrivateProfileSectionW(
    LPCWSTR lpAppName,
    LPWSTR lpReturnedString,
    DWORD nSize,
    LPCWSTR lpFileName
    );




#line 4966 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
WritePrivateProfileSectionA(
    LPCSTR lpAppName,
    LPCSTR lpString,
    LPCSTR lpFileName
    );
__declspec(dllimport)
BOOL
__stdcall
WritePrivateProfileSectionW(
    LPCWSTR lpAppName,
    LPCWSTR lpString,
    LPCWSTR lpFileName
    );




#line 4988 "e:\\program\\vc98\\include\\winbase.h"


__declspec(dllimport)
DWORD
__stdcall
GetPrivateProfileSectionNamesA(
    LPSTR lpszReturnBuffer,
    DWORD nSize,
    LPCSTR lpFileName
    );
__declspec(dllimport)
DWORD
__stdcall
GetPrivateProfileSectionNamesW(
    LPWSTR lpszReturnBuffer,
    DWORD nSize,
    LPCWSTR lpFileName
    );




#line 5011 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
GetPrivateProfileStructA(
    LPCSTR lpszSection,
    LPCSTR lpszKey,
    LPVOID   lpStruct,
    UINT     uSizeStruct,
    LPCSTR szFile
    );
__declspec(dllimport)
BOOL
__stdcall
GetPrivateProfileStructW(
    LPCWSTR lpszSection,
    LPCWSTR lpszKey,
    LPVOID   lpStruct,
    UINT     uSizeStruct,
    LPCWSTR szFile
    );




#line 5037 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
WritePrivateProfileStructA(
    LPCSTR lpszSection,
    LPCSTR lpszKey,
    LPVOID   lpStruct,
    UINT     uSizeStruct,
    LPCSTR szFile
    );
__declspec(dllimport)
BOOL
__stdcall
WritePrivateProfileStructW(
    LPCWSTR lpszSection,
    LPCWSTR lpszKey,
    LPVOID   lpStruct,
    UINT     uSizeStruct,
    LPCWSTR szFile
    );




#line 5063 "e:\\program\\vc98\\include\\winbase.h"


__declspec(dllimport)
UINT
__stdcall
GetDriveTypeA(
    LPCSTR lpRootPathName
    );
__declspec(dllimport)
UINT
__stdcall
GetDriveTypeW(
    LPCWSTR lpRootPathName
    );




#line 5082 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
UINT
__stdcall
GetSystemDirectoryA(
    LPSTR lpBuffer,
    UINT uSize
    );
__declspec(dllimport)
UINT
__stdcall
GetSystemDirectoryW(
    LPWSTR lpBuffer,
    UINT uSize
    );




#line 5102 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetTempPathA(
    DWORD nBufferLength,
    LPSTR lpBuffer
    );
__declspec(dllimport)
DWORD
__stdcall
GetTempPathW(
    DWORD nBufferLength,
    LPWSTR lpBuffer
    );




#line 5122 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
UINT
__stdcall
GetTempFileNameA(
    LPCSTR lpPathName,
    LPCSTR lpPrefixString,
    UINT uUnique,
    LPSTR lpTempFileName
    );
__declspec(dllimport)
UINT
__stdcall
GetTempFileNameW(
    LPCWSTR lpPathName,
    LPCWSTR lpPrefixString,
    UINT uUnique,
    LPWSTR lpTempFileName
    );




#line 5146 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
UINT
__stdcall
GetWindowsDirectoryA(
    LPSTR lpBuffer,
    UINT uSize
    );
__declspec(dllimport)
UINT
__stdcall
GetWindowsDirectoryW(
    LPWSTR lpBuffer,
    UINT uSize
    );




#line 5166 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
SetCurrentDirectoryA(
    LPCSTR lpPathName
    );
__declspec(dllimport)
BOOL
__stdcall
SetCurrentDirectoryW(
    LPCWSTR lpPathName
    );




#line 5184 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetCurrentDirectoryA(
    DWORD nBufferLength,
    LPSTR lpBuffer
    );
__declspec(dllimport)
DWORD
__stdcall
GetCurrentDirectoryW(
    DWORD nBufferLength,
    LPWSTR lpBuffer
    );




#line 5204 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
GetDiskFreeSpaceA(
    LPCSTR lpRootPathName,
    LPDWORD lpSectorsPerCluster,
    LPDWORD lpBytesPerSector,
    LPDWORD lpNumberOfFreeClusters,
    LPDWORD lpTotalNumberOfClusters
    );
__declspec(dllimport)
BOOL
__stdcall
GetDiskFreeSpaceW(
    LPCWSTR lpRootPathName,
    LPDWORD lpSectorsPerCluster,
    LPDWORD lpBytesPerSector,
    LPDWORD lpNumberOfFreeClusters,
    LPDWORD lpTotalNumberOfClusters
    );




#line 5230 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
GetDiskFreeSpaceExA(
    LPCSTR lpDirectoryName,
    PULARGE_INTEGER lpFreeBytesAvailableToCaller,
    PULARGE_INTEGER lpTotalNumberOfBytes,
    PULARGE_INTEGER lpTotalNumberOfFreeBytes
    );
__declspec(dllimport)
BOOL
__stdcall
GetDiskFreeSpaceExW(
    LPCWSTR lpDirectoryName,
    PULARGE_INTEGER lpFreeBytesAvailableToCaller,
    PULARGE_INTEGER lpTotalNumberOfBytes,
    PULARGE_INTEGER lpTotalNumberOfFreeBytes
    );




#line 5254 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
CreateDirectoryA(
    LPCSTR lpPathName,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );
__declspec(dllimport)
BOOL
__stdcall
CreateDirectoryW(
    LPCWSTR lpPathName,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );




#line 5274 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
CreateDirectoryExA(
    LPCSTR lpTemplateDirectory,
    LPCSTR lpNewDirectory,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );
__declspec(dllimport)
BOOL
__stdcall
CreateDirectoryExW(
    LPCWSTR lpTemplateDirectory,
    LPCWSTR lpNewDirectory,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );




#line 5296 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
RemoveDirectoryA(
    LPCSTR lpPathName
    );
__declspec(dllimport)
BOOL
__stdcall
RemoveDirectoryW(
    LPCWSTR lpPathName
    );




#line 5314 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetFullPathNameA(
    LPCSTR lpFileName,
    DWORD nBufferLength,
    LPSTR lpBuffer,
    LPSTR *lpFilePart
    );
__declspec(dllimport)
DWORD
__stdcall
GetFullPathNameW(
    LPCWSTR lpFileName,
    DWORD nBufferLength,
    LPWSTR lpBuffer,
    LPWSTR *lpFilePart
    );




#line 5338 "e:\\program\\vc98\\include\\winbase.h"







__declspec(dllimport)
BOOL
__stdcall
DefineDosDeviceA(
    DWORD dwFlags,
    LPCSTR lpDeviceName,
    LPCSTR lpTargetPath
    );
__declspec(dllimport)
BOOL
__stdcall
DefineDosDeviceW(
    DWORD dwFlags,
    LPCWSTR lpDeviceName,
    LPCWSTR lpTargetPath
    );




#line 5366 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
QueryDosDeviceA(
    LPCSTR lpDeviceName,
    LPSTR lpTargetPath,
    DWORD ucchMax
    );
__declspec(dllimport)
DWORD
__stdcall
QueryDosDeviceW(
    LPCWSTR lpDeviceName,
    LPWSTR lpTargetPath,
    DWORD ucchMax
    );




#line 5388 "e:\\program\\vc98\\include\\winbase.h"



__declspec(dllimport)
HANDLE
__stdcall
CreateFileA(
    LPCSTR lpFileName,
    DWORD dwDesiredAccess,
    DWORD dwShareMode,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes,
    DWORD dwCreationDisposition,
    DWORD dwFlagsAndAttributes,
    HANDLE hTemplateFile
    );
__declspec(dllimport)
HANDLE
__stdcall
CreateFileW(
    LPCWSTR lpFileName,
    DWORD dwDesiredAccess,
    DWORD dwShareMode,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes,
    DWORD dwCreationDisposition,
    DWORD dwFlagsAndAttributes,
    HANDLE hTemplateFile
    );




#line 5420 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
SetFileAttributesA(
    LPCSTR lpFileName,
    DWORD dwFileAttributes
    );
__declspec(dllimport)
BOOL
__stdcall
SetFileAttributesW(
    LPCWSTR lpFileName,
    DWORD dwFileAttributes
    );




#line 5440 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetFileAttributesA(
    LPCSTR lpFileName
    );
__declspec(dllimport)
DWORD
__stdcall
GetFileAttributesW(
    LPCWSTR lpFileName
    );




#line 5458 "e:\\program\\vc98\\include\\winbase.h"

typedef enum _GET_FILEEX_INFO_LEVELS {
    GetFileExInfoStandard,
    GetFileExMaxInfoLevel
} GET_FILEEX_INFO_LEVELS;

__declspec(dllimport)
BOOL
__stdcall
GetFileAttributesExA(
    LPCSTR lpFileName,
    GET_FILEEX_INFO_LEVELS fInfoLevelId,
    LPVOID lpFileInformation
    );
__declspec(dllimport)
BOOL
__stdcall
GetFileAttributesExW(
    LPCWSTR lpFileName,
    GET_FILEEX_INFO_LEVELS fInfoLevelId,
    LPVOID lpFileInformation
    );




#line 5485 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetCompressedFileSizeA(
    LPCSTR lpFileName,
    LPDWORD lpFileSizeHigh
    );
__declspec(dllimport)
DWORD
__stdcall
GetCompressedFileSizeW(
    LPCWSTR lpFileName,
    LPDWORD lpFileSizeHigh
    );




#line 5505 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
DeleteFileA(
    LPCSTR lpFileName
    );
__declspec(dllimport)
BOOL
__stdcall
DeleteFileW(
    LPCWSTR lpFileName
    );




#line 5523 "e:\\program\\vc98\\include\\winbase.h"











































#line 5567 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
FindFirstFileA(
    LPCSTR lpFileName,
    LPWIN32_FIND_DATAA lpFindFileData
    );
__declspec(dllimport)
HANDLE
__stdcall
FindFirstFileW(
    LPCWSTR lpFileName,
    LPWIN32_FIND_DATAW lpFindFileData
    );




#line 5587 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
FindNextFileA(
    HANDLE hFindFile,
    LPWIN32_FIND_DATAA lpFindFileData
    );
__declspec(dllimport)
BOOL
__stdcall
FindNextFileW(
    HANDLE hFindFile,
    LPWIN32_FIND_DATAW lpFindFileData
    );




#line 5607 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
SearchPathA(
    LPCSTR lpPath,
    LPCSTR lpFileName,
    LPCSTR lpExtension,
    DWORD nBufferLength,
    LPSTR lpBuffer,
    LPSTR *lpFilePart
    );
__declspec(dllimport)
DWORD
__stdcall
SearchPathW(
    LPCWSTR lpPath,
    LPCWSTR lpFileName,
    LPCWSTR lpExtension,
    DWORD nBufferLength,
    LPWSTR lpBuffer,
    LPWSTR *lpFilePart
    );




#line 5635 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
CopyFileA(
    LPCSTR lpExistingFileName,
    LPCSTR lpNewFileName,
    BOOL bFailIfExists
    );
__declspec(dllimport)
BOOL
__stdcall
CopyFileW(
    LPCWSTR lpExistingFileName,
    LPCWSTR lpNewFileName,
    BOOL bFailIfExists
    );




#line 5657 "e:\\program\\vc98\\include\\winbase.h"











































#line 5701 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
MoveFileA(
    LPCSTR lpExistingFileName,
    LPCSTR lpNewFileName
    );
__declspec(dllimport)
BOOL
__stdcall
MoveFileW(
    LPCWSTR lpExistingFileName,
    LPCWSTR lpNewFileName
    );




#line 5721 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
MoveFileExA(
    LPCSTR lpExistingFileName,
    LPCSTR lpNewFileName,
    DWORD dwFlags
    );
__declspec(dllimport)
BOOL
__stdcall
MoveFileExW(
    LPCWSTR lpExistingFileName,
    LPCWSTR lpNewFileName,
    DWORD dwFlags
    );




#line 5743 "e:\\program\\vc98\\include\\winbase.h"



























#line 5771 "e:\\program\\vc98\\include\\winbase.h"








#line 5780 "e:\\program\\vc98\\include\\winbase.h"





























#line 5810 "e:\\program\\vc98\\include\\winbase.h"


__declspec(dllimport)
HANDLE
__stdcall
CreateNamedPipeA(
    LPCSTR lpName,
    DWORD dwOpenMode,
    DWORD dwPipeMode,
    DWORD nMaxInstances,
    DWORD nOutBufferSize,
    DWORD nInBufferSize,
    DWORD nDefaultTimeOut,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );
__declspec(dllimport)
HANDLE
__stdcall
CreateNamedPipeW(
    LPCWSTR lpName,
    DWORD dwOpenMode,
    DWORD dwPipeMode,
    DWORD nMaxInstances,
    DWORD nOutBufferSize,
    DWORD nInBufferSize,
    DWORD nDefaultTimeOut,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );




#line 5843 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
GetNamedPipeHandleStateA(
    HANDLE hNamedPipe,
    LPDWORD lpState,
    LPDWORD lpCurInstances,
    LPDWORD lpMaxCollectionCount,
    LPDWORD lpCollectDataTimeout,
    LPSTR lpUserName,
    DWORD nMaxUserNameSize
    );
__declspec(dllimport)
BOOL
__stdcall
GetNamedPipeHandleStateW(
    HANDLE hNamedPipe,
    LPDWORD lpState,
    LPDWORD lpCurInstances,
    LPDWORD lpMaxCollectionCount,
    LPDWORD lpCollectDataTimeout,
    LPWSTR lpUserName,
    DWORD nMaxUserNameSize
    );




#line 5873 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
CallNamedPipeA(
    LPCSTR lpNamedPipeName,
    LPVOID lpInBuffer,
    DWORD nInBufferSize,
    LPVOID lpOutBuffer,
    DWORD nOutBufferSize,
    LPDWORD lpBytesRead,
    DWORD nTimeOut
    );
__declspec(dllimport)
BOOL
__stdcall
CallNamedPipeW(
    LPCWSTR lpNamedPipeName,
    LPVOID lpInBuffer,
    DWORD nInBufferSize,
    LPVOID lpOutBuffer,
    DWORD nOutBufferSize,
    LPDWORD lpBytesRead,
    DWORD nTimeOut
    );




#line 5903 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
WaitNamedPipeA(
    LPCSTR lpNamedPipeName,
    DWORD nTimeOut
    );
__declspec(dllimport)
BOOL
__stdcall
WaitNamedPipeW(
    LPCWSTR lpNamedPipeName,
    DWORD nTimeOut
    );




#line 5923 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
SetVolumeLabelA(
    LPCSTR lpRootPathName,
    LPCSTR lpVolumeName
    );
__declspec(dllimport)
BOOL
__stdcall
SetVolumeLabelW(
    LPCWSTR lpRootPathName,
    LPCWSTR lpVolumeName
    );




#line 5943 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
void
__stdcall
SetFileApisToOEM( void );

__declspec(dllimport)
void
__stdcall
SetFileApisToANSI( void );

__declspec(dllimport)
BOOL
__stdcall
AreFileApisANSI( void );

__declspec(dllimport)
BOOL
__stdcall
GetVolumeInformationA(
    LPCSTR lpRootPathName,
    LPSTR lpVolumeNameBuffer,
    DWORD nVolumeNameSize,
    LPDWORD lpVolumeSerialNumber,
    LPDWORD lpMaximumComponentLength,
    LPDWORD lpFileSystemFlags,
    LPSTR lpFileSystemNameBuffer,
    DWORD nFileSystemNameSize
    );
__declspec(dllimport)
BOOL
__stdcall
GetVolumeInformationW(
    LPCWSTR lpRootPathName,
    LPWSTR lpVolumeNameBuffer,
    DWORD nVolumeNameSize,
    LPDWORD lpVolumeSerialNumber,
    LPDWORD lpMaximumComponentLength,
    LPDWORD lpFileSystemFlags,
    LPWSTR lpFileSystemNameBuffer,
    DWORD nFileSystemNameSize
    );




#line 5990 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
CancelIo(
    HANDLE hFile
    );





__declspec(dllimport)
BOOL
__stdcall
ClearEventLogA (
    HANDLE hEventLog,
    LPCSTR lpBackupFileName
    );
__declspec(dllimport)
BOOL
__stdcall
ClearEventLogW (
    HANDLE hEventLog,
    LPCWSTR lpBackupFileName
    );




#line 6021 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
BackupEventLogA (
    HANDLE hEventLog,
    LPCSTR lpBackupFileName
    );
__declspec(dllimport)
BOOL
__stdcall
BackupEventLogW (
    HANDLE hEventLog,
    LPCWSTR lpBackupFileName
    );




#line 6041 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
CloseEventLog (
    HANDLE hEventLog
    );

__declspec(dllimport)
BOOL
__stdcall
DeregisterEventSource (
    HANDLE hEventLog
    );

__declspec(dllimport)
BOOL
__stdcall
NotifyChangeEventLog(
    HANDLE  hEventLog,
    HANDLE  hEvent
    );

__declspec(dllimport)
BOOL
__stdcall
GetNumberOfEventLogRecords (
    HANDLE hEventLog,
    PDWORD NumberOfRecords
    );

__declspec(dllimport)
BOOL
__stdcall
GetOldestEventLogRecord (
    HANDLE hEventLog,
    PDWORD OldestRecord
    );

__declspec(dllimport)
HANDLE
__stdcall
OpenEventLogA (
    LPCSTR lpUNCServerName,
    LPCSTR lpSourceName
    );
__declspec(dllimport)
HANDLE
__stdcall
OpenEventLogW (
    LPCWSTR lpUNCServerName,
    LPCWSTR lpSourceName
    );




#line 6099 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
RegisterEventSourceA (
    LPCSTR lpUNCServerName,
    LPCSTR lpSourceName
    );
__declspec(dllimport)
HANDLE
__stdcall
RegisterEventSourceW (
    LPCWSTR lpUNCServerName,
    LPCWSTR lpSourceName
    );




#line 6119 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
OpenBackupEventLogA (
    LPCSTR lpUNCServerName,
    LPCSTR lpFileName
    );
__declspec(dllimport)
HANDLE
__stdcall
OpenBackupEventLogW (
    LPCWSTR lpUNCServerName,
    LPCWSTR lpFileName
    );




#line 6139 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
ReadEventLogA (
     HANDLE     hEventLog,
     DWORD      dwReadFlags,
     DWORD      dwRecordOffset,
     LPVOID     lpBuffer,
     DWORD      nNumberOfBytesToRead,
     DWORD      *pnBytesRead,
     DWORD      *pnMinNumberOfBytesNeeded
    );
__declspec(dllimport)
BOOL
__stdcall
ReadEventLogW (
     HANDLE     hEventLog,
     DWORD      dwReadFlags,
     DWORD      dwRecordOffset,
     LPVOID     lpBuffer,
     DWORD      nNumberOfBytesToRead,
     DWORD      *pnBytesRead,
     DWORD      *pnMinNumberOfBytesNeeded
    );




#line 6169 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
ReportEventA (
     HANDLE     hEventLog,
     WORD       wType,
     WORD       wCategory,
     DWORD      dwEventID,
     PSID       lpUserSid,
     WORD       wNumStrings,
     DWORD      dwDataSize,
     LPCSTR   *lpStrings,
     LPVOID     lpRawData
    );
__declspec(dllimport)
BOOL
__stdcall
ReportEventW (
     HANDLE     hEventLog,
     WORD       wType,
     WORD       wCategory,
     DWORD      dwEventID,
     PSID       lpUserSid,
     WORD       wNumStrings,
     DWORD      dwDataSize,
     LPCWSTR   *lpStrings,
     LPVOID     lpRawData
    );




#line 6203 "e:\\program\\vc98\\include\\winbase.h"







__declspec(dllimport)
BOOL
__stdcall
DuplicateToken(
    HANDLE ExistingTokenHandle,
    SECURITY_IMPERSONATION_LEVEL ImpersonationLevel,
    PHANDLE DuplicateTokenHandle
    );

__declspec(dllimport)
BOOL
__stdcall
GetKernelObjectSecurity (
    HANDLE Handle,
    SECURITY_INFORMATION RequestedInformation,
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    DWORD nLength,
    LPDWORD lpnLengthNeeded
    );

__declspec(dllimport)
BOOL
__stdcall
ImpersonateNamedPipeClient(
    HANDLE hNamedPipe
    );

__declspec(dllimport)
BOOL
__stdcall
ImpersonateSelf(
    SECURITY_IMPERSONATION_LEVEL ImpersonationLevel
    );


__declspec(dllimport)
BOOL
__stdcall
RevertToSelf (
    void
    );

__declspec(dllimport)
BOOL
__stdcall
SetThreadToken (
    PHANDLE Thread,
    HANDLE Token
    );

__declspec(dllimport)
BOOL
__stdcall
AccessCheck (
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    HANDLE ClientToken,
    DWORD DesiredAccess,
    PGENERIC_MAPPING GenericMapping,
    PPRIVILEGE_SET PrivilegeSet,
    LPDWORD PrivilegeSetLength,
    LPDWORD GrantedAccess,
    LPBOOL AccessStatus
    );



































#line 6309 "e:\\program\\vc98\\include\\winbase.h"


__declspec(dllimport)
BOOL
__stdcall
OpenProcessToken (
    HANDLE ProcessHandle,
    DWORD DesiredAccess,
    PHANDLE TokenHandle
    );


__declspec(dllimport)
BOOL
__stdcall
OpenThreadToken (
    HANDLE ThreadHandle,
    DWORD DesiredAccess,
    BOOL OpenAsSelf,
    PHANDLE TokenHandle
    );


__declspec(dllimport)
BOOL
__stdcall
GetTokenInformation (
    HANDLE TokenHandle,
    TOKEN_INFORMATION_CLASS TokenInformationClass,
    LPVOID TokenInformation,
    DWORD TokenInformationLength,
    PDWORD ReturnLength
    );


__declspec(dllimport)
BOOL
__stdcall
SetTokenInformation (
    HANDLE TokenHandle,
    TOKEN_INFORMATION_CLASS TokenInformationClass,
    LPVOID TokenInformation,
    DWORD TokenInformationLength
    );


__declspec(dllimport)
BOOL
__stdcall
AdjustTokenPrivileges (
    HANDLE TokenHandle,
    BOOL DisableAllPrivileges,
    PTOKEN_PRIVILEGES NewState,
    DWORD BufferLength,
    PTOKEN_PRIVILEGES PreviousState,
    PDWORD ReturnLength
    );


__declspec(dllimport)
BOOL
__stdcall
AdjustTokenGroups (
    HANDLE TokenHandle,
    BOOL ResetToDefault,
    PTOKEN_GROUPS NewState,
    DWORD BufferLength,
    PTOKEN_GROUPS PreviousState,
    PDWORD ReturnLength
    );


__declspec(dllimport)
BOOL
__stdcall
PrivilegeCheck (
    HANDLE ClientToken,
    PPRIVILEGE_SET RequiredPrivileges,
    LPBOOL pfResult
    );


__declspec(dllimport)
BOOL
__stdcall
AccessCheckAndAuditAlarmA (
    LPCSTR SubsystemName,
    LPVOID HandleId,
    LPSTR ObjectTypeName,
    LPSTR ObjectName,
    PSECURITY_DESCRIPTOR SecurityDescriptor,
    DWORD DesiredAccess,
    PGENERIC_MAPPING GenericMapping,
    BOOL ObjectCreation,
    LPDWORD GrantedAccess,
    LPBOOL AccessStatus,
    LPBOOL pfGenerateOnClose
    );
__declspec(dllimport)
BOOL
__stdcall
AccessCheckAndAuditAlarmW (
    LPCWSTR SubsystemName,
    LPVOID HandleId,
    LPWSTR ObjectTypeName,
    LPWSTR ObjectName,
    PSECURITY_DESCRIPTOR SecurityDescriptor,
    DWORD DesiredAccess,
    PGENERIC_MAPPING GenericMapping,
    BOOL ObjectCreation,
    LPDWORD GrantedAccess,
    LPBOOL AccessStatus,
    LPBOOL pfGenerateOnClose
    );




#line 6428 "e:\\program\\vc98\\include\\winbase.h"



































































































#line 6528 "e:\\program\\vc98\\include\\winbase.h"


__declspec(dllimport)
BOOL
__stdcall
ObjectOpenAuditAlarmA (
    LPCSTR SubsystemName,
    LPVOID HandleId,
    LPSTR ObjectTypeName,
    LPSTR ObjectName,
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    HANDLE ClientToken,
    DWORD DesiredAccess,
    DWORD GrantedAccess,
    PPRIVILEGE_SET Privileges,
    BOOL ObjectCreation,
    BOOL AccessGranted,
    LPBOOL GenerateOnClose
    );
__declspec(dllimport)
BOOL
__stdcall
ObjectOpenAuditAlarmW (
    LPCWSTR SubsystemName,
    LPVOID HandleId,
    LPWSTR ObjectTypeName,
    LPWSTR ObjectName,
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    HANDLE ClientToken,
    DWORD DesiredAccess,
    DWORD GrantedAccess,
    PPRIVILEGE_SET Privileges,
    BOOL ObjectCreation,
    BOOL AccessGranted,
    LPBOOL GenerateOnClose
    );




#line 6569 "e:\\program\\vc98\\include\\winbase.h"


__declspec(dllimport)
BOOL
__stdcall
ObjectPrivilegeAuditAlarmA (
    LPCSTR SubsystemName,
    LPVOID HandleId,
    HANDLE ClientToken,
    DWORD DesiredAccess,
    PPRIVILEGE_SET Privileges,
    BOOL AccessGranted
    );
__declspec(dllimport)
BOOL
__stdcall
ObjectPrivilegeAuditAlarmW (
    LPCWSTR SubsystemName,
    LPVOID HandleId,
    HANDLE ClientToken,
    DWORD DesiredAccess,
    PPRIVILEGE_SET Privileges,
    BOOL AccessGranted
    );




#line 6598 "e:\\program\\vc98\\include\\winbase.h"


__declspec(dllimport)
BOOL
__stdcall
ObjectCloseAuditAlarmA (
    LPCSTR SubsystemName,
    LPVOID HandleId,
    BOOL GenerateOnClose
    );
__declspec(dllimport)
BOOL
__stdcall
ObjectCloseAuditAlarmW (
    LPCWSTR SubsystemName,
    LPVOID HandleId,
    BOOL GenerateOnClose
    );




#line 6621 "e:\\program\\vc98\\include\\winbase.h"


__declspec(dllimport)
BOOL
__stdcall
ObjectDeleteAuditAlarmA (
    LPCSTR SubsystemName,
    LPVOID HandleId,
    BOOL GenerateOnClose
    );
__declspec(dllimport)
BOOL
__stdcall
ObjectDeleteAuditAlarmW (
    LPCWSTR SubsystemName,
    LPVOID HandleId,
    BOOL GenerateOnClose
    );




#line 6644 "e:\\program\\vc98\\include\\winbase.h"


__declspec(dllimport)
BOOL
__stdcall
PrivilegedServiceAuditAlarmA (
    LPCSTR SubsystemName,
    LPCSTR ServiceName,
    HANDLE ClientToken,
    PPRIVILEGE_SET Privileges,
    BOOL AccessGranted
    );
__declspec(dllimport)
BOOL
__stdcall
PrivilegedServiceAuditAlarmW (
    LPCWSTR SubsystemName,
    LPCWSTR ServiceName,
    HANDLE ClientToken,
    PPRIVILEGE_SET Privileges,
    BOOL AccessGranted
    );




#line 6671 "e:\\program\\vc98\\include\\winbase.h"


__declspec(dllimport)
BOOL
__stdcall
IsValidSid (
    PSID pSid
    );


__declspec(dllimport)
BOOL
__stdcall
EqualSid (
    PSID pSid1,
    PSID pSid2
    );


__declspec(dllimport)
BOOL
__stdcall
EqualPrefixSid (
    PSID pSid1,
    PSID pSid2
    );


__declspec(dllimport)
DWORD
__stdcall
GetSidLengthRequired (
    UCHAR nSubAuthorityCount
    );


__declspec(dllimport)
BOOL
__stdcall
AllocateAndInitializeSid (
    PSID_IDENTIFIER_AUTHORITY pIdentifierAuthority,
    BYTE nSubAuthorityCount,
    DWORD nSubAuthority0,
    DWORD nSubAuthority1,
    DWORD nSubAuthority2,
    DWORD nSubAuthority3,
    DWORD nSubAuthority4,
    DWORD nSubAuthority5,
    DWORD nSubAuthority6,
    DWORD nSubAuthority7,
    PSID *pSid
    );

__declspec(dllimport)
PVOID
__stdcall
FreeSid(
    PSID pSid
    );

__declspec(dllimport)
BOOL
__stdcall
InitializeSid (
    PSID Sid,
    PSID_IDENTIFIER_AUTHORITY pIdentifierAuthority,
    BYTE nSubAuthorityCount
    );


__declspec(dllimport)
PSID_IDENTIFIER_AUTHORITY
__stdcall
GetSidIdentifierAuthority (
    PSID pSid
    );


__declspec(dllimport)
PDWORD
__stdcall
GetSidSubAuthority (
    PSID pSid,
    DWORD nSubAuthority
    );


__declspec(dllimport)
PUCHAR
__stdcall
GetSidSubAuthorityCount (
    PSID pSid
    );


__declspec(dllimport)
DWORD
__stdcall
GetLengthSid (
    PSID pSid
    );


__declspec(dllimport)
BOOL
__stdcall
CopySid (
    DWORD nDestinationSidLength,
    PSID pDestinationSid,
    PSID pSourceSid
    );


__declspec(dllimport)
BOOL
__stdcall
AreAllAccessesGranted (
    DWORD GrantedAccess,
    DWORD DesiredAccess
    );


__declspec(dllimport)
BOOL
__stdcall
AreAnyAccessesGranted (
    DWORD GrantedAccess,
    DWORD DesiredAccess
    );


__declspec(dllimport)
void
__stdcall
MapGenericMask (
    PDWORD AccessMask,
    PGENERIC_MAPPING GenericMapping
    );


__declspec(dllimport)
BOOL
__stdcall
IsValidAcl (
    PACL pAcl
    );


__declspec(dllimport)
BOOL
__stdcall
InitializeAcl (
    PACL pAcl,
    DWORD nAclLength,
    DWORD dwAclRevision
    );


__declspec(dllimport)
BOOL
__stdcall
GetAclInformation (
    PACL pAcl,
    LPVOID pAclInformation,
    DWORD nAclInformationLength,
    ACL_INFORMATION_CLASS dwAclInformationClass
    );


__declspec(dllimport)
BOOL
__stdcall
SetAclInformation (
    PACL pAcl,
    LPVOID pAclInformation,
    DWORD nAclInformationLength,
    ACL_INFORMATION_CLASS dwAclInformationClass
    );


__declspec(dllimport)
BOOL
__stdcall
AddAce (
    PACL pAcl,
    DWORD dwAceRevision,
    DWORD dwStartingAceIndex,
    LPVOID pAceList,
    DWORD nAceListLength
    );


__declspec(dllimport)
BOOL
__stdcall
DeleteAce (
    PACL pAcl,
    DWORD dwAceIndex
    );


__declspec(dllimport)
BOOL
__stdcall
GetAce (
    PACL pAcl,
    DWORD dwAceIndex,
    LPVOID *pAce
    );


__declspec(dllimport)
BOOL
__stdcall
AddAccessAllowedAce (
    PACL pAcl,
    DWORD dwAceRevision,
    DWORD AccessMask,
    PSID pSid
    );












#line 6904 "e:\\program\\vc98\\include\\winbase.h"


__declspec(dllimport)
BOOL
__stdcall
AddAccessDeniedAce (
    PACL pAcl,
    DWORD dwAceRevision,
    DWORD AccessMask,
    PSID pSid
    );












#line 6928 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
AddAuditAccessAce(
    PACL pAcl,
    DWORD dwAceRevision,
    DWORD dwAccessMask,
    PSID pSid,
    BOOL bAuditSuccess,
    BOOL bAuditFailure
    );























































#line 6996 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
FindFirstFreeAce (
    PACL pAcl,
    LPVOID *pAce
    );


__declspec(dllimport)
BOOL
__stdcall
InitializeSecurityDescriptor (
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    DWORD dwRevision
    );


__declspec(dllimport)
BOOL
__stdcall
IsValidSecurityDescriptor (
    PSECURITY_DESCRIPTOR pSecurityDescriptor
    );


__declspec(dllimport)
DWORD
__stdcall
GetSecurityDescriptorLength (
    PSECURITY_DESCRIPTOR pSecurityDescriptor
    );


__declspec(dllimport)
BOOL
__stdcall
GetSecurityDescriptorControl (
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    PSECURITY_DESCRIPTOR_CONTROL pControl,
    LPDWORD lpdwRevision
    );










#line 7050 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
SetSecurityDescriptorDacl (
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    BOOL bDaclPresent,
    PACL pDacl,
    BOOL bDaclDefaulted
    );


__declspec(dllimport)
BOOL
__stdcall
GetSecurityDescriptorDacl (
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    LPBOOL lpbDaclPresent,
    PACL *pDacl,
    LPBOOL lpbDaclDefaulted
    );


__declspec(dllimport)
BOOL
__stdcall
SetSecurityDescriptorSacl (
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    BOOL bSaclPresent,
    PACL pSacl,
    BOOL bSaclDefaulted
    );


__declspec(dllimport)
BOOL
__stdcall
GetSecurityDescriptorSacl (
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    LPBOOL lpbSaclPresent,
    PACL *pSacl,
    LPBOOL lpbSaclDefaulted
    );


__declspec(dllimport)
BOOL
__stdcall
SetSecurityDescriptorOwner (
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    PSID pOwner,
    BOOL bOwnerDefaulted
    );


__declspec(dllimport)
BOOL
__stdcall
GetSecurityDescriptorOwner (
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    PSID *pOwner,
    LPBOOL lpbOwnerDefaulted
    );


__declspec(dllimport)
BOOL
__stdcall
SetSecurityDescriptorGroup (
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    PSID pGroup,
    BOOL bGroupDefaulted
    );


__declspec(dllimport)
BOOL
__stdcall
GetSecurityDescriptorGroup (
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    PSID *pGroup,
    LPBOOL lpbGroupDefaulted
    );


__declspec(dllimport)
BOOL
__stdcall
CreatePrivateObjectSecurity (
    PSECURITY_DESCRIPTOR ParentDescriptor,
    PSECURITY_DESCRIPTOR CreatorDescriptor,
    PSECURITY_DESCRIPTOR * NewDescriptor,
    BOOL IsDirectoryObject,
    HANDLE Token,
    PGENERIC_MAPPING GenericMapping
    );




























#line 7175 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
SetPrivateObjectSecurity (
    SECURITY_INFORMATION SecurityInformation,
    PSECURITY_DESCRIPTOR ModificationDescriptor,
    PSECURITY_DESCRIPTOR *ObjectsSecurityDescriptor,
    PGENERIC_MAPPING GenericMapping,
    HANDLE Token
    );













#line 7200 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
GetPrivateObjectSecurity (
    PSECURITY_DESCRIPTOR ObjectDescriptor,
    SECURITY_INFORMATION SecurityInformation,
    PSECURITY_DESCRIPTOR ResultantDescriptor,
    DWORD DescriptorLength,
    PDWORD ReturnLength
    );


__declspec(dllimport)
BOOL
__stdcall
DestroyPrivateObjectSecurity (
    PSECURITY_DESCRIPTOR * ObjectDescriptor
    );


__declspec(dllimport)
BOOL
__stdcall
MakeSelfRelativeSD (
    PSECURITY_DESCRIPTOR pAbsoluteSecurityDescriptor,
    PSECURITY_DESCRIPTOR pSelfRelativeSecurityDescriptor,
    LPDWORD lpdwBufferLength
    );


__declspec(dllimport)
BOOL
__stdcall
MakeAbsoluteSD (
    PSECURITY_DESCRIPTOR pSelfRelativeSecurityDescriptor,
    PSECURITY_DESCRIPTOR pAbsoluteSecurityDescriptor,
    LPDWORD lpdwAbsoluteSecurityDescriptorSize,
    PACL pDacl,
    LPDWORD lpdwDaclSize,
    PACL pSacl,
    LPDWORD lpdwSaclSize,
    PSID pOwner,
    LPDWORD lpdwOwnerSize,
    PSID pPrimaryGroup,
    LPDWORD lpdwPrimaryGroupSize
    );


__declspec(dllimport)
BOOL
__stdcall
SetFileSecurityA (
    LPCSTR lpFileName,
    SECURITY_INFORMATION SecurityInformation,
    PSECURITY_DESCRIPTOR pSecurityDescriptor
    );
__declspec(dllimport)
BOOL
__stdcall
SetFileSecurityW (
    LPCWSTR lpFileName,
    SECURITY_INFORMATION SecurityInformation,
    PSECURITY_DESCRIPTOR pSecurityDescriptor
    );




#line 7270 "e:\\program\\vc98\\include\\winbase.h"


__declspec(dllimport)
BOOL
__stdcall
GetFileSecurityA (
    LPCSTR lpFileName,
    SECURITY_INFORMATION RequestedInformation,
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    DWORD nLength,
    LPDWORD lpnLengthNeeded
    );
__declspec(dllimport)
BOOL
__stdcall
GetFileSecurityW (
    LPCWSTR lpFileName,
    SECURITY_INFORMATION RequestedInformation,
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    DWORD nLength,
    LPDWORD lpnLengthNeeded
    );




#line 7297 "e:\\program\\vc98\\include\\winbase.h"


__declspec(dllimport)
BOOL
__stdcall
SetKernelObjectSecurity (
    HANDLE Handle,
    SECURITY_INFORMATION SecurityInformation,
    PSECURITY_DESCRIPTOR SecurityDescriptor
    );



__declspec(dllimport)
HANDLE
__stdcall
FindFirstChangeNotificationA(
    LPCSTR lpPathName,
    BOOL bWatchSubtree,
    DWORD dwNotifyFilter
    );
__declspec(dllimport)
HANDLE
__stdcall
FindFirstChangeNotificationW(
    LPCWSTR lpPathName,
    BOOL bWatchSubtree,
    DWORD dwNotifyFilter
    );




#line 7331 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
FindNextChangeNotification(
    HANDLE hChangeHandle
    );

__declspec(dllimport)
BOOL
__stdcall
FindCloseChangeNotification(
    HANDLE hChangeHandle
    );















#line 7361 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
VirtualLock(
    LPVOID lpAddress,
    DWORD dwSize
    );

__declspec(dllimport)
BOOL
__stdcall
VirtualUnlock(
    LPVOID lpAddress,
    DWORD dwSize
    );

__declspec(dllimport)
LPVOID
__stdcall
MapViewOfFileEx(
    HANDLE hFileMappingObject,
    DWORD dwDesiredAccess,
    DWORD dwFileOffsetHigh,
    DWORD dwFileOffsetLow,
    DWORD dwNumberOfBytesToMap,
    LPVOID lpBaseAddress
    );

__declspec(dllimport)
BOOL
__stdcall
SetPriorityClass(
    HANDLE hProcess,
    DWORD dwPriorityClass
    );

__declspec(dllimport)
DWORD
__stdcall
GetPriorityClass(
    HANDLE hProcess
    );

__declspec(dllimport)
BOOL
__stdcall
IsBadReadPtr(
    const void *lp,
    UINT ucb
    );

__declspec(dllimport)
BOOL
__stdcall
IsBadWritePtr(
    LPVOID lp,
    UINT ucb
    );

__declspec(dllimport)
BOOL
__stdcall
IsBadHugeReadPtr(
    const void *lp,
    UINT ucb
    );

__declspec(dllimport)
BOOL
__stdcall
IsBadHugeWritePtr(
    LPVOID lp,
    UINT ucb
    );

__declspec(dllimport)
BOOL
__stdcall
IsBadCodePtr(
    FARPROC lpfn
    );

__declspec(dllimport)
BOOL
__stdcall
IsBadStringPtrA(
    LPCSTR lpsz,
    UINT ucchMax
    );
__declspec(dllimport)
BOOL
__stdcall
IsBadStringPtrW(
    LPCWSTR lpsz,
    UINT ucchMax
    );




#line 7463 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
LookupAccountSidA(
    LPCSTR lpSystemName,
    PSID Sid,
    LPSTR Name,
    LPDWORD cbName,
    LPSTR ReferencedDomainName,
    LPDWORD cbReferencedDomainName,
    PSID_NAME_USE peUse
    );
__declspec(dllimport)
BOOL
__stdcall
LookupAccountSidW(
    LPCWSTR lpSystemName,
    PSID Sid,
    LPWSTR Name,
    LPDWORD cbName,
    LPWSTR ReferencedDomainName,
    LPDWORD cbReferencedDomainName,
    PSID_NAME_USE peUse
    );




#line 7493 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
LookupAccountNameA(
    LPCSTR lpSystemName,
    LPCSTR lpAccountName,
    PSID Sid,
    LPDWORD cbSid,
    LPSTR ReferencedDomainName,
    LPDWORD cbReferencedDomainName,
    PSID_NAME_USE peUse
    );
__declspec(dllimport)
BOOL
__stdcall
LookupAccountNameW(
    LPCWSTR lpSystemName,
    LPCWSTR lpAccountName,
    PSID Sid,
    LPDWORD cbSid,
    LPWSTR ReferencedDomainName,
    LPDWORD cbReferencedDomainName,
    PSID_NAME_USE peUse
    );




#line 7523 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
LookupPrivilegeValueA(
    LPCSTR lpSystemName,
    LPCSTR lpName,
    PLUID   lpLuid
    );
__declspec(dllimport)
BOOL
__stdcall
LookupPrivilegeValueW(
    LPCWSTR lpSystemName,
    LPCWSTR lpName,
    PLUID   lpLuid
    );




#line 7545 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
LookupPrivilegeNameA(
    LPCSTR lpSystemName,
    PLUID   lpLuid,
    LPSTR lpName,
    LPDWORD cbName
    );
__declspec(dllimport)
BOOL
__stdcall
LookupPrivilegeNameW(
    LPCWSTR lpSystemName,
    PLUID   lpLuid,
    LPWSTR lpName,
    LPDWORD cbName
    );




#line 7569 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
LookupPrivilegeDisplayNameA(
    LPCSTR lpSystemName,
    LPCSTR lpName,
    LPSTR lpDisplayName,
    LPDWORD cbDisplayName,
    LPDWORD lpLanguageId
    );
__declspec(dllimport)
BOOL
__stdcall
LookupPrivilegeDisplayNameW(
    LPCWSTR lpSystemName,
    LPCWSTR lpName,
    LPWSTR lpDisplayName,
    LPDWORD cbDisplayName,
    LPDWORD lpLanguageId
    );




#line 7595 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
AllocateLocallyUniqueId(
    PLUID Luid
    );

__declspec(dllimport)
BOOL
__stdcall
BuildCommDCBA(
    LPCSTR lpDef,
    LPDCB lpDCB
    );
__declspec(dllimport)
BOOL
__stdcall
BuildCommDCBW(
    LPCWSTR lpDef,
    LPDCB lpDCB
    );




#line 7622 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
BuildCommDCBAndTimeoutsA(
    LPCSTR lpDef,
    LPDCB lpDCB,
    LPCOMMTIMEOUTS lpCommTimeouts
    );
__declspec(dllimport)
BOOL
__stdcall
BuildCommDCBAndTimeoutsW(
    LPCWSTR lpDef,
    LPDCB lpDCB,
    LPCOMMTIMEOUTS lpCommTimeouts
    );




#line 7644 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
CommConfigDialogA(
    LPCSTR lpszName,
    HWND hWnd,
    LPCOMMCONFIG lpCC
    );
__declspec(dllimport)
BOOL
__stdcall
CommConfigDialogW(
    LPCWSTR lpszName,
    HWND hWnd,
    LPCOMMCONFIG lpCC
    );




#line 7666 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
GetDefaultCommConfigA(
    LPCSTR lpszName,
    LPCOMMCONFIG lpCC,
    LPDWORD lpdwSize
    );
__declspec(dllimport)
BOOL
__stdcall
GetDefaultCommConfigW(
    LPCWSTR lpszName,
    LPCOMMCONFIG lpCC,
    LPDWORD lpdwSize
    );




#line 7688 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
SetDefaultCommConfigA(
    LPCSTR lpszName,
    LPCOMMCONFIG lpCC,
    DWORD dwSize
    );
__declspec(dllimport)
BOOL
__stdcall
SetDefaultCommConfigW(
    LPCWSTR lpszName,
    LPCOMMCONFIG lpCC,
    DWORD dwSize
    );




#line 7710 "e:\\program\\vc98\\include\\winbase.h"





#line 7716 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
GetComputerNameA (
    LPSTR lpBuffer,
    LPDWORD nSize
    );
__declspec(dllimport)
BOOL
__stdcall
GetComputerNameW (
    LPWSTR lpBuffer,
    LPDWORD nSize
    );




#line 7736 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
SetComputerNameA (
    LPCSTR lpComputerName
    );
__declspec(dllimport)
BOOL
__stdcall
SetComputerNameW (
    LPCWSTR lpComputerName
    );




#line 7754 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
GetUserNameA (
    LPSTR lpBuffer,
    LPDWORD nSize
    );
__declspec(dllimport)
BOOL
__stdcall
GetUserNameW (
    LPWSTR lpBuffer,
    LPDWORD nSize
    );




#line 7774 "e:\\program\\vc98\\include\\winbase.h"














#line 7789 "e:\\program\\vc98\\include\\winbase.h"


#line 7792 "e:\\program\\vc98\\include\\winbase.h"



__declspec(dllimport)
BOOL
__stdcall
LogonUserA (
    LPSTR lpszUsername,
    LPSTR lpszDomain,
    LPSTR lpszPassword,
    DWORD dwLogonType,
    DWORD dwLogonProvider,
    PHANDLE phToken
    );
__declspec(dllimport)
BOOL
__stdcall
LogonUserW (
    LPWSTR lpszUsername,
    LPWSTR lpszDomain,
    LPWSTR lpszPassword,
    DWORD dwLogonType,
    DWORD dwLogonProvider,
    PHANDLE phToken
    );




#line 7822 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
ImpersonateLoggedOnUser(
    HANDLE  hToken
    );

__declspec(dllimport)
BOOL
__stdcall
CreateProcessAsUserA (
    HANDLE hToken,
    LPCSTR lpApplicationName,
    LPSTR lpCommandLine,
    LPSECURITY_ATTRIBUTES lpProcessAttributes,
    LPSECURITY_ATTRIBUTES lpThreadAttributes,
    BOOL bInheritHandles,
    DWORD dwCreationFlags,
    LPVOID lpEnvironment,
    LPCSTR lpCurrentDirectory,
    LPSTARTUPINFOA lpStartupInfo,
    LPPROCESS_INFORMATION lpProcessInformation
    );
__declspec(dllimport)
BOOL
__stdcall
CreateProcessAsUserW (
    HANDLE hToken,
    LPCWSTR lpApplicationName,
    LPWSTR lpCommandLine,
    LPSECURITY_ATTRIBUTES lpProcessAttributes,
    LPSECURITY_ATTRIBUTES lpThreadAttributes,
    BOOL bInheritHandles,
    DWORD dwCreationFlags,
    LPVOID lpEnvironment,
    LPCWSTR lpCurrentDirectory,
    LPSTARTUPINFOW lpStartupInfo,
    LPPROCESS_INFORMATION lpProcessInformation
    );




#line 7867 "e:\\program\\vc98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
DuplicateTokenEx(
    HANDLE hExistingToken,
    DWORD dwDesiredAccess,
    LPSECURITY_ATTRIBUTES lpTokenAttributes,
    SECURITY_IMPERSONATION_LEVEL ImpersonationLevel,
    TOKEN_TYPE TokenType,
    PHANDLE phNewToken);

__declspec(dllimport)
BOOL
__stdcall
CreateRestrictedToken(
     HANDLE ExistingTokenHandle,
     DWORD Flags,
     DWORD DisableSidCount,
     PSID_AND_ATTRIBUTES SidsToDisable ,
     DWORD DeletePrivilegeCount,
     PLUID_AND_ATTRIBUTES PrivilegesToDelete ,
     DWORD RestrictedSidCount,
     PSID_AND_ATTRIBUTES SidsToRestrict ,
     PHANDLE NewTokenHandle
    );

__declspec(dllimport)
BOOL
__stdcall
IsTokenRestricted(
     HANDLE TokenHandle
    );




















































#line 7953 "e:\\program\\vc98\\include\\winbase.h"





__declspec(dllimport)
BOOL
__stdcall
QueryPerformanceCounter(
    LARGE_INTEGER *lpPerformanceCount
    );

__declspec(dllimport)
BOOL
__stdcall
QueryPerformanceFrequency(
    LARGE_INTEGER *lpFrequency
    );

typedef struct _OSVERSIONINFOA {
    DWORD dwOSVersionInfoSize;
    DWORD dwMajorVersion;
    DWORD dwMinorVersion;
    DWORD dwBuildNumber;
    DWORD dwPlatformId;
    CHAR   szCSDVersion[ 128 ];     
} OSVERSIONINFOA, *POSVERSIONINFOA, *LPOSVERSIONINFOA;
typedef struct _OSVERSIONINFOW {
    DWORD dwOSVersionInfoSize;
    DWORD dwMajorVersion;
    DWORD dwMinorVersion;
    DWORD dwBuildNumber;
    DWORD dwPlatformId;
    WCHAR  szCSDVersion[ 128 ];     
} OSVERSIONINFOW, *POSVERSIONINFOW, *LPOSVERSIONINFOW;





typedef OSVERSIONINFOA OSVERSIONINFO;
typedef POSVERSIONINFOA POSVERSIONINFO;
typedef LPOSVERSIONINFOA LPOSVERSIONINFO;
#line 7997 "e:\\program\\vc98\\include\\winbase.h"

typedef struct _OSVERSIONINFOEXA {
    DWORD dwOSVersionInfoSize;
    DWORD dwMajorVersion;
    DWORD dwMinorVersion;
    DWORD dwBuildNumber;
    DWORD dwPlatformId;
    CHAR   szCSDVersion[ 128 ];     
    WORD wServicePackMajor;
    WORD wServicePackMinor;
    WORD wReserved[2];
} OSVERSIONINFOEXA, *POSVERSIONINFOEXA, *LPOSVERSIONINFOEXA;
typedef struct _OSVERSIONINFOEXW {
    DWORD dwOSVersionInfoSize;
    DWORD dwMajorVersion;
    DWORD dwMinorVersion;
    DWORD dwBuildNumber;
    DWORD dwPlatformId;
    WCHAR  szCSDVersion[ 128 ];     
    WORD wServicePackMajor;
    WORD wServicePackMinor;
    WORD wReserved[2];
} OSVERSIONINFOEXW, *POSVERSIONINFOEXW, *LPOSVERSIONINFOEXW;





typedef OSVERSIONINFOEXA OSVERSIONINFOEX;
typedef POSVERSIONINFOEXA POSVERSIONINFOEX;
typedef LPOSVERSIONINFOEXA LPOSVERSIONINFOEX;
#line 8029 "e:\\program\\vc98\\include\\winbase.h"










__declspec(dllimport)
BOOL
__stdcall
GetVersionExA(
    LPOSVERSIONINFOA lpVersionInformation
    );
__declspec(dllimport)
BOOL
__stdcall
GetVersionExW(
    LPOSVERSIONINFOW lpVersionInformation
    );




#line 8056 "e:\\program\\vc98\\include\\winbase.h"






#line 1 "e:\\program\\vc98\\include\\winerror.h"



















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 8021 "e:\\program\\vc98\\include\\winerror.h"


























































































































































































#line 8208 "e:\\program\\vc98\\include\\winerror.h"

































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
 
 
 
 


















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 12937 "e:\\program\\vc98\\include\\winerror.h"
#line 8063 "e:\\program\\vc98\\include\\winbase.h"





























typedef struct _SYSTEM_POWER_STATUS {
    BYTE ACLineStatus;
    BYTE BatteryFlag;
    BYTE BatteryLifePercent;
    BYTE Reserved1;
    DWORD BatteryLifeTime;
    DWORD BatteryFullLifeTime;
}   SYSTEM_POWER_STATUS, *LPSYSTEM_POWER_STATUS;

BOOL
__stdcall
GetSystemPowerStatus(
    LPSYSTEM_POWER_STATUS lpSystemPowerStatus
    );

BOOL
__stdcall
SetSystemPowerState(
    BOOL fSuspend,
    BOOL fForce
    );

#line 8115 "e:\\program\\vc98\\include\\winbase.h"











typedef struct _WIN_CERTIFICATE {
    DWORD       dwLength;
    WORD        wRevision;
    WORD        wCertificateType;   
    BYTE        bCertificate[1];
} WIN_CERTIFICATE, *LPWIN_CERTIFICATE;























BOOL
__stdcall
WinSubmitCertificate(
    LPWIN_CERTIFICATE lpCertificate
    );









LONG
__stdcall
WinVerifyTrust(
    HWND    hwnd,
    GUID *  ActionID,
    LPVOID  ActionData
    );


BOOL
__stdcall
WinLoadTrustProvider(
    GUID * ActionID
    );












typedef LPVOID WIN_TRUST_SUBJECT;





typedef struct _WIN_TRUST_ACTDATA_CONTEXT_WITH_SUBJECT {

    HANDLE            hClientToken;
    GUID *            SubjectType;
    WIN_TRUST_SUBJECT Subject;

} WIN_TRUST_ACTDATA_CONTEXT_WITH_SUBJECT, *LPWIN_TRUST_ACTDATA_CONTEXT_WITH_SUBJECT ;


typedef struct _WIN_TRUST_ACTDATA_SUBJECT_ONLY {

    GUID *            SubjectType;
    WIN_TRUST_SUBJECT Subject;

} WIN_TRUST_ACTDATA_SUBJECT_ONLY, *LPWIN_TRUST_ACTDATA_SUBJECT_ONLY;



















































typedef struct _WIN_TRUST_SUBJECT_FILE {

    HANDLE  hFile;
    LPCWSTR lpPath;

} WIN_TRUST_SUBJECT_FILE, *LPWIN_TRUST_SUBJECT_FILE;












































typedef struct _WIN_TRUST_SUBJECT_FILE_AND_DISPLAY {

    HANDLE  hFile;              
    LPCWSTR lpPath;             
    LPCWSTR lpDisplayName;      
                                

} WIN_TRUST_SUBJECT_FILE_AND_DISPLAY, *LPWIN_TRUST_SUBJECT_FILE_AND_DISPLAY;

























































































typedef struct _WIN_SPUB_TRUSTED_PUBLISHER_DATA {

    HANDLE            hClientToken;
    LPWIN_CERTIFICATE lpCertificate;

} WIN_SPUB_TRUSTED_PUBLISHER_DATA, *LPWIN_SPUB_TRUSTED_PUBLISHER_DATA;






























































































































































































#line 8611 "e:\\program\\vc98\\include\\winbase.h"



}
#line 8616 "e:\\program\\vc98\\include\\winbase.h"


#line 8619 "e:\\program\\vc98\\include\\winbase.h"

#line 165 "e:\\program\\vc98\\include\\windows.h"
#line 1 "e:\\program\\vc98\\include\\wingdi.h"























#line 25 "e:\\program\\vc98\\include\\wingdi.h"









#line 35 "e:\\program\\vc98\\include\\wingdi.h"


extern "C" {
#line 39 "e:\\program\\vc98\\include\\wingdi.h"
















































#line 88 "e:\\program\\vc98\\include\\wingdi.h"

































#line 122 "e:\\program\\vc98\\include\\wingdi.h"






















#line 145 "e:\\program\\vc98\\include\\wingdi.h"
















#line 162 "e:\\program\\vc98\\include\\wingdi.h"


#line 165 "e:\\program\\vc98\\include\\wingdi.h"





















































































typedef struct _DRAWPATRECT {
        POINT ptPosition;
        POINT ptSize;
        WORD wStyle;
        WORD wPattern;
} DRAWPATRECT, *PDRAWPATRECT;
#line 257 "e:\\program\\vc98\\include\\wingdi.h"

#line 259 "e:\\program\\vc98\\include\\wingdi.h"































































































typedef struct _PSINJECTDATA {

    DWORD   DataBytes;          
    DWORD   InjectionPoint;     
    DWORD   Flags;              
    DWORD   Reserved;           

    

} PSINJECTDATA, *PPSINJECTDATA;






































































































typedef struct  tagXFORM
  {
    FLOAT   eM11;
    FLOAT   eM12;
    FLOAT   eM21;
    FLOAT   eM22;
    FLOAT   eDx;
    FLOAT   eDy;
  } XFORM, *PXFORM,  *LPXFORM;


typedef struct tagBITMAP
  {
    LONG        bmType;
    LONG        bmWidth;
    LONG        bmHeight;
    LONG        bmWidthBytes;
    WORD        bmPlanes;
    WORD        bmBitsPixel;
    LPVOID      bmBits;
  } BITMAP, *PBITMAP,  *NPBITMAP,  *LPBITMAP;

#line 1 "e:\\program\\vc98\\include\\pshpack1.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "e:\\program\\vc98\\include\\pshpack1.h"
#pragma pack(1)


#line 32 "e:\\program\\vc98\\include\\pshpack1.h"
#line 33 "e:\\program\\vc98\\include\\pshpack1.h"
#line 489 "e:\\program\\vc98\\include\\wingdi.h"
typedef struct tagRGBTRIPLE {
        BYTE    rgbtBlue;
        BYTE    rgbtGreen;
        BYTE    rgbtRed;
} RGBTRIPLE;
#line 1 "e:\\program\\vc98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "e:\\program\\vc98\\include\\poppack.h"


#line 36 "e:\\program\\vc98\\include\\poppack.h"
#line 37 "e:\\program\\vc98\\include\\poppack.h"
#line 495 "e:\\program\\vc98\\include\\wingdi.h"

typedef struct tagRGBQUAD {
        BYTE    rgbBlue;
        BYTE    rgbGreen;
        BYTE    rgbRed;
        BYTE    rgbReserved;
} RGBQUAD;
typedef RGBQUAD * LPRGBQUAD;


















typedef LONG   LCSCSTYPE;




typedef LONG    LCSGAMUTMATCH;


























typedef long            FXPT16DOT16,  *LPFXPT16DOT16;
typedef long            FXPT2DOT30,  *LPFXPT2DOT30;




typedef struct tagCIEXYZ
{
        FXPT2DOT30 ciexyzX;
        FXPT2DOT30 ciexyzY;
        FXPT2DOT30 ciexyzZ;
} CIEXYZ;
typedef CIEXYZ   *LPCIEXYZ;

typedef struct tagICEXYZTRIPLE
{
        CIEXYZ  ciexyzRed;
        CIEXYZ  ciexyzGreen;
        CIEXYZ  ciexyzBlue;
} CIEXYZTRIPLE;
typedef CIEXYZTRIPLE     *LPCIEXYZTRIPLE;






typedef struct tagLOGCOLORSPACEA {
    DWORD lcsSignature;
    DWORD lcsVersion;
    DWORD lcsSize;
    LCSCSTYPE lcsCSType;
    LCSGAMUTMATCH lcsIntent;
    CIEXYZTRIPLE lcsEndpoints;
    DWORD lcsGammaRed;
    DWORD lcsGammaGreen;
    DWORD lcsGammaBlue;
    CHAR   lcsFilename[260];
} LOGCOLORSPACEA, *LPLOGCOLORSPACEA;
typedef struct tagLOGCOLORSPACEW {
    DWORD lcsSignature;
    DWORD lcsVersion;
    DWORD lcsSize;
    LCSCSTYPE lcsCSType;
    LCSGAMUTMATCH lcsIntent;
    CIEXYZTRIPLE lcsEndpoints;
    DWORD lcsGammaRed;
    DWORD lcsGammaGreen;
    DWORD lcsGammaBlue;
    WCHAR  lcsFilename[260];
} LOGCOLORSPACEW, *LPLOGCOLORSPACEW;




typedef LOGCOLORSPACEA LOGCOLORSPACE;
typedef LPLOGCOLORSPACEA LPLOGCOLORSPACE;
#line 611 "e:\\program\\vc98\\include\\wingdi.h"

#line 613 "e:\\program\\vc98\\include\\wingdi.h"


typedef struct tagBITMAPCOREHEADER {
        DWORD   bcSize;                 
        WORD    bcWidth;
        WORD    bcHeight;
        WORD    bcPlanes;
        WORD    bcBitCount;
} BITMAPCOREHEADER,  *LPBITMAPCOREHEADER, *PBITMAPCOREHEADER;

typedef struct tagBITMAPINFOHEADER{
        DWORD      biSize;
        LONG       biWidth;
        LONG       biHeight;
        WORD       biPlanes;
        WORD       biBitCount;
        DWORD      biCompression;
        DWORD      biSizeImage;
        LONG       biXPelsPerMeter;
        LONG       biYPelsPerMeter;
        DWORD      biClrUsed;
        DWORD      biClrImportant;
} BITMAPINFOHEADER,  *LPBITMAPINFOHEADER, *PBITMAPINFOHEADER;


typedef struct {
        DWORD        bV4Size;
        LONG         bV4Width;
        LONG         bV4Height;
        WORD         bV4Planes;
        WORD         bV4BitCount;
        DWORD        bV4V4Compression;
        DWORD        bV4SizeImage;
        LONG         bV4XPelsPerMeter;
        LONG         bV4YPelsPerMeter;
        DWORD        bV4ClrUsed;
        DWORD        bV4ClrImportant;
        DWORD        bV4RedMask;
        DWORD        bV4GreenMask;
        DWORD        bV4BlueMask;
        DWORD        bV4AlphaMask;
        DWORD        bV4CSType;
        CIEXYZTRIPLE bV4Endpoints;
        DWORD        bV4GammaRed;
        DWORD        bV4GammaGreen;
        DWORD        bV4GammaBlue;
} BITMAPV4HEADER,  *LPBITMAPV4HEADER, *PBITMAPV4HEADER;
#line 661 "e:\\program\\vc98\\include\\wingdi.h"
































#line 694 "e:\\program\\vc98\\include\\wingdi.h"







#line 702 "e:\\program\\vc98\\include\\wingdi.h"

typedef struct tagBITMAPINFO {
    BITMAPINFOHEADER    bmiHeader;
    RGBQUAD             bmiColors[1];
} BITMAPINFO,  *LPBITMAPINFO, *PBITMAPINFO;

typedef struct tagBITMAPCOREINFO {
    BITMAPCOREHEADER    bmciHeader;
    RGBTRIPLE           bmciColors[1];
} BITMAPCOREINFO,  *LPBITMAPCOREINFO, *PBITMAPCOREINFO;

#line 1 "e:\\program\\vc98\\include\\pshpack2.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "e:\\program\\vc98\\include\\pshpack2.h"
#pragma pack(2)


#line 32 "e:\\program\\vc98\\include\\pshpack2.h"
#line 33 "e:\\program\\vc98\\include\\pshpack2.h"
#line 714 "e:\\program\\vc98\\include\\wingdi.h"
typedef struct tagBITMAPFILEHEADER {
        WORD    bfType;
        DWORD   bfSize;
        WORD    bfReserved1;
        WORD    bfReserved2;
        DWORD   bfOffBits;
} BITMAPFILEHEADER,  *LPBITMAPFILEHEADER, *PBITMAPFILEHEADER;
#line 1 "e:\\program\\vc98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "e:\\program\\vc98\\include\\poppack.h"


#line 36 "e:\\program\\vc98\\include\\poppack.h"
#line 37 "e:\\program\\vc98\\include\\poppack.h"
#line 722 "e:\\program\\vc98\\include\\wingdi.h"





typedef struct tagFONTSIGNATURE
{
    DWORD fsUsb[4];
    DWORD fsCsb[2];
} FONTSIGNATURE, *PFONTSIGNATURE, *LPFONTSIGNATURE;

typedef struct tagCHARSETINFO
{
    UINT ciCharset;
    UINT ciACP;
    FONTSIGNATURE fs;
} CHARSETINFO, *PCHARSETINFO,  *NPCHARSETINFO,  *LPCHARSETINFO;





typedef struct tagLOCALESIGNATURE
{
    DWORD lsUsb[4];
    DWORD lsCsbDefault[2];
    DWORD lsCsbSupported[2];
} LOCALESIGNATURE, *PLOCALESIGNATURE, *LPLOCALESIGNATURE;


#line 753 "e:\\program\\vc98\\include\\wingdi.h"
#line 754 "e:\\program\\vc98\\include\\wingdi.h"




typedef struct tagHANDLETABLE
  {
    HGDIOBJ     objectHandle[1];
  } HANDLETABLE, *PHANDLETABLE,  *LPHANDLETABLE;

typedef struct tagMETARECORD
  {
    DWORD       rdSize;
    WORD        rdFunction;
    WORD        rdParm[1];
  } METARECORD;
typedef struct tagMETARECORD  *PMETARECORD;
typedef struct tagMETARECORD   *LPMETARECORD;

typedef struct tagMETAFILEPICT
  {
    LONG        mm;
    LONG        xExt;
    LONG        yExt;
    HMETAFILE   hMF;
  } METAFILEPICT,  *LPMETAFILEPICT;

#line 1 "e:\\program\\vc98\\include\\pshpack2.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "e:\\program\\vc98\\include\\pshpack2.h"
#pragma pack(2)


#line 32 "e:\\program\\vc98\\include\\pshpack2.h"
#line 33 "e:\\program\\vc98\\include\\pshpack2.h"
#line 781 "e:\\program\\vc98\\include\\wingdi.h"
typedef struct tagMETAHEADER
{
    WORD        mtType;
    WORD        mtHeaderSize;
    WORD        mtVersion;
    DWORD       mtSize;
    WORD        mtNoObjects;
    DWORD       mtMaxRecord;
    WORD        mtNoParameters;
} METAHEADER;
typedef struct tagMETAHEADER  *PMETAHEADER;
typedef struct tagMETAHEADER   *LPMETAHEADER;

#line 1 "e:\\program\\vc98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "e:\\program\\vc98\\include\\poppack.h"


#line 36 "e:\\program\\vc98\\include\\poppack.h"
#line 37 "e:\\program\\vc98\\include\\poppack.h"
#line 795 "e:\\program\\vc98\\include\\wingdi.h"


typedef struct tagENHMETARECORD
{
    DWORD   iType;              
    DWORD   nSize;              
    DWORD   dParm[1];           
} ENHMETARECORD, *PENHMETARECORD, *LPENHMETARECORD;

typedef struct tagENHMETAHEADER
{
    DWORD   iType;              
    DWORD   nSize;              
                                
    RECTL   rclBounds;          
    RECTL   rclFrame;           
    DWORD   dSignature;         
    DWORD   nVersion;           
    DWORD   nBytes;             
    DWORD   nRecords;           
    WORD    nHandles;           
                                
    WORD    sReserved;          
    DWORD   nDescription;       
                                
    DWORD   offDescription;     
                                
    DWORD   nPalEntries;        
    SIZEL   szlDevice;          
    SIZEL   szlMillimeters;     

    DWORD   cbPixelFormat;      
                                
    DWORD   offPixelFormat;     
                                
    DWORD   bOpenGL;            
                                
#line 833 "e:\\program\\vc98\\include\\wingdi.h"
} ENHMETAHEADER, *PENHMETAHEADER, *LPENHMETAHEADER;

#line 836 "e:\\program\\vc98\\include\\wingdi.h"















    typedef BYTE BCHAR;
#line 853 "e:\\program\\vc98\\include\\wingdi.h"

typedef struct tagTEXTMETRICA
{
    LONG        tmHeight;
    LONG        tmAscent;
    LONG        tmDescent;
    LONG        tmInternalLeading;
    LONG        tmExternalLeading;
    LONG        tmAveCharWidth;
    LONG        tmMaxCharWidth;
    LONG        tmWeight;
    LONG        tmOverhang;
    LONG        tmDigitizedAspectX;
    LONG        tmDigitizedAspectY;
    BYTE        tmFirstChar;
    BYTE        tmLastChar;
    BYTE        tmDefaultChar;
    BYTE        tmBreakChar;
    BYTE        tmItalic;
    BYTE        tmUnderlined;
    BYTE        tmStruckOut;
    BYTE        tmPitchAndFamily;
    BYTE        tmCharSet;
} TEXTMETRICA, *PTEXTMETRICA,  *NPTEXTMETRICA,  *LPTEXTMETRICA;
typedef struct tagTEXTMETRICW
{
    LONG        tmHeight;
    LONG        tmAscent;
    LONG        tmDescent;
    LONG        tmInternalLeading;
    LONG        tmExternalLeading;
    LONG        tmAveCharWidth;
    LONG        tmMaxCharWidth;
    LONG        tmWeight;
    LONG        tmOverhang;
    LONG        tmDigitizedAspectX;
    LONG        tmDigitizedAspectY;
    WCHAR       tmFirstChar;
    WCHAR       tmLastChar;
    WCHAR       tmDefaultChar;
    WCHAR       tmBreakChar;
    BYTE        tmItalic;
    BYTE        tmUnderlined;
    BYTE        tmStruckOut;
    BYTE        tmPitchAndFamily;
    BYTE        tmCharSet;
} TEXTMETRICW, *PTEXTMETRICW,  *NPTEXTMETRICW,  *LPTEXTMETRICW;






typedef TEXTMETRICA TEXTMETRIC;
typedef PTEXTMETRICA PTEXTMETRIC;
typedef NPTEXTMETRICA NPTEXTMETRIC;
typedef LPTEXTMETRICA LPTEXTMETRIC;
#line 911 "e:\\program\\vc98\\include\\wingdi.h"













#line 1 "e:\\program\\vc98\\include\\pshpack4.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "e:\\program\\vc98\\include\\pshpack4.h"
#pragma pack(4)


#line 32 "e:\\program\\vc98\\include\\pshpack4.h"
#line 33 "e:\\program\\vc98\\include\\pshpack4.h"
#line 925 "e:\\program\\vc98\\include\\wingdi.h"
typedef struct tagNEWTEXTMETRICA
{
    LONG        tmHeight;
    LONG        tmAscent;
    LONG        tmDescent;
    LONG        tmInternalLeading;
    LONG        tmExternalLeading;
    LONG        tmAveCharWidth;
    LONG        tmMaxCharWidth;
    LONG        tmWeight;
    LONG        tmOverhang;
    LONG        tmDigitizedAspectX;
    LONG        tmDigitizedAspectY;
    BYTE        tmFirstChar;
    BYTE        tmLastChar;
    BYTE        tmDefaultChar;
    BYTE        tmBreakChar;
    BYTE        tmItalic;
    BYTE        tmUnderlined;
    BYTE        tmStruckOut;
    BYTE        tmPitchAndFamily;
    BYTE        tmCharSet;
    DWORD   ntmFlags;
    UINT    ntmSizeEM;
    UINT    ntmCellHeight;
    UINT    ntmAvgWidth;
} NEWTEXTMETRICA, *PNEWTEXTMETRICA,  *NPNEWTEXTMETRICA,  *LPNEWTEXTMETRICA;
typedef struct tagNEWTEXTMETRICW
{
    LONG        tmHeight;
    LONG        tmAscent;
    LONG        tmDescent;
    LONG        tmInternalLeading;
    LONG        tmExternalLeading;
    LONG        tmAveCharWidth;
    LONG        tmMaxCharWidth;
    LONG        tmWeight;
    LONG        tmOverhang;
    LONG        tmDigitizedAspectX;
    LONG        tmDigitizedAspectY;
    WCHAR       tmFirstChar;
    WCHAR       tmLastChar;
    WCHAR       tmDefaultChar;
    WCHAR       tmBreakChar;
    BYTE        tmItalic;
    BYTE        tmUnderlined;
    BYTE        tmStruckOut;
    BYTE        tmPitchAndFamily;
    BYTE        tmCharSet;
    DWORD   ntmFlags;
    UINT    ntmSizeEM;
    UINT    ntmCellHeight;
    UINT    ntmAvgWidth;
} NEWTEXTMETRICW, *PNEWTEXTMETRICW,  *NPNEWTEXTMETRICW,  *LPNEWTEXTMETRICW;






typedef NEWTEXTMETRICA NEWTEXTMETRIC;
typedef PNEWTEXTMETRICA PNEWTEXTMETRIC;
typedef NPNEWTEXTMETRICA NPNEWTEXTMETRIC;
typedef LPNEWTEXTMETRICA LPNEWTEXTMETRIC;
#line 990 "e:\\program\\vc98\\include\\wingdi.h"
#line 1 "e:\\program\\vc98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "e:\\program\\vc98\\include\\poppack.h"


#line 36 "e:\\program\\vc98\\include\\poppack.h"
#line 37 "e:\\program\\vc98\\include\\poppack.h"
#line 991 "e:\\program\\vc98\\include\\wingdi.h"


typedef struct tagNEWTEXTMETRICEXA
{
    NEWTEXTMETRICA  ntmTm;
    FONTSIGNATURE   ntmFontSig;
}NEWTEXTMETRICEXA;
typedef struct tagNEWTEXTMETRICEXW
{
    NEWTEXTMETRICW  ntmTm;
    FONTSIGNATURE   ntmFontSig;
}NEWTEXTMETRICEXW;



typedef NEWTEXTMETRICEXA NEWTEXTMETRICEX;
#line 1008 "e:\\program\\vc98\\include\\wingdi.h"
#line 1009 "e:\\program\\vc98\\include\\wingdi.h"

#line 1011 "e:\\program\\vc98\\include\\wingdi.h"



typedef struct tagPELARRAY
  {
    LONG        paXCount;
    LONG        paYCount;
    LONG        paXExt;
    LONG        paYExt;
    BYTE        paRGBs;
  } PELARRAY, *PPELARRAY,  *NPPELARRAY,  *LPPELARRAY;


typedef struct tagLOGBRUSH
  {
    UINT        lbStyle;
    COLORREF    lbColor;
    LONG        lbHatch;
  } LOGBRUSH, *PLOGBRUSH,  *NPLOGBRUSH,  *LPLOGBRUSH;

typedef LOGBRUSH            PATTERN;
typedef PATTERN             *PPATTERN;
typedef PATTERN         *NPPATTERN;
typedef PATTERN          *LPPATTERN;


typedef struct tagLOGPEN
  {
    UINT        lopnStyle;
    POINT       lopnWidth;
    COLORREF    lopnColor;
  } LOGPEN, *PLOGPEN,  *NPLOGPEN,  *LPLOGPEN;

typedef struct tagEXTLOGPEN {
    DWORD       elpPenStyle;
    DWORD       elpWidth;
    UINT        elpBrushStyle;
    COLORREF    elpColor;
    LONG        elpHatch;
    DWORD       elpNumEntries;
    DWORD       elpStyleEntry[1];
} EXTLOGPEN, *PEXTLOGPEN,  *NPEXTLOGPEN,  *LPEXTLOGPEN;

typedef struct tagPALETTEENTRY {
    BYTE        peRed;
    BYTE        peGreen;
    BYTE        peBlue;
    BYTE        peFlags;
} PALETTEENTRY, *PPALETTEENTRY,  *LPPALETTEENTRY;


typedef struct tagLOGPALETTE {
    WORD        palVersion;
    WORD        palNumEntries;
    PALETTEENTRY        palPalEntry[1];
} LOGPALETTE, *PLOGPALETTE,  *NPLOGPALETTE,  *LPLOGPALETTE;





typedef struct tagLOGFONTA
{
    LONG      lfHeight;
    LONG      lfWidth;
    LONG      lfEscapement;
    LONG      lfOrientation;
    LONG      lfWeight;
    BYTE      lfItalic;
    BYTE      lfUnderline;
    BYTE      lfStrikeOut;
    BYTE      lfCharSet;
    BYTE      lfOutPrecision;
    BYTE      lfClipPrecision;
    BYTE      lfQuality;
    BYTE      lfPitchAndFamily;
    CHAR      lfFaceName[32];
} LOGFONTA, *PLOGFONTA,  *NPLOGFONTA,  *LPLOGFONTA;
typedef struct tagLOGFONTW
{
    LONG      lfHeight;
    LONG      lfWidth;
    LONG      lfEscapement;
    LONG      lfOrientation;
    LONG      lfWeight;
    BYTE      lfItalic;
    BYTE      lfUnderline;
    BYTE      lfStrikeOut;
    BYTE      lfCharSet;
    BYTE      lfOutPrecision;
    BYTE      lfClipPrecision;
    BYTE      lfQuality;
    BYTE      lfPitchAndFamily;
    WCHAR     lfFaceName[32];
} LOGFONTW, *PLOGFONTW,  *NPLOGFONTW,  *LPLOGFONTW;






typedef LOGFONTA LOGFONT;
typedef PLOGFONTA PLOGFONT;
typedef NPLOGFONTA NPLOGFONT;
typedef LPLOGFONTA LPLOGFONT;
#line 1117 "e:\\program\\vc98\\include\\wingdi.h"




typedef struct tagENUMLOGFONTA
{
    LOGFONTA elfLogFont;
    BYTE     elfFullName[64];
    BYTE     elfStyle[32];
} ENUMLOGFONTA, * LPENUMLOGFONTA;

typedef struct tagENUMLOGFONTW
{
    LOGFONTW elfLogFont;
    WCHAR    elfFullName[64];
    WCHAR    elfStyle[32];
} ENUMLOGFONTW, * LPENUMLOGFONTW;




typedef ENUMLOGFONTA ENUMLOGFONT;
typedef LPENUMLOGFONTA LPENUMLOGFONT;
#line 1141 "e:\\program\\vc98\\include\\wingdi.h"


typedef struct tagENUMLOGFONTEXA
{
    LOGFONTA    elfLogFont;
    BYTE        elfFullName[64];
    BYTE        elfStyle[32];
    BYTE        elfScript[32];
} ENUMLOGFONTEXA,  *LPENUMLOGFONTEXA;
typedef struct tagENUMLOGFONTEXW
{
    LOGFONTW    elfLogFont;
    WCHAR       elfFullName[64];
    WCHAR       elfStyle[32];
    WCHAR       elfScript[32];
} ENUMLOGFONTEXW,  *LPENUMLOGFONTEXW;




typedef ENUMLOGFONTEXA ENUMLOGFONTEX;
typedef LPENUMLOGFONTEXA LPENUMLOGFONTEX;
#line 1164 "e:\\program\\vc98\\include\\wingdi.h"
#line 1165 "e:\\program\\vc98\\include\\wingdi.h"


























#line 1192 "e:\\program\\vc98\\include\\wingdi.h"






#line 1199 "e:\\program\\vc98\\include\\wingdi.h"








































#line 1240 "e:\\program\\vc98\\include\\wingdi.h"




                                    

                                    

                                    



































typedef struct tagPANOSE
{
    BYTE    bFamilyType;
    BYTE    bSerifStyle;
    BYTE    bWeight;
    BYTE    bProportion;
    BYTE    bContrast;
    BYTE    bStrokeVariation;
    BYTE    bArmStyle;
    BYTE    bLetterform;
    BYTE    bMidline;
    BYTE    bXHeight;
} PANOSE, * LPPANOSE;

















































































































typedef struct tagEXTLOGFONTA {
    LOGFONTA    elfLogFont;
    BYTE        elfFullName[64];
    BYTE        elfStyle[32];
    DWORD       elfVersion;     
    DWORD       elfStyleSize;
    DWORD       elfMatch;
    DWORD       elfReserved;
    BYTE        elfVendorId[4];
    DWORD       elfCulture;     
    PANOSE      elfPanose;
} EXTLOGFONTA, *PEXTLOGFONTA,  *NPEXTLOGFONTA,  *LPEXTLOGFONTA;
typedef struct tagEXTLOGFONTW {
    LOGFONTW    elfLogFont;
    WCHAR       elfFullName[64];
    WCHAR       elfStyle[32];
    DWORD       elfVersion;     
    DWORD       elfStyleSize;
    DWORD       elfMatch;
    DWORD       elfReserved;
    BYTE        elfVendorId[4];
    DWORD       elfCulture;     
    PANOSE      elfPanose;
} EXTLOGFONTW, *PEXTLOGFONTW,  *NPEXTLOGFONTW,  *LPEXTLOGFONTW;






typedef EXTLOGFONTA EXTLOGFONT;
typedef PEXTLOGFONTA PEXTLOGFONT;
typedef NPEXTLOGFONTA NPEXTLOGFONT;
typedef LPEXTLOGFONTA LPEXTLOGFONT;
#line 1445 "e:\\program\\vc98\\include\\wingdi.h"
















































































#line 1526 "e:\\program\\vc98\\include\\wingdi.h"




#line 1531 "e:\\program\\vc98\\include\\wingdi.h"



#line 1535 "e:\\program\\vc98\\include\\wingdi.h"



#line 1539 "e:\\program\\vc98\\include\\wingdi.h"
















































































#line 1620 "e:\\program\\vc98\\include\\wingdi.h"





















                             

                             

                             











































































#line 1722 "e:\\program\\vc98\\include\\wingdi.h"































#line 1754 "e:\\program\\vc98\\include\\wingdi.h"



























typedef struct _devicemodeA {
    BYTE   dmDeviceName[32];
    WORD dmSpecVersion;
    WORD dmDriverVersion;
    WORD dmSize;
    WORD dmDriverExtra;
    DWORD dmFields;
    union {
      struct {
        short dmOrientation;
        short dmPaperSize;
        short dmPaperLength;
        short dmPaperWidth;
      };
      POINTL dmPosition;
    };
    short dmScale;
    short dmCopies;
    short dmDefaultSource;
    short dmPrintQuality;
    short dmColor;
    short dmDuplex;
    short dmYResolution;
    short dmTTOption;
    short dmCollate;
    BYTE   dmFormName[32];
    WORD   dmLogPixels;
    DWORD  dmBitsPerPel;
    DWORD  dmPelsWidth;
    DWORD  dmPelsHeight;
    DWORD  dmDisplayFlags;
    DWORD  dmDisplayFrequency;

    DWORD  dmICMMethod;
    DWORD  dmICMIntent;
    DWORD  dmMediaType;
    DWORD  dmDitherType;
    DWORD  dmReserved1;
    DWORD  dmReserved2;



#line 1824 "e:\\program\\vc98\\include\\wingdi.h"
#line 1825 "e:\\program\\vc98\\include\\wingdi.h"
} DEVMODEA, *PDEVMODEA, *NPDEVMODEA, *LPDEVMODEA;
typedef struct _devicemodeW {
    WCHAR  dmDeviceName[32];
    WORD dmSpecVersion;
    WORD dmDriverVersion;
    WORD dmSize;
    WORD dmDriverExtra;
    DWORD dmFields;
    union {
      struct {
        short dmOrientation;
        short dmPaperSize;
        short dmPaperLength;
        short dmPaperWidth;
      };
      POINTL dmPosition;
    };
    short dmScale;
    short dmCopies;
    short dmDefaultSource;
    short dmPrintQuality;
    short dmColor;
    short dmDuplex;
    short dmYResolution;
    short dmTTOption;
    short dmCollate;
    WCHAR  dmFormName[32];
    WORD   dmLogPixels;
    DWORD  dmBitsPerPel;
    DWORD  dmPelsWidth;
    DWORD  dmPelsHeight;
    DWORD  dmDisplayFlags;
    DWORD  dmDisplayFrequency;

    DWORD  dmICMMethod;
    DWORD  dmICMIntent;
    DWORD  dmMediaType;
    DWORD  dmDitherType;
    DWORD  dmReserved1;
    DWORD  dmReserved2;



#line 1869 "e:\\program\\vc98\\include\\wingdi.h"
#line 1870 "e:\\program\\vc98\\include\\wingdi.h"
} DEVMODEW, *PDEVMODEW, *NPDEVMODEW, *LPDEVMODEW;






typedef DEVMODEA DEVMODE;
typedef PDEVMODEA PDEVMODE;
typedef NPDEVMODEA NPDEVMODE;
typedef LPDEVMODEA LPDEVMODE;
#line 1882 "e:\\program\\vc98\\include\\wingdi.h"




#line 1887 "e:\\program\\vc98\\include\\wingdi.h"



#line 1891 "e:\\program\\vc98\\include\\wingdi.h"









#line 1901 "e:\\program\\vc98\\include\\wingdi.h"






















#line 1924 "e:\\program\\vc98\\include\\wingdi.h"












































































#line 2001 "e:\\program\\vc98\\include\\wingdi.h"




















































#line 2054 "e:\\program\\vc98\\include\\wingdi.h"



#line 2058 "e:\\program\\vc98\\include\\wingdi.h"



#line 2062 "e:\\program\\vc98\\include\\wingdi.h"












































#line 2107 "e:\\program\\vc98\\include\\wingdi.h"

















































#line 2157 "e:\\program\\vc98\\include\\wingdi.h"

typedef struct _DISPLAY_DEVICEA {
    DWORD  cb;
    BYTE   DeviceName[32];
    BYTE   DeviceString[128];
    DWORD  StateFlags;
} DISPLAY_DEVICEA, *PDISPLAY_DEVICEA, *LPDISPLAY_DEVICEA;
typedef struct _DISPLAY_DEVICEW {
    DWORD  cb;
    WCHAR  DeviceName[32];
    WCHAR  DeviceString[128];
    DWORD  StateFlags;
} DISPLAY_DEVICEW, *PDISPLAY_DEVICEW, *LPDISPLAY_DEVICEW;





typedef DISPLAY_DEVICEA DISPLAY_DEVICE;
typedef PDISPLAY_DEVICEA PDISPLAY_DEVICE;
typedef LPDISPLAY_DEVICEA LPDISPLAY_DEVICE;
#line 2179 "e:\\program\\vc98\\include\\wingdi.h"











typedef struct _RGNDATAHEADER {
    DWORD   dwSize;
    DWORD   iType;
    DWORD   nCount;
    DWORD   nRgnSize;
    RECT    rcBound;
} RGNDATAHEADER, *PRGNDATAHEADER;

typedef struct _RGNDATA {
    RGNDATAHEADER   rdh;
    char            Buffer[1];
} RGNDATA, *PRGNDATA,  *NPRGNDATA,  *LPRGNDATA;


typedef struct _ABC {
    int     abcA;
    UINT    abcB;
    int     abcC;
} ABC, *PABC,  *NPABC,  *LPABC;

typedef struct _ABCFLOAT {
    FLOAT   abcfA;
    FLOAT   abcfB;
    FLOAT   abcfC;
} ABCFLOAT, *PABCFLOAT,  *NPABCFLOAT,  *LPABCFLOAT;






typedef struct _OUTLINETEXTMETRICA {
    UINT    otmSize;
    TEXTMETRICA otmTextMetrics;
    BYTE    otmFiller;
    PANOSE  otmPanoseNumber;
    UINT    otmfsSelection;
    UINT    otmfsType;
     int    otmsCharSlopeRise;
     int    otmsCharSlopeRun;
     int    otmItalicAngle;
    UINT    otmEMSquare;
     int    otmAscent;
     int    otmDescent;
    UINT    otmLineGap;
    UINT    otmsCapEmHeight;
    UINT    otmsXHeight;
    RECT    otmrcFontBox;
     int    otmMacAscent;
     int    otmMacDescent;
    UINT    otmMacLineGap;
    UINT    otmusMinimumPPEM;
    POINT   otmptSubscriptSize;
    POINT   otmptSubscriptOffset;
    POINT   otmptSuperscriptSize;
    POINT   otmptSuperscriptOffset;
    UINT    otmsStrikeoutSize;
     int    otmsStrikeoutPosition;
     int    otmsUnderscoreSize;
     int    otmsUnderscorePosition;
    PSTR    otmpFamilyName;
    PSTR    otmpFaceName;
    PSTR    otmpStyleName;
    PSTR    otmpFullName;
} OUTLINETEXTMETRICA, *POUTLINETEXTMETRICA,  *NPOUTLINETEXTMETRICA,  *LPOUTLINETEXTMETRICA;
typedef struct _OUTLINETEXTMETRICW {
    UINT    otmSize;
    TEXTMETRICW otmTextMetrics;
    BYTE    otmFiller;
    PANOSE  otmPanoseNumber;
    UINT    otmfsSelection;
    UINT    otmfsType;
     int    otmsCharSlopeRise;
     int    otmsCharSlopeRun;
     int    otmItalicAngle;
    UINT    otmEMSquare;
     int    otmAscent;
     int    otmDescent;
    UINT    otmLineGap;
    UINT    otmsCapEmHeight;
    UINT    otmsXHeight;
    RECT    otmrcFontBox;
     int    otmMacAscent;
     int    otmMacDescent;
    UINT    otmMacLineGap;
    UINT    otmusMinimumPPEM;
    POINT   otmptSubscriptSize;
    POINT   otmptSubscriptOffset;
    POINT   otmptSuperscriptSize;
    POINT   otmptSuperscriptOffset;
    UINT    otmsStrikeoutSize;
     int    otmsStrikeoutPosition;
     int    otmsUnderscoreSize;
     int    otmsUnderscorePosition;
    PSTR    otmpFamilyName;
    PSTR    otmpFaceName;
    PSTR    otmpStyleName;
    PSTR    otmpFullName;
} OUTLINETEXTMETRICW, *POUTLINETEXTMETRICW,  *NPOUTLINETEXTMETRICW,  *LPOUTLINETEXTMETRICW;






typedef OUTLINETEXTMETRICA OUTLINETEXTMETRIC;
typedef POUTLINETEXTMETRICA POUTLINETEXTMETRIC;
typedef NPOUTLINETEXTMETRICA NPOUTLINETEXTMETRIC;
typedef LPOUTLINETEXTMETRICA LPOUTLINETEXTMETRIC;
#line 2300 "e:\\program\\vc98\\include\\wingdi.h"





#line 2306 "e:\\program\\vc98\\include\\wingdi.h"


typedef struct tagPOLYTEXTA
{
    int       x;
    int       y;
    UINT      n;
    LPCSTR    lpstr;
    UINT      uiFlags;
    RECT      rcl;
    int      *pdx;
} POLYTEXTA, *PPOLYTEXTA,  *NPPOLYTEXTA,  *LPPOLYTEXTA;
typedef struct tagPOLYTEXTW
{
    int       x;
    int       y;
    UINT      n;
    LPCWSTR   lpstr;
    UINT      uiFlags;
    RECT      rcl;
    int      *pdx;
} POLYTEXTW, *PPOLYTEXTW,  *NPPOLYTEXTW,  *LPPOLYTEXTW;






typedef POLYTEXTA POLYTEXT;
typedef PPOLYTEXTA PPOLYTEXT;
typedef NPPOLYTEXTA NPPOLYTEXT;
typedef LPPOLYTEXTA LPPOLYTEXT;
#line 2339 "e:\\program\\vc98\\include\\wingdi.h"

typedef struct _FIXED {

    WORD    fract;
    short   value;



#line 2348 "e:\\program\\vc98\\include\\wingdi.h"
} FIXED;


typedef struct _MAT2 {
     FIXED  eM11;
     FIXED  eM12;
     FIXED  eM21;
     FIXED  eM22;
} MAT2,  *LPMAT2;



typedef struct _GLYPHMETRICS {
    UINT    gmBlackBoxX;
    UINT    gmBlackBoxY;
    POINT   gmptGlyphOrigin;
    short   gmCellIncX;
    short   gmCellIncY;
} GLYPHMETRICS,  *LPGLYPHMETRICS;













#line 2381 "e:\\program\\vc98\\include\\wingdi.h"







typedef struct tagPOINTFX
{
    FIXED x;
    FIXED y;
} POINTFX, * LPPOINTFX;

typedef struct tagTTPOLYCURVE
{
    WORD    wType;
    WORD    cpfx;
    POINTFX apfx[1];
} TTPOLYCURVE, * LPTTPOLYCURVE;

typedef struct tagTTPOLYGONHEADER
{
    DWORD   cb;
    DWORD   dwType;
    POINTFX pfxStart;
} TTPOLYGONHEADER, * LPTTPOLYGONHEADER;













































typedef struct tagGCP_RESULTSA
    {
    DWORD   lStructSize;
    LPSTR     lpOutString;
    UINT  *lpOrder;
    int   *lpDx;
    int   *lpCaretPos;
    LPSTR   lpClass;
    LPWSTR  lpGlyphs;
    UINT    nGlyphs;
    int     nMaxFit;
    } GCP_RESULTSA, * LPGCP_RESULTSA;
typedef struct tagGCP_RESULTSW
    {
    DWORD   lStructSize;
    LPWSTR    lpOutString;
    UINT  *lpOrder;
    int   *lpDx;
    int   *lpCaretPos;
    LPSTR   lpClass;
    LPWSTR  lpGlyphs;
    UINT    nGlyphs;
    int     nMaxFit;
    } GCP_RESULTSW, * LPGCP_RESULTSW;




typedef GCP_RESULTSA GCP_RESULTS;
typedef LPGCP_RESULTSA LPGCP_RESULTS;
#line 2483 "e:\\program\\vc98\\include\\wingdi.h"
#line 2484 "e:\\program\\vc98\\include\\wingdi.h"

typedef struct _RASTERIZER_STATUS {
    short   nSize;
    short   wFlags;
    short   nLanguageID;
} RASTERIZER_STATUS,  *LPRASTERIZER_STATUS;






typedef struct tagPIXELFORMATDESCRIPTOR
{
    WORD  nSize;
    WORD  nVersion;
    DWORD dwFlags;
    BYTE  iPixelType;
    BYTE  cColorBits;
    BYTE  cRedBits;
    BYTE  cRedShift;
    BYTE  cGreenBits;
    BYTE  cGreenShift;
    BYTE  cBlueBits;
    BYTE  cBlueShift;
    BYTE  cAlphaBits;
    BYTE  cAlphaShift;
    BYTE  cAccumBits;
    BYTE  cAccumRedBits;
    BYTE  cAccumGreenBits;
    BYTE  cAccumBlueBits;
    BYTE  cAccumAlphaBits;
    BYTE  cDepthBits;
    BYTE  cStencilBits;
    BYTE  cAuxBuffers;
    BYTE  iLayerType;
    BYTE  bReserved;
    DWORD dwLayerMask;
    DWORD dwVisibleMask;
    DWORD dwDamageMask;
} PIXELFORMATDESCRIPTOR, *PPIXELFORMATDESCRIPTOR,  *LPPIXELFORMATDESCRIPTOR;

































typedef int (__stdcall* OLDFONTENUMPROCA)(const LOGFONTA *, const TEXTMETRICA *, DWORD, LPARAM);
typedef int (__stdcall* OLDFONTENUMPROCW)(const LOGFONTW *, const TEXTMETRICW *, DWORD, LPARAM);




#line 2565 "e:\\program\\vc98\\include\\wingdi.h"








#line 2574 "e:\\program\\vc98\\include\\wingdi.h"

typedef OLDFONTENUMPROCA    FONTENUMPROCA;
typedef OLDFONTENUMPROCW    FONTENUMPROCW;



typedef FONTENUMPROCA FONTENUMPROC;
#line 2582 "e:\\program\\vc98\\include\\wingdi.h"

typedef int (__stdcall* GOBJENUMPROC)(LPVOID, LPARAM);
typedef void (__stdcall* LINEDDAPROC)(int, int, LPARAM);











#line 2597 "e:\\program\\vc98\\include\\wingdi.h"

__declspec(dllimport) int __stdcall AddFontResourceA(LPCSTR);
__declspec(dllimport) int __stdcall AddFontResourceW(LPCWSTR);




#line 2605 "e:\\program\\vc98\\include\\wingdi.h"


__declspec(dllimport) BOOL  __stdcall AnimatePalette(HPALETTE, UINT, UINT, const PALETTEENTRY *);
__declspec(dllimport) BOOL  __stdcall Arc(HDC, int, int, int, int, int, int, int, int);
__declspec(dllimport) BOOL  __stdcall BitBlt(HDC, int, int, int, int, HDC, int, int, DWORD);
__declspec(dllimport) BOOL  __stdcall CancelDC(HDC);
__declspec(dllimport) BOOL  __stdcall Chord(HDC, int, int, int, int, int, int, int, int);
__declspec(dllimport) int   __stdcall ChoosePixelFormat(HDC, const PIXELFORMATDESCRIPTOR *);
__declspec(dllimport) HMETAFILE  __stdcall CloseMetaFile(HDC);
__declspec(dllimport) int     __stdcall CombineRgn(HRGN, HRGN, HRGN, int);
__declspec(dllimport) HMETAFILE __stdcall CopyMetaFileA(HMETAFILE, LPCSTR);
__declspec(dllimport) HMETAFILE __stdcall CopyMetaFileW(HMETAFILE, LPCWSTR);




#line 2622 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) HBITMAP __stdcall CreateBitmap(int, int, UINT, UINT, const void *);
__declspec(dllimport) HBITMAP __stdcall CreateBitmapIndirect(const BITMAP *);
__declspec(dllimport) HBRUSH  __stdcall CreateBrushIndirect(const LOGBRUSH *);
__declspec(dllimport) HBITMAP __stdcall CreateCompatibleBitmap(HDC, int, int);
__declspec(dllimport) HBITMAP __stdcall CreateDiscardableBitmap(HDC, int, int);
__declspec(dllimport) HDC     __stdcall CreateCompatibleDC(HDC);
__declspec(dllimport) HDC     __stdcall CreateDCA(LPCSTR, LPCSTR , LPCSTR , const DEVMODEA *);
__declspec(dllimport) HDC     __stdcall CreateDCW(LPCWSTR, LPCWSTR , LPCWSTR , const DEVMODEW *);




#line 2635 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) HBITMAP __stdcall CreateDIBitmap(HDC, const BITMAPINFOHEADER *, DWORD, const void *, const BITMAPINFO *, UINT);
__declspec(dllimport) HBRUSH  __stdcall CreateDIBPatternBrush(HGLOBAL, UINT);
__declspec(dllimport) HBRUSH  __stdcall CreateDIBPatternBrushPt(const void *, UINT);
__declspec(dllimport) HRGN    __stdcall CreateEllipticRgn(int, int, int, int);
__declspec(dllimport) HRGN    __stdcall CreateEllipticRgnIndirect(const RECT *);
__declspec(dllimport) HFONT   __stdcall CreateFontIndirectA(const LOGFONTA *);
__declspec(dllimport) HFONT   __stdcall CreateFontIndirectW(const LOGFONTW *);




#line 2647 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) HFONT   __stdcall CreateFontA(int, int, int, int, int, DWORD,
                             DWORD, DWORD, DWORD, DWORD, DWORD,
                             DWORD, DWORD, LPCSTR);
__declspec(dllimport) HFONT   __stdcall CreateFontW(int, int, int, int, int, DWORD,
                             DWORD, DWORD, DWORD, DWORD, DWORD,
                             DWORD, DWORD, LPCWSTR);




#line 2658 "e:\\program\\vc98\\include\\wingdi.h"

__declspec(dllimport) HBRUSH  __stdcall CreateHatchBrush(int, COLORREF);
__declspec(dllimport) HDC     __stdcall CreateICA(LPCSTR, LPCSTR , LPCSTR , const DEVMODEA *);
__declspec(dllimport) HDC     __stdcall CreateICW(LPCWSTR, LPCWSTR , LPCWSTR , const DEVMODEW *);




#line 2667 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) HDC     __stdcall CreateMetaFileA(LPCSTR);
__declspec(dllimport) HDC     __stdcall CreateMetaFileW(LPCWSTR);




#line 2674 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) HPALETTE __stdcall CreatePalette(const LOGPALETTE *);
__declspec(dllimport) HPEN    __stdcall CreatePen(int, int, COLORREF);
__declspec(dllimport) HPEN    __stdcall CreatePenIndirect(const LOGPEN *);
__declspec(dllimport) HRGN    __stdcall CreatePolyPolygonRgn(const POINT *, const INT *, int, int);
__declspec(dllimport) HBRUSH  __stdcall CreatePatternBrush(HBITMAP);
__declspec(dllimport) HRGN    __stdcall CreateRectRgn(int, int, int, int);
__declspec(dllimport) HRGN    __stdcall CreateRectRgnIndirect(const RECT *);
__declspec(dllimport) HRGN    __stdcall CreateRoundRectRgn(int, int, int, int, int, int);
__declspec(dllimport) BOOL    __stdcall CreateScalableFontResourceA(DWORD, LPCSTR, LPCSTR, LPCSTR);
__declspec(dllimport) BOOL    __stdcall CreateScalableFontResourceW(DWORD, LPCWSTR, LPCWSTR, LPCWSTR);




#line 2689 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) HBRUSH  __stdcall CreateSolidBrush(COLORREF);

__declspec(dllimport) BOOL __stdcall DeleteDC(HDC);
__declspec(dllimport) BOOL __stdcall DeleteMetaFile(HMETAFILE);
__declspec(dllimport) BOOL __stdcall DeleteObject(HGDIOBJ);
__declspec(dllimport) int  __stdcall DescribePixelFormat(HDC, int, UINT, LPPIXELFORMATDESCRIPTOR);





typedef UINT   (__stdcall* LPFNDEVMODE)(HWND, HMODULE, LPDEVMODE, LPSTR, LPSTR, LPDEVMODE, LPSTR, UINT);

typedef DWORD  (__stdcall* LPFNDEVCAPS)(LPSTR, LPSTR, UINT, LPSTR, LPDEVMODE);






































#line 2742 "e:\\program\\vc98\\include\\wingdi.h"














#line 2757 "e:\\program\\vc98\\include\\wingdi.h"

















#line 2775 "e:\\program\\vc98\\include\\wingdi.h"

__declspec(dllimport) int  __stdcall DeviceCapabilitiesA(LPCSTR, LPCSTR, WORD,
                                LPSTR, const DEVMODEA *);
__declspec(dllimport) int  __stdcall DeviceCapabilitiesW(LPCWSTR, LPCWSTR, WORD,
                                LPWSTR, const DEVMODEW *);




#line 2785 "e:\\program\\vc98\\include\\wingdi.h"

__declspec(dllimport) int  __stdcall DrawEscape(HDC, int, int, LPCSTR);
__declspec(dllimport) BOOL __stdcall Ellipse(HDC, int, int, int, int);


__declspec(dllimport) int  __stdcall EnumFontFamiliesExA(HDC, LPLOGFONTA,FONTENUMPROCA, LPARAM,DWORD);
__declspec(dllimport) int  __stdcall EnumFontFamiliesExW(HDC, LPLOGFONTW,FONTENUMPROCW, LPARAM,DWORD);




#line 2797 "e:\\program\\vc98\\include\\wingdi.h"
#line 2798 "e:\\program\\vc98\\include\\wingdi.h"

__declspec(dllimport) int  __stdcall EnumFontFamiliesA(HDC, LPCSTR, FONTENUMPROCA, LPARAM);
__declspec(dllimport) int  __stdcall EnumFontFamiliesW(HDC, LPCWSTR, FONTENUMPROCW, LPARAM);




#line 2806 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) int  __stdcall EnumFontsA(HDC, LPCSTR,  FONTENUMPROCA, LPARAM);
__declspec(dllimport) int  __stdcall EnumFontsW(HDC, LPCWSTR,  FONTENUMPROCW, LPARAM);




#line 2813 "e:\\program\\vc98\\include\\wingdi.h"


__declspec(dllimport) int  __stdcall EnumObjects(HDC, int, GOBJENUMPROC, LPARAM);


#line 2819 "e:\\program\\vc98\\include\\wingdi.h"


__declspec(dllimport) BOOL __stdcall EqualRgn(HRGN, HRGN);
__declspec(dllimport) int  __stdcall Escape(HDC, int, int, LPCSTR, LPVOID);
__declspec(dllimport) int  __stdcall ExtEscape(HDC, int, int, LPCSTR, int, LPSTR);
__declspec(dllimport) int  __stdcall ExcludeClipRect(HDC, int, int, int, int);
__declspec(dllimport) HRGN __stdcall ExtCreateRegion(const XFORM *, DWORD, const RGNDATA *);
__declspec(dllimport) BOOL  __stdcall ExtFloodFill(HDC, int, int, COLORREF, UINT);
__declspec(dllimport) BOOL   __stdcall FillRgn(HDC, HRGN, HBRUSH);
__declspec(dllimport) BOOL   __stdcall FloodFill(HDC, int, int, COLORREF);
__declspec(dllimport) BOOL   __stdcall FrameRgn(HDC, HRGN, HBRUSH, int, int);
__declspec(dllimport) int   __stdcall GetROP2(HDC);
__declspec(dllimport) BOOL  __stdcall GetAspectRatioFilterEx(HDC, LPSIZE);
__declspec(dllimport) COLORREF __stdcall GetBkColor(HDC);




#line 2838 "e:\\program\\vc98\\include\\wingdi.h"

__declspec(dllimport) int   __stdcall GetBkMode(HDC);
__declspec(dllimport) LONG  __stdcall GetBitmapBits(HBITMAP, LONG, LPVOID);
__declspec(dllimport) BOOL  __stdcall GetBitmapDimensionEx(HBITMAP, LPSIZE);
__declspec(dllimport) UINT  __stdcall GetBoundsRect(HDC, LPRECT, UINT);

__declspec(dllimport) BOOL  __stdcall GetBrushOrgEx(HDC, LPPOINT);

__declspec(dllimport) BOOL  __stdcall GetCharWidthA(HDC, UINT, UINT, LPINT);
__declspec(dllimport) BOOL  __stdcall GetCharWidthW(HDC, UINT, UINT, LPINT);




#line 2853 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) BOOL  __stdcall GetCharWidth32A(HDC, UINT, UINT, LPINT);
__declspec(dllimport) BOOL  __stdcall GetCharWidth32W(HDC, UINT, UINT, LPINT);




#line 2860 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) BOOL  __stdcall GetCharWidthFloatA(HDC, UINT, UINT, PFLOAT);
__declspec(dllimport) BOOL  __stdcall GetCharWidthFloatW(HDC, UINT, UINT, PFLOAT);




#line 2867 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) BOOL  __stdcall GetCharABCWidthsA(HDC, UINT, UINT, LPABC);
__declspec(dllimport) BOOL  __stdcall GetCharABCWidthsW(HDC, UINT, UINT, LPABC);




#line 2874 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) BOOL  __stdcall GetCharABCWidthsFloatA(HDC, UINT, UINT, LPABCFLOAT);
__declspec(dllimport) BOOL  __stdcall GetCharABCWidthsFloatW(HDC, UINT, UINT, LPABCFLOAT);




#line 2881 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) int   __stdcall GetClipBox(HDC, LPRECT);
__declspec(dllimport) int   __stdcall GetClipRgn(HDC, HRGN);
__declspec(dllimport) int   __stdcall GetMetaRgn(HDC, HRGN);
__declspec(dllimport) HGDIOBJ __stdcall GetCurrentObject(HDC, UINT);
__declspec(dllimport) BOOL  __stdcall GetCurrentPositionEx(HDC, LPPOINT);
__declspec(dllimport) int   __stdcall GetDeviceCaps(HDC, int);
__declspec(dllimport) int   __stdcall GetDIBits(HDC, HBITMAP, UINT, UINT, LPVOID, LPBITMAPINFO, UINT);
__declspec(dllimport) DWORD __stdcall GetFontData(HDC, DWORD, DWORD, LPVOID, DWORD);
__declspec(dllimport) DWORD __stdcall GetGlyphOutlineA(HDC, UINT, UINT, LPGLYPHMETRICS, DWORD, LPVOID, const MAT2 *);
__declspec(dllimport) DWORD __stdcall GetGlyphOutlineW(HDC, UINT, UINT, LPGLYPHMETRICS, DWORD, LPVOID, const MAT2 *);




#line 2896 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) int   __stdcall GetGraphicsMode(HDC);
__declspec(dllimport) int   __stdcall GetMapMode(HDC);
__declspec(dllimport) UINT  __stdcall GetMetaFileBitsEx(HMETAFILE, UINT, LPVOID);
__declspec(dllimport) HMETAFILE   __stdcall GetMetaFileA(LPCSTR);
__declspec(dllimport) HMETAFILE   __stdcall GetMetaFileW(LPCWSTR);




#line 2906 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) COLORREF __stdcall GetNearestColor(HDC, COLORREF);
__declspec(dllimport) UINT  __stdcall GetNearestPaletteIndex(HPALETTE, COLORREF);
__declspec(dllimport) DWORD __stdcall GetObjectType(HGDIOBJ h);



__declspec(dllimport) UINT __stdcall GetOutlineTextMetricsA(HDC, UINT, LPOUTLINETEXTMETRICA);
__declspec(dllimport) UINT __stdcall GetOutlineTextMetricsW(HDC, UINT, LPOUTLINETEXTMETRICW);




#line 2919 "e:\\program\\vc98\\include\\wingdi.h"

#line 2921 "e:\\program\\vc98\\include\\wingdi.h"

__declspec(dllimport) UINT  __stdcall GetPaletteEntries(HPALETTE, UINT, UINT, LPPALETTEENTRY);
__declspec(dllimport) COLORREF __stdcall GetPixel(HDC, int, int);
__declspec(dllimport) int   __stdcall GetPixelFormat(HDC);
__declspec(dllimport) int   __stdcall GetPolyFillMode(HDC);
__declspec(dllimport) BOOL  __stdcall GetRasterizerCaps(LPRASTERIZER_STATUS, UINT);
__declspec(dllimport) DWORD __stdcall GetRegionData(HRGN, DWORD, LPRGNDATA);
__declspec(dllimport) int   __stdcall GetRgnBox(HRGN, LPRECT);
__declspec(dllimport) HGDIOBJ __stdcall GetStockObject(int);
__declspec(dllimport) int   __stdcall GetStretchBltMode(HDC);
__declspec(dllimport) UINT  __stdcall GetSystemPaletteEntries(HDC, UINT, UINT, LPPALETTEENTRY);
__declspec(dllimport) UINT  __stdcall GetSystemPaletteUse(HDC);
__declspec(dllimport) int   __stdcall GetTextCharacterExtra(HDC);
__declspec(dllimport) UINT  __stdcall GetTextAlign(HDC);
__declspec(dllimport) COLORREF __stdcall GetTextColor(HDC);

__declspec(dllimport) BOOL  __stdcall GetTextExtentPointA(
                    HDC,
                    LPCSTR,
                    int,
                    LPSIZE
                    );
__declspec(dllimport) BOOL  __stdcall GetTextExtentPointW(
                    HDC,
                    LPCWSTR,
                    int,
                    LPSIZE
                    );




#line 2954 "e:\\program\\vc98\\include\\wingdi.h"

__declspec(dllimport) BOOL  __stdcall GetTextExtentPoint32A(
                    HDC,
                    LPCSTR,
                    int,
                    LPSIZE
                    );
__declspec(dllimport) BOOL  __stdcall GetTextExtentPoint32W(
                    HDC,
                    LPCWSTR,
                    int,
                    LPSIZE
                    );




#line 2972 "e:\\program\\vc98\\include\\wingdi.h"

__declspec(dllimport) BOOL  __stdcall GetTextExtentExPointA(
                    HDC,
                    LPCSTR,
                    int,
                    int,
                    LPINT,
                    LPINT,
                    LPSIZE
                    );
__declspec(dllimport) BOOL  __stdcall GetTextExtentExPointW(
                    HDC,
                    LPCWSTR,
                    int,
                    int,
                    LPINT,
                    LPINT,
                    LPSIZE
                    );




#line 2996 "e:\\program\\vc98\\include\\wingdi.h"

__declspec(dllimport) int __stdcall GetTextCharset(HDC hdc);
__declspec(dllimport) int __stdcall GetTextCharsetInfo(HDC hdc, LPFONTSIGNATURE lpSig, DWORD dwFlags);
__declspec(dllimport) BOOL __stdcall TranslateCharsetInfo( DWORD  *lpSrc, LPCHARSETINFO lpCs, DWORD dwFlags);
__declspec(dllimport) DWORD __stdcall GetFontLanguageInfo( HDC );
__declspec(dllimport) DWORD __stdcall GetCharacterPlacementA(HDC, LPCSTR, int, int, LPGCP_RESULTSA, DWORD);
__declspec(dllimport) DWORD __stdcall GetCharacterPlacementW(HDC, LPCWSTR, int, int, LPGCP_RESULTSW, DWORD);




#line 3008 "e:\\program\\vc98\\include\\wingdi.h"
#line 3009 "e:\\program\\vc98\\include\\wingdi.h"


















































































































































































#line 3188 "e:\\program\\vc98\\include\\wingdi.h"


__declspec(dllimport) BOOL  __stdcall GetViewportExtEx(HDC, LPSIZE);
__declspec(dllimport) BOOL  __stdcall GetViewportOrgEx(HDC, LPPOINT);
__declspec(dllimport) BOOL  __stdcall GetWindowExtEx(HDC, LPSIZE);
__declspec(dllimport) BOOL  __stdcall GetWindowOrgEx(HDC, LPPOINT);

__declspec(dllimport) int  __stdcall IntersectClipRect(HDC, int, int, int, int);
__declspec(dllimport) BOOL __stdcall InvertRgn(HDC, HRGN);
__declspec(dllimport) BOOL __stdcall LineDDA(int, int, int, int, LINEDDAPROC, LPARAM);
__declspec(dllimport) BOOL __stdcall LineTo(HDC, int, int);
__declspec(dllimport) BOOL __stdcall MaskBlt(HDC, int, int, int, int,
              HDC, int, int, HBITMAP, int, int, DWORD);
__declspec(dllimport) BOOL __stdcall PlgBlt(HDC, const POINT *, HDC, int, int, int,
                     int, HBITMAP, int, int);

__declspec(dllimport) int  __stdcall OffsetClipRgn(HDC, int, int);
__declspec(dllimport) int  __stdcall OffsetRgn(HRGN, int, int);
__declspec(dllimport) BOOL __stdcall PatBlt(HDC, int, int, int, int, DWORD);
__declspec(dllimport) BOOL __stdcall Pie(HDC, int, int, int, int, int, int, int, int);
__declspec(dllimport) BOOL __stdcall PlayMetaFile(HDC, HMETAFILE);
__declspec(dllimport) BOOL __stdcall PaintRgn(HDC, HRGN);
__declspec(dllimport) BOOL __stdcall PolyPolygon(HDC, const POINT *, const INT *, int);
__declspec(dllimport) BOOL __stdcall PtInRegion(HRGN, int, int);
__declspec(dllimport) BOOL __stdcall PtVisible(HDC, int, int);
__declspec(dllimport) BOOL __stdcall RectInRegion(HRGN, const RECT *);
__declspec(dllimport) BOOL __stdcall RectVisible(HDC, const RECT *);
__declspec(dllimport) BOOL __stdcall Rectangle(HDC, int, int, int, int);
__declspec(dllimport) BOOL __stdcall RestoreDC(HDC, int);
__declspec(dllimport) HDC  __stdcall ResetDCA(HDC, const DEVMODEA *);
__declspec(dllimport) HDC  __stdcall ResetDCW(HDC, const DEVMODEW *);




#line 3224 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) UINT __stdcall RealizePalette(HDC);
__declspec(dllimport) BOOL __stdcall RemoveFontResourceA(LPCSTR);
__declspec(dllimport) BOOL __stdcall RemoveFontResourceW(LPCWSTR);




#line 3232 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) BOOL  __stdcall RoundRect(HDC, int, int, int, int, int, int);
__declspec(dllimport) BOOL __stdcall ResizePalette(HPALETTE, UINT);

__declspec(dllimport) int  __stdcall SaveDC(HDC);
__declspec(dllimport) int  __stdcall SelectClipRgn(HDC, HRGN);
__declspec(dllimport) int  __stdcall ExtSelectClipRgn(HDC, HRGN, int);
__declspec(dllimport) int  __stdcall SetMetaRgn(HDC);
__declspec(dllimport) HGDIOBJ __stdcall SelectObject(HDC, HGDIOBJ);
__declspec(dllimport) HPALETTE __stdcall SelectPalette(HDC, HPALETTE, BOOL);
__declspec(dllimport) COLORREF __stdcall SetBkColor(HDC, COLORREF);




#line 3247 "e:\\program\\vc98\\include\\wingdi.h"

__declspec(dllimport) int   __stdcall SetBkMode(HDC, int);
__declspec(dllimport) LONG  __stdcall SetBitmapBits(HBITMAP, DWORD, const void *);

__declspec(dllimport) UINT  __stdcall SetBoundsRect(HDC, const RECT *, UINT);
__declspec(dllimport) int   __stdcall SetDIBits(HDC, HBITMAP, UINT, UINT, const void *, const BITMAPINFO *, UINT);
__declspec(dllimport) int   __stdcall SetDIBitsToDevice(HDC, int, int, DWORD, DWORD, int,
        int, UINT, UINT, const void *, const BITMAPINFO *, UINT);
__declspec(dllimport) DWORD __stdcall SetMapperFlags(HDC, DWORD);
__declspec(dllimport) int   __stdcall SetGraphicsMode(HDC hdc, int iMode);
__declspec(dllimport) int   __stdcall SetMapMode(HDC, int);
__declspec(dllimport) HMETAFILE   __stdcall SetMetaFileBitsEx(UINT, const BYTE *);
__declspec(dllimport) UINT  __stdcall SetPaletteEntries(HPALETTE, UINT, UINT, const PALETTEENTRY *);
__declspec(dllimport) COLORREF __stdcall SetPixel(HDC, int, int, COLORREF);
__declspec(dllimport) BOOL   __stdcall SetPixelV(HDC, int, int, COLORREF);
__declspec(dllimport) BOOL  __stdcall SetPixelFormat(HDC, int, const PIXELFORMATDESCRIPTOR *);
__declspec(dllimport) int   __stdcall SetPolyFillMode(HDC, int);
__declspec(dllimport) BOOL   __stdcall StretchBlt(HDC, int, int, int, int, HDC, int, int, int, int, DWORD);
__declspec(dllimport) BOOL   __stdcall SetRectRgn(HRGN, int, int, int, int);
__declspec(dllimport) int   __stdcall StretchDIBits(HDC, int, int, int, int, int, int, int, int, const
        void *, const BITMAPINFO *, UINT, DWORD);
__declspec(dllimport) int   __stdcall SetROP2(HDC, int);
__declspec(dllimport) int   __stdcall SetStretchBltMode(HDC, int);
__declspec(dllimport) UINT  __stdcall SetSystemPaletteUse(HDC, UINT);
__declspec(dllimport) int   __stdcall SetTextCharacterExtra(HDC, int);
__declspec(dllimport) COLORREF __stdcall SetTextColor(HDC, COLORREF);
__declspec(dllimport) UINT  __stdcall SetTextAlign(HDC, UINT);
__declspec(dllimport) BOOL  __stdcall SetTextJustification(HDC, int, int);
__declspec(dllimport) BOOL  __stdcall UpdateColors(HDC);








typedef USHORT COLOR16;

typedef struct _TRIVERTEX
{
    LONG    x;
    LONG    y;
    COLOR16 Red;
    COLOR16 Green;
    COLOR16 Blue;
    COLOR16 Alpha;
}TRIVERTEX,*PTRIVERTEX,*LPTRIVERTEX;

typedef struct _GRADIENT_TRIANGLE
{
    ULONG Vertex1;
    ULONG Vertex2;
    ULONG Vertex3;
} GRADIENT_TRIANGLE,*PGRADIENT_TRIANGLE,*LPGRADIENT_TRIANGLE;

typedef struct _GRADIENT_RECT
{
    ULONG UpperLeft;
    ULONG LowerRight;
}GRADIENT_RECT,*PGRADIENT_RECT,*LPGRADIENT_RECT;

typedef struct _BLENDFUNCTION
{
    BYTE   BlendOp;
    BYTE   BlendFlags;
    BYTE   SourceConstantAlpha;
    BYTE   AlphaFormat;
}BLENDFUNCTION,*PBLENDFUNCTION;

















__declspec(dllimport) BOOL  __stdcall AlphaBlend(HDC,int,int,int,int,HDC,int,int,int,int,BLENDFUNCTION);

__declspec(dllimport) BOOL  __stdcall AlphaDIBBlend(HDC,int,int,int,int,const void *,
        const BITMAPINFO *,UINT,int,int,int,int,BLENDFUNCTION);

__declspec(dllimport) BOOL  __stdcall TransparentBlt(HDC,int,int,int,int,HDC,int,int,int,int,UINT);

__declspec(dllimport) BOOL  __stdcall TransparentDIBits(HDC,int,int,int,int,const void *,
        const BITMAPINFO *,UINT,int,int,int,int,UINT);










__declspec(dllimport) BOOL  __stdcall GradientFill(HDC,PTRIVERTEX,ULONG,PVOID,ULONG,ULONG);

#line 3355 "e:\\program\\vc98\\include\\wingdi.h"




__declspec(dllimport) BOOL  __stdcall PlayMetaFileRecord(HDC, LPHANDLETABLE, LPMETARECORD, UINT);
typedef int (__stdcall* MFENUMPROC)(HDC, HANDLETABLE *, METARECORD *, int, LPARAM);
__declspec(dllimport) BOOL  __stdcall EnumMetaFile(HDC, HMETAFILE, MFENUMPROC, LPARAM);

typedef int (__stdcall* ENHMFENUMPROC)(HDC, HANDLETABLE *, const ENHMETARECORD *, int, LPARAM);



__declspec(dllimport) HENHMETAFILE __stdcall CloseEnhMetaFile(HDC);
__declspec(dllimport) HENHMETAFILE __stdcall CopyEnhMetaFileA(HENHMETAFILE, LPCSTR);
__declspec(dllimport) HENHMETAFILE __stdcall CopyEnhMetaFileW(HENHMETAFILE, LPCWSTR);




#line 3375 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) HDC   __stdcall CreateEnhMetaFileA(HDC, LPCSTR, const RECT *, LPCSTR);
__declspec(dllimport) HDC   __stdcall CreateEnhMetaFileW(HDC, LPCWSTR, const RECT *, LPCWSTR);




#line 3382 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) BOOL  __stdcall DeleteEnhMetaFile(HENHMETAFILE);
__declspec(dllimport) BOOL  __stdcall EnumEnhMetaFile(HDC, HENHMETAFILE, ENHMFENUMPROC,
        LPVOID, const RECT *);
__declspec(dllimport) HENHMETAFILE  __stdcall GetEnhMetaFileA(LPCSTR);
__declspec(dllimport) HENHMETAFILE  __stdcall GetEnhMetaFileW(LPCWSTR);




#line 3392 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) UINT  __stdcall GetEnhMetaFileBits(HENHMETAFILE, UINT, LPBYTE);
__declspec(dllimport) UINT  __stdcall GetEnhMetaFileDescriptionA(HENHMETAFILE, UINT, LPSTR );
__declspec(dllimport) UINT  __stdcall GetEnhMetaFileDescriptionW(HENHMETAFILE, UINT, LPWSTR );




#line 3400 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) UINT  __stdcall GetEnhMetaFileHeader(HENHMETAFILE, UINT, LPENHMETAHEADER );
__declspec(dllimport) UINT  __stdcall GetEnhMetaFilePaletteEntries(HENHMETAFILE, UINT, LPPALETTEENTRY );
__declspec(dllimport) UINT  __stdcall GetEnhMetaFilePixelFormat(HENHMETAFILE, UINT,
                                                 PIXELFORMATDESCRIPTOR *);
__declspec(dllimport) UINT  __stdcall GetWinMetaFileBits(HENHMETAFILE, UINT, LPBYTE, INT, HDC);
__declspec(dllimport) BOOL  __stdcall PlayEnhMetaFile(HDC, HENHMETAFILE, const RECT *);
__declspec(dllimport) BOOL  __stdcall PlayEnhMetaFileRecord(HDC, LPHANDLETABLE, const ENHMETARECORD *, UINT);
__declspec(dllimport) HENHMETAFILE  __stdcall SetEnhMetaFileBits(UINT, const BYTE *);
__declspec(dllimport) HENHMETAFILE  __stdcall SetWinMetaFileBits(UINT, const BYTE *, HDC, const METAFILEPICT *);
__declspec(dllimport) BOOL  __stdcall GdiComment(HDC, UINT, const BYTE *);

#line 3412 "e:\\program\\vc98\\include\\wingdi.h"



__declspec(dllimport) BOOL __stdcall GetTextMetricsA(HDC, LPTEXTMETRICA);
__declspec(dllimport) BOOL __stdcall GetTextMetricsW(HDC, LPTEXTMETRICW);




#line 3422 "e:\\program\\vc98\\include\\wingdi.h"

#line 3424 "e:\\program\\vc98\\include\\wingdi.h"



typedef struct tagDIBSECTION {
    BITMAP              dsBm;
    BITMAPINFOHEADER    dsBmih;
    DWORD               dsBitfields[3];
    HANDLE              dshSection;
    DWORD               dsOffset;
} DIBSECTION,  *LPDIBSECTION, *PDIBSECTION;

__declspec(dllimport) BOOL __stdcall AngleArc(HDC, int, int, DWORD, FLOAT, FLOAT);
__declspec(dllimport) BOOL __stdcall PolyPolyline(HDC, const POINT *, const DWORD *, DWORD);
__declspec(dllimport) BOOL __stdcall GetWorldTransform(HDC, LPXFORM);
__declspec(dllimport) BOOL __stdcall SetWorldTransform(HDC, const XFORM *);
__declspec(dllimport) BOOL __stdcall ModifyWorldTransform(HDC, const XFORM *, DWORD);
__declspec(dllimport) BOOL __stdcall CombineTransform(LPXFORM, const XFORM *, const XFORM *);
__declspec(dllimport) HBITMAP __stdcall CreateDIBSection(HDC, const BITMAPINFO *, UINT, void **, HANDLE, DWORD);
__declspec(dllimport) UINT __stdcall GetDIBColorTable(HDC, UINT, UINT, RGBQUAD *);
__declspec(dllimport) UINT __stdcall SetDIBColorTable(HDC, UINT, UINT, const RGBQUAD *);




































typedef struct  tagCOLORADJUSTMENT {
    WORD   caSize;
    WORD   caFlags;
    WORD   caIlluminantIndex;
    WORD   caRedGamma;
    WORD   caGreenGamma;
    WORD   caBlueGamma;
    WORD   caReferenceBlack;
    WORD   caReferenceWhite;
    SHORT  caContrast;
    SHORT  caBrightness;
    SHORT  caColorfulness;
    SHORT  caRedGreenTint;
} COLORADJUSTMENT, *PCOLORADJUSTMENT,  *LPCOLORADJUSTMENT;

__declspec(dllimport) BOOL __stdcall SetColorAdjustment(HDC, const COLORADJUSTMENT *);
__declspec(dllimport) BOOL __stdcall GetColorAdjustment(HDC, LPCOLORADJUSTMENT);
__declspec(dllimport) HPALETTE __stdcall CreateHalftonePalette(HDC);


typedef BOOL (__stdcall* ABORTPROC)(HDC, int);


#line 3504 "e:\\program\\vc98\\include\\wingdi.h"

typedef struct _DOCINFOA {
    int     cbSize;
    LPCSTR   lpszDocName;
    LPCSTR   lpszOutput;

    LPCSTR   lpszDatatype;
    DWORD    fwType;
#line 3513 "e:\\program\\vc98\\include\\wingdi.h"
} DOCINFOA, *LPDOCINFOA;
typedef struct _DOCINFOW {
    int     cbSize;
    LPCWSTR  lpszDocName;
    LPCWSTR  lpszOutput;

    LPCWSTR  lpszDatatype;
    DWORD    fwType;
#line 3522 "e:\\program\\vc98\\include\\wingdi.h"
} DOCINFOW, *LPDOCINFOW;




typedef DOCINFOA DOCINFO;
typedef LPDOCINFOA LPDOCINFO;
#line 3530 "e:\\program\\vc98\\include\\wingdi.h"




#line 3535 "e:\\program\\vc98\\include\\wingdi.h"

__declspec(dllimport) int __stdcall StartDocA(HDC, const DOCINFOA *);
__declspec(dllimport) int __stdcall StartDocW(HDC, const DOCINFOW *);




#line 3543 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) int __stdcall EndDoc(HDC);
__declspec(dllimport) int __stdcall StartPage(HDC);
__declspec(dllimport) int __stdcall EndPage(HDC);
__declspec(dllimport) int __stdcall AbortDoc(HDC);
__declspec(dllimport) int __stdcall SetAbortProc(HDC, ABORTPROC);

__declspec(dllimport) BOOL __stdcall AbortPath(HDC);
__declspec(dllimport) BOOL __stdcall ArcTo(HDC, int, int, int, int, int, int,int, int);
__declspec(dllimport) BOOL __stdcall BeginPath(HDC);
__declspec(dllimport) BOOL __stdcall CloseFigure(HDC);
__declspec(dllimport) BOOL __stdcall EndPath(HDC);
__declspec(dllimport) BOOL __stdcall FillPath(HDC);
__declspec(dllimport) BOOL __stdcall FlattenPath(HDC);
__declspec(dllimport) int  __stdcall GetPath(HDC, LPPOINT, LPBYTE, int);
__declspec(dllimport) HRGN __stdcall PathToRegion(HDC);
__declspec(dllimport) BOOL __stdcall PolyDraw(HDC, const POINT *, const BYTE *, int);
__declspec(dllimport) BOOL __stdcall SelectClipPath(HDC, int);
__declspec(dllimport) int  __stdcall SetArcDirection(HDC, int);
__declspec(dllimport) BOOL __stdcall SetMiterLimit(HDC, FLOAT, PFLOAT);
__declspec(dllimport) BOOL __stdcall StrokeAndFillPath(HDC);
__declspec(dllimport) BOOL __stdcall StrokePath(HDC);
__declspec(dllimport) BOOL __stdcall WidenPath(HDC);
__declspec(dllimport) HPEN __stdcall ExtCreatePen(DWORD, DWORD, const LOGBRUSH *, DWORD, const DWORD *);
__declspec(dllimport) BOOL __stdcall GetMiterLimit(HDC, PFLOAT);
__declspec(dllimport) int  __stdcall GetArcDirection(HDC);

__declspec(dllimport) int   __stdcall GetObjectA(HGDIOBJ, int, LPVOID);
__declspec(dllimport) int   __stdcall GetObjectW(HGDIOBJ, int, LPVOID);




#line 3576 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) BOOL  __stdcall MoveToEx(HDC, int, int, LPPOINT);
__declspec(dllimport) BOOL  __stdcall TextOutA(HDC, int, int, LPCSTR, int);
__declspec(dllimport) BOOL  __stdcall TextOutW(HDC, int, int, LPCWSTR, int);




#line 3584 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) BOOL  __stdcall ExtTextOutA(HDC, int, int, UINT, const RECT *,LPCSTR, UINT, const INT *);
__declspec(dllimport) BOOL  __stdcall ExtTextOutW(HDC, int, int, UINT, const RECT *,LPCWSTR, UINT, const INT *);




#line 3591 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) BOOL  __stdcall PolyTextOutA(HDC, const POLYTEXTA *, int);
__declspec(dllimport) BOOL  __stdcall PolyTextOutW(HDC, const POLYTEXTW *, int);




#line 3598 "e:\\program\\vc98\\include\\wingdi.h"

__declspec(dllimport) HRGN  __stdcall CreatePolygonRgn(const POINT *, int, int);
__declspec(dllimport) BOOL  __stdcall DPtoLP(HDC, LPPOINT, int);
__declspec(dllimport) BOOL  __stdcall LPtoDP(HDC, LPPOINT, int);
__declspec(dllimport) BOOL  __stdcall Polygon(HDC, const POINT *, int);
__declspec(dllimport) BOOL  __stdcall Polyline(HDC, const POINT *, int);

__declspec(dllimport) BOOL  __stdcall PolyBezier(HDC, const POINT *, DWORD);
__declspec(dllimport) BOOL  __stdcall PolyBezierTo(HDC, const POINT *, DWORD);
__declspec(dllimport) BOOL  __stdcall PolylineTo(HDC, const POINT *, DWORD);

__declspec(dllimport) BOOL  __stdcall SetViewportExtEx(HDC, int, int, LPSIZE);
__declspec(dllimport) BOOL  __stdcall SetViewportOrgEx(HDC, int, int, LPPOINT);
__declspec(dllimport) BOOL  __stdcall SetWindowExtEx(HDC, int, int, LPSIZE);
__declspec(dllimport) BOOL  __stdcall SetWindowOrgEx(HDC, int, int, LPPOINT);

__declspec(dllimport) BOOL  __stdcall OffsetViewportOrgEx(HDC, int, int, LPPOINT);
__declspec(dllimport) BOOL  __stdcall OffsetWindowOrgEx(HDC, int, int, LPPOINT);
__declspec(dllimport) BOOL  __stdcall ScaleViewportExtEx(HDC, int, int, int, int, LPSIZE);
__declspec(dllimport) BOOL  __stdcall ScaleWindowExtEx(HDC, int, int, int, int, LPSIZE);
__declspec(dllimport) BOOL  __stdcall SetBitmapDimensionEx(HBITMAP, int, int, LPSIZE);
__declspec(dllimport) BOOL  __stdcall SetBrushOrgEx(HDC, int, int, LPPOINT);

__declspec(dllimport) int   __stdcall GetTextFaceA(HDC, int, LPSTR);
__declspec(dllimport) int   __stdcall GetTextFaceW(HDC, int, LPWSTR);




#line 3628 "e:\\program\\vc98\\include\\wingdi.h"



typedef struct tagKERNINGPAIR {
   WORD wFirst;
   WORD wSecond;
   int  iKernAmount;
} KERNINGPAIR, *LPKERNINGPAIR;

__declspec(dllimport) DWORD __stdcall GetKerningPairsA(HDC, DWORD, LPKERNINGPAIR);
__declspec(dllimport) DWORD __stdcall GetKerningPairsW(HDC, DWORD, LPKERNINGPAIR);




#line 3644 "e:\\program\\vc98\\include\\wingdi.h"

__declspec(dllimport) BOOL  __stdcall GetDCOrgEx(HDC,LPPOINT);
__declspec(dllimport) BOOL  __stdcall FixBrushOrgEx(HDC,int,int,LPPOINT);
__declspec(dllimport) BOOL  __stdcall UnrealizeObject(HGDIOBJ);

__declspec(dllimport) BOOL  __stdcall GdiFlush();
__declspec(dllimport) DWORD __stdcall GdiSetBatchLimit(DWORD);
__declspec(dllimport) DWORD __stdcall GdiGetBatchLimit();









typedef int (__stdcall* ICMENUMPROCA)(LPSTR, LPARAM);
typedef int (__stdcall* ICMENUMPROCW)(LPWSTR, LPARAM);




#line 3668 "e:\\program\\vc98\\include\\wingdi.h"

__declspec(dllimport) int         __stdcall SetICMMode(HDC, int);
__declspec(dllimport) BOOL        __stdcall CheckColorsInGamut(HDC,LPVOID,LPVOID,DWORD);
__declspec(dllimport) HCOLORSPACE __stdcall GetColorSpace(HDC);
__declspec(dllimport) BOOL        __stdcall GetLogColorSpaceA(HCOLORSPACE,LPLOGCOLORSPACEA,DWORD);
__declspec(dllimport) BOOL        __stdcall GetLogColorSpaceW(HCOLORSPACE,LPLOGCOLORSPACEW,DWORD);




#line 3679 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) HCOLORSPACE __stdcall CreateColorSpaceA(LPLOGCOLORSPACEA);
__declspec(dllimport) HCOLORSPACE __stdcall CreateColorSpaceW(LPLOGCOLORSPACEW);




#line 3686 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) HCOLORSPACE __stdcall SetColorSpace(HDC,HCOLORSPACE);
__declspec(dllimport) BOOL        __stdcall DeleteColorSpace(HCOLORSPACE);
__declspec(dllimport) BOOL        __stdcall GetICMProfileA(HDC,LPDWORD,LPSTR);
__declspec(dllimport) BOOL        __stdcall GetICMProfileW(HDC,LPDWORD,LPWSTR);




#line 3695 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) BOOL        __stdcall SetICMProfileA(HDC,LPSTR);
__declspec(dllimport) BOOL        __stdcall SetICMProfileW(HDC,LPWSTR);




#line 3702 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) BOOL        __stdcall GetDeviceGammaRamp(HDC,LPVOID);
__declspec(dllimport) BOOL        __stdcall SetDeviceGammaRamp(HDC,LPVOID);
__declspec(dllimport) BOOL        __stdcall ColorMatchToTarget(HDC,HDC,DWORD);
__declspec(dllimport) int         __stdcall EnumICMProfilesA(HDC,ICMENUMPROCA,LPARAM);
__declspec(dllimport) int         __stdcall EnumICMProfilesW(HDC,ICMENUMPROCW,LPARAM);




#line 3712 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) BOOL        __stdcall UpdateICMRegKeyA(DWORD,LPSTR,LPSTR,UINT);
__declspec(dllimport) BOOL        __stdcall UpdateICMRegKeyW(DWORD,LPWSTR,LPWSTR,UINT);




#line 3719 "e:\\program\\vc98\\include\\wingdi.h"
#line 3720 "e:\\program\\vc98\\include\\wingdi.h"



#line 3724 "e:\\program\\vc98\\include\\wingdi.h"









#line 3734 "e:\\program\\vc98\\include\\wingdi.h"




















































































































#line 3851 "e:\\program\\vc98\\include\\wingdi.h"


















#line 3870 "e:\\program\\vc98\\include\\wingdi.h"





#line 3876 "e:\\program\\vc98\\include\\wingdi.h"



#line 3880 "e:\\program\\vc98\\include\\wingdi.h"



typedef struct tagEMR
{
    DWORD   iType;              
    DWORD   nSize;              
                                
} EMR, *PEMR;



typedef struct tagEMRTEXT
{
    POINTL  ptlReference;
    DWORD   nChars;
    DWORD   offString;          
    DWORD   fOptions;
    RECTL   rcl;
    DWORD   offDx;              
                                
} EMRTEXT, *PEMRTEXT;



typedef struct tagABORTPATH
{
    EMR     emr;
} EMRABORTPATH,      *PEMRABORTPATH,
  EMRBEGINPATH,      *PEMRBEGINPATH,
  EMRENDPATH,        *PEMRENDPATH,
  EMRCLOSEFIGURE,    *PEMRCLOSEFIGURE,
  EMRFLATTENPATH,    *PEMRFLATTENPATH,
  EMRWIDENPATH,      *PEMRWIDENPATH,
  EMRSETMETARGN,     *PEMRSETMETARGN,
  EMRSAVEDC,         *PEMRSAVEDC,
  EMRREALIZEPALETTE, *PEMRREALIZEPALETTE;

typedef struct tagEMRSELECTCLIPPATH
{
    EMR     emr;
    DWORD   iMode;
} EMRSELECTCLIPPATH,    *PEMRSELECTCLIPPATH,
  EMRSETBKMODE,         *PEMRSETBKMODE,
  EMRSETMAPMODE,        *PEMRSETMAPMODE,
  EMRSETPOLYFILLMODE,   *PEMRSETPOLYFILLMODE,
  EMRSETROP2,           *PEMRSETROP2,
  EMRSETSTRETCHBLTMODE, *PEMRSETSTRETCHBLTMODE,
  EMRSETICMMODE,        *PEMRSETICMMODE,
  EMRSETTEXTALIGN,      *PEMRSETTEXTALIGN;

typedef struct tagEMRSETMITERLIMIT
{
    EMR     emr;
    FLOAT   eMiterLimit;
} EMRSETMITERLIMIT, *PEMRSETMITERLIMIT;

typedef struct tagEMRRESTOREDC
{
    EMR     emr;
    LONG    iRelative;          
} EMRRESTOREDC, *PEMRRESTOREDC;

typedef struct tagEMRSETARCDIRECTION
{
    EMR     emr;
    DWORD   iArcDirection;      
                                
} EMRSETARCDIRECTION, *PEMRSETARCDIRECTION;

typedef struct tagEMRSETMAPPERFLAGS
{
    EMR     emr;
    DWORD   dwFlags;
} EMRSETMAPPERFLAGS, *PEMRSETMAPPERFLAGS;

typedef struct tagEMRSETTEXTCOLOR
{
    EMR     emr;
    COLORREF crColor;
} EMRSETBKCOLOR,   *PEMRSETBKCOLOR,
  EMRSETTEXTCOLOR, *PEMRSETTEXTCOLOR;

typedef struct tagEMRSELECTOBJECT
{
    EMR     emr;
    DWORD   ihObject;           
} EMRSELECTOBJECT, *PEMRSELECTOBJECT,
  EMRDELETEOBJECT, *PEMRDELETEOBJECT;


typedef struct tagEMRSELECTCOLORSPACE
{
    EMR     emr;
    DWORD   ihCS;               
} EMRSELECTCOLORSPACE, *PEMRSELECTCOLORSPACE,
  EMRDELETECOLORSPACE, *PEMRDELETECOLORSPACE;
#line 3978 "e:\\program\\vc98\\include\\wingdi.h"

typedef struct tagEMRSELECTPALETTE
{
    EMR     emr;
    DWORD   ihPal;              
} EMRSELECTPALETTE, *PEMRSELECTPALETTE;

typedef struct tagEMRRESIZEPALETTE
{
    EMR     emr;
    DWORD   ihPal;              
    DWORD   cEntries;
} EMRRESIZEPALETTE, *PEMRRESIZEPALETTE;

typedef struct tagEMRSETPALETTEENTRIES
{
    EMR     emr;
    DWORD   ihPal;              
    DWORD   iStart;
    DWORD   cEntries;
    PALETTEENTRY aPalEntries[1];
} EMRSETPALETTEENTRIES, *PEMRSETPALETTEENTRIES;

typedef struct tagEMRSETCOLORADJUSTMENT
{
    EMR     emr;
    COLORADJUSTMENT ColorAdjustment;
} EMRSETCOLORADJUSTMENT, *PEMRSETCOLORADJUSTMENT;

typedef struct tagEMRGDICOMMENT
{
    EMR     emr;
    DWORD   cbData;             
    BYTE    Data[1];
} EMRGDICOMMENT, *PEMRGDICOMMENT;

typedef struct tagEMREOF
{
    EMR     emr;
    DWORD   nPalEntries;        
    DWORD   offPalEntries;      
    DWORD   nSizeLast;          
                                
                                
} EMREOF, *PEMREOF;

typedef struct tagEMRLINETO
{
    EMR     emr;
    POINTL  ptl;
} EMRLINETO,   *PEMRLINETO,
  EMRMOVETOEX, *PEMRMOVETOEX;

typedef struct tagEMROFFSETCLIPRGN
{
    EMR     emr;
    POINTL  ptlOffset;
} EMROFFSETCLIPRGN, *PEMROFFSETCLIPRGN;

typedef struct tagEMRFILLPATH
{
    EMR     emr;
    RECTL   rclBounds;          
} EMRFILLPATH,          *PEMRFILLPATH,
  EMRSTROKEANDFILLPATH, *PEMRSTROKEANDFILLPATH,
  EMRSTROKEPATH,        *PEMRSTROKEPATH;

typedef struct tagEMREXCLUDECLIPRECT
{
    EMR     emr;
    RECTL   rclClip;
} EMREXCLUDECLIPRECT,   *PEMREXCLUDECLIPRECT,
  EMRINTERSECTCLIPRECT, *PEMRINTERSECTCLIPRECT;

typedef struct tagEMRSETVIEWPORTORGEX
{
    EMR     emr;
    POINTL  ptlOrigin;
} EMRSETVIEWPORTORGEX, *PEMRSETVIEWPORTORGEX,
  EMRSETWINDOWORGEX,   *PEMRSETWINDOWORGEX,
  EMRSETBRUSHORGEX,    *PEMRSETBRUSHORGEX;

typedef struct tagEMRSETVIEWPORTEXTEX
{
    EMR     emr;
    SIZEL   szlExtent;
} EMRSETVIEWPORTEXTEX, *PEMRSETVIEWPORTEXTEX,
  EMRSETWINDOWEXTEX,   *PEMRSETWINDOWEXTEX;

typedef struct tagEMRSCALEVIEWPORTEXTEX
{
    EMR     emr;
    LONG    xNum;
    LONG    xDenom;
    LONG    yNum;
    LONG    yDenom;
} EMRSCALEVIEWPORTEXTEX, *PEMRSCALEVIEWPORTEXTEX,
  EMRSCALEWINDOWEXTEX,   *PEMRSCALEWINDOWEXTEX;

typedef struct tagEMRSETWORLDTRANSFORM
{
    EMR     emr;
    XFORM   xform;
} EMRSETWORLDTRANSFORM, *PEMRSETWORLDTRANSFORM;

typedef struct tagEMRMODIFYWORLDTRANSFORM
{
    EMR     emr;
    XFORM   xform;
    DWORD   iMode;
} EMRMODIFYWORLDTRANSFORM, *PEMRMODIFYWORLDTRANSFORM;

typedef struct tagEMRSETPIXELV
{
    EMR     emr;
    POINTL  ptlPixel;
    COLORREF crColor;
} EMRSETPIXELV, *PEMRSETPIXELV;

typedef struct tagEMREXTFLOODFILL
{
    EMR     emr;
    POINTL  ptlStart;
    COLORREF crColor;
    DWORD   iMode;
} EMREXTFLOODFILL, *PEMREXTFLOODFILL;

typedef struct tagEMRELLIPSE
{
    EMR     emr;
    RECTL   rclBox;             
} EMRELLIPSE,  *PEMRELLIPSE,
  EMRRECTANGLE, *PEMRRECTANGLE;

typedef struct tagEMRROUNDRECT
{
    EMR     emr;
    RECTL   rclBox;             
    SIZEL   szlCorner;
} EMRROUNDRECT, *PEMRROUNDRECT;

typedef struct tagEMRARC
{
    EMR     emr;
    RECTL   rclBox;             
    POINTL  ptlStart;
    POINTL  ptlEnd;
} EMRARC,   *PEMRARC,
  EMRARCTO, *PEMRARCTO,
  EMRCHORD, *PEMRCHORD,
  EMRPIE,   *PEMRPIE;

typedef struct tagEMRANGLEARC
{
    EMR     emr;
    POINTL  ptlCenter;
    DWORD   nRadius;
    FLOAT   eStartAngle;
    FLOAT   eSweepAngle;
} EMRANGLEARC, *PEMRANGLEARC;

typedef struct tagEMRPOLYLINE
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cptl;
    POINTL  aptl[1];
} EMRPOLYLINE,     *PEMRPOLYLINE,
  EMRPOLYBEZIER,   *PEMRPOLYBEZIER,
  EMRPOLYGON,      *PEMRPOLYGON,
  EMRPOLYBEZIERTO, *PEMRPOLYBEZIERTO,
  EMRPOLYLINETO,   *PEMRPOLYLINETO;

typedef struct tagEMRPOLYLINE16
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cpts;
    POINTS  apts[1];
} EMRPOLYLINE16,     *PEMRPOLYLINE16,
  EMRPOLYBEZIER16,   *PEMRPOLYBEZIER16,
  EMRPOLYGON16,      *PEMRPOLYGON16,
  EMRPOLYBEZIERTO16, *PEMRPOLYBEZIERTO16,
  EMRPOLYLINETO16,   *PEMRPOLYLINETO16;

typedef struct tagEMRPOLYDRAW
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cptl;               
    POINTL  aptl[1];            
    BYTE    abTypes[1];         
} EMRPOLYDRAW, *PEMRPOLYDRAW;

typedef struct tagEMRPOLYDRAW16
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cpts;               
    POINTS  apts[1];            
    BYTE    abTypes[1];         
} EMRPOLYDRAW16, *PEMRPOLYDRAW16;

typedef struct tagEMRPOLYPOLYLINE
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   nPolys;             
    DWORD   cptl;               
    DWORD   aPolyCounts[1];     
    POINTL  aptl[1];            
} EMRPOLYPOLYLINE, *PEMRPOLYPOLYLINE,
  EMRPOLYPOLYGON,  *PEMRPOLYPOLYGON;

typedef struct tagEMRPOLYPOLYLINE16
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   nPolys;             
    DWORD   cpts;               
    DWORD   aPolyCounts[1];     
    POINTS  apts[1];            
} EMRPOLYPOLYLINE16, *PEMRPOLYPOLYLINE16,
  EMRPOLYPOLYGON16,  *PEMRPOLYPOLYGON16;

typedef struct tagEMRINVERTRGN
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cbRgnData;          
    BYTE    RgnData[1];
} EMRINVERTRGN, *PEMRINVERTRGN,
  EMRPAINTRGN,  *PEMRPAINTRGN;

typedef struct tagEMRFILLRGN
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cbRgnData;          
    DWORD   ihBrush;            
    BYTE    RgnData[1];
} EMRFILLRGN, *PEMRFILLRGN;

typedef struct tagEMRFRAMERGN
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cbRgnData;          
    DWORD   ihBrush;            
    SIZEL   szlStroke;
    BYTE    RgnData[1];
} EMRFRAMERGN, *PEMRFRAMERGN;













#line 4244 "e:\\program\\vc98\\include\\wingdi.h"

typedef struct tagEMREXTSELECTCLIPRGN
{
    EMR     emr;
    DWORD   cbRgnData;          
    DWORD   iMode;
    BYTE    RgnData[1];
} EMREXTSELECTCLIPRGN, *PEMREXTSELECTCLIPRGN;

typedef struct tagEMREXTTEXTOUTA
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   iGraphicsMode;      
    FLOAT   exScale;            
    FLOAT   eyScale;            
    EMRTEXT emrtext;            
                                
} EMREXTTEXTOUTA, *PEMREXTTEXTOUTA,
  EMREXTTEXTOUTW, *PEMREXTTEXTOUTW;

typedef struct tagEMRPOLYTEXTOUTA
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   iGraphicsMode;      
    FLOAT   exScale;            
    FLOAT   eyScale;            
    LONG    cStrings;
    EMRTEXT aemrtext[1];        
                                
} EMRPOLYTEXTOUTA, *PEMRPOLYTEXTOUTA,
  EMRPOLYTEXTOUTW, *PEMRPOLYTEXTOUTW;

typedef struct tagEMRBITBLT
{
    EMR     emr;
    RECTL   rclBounds;          
    LONG    xDest;
    LONG    yDest;
    LONG    cxDest;
    LONG    cyDest;
    DWORD   dwRop;
    LONG    xSrc;
    LONG    ySrc;
    XFORM   xformSrc;           
    COLORREF crBkColorSrc;      
    DWORD   iUsageSrc;          
                                
    DWORD   offBmiSrc;          
    DWORD   cbBmiSrc;           
    DWORD   offBitsSrc;         
    DWORD   cbBitsSrc;          
} EMRBITBLT, *PEMRBITBLT;

typedef struct tagEMRSTRETCHBLT
{
    EMR     emr;
    RECTL   rclBounds;          
    LONG    xDest;
    LONG    yDest;
    LONG    cxDest;
    LONG    cyDest;
    DWORD   dwRop;
    LONG    xSrc;
    LONG    ySrc;
    XFORM   xformSrc;           
    COLORREF crBkColorSrc;      
    DWORD   iUsageSrc;          
                                
    DWORD   offBmiSrc;          
    DWORD   cbBmiSrc;           
    DWORD   offBitsSrc;         
    DWORD   cbBitsSrc;          
    LONG    cxSrc;
    LONG    cySrc;
} EMRSTRETCHBLT, *PEMRSTRETCHBLT;

typedef struct tagEMRMASKBLT
{
    EMR     emr;
    RECTL   rclBounds;          
    LONG    xDest;
    LONG    yDest;
    LONG    cxDest;
    LONG    cyDest;
    DWORD   dwRop;
    LONG    xSrc;
    LONG    ySrc;
    XFORM   xformSrc;           
    COLORREF crBkColorSrc;      
    DWORD   iUsageSrc;          
                                
    DWORD   offBmiSrc;          
    DWORD   cbBmiSrc;           
    DWORD   offBitsSrc;         
    DWORD   cbBitsSrc;          
    LONG    xMask;
    LONG    yMask;
    DWORD   iUsageMask;         
    DWORD   offBmiMask;         
    DWORD   cbBmiMask;          
    DWORD   offBitsMask;        
    DWORD   cbBitsMask;         
} EMRMASKBLT, *PEMRMASKBLT;

typedef struct tagEMRPLGBLT
{
    EMR     emr;
    RECTL   rclBounds;          
    POINTL  aptlDest[3];
    LONG    xSrc;
    LONG    ySrc;
    LONG    cxSrc;
    LONG    cySrc;
    XFORM   xformSrc;           
    COLORREF crBkColorSrc;      
    DWORD   iUsageSrc;          
                                
    DWORD   offBmiSrc;          
    DWORD   cbBmiSrc;           
    DWORD   offBitsSrc;         
    DWORD   cbBitsSrc;          
    LONG    xMask;
    LONG    yMask;
    DWORD   iUsageMask;         
    DWORD   offBmiMask;         
    DWORD   cbBmiMask;          
    DWORD   offBitsMask;        
    DWORD   cbBitsMask;         
} EMRPLGBLT, *PEMRPLGBLT;

typedef struct tagEMRSETDIBITSTODEVICE
{
    EMR     emr;
    RECTL   rclBounds;          
    LONG    xDest;
    LONG    yDest;
    LONG    xSrc;
    LONG    ySrc;
    LONG    cxSrc;
    LONG    cySrc;
    DWORD   offBmiSrc;          
    DWORD   cbBmiSrc;           
    DWORD   offBitsSrc;         
    DWORD   cbBitsSrc;          
    DWORD   iUsageSrc;          
    DWORD   iStartScan;
    DWORD   cScans;
} EMRSETDIBITSTODEVICE, *PEMRSETDIBITSTODEVICE;

typedef struct tagEMRSTRETCHDIBITS
{
    EMR     emr;
    RECTL   rclBounds;          
    LONG    xDest;
    LONG    yDest;
    LONG    xSrc;
    LONG    ySrc;
    LONG    cxSrc;
    LONG    cySrc;
    DWORD   offBmiSrc;          
    DWORD   cbBmiSrc;           
    DWORD   offBitsSrc;         
    DWORD   cbBitsSrc;          
    DWORD   iUsageSrc;          
    DWORD   dwRop;
    LONG    cxDest;
    LONG    cyDest;
} EMRSTRETCHDIBITS, *PEMRSTRETCHDIBITS;

















































#line 4464 "e:\\program\\vc98\\include\\wingdi.h"

typedef struct tagEMREXTCREATEFONTINDIRECTW
{
    EMR     emr;
    DWORD   ihFont;             
    EXTLOGFONTW elfw;
} EMREXTCREATEFONTINDIRECTW, *PEMREXTCREATEFONTINDIRECTW;


typedef struct tagEMRCREATEPALETTE
{
    EMR     emr;
    DWORD   ihPal;              
    LOGPALETTE lgpl;            
                                
} EMRCREATEPALETTE, *PEMRCREATEPALETTE;



typedef struct tagEMRCREATECOLORSPACE
{
    EMR             emr;
    DWORD           ihCS;       
    LOGCOLORSPACEW  lcs;
} EMRCREATECOLORSPACE, *PEMRCREATECOLORSPACE;

#line 4491 "e:\\program\\vc98\\include\\wingdi.h"

typedef struct tagEMRCREATEPEN
{
    EMR     emr;
    DWORD   ihPen;              
    LOGPEN  lopn;
} EMRCREATEPEN, *PEMRCREATEPEN;

typedef struct tagEMREXTCREATEPEN
{
    EMR     emr;
    DWORD   ihPen;              
    DWORD   offBmi;             
    DWORD   cbBmi;              
                                
                                
    DWORD   offBits;            
    DWORD   cbBits;             
    EXTLOGPEN elp;              
} EMREXTCREATEPEN, *PEMREXTCREATEPEN;

typedef struct tagEMRCREATEBRUSHINDIRECT
{
    EMR     emr;
    DWORD   ihBrush;            
    LOGBRUSH lb;                
                                
} EMRCREATEBRUSHINDIRECT, *PEMRCREATEBRUSHINDIRECT;

typedef struct tagEMRCREATEMONOBRUSH
{
    EMR     emr;
    DWORD   ihBrush;            
    DWORD   iUsage;             
    DWORD   offBmi;             
    DWORD   cbBmi;              
    DWORD   offBits;            
    DWORD   cbBits;             
} EMRCREATEMONOBRUSH, *PEMRCREATEMONOBRUSH;

typedef struct tagEMRCREATEDIBPATTERNBRUSHPT
{
    EMR     emr;
    DWORD   ihBrush;            
    DWORD   iUsage;             
    DWORD   offBmi;             
    DWORD   cbBmi;              
                                
                                
    DWORD   offBits;            
    DWORD   cbBits;             
} EMRCREATEDIBPATTERNBRUSHPT, *PEMRCREATEDIBPATTERNBRUSHPT;

typedef struct tagEMRFORMAT
{
    DWORD   dSignature;         
    DWORD   nVersion;           
    DWORD   cbData;             
    DWORD   offData;            
                                
} EMRFORMAT, *PEMRFORMAT;

typedef struct tagEMRGLSRECORD
{
    EMR     emr;
    DWORD   cbData;             
    BYTE    Data[1];
} EMRGLSRECORD, *PEMRGLSRECORD;

typedef struct tagEMRGLSBOUNDEDRECORD
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cbData;             
    BYTE    Data[1];
} EMRGLSBOUNDEDRECORD, *PEMRGLSBOUNDEDRECORD;

typedef struct tagEMRPIXELFORMAT
{
    EMR     emr;
    PIXELFORMATDESCRIPTOR pfd;
} EMRPIXELFORMAT, *PEMRPIXELFORMAT;



typedef struct tagEMRSETICMPROFILE
{
    EMR     emr;
    DWORD   dwFlags;            
    DWORD   cbName;             
    DWORD   cbData;             
    BYTE    Data[1];            
} EMRSETICMPROFILE, *PEMRSETICMPROFILE;








#line 4593 "e:\\program\\vc98\\include\\wingdi.h"




__declspec(dllimport) BOOL  __stdcall wglCopyContext(HGLRC, HGLRC, UINT);
__declspec(dllimport) HGLRC __stdcall wglCreateContext(HDC);
__declspec(dllimport) HGLRC __stdcall wglCreateLayerContext(HDC, int);
__declspec(dllimport) BOOL  __stdcall wglDeleteContext(HGLRC);
__declspec(dllimport) HGLRC __stdcall wglGetCurrentContext(void);
__declspec(dllimport) HDC   __stdcall wglGetCurrentDC(void);
__declspec(dllimport) PROC  __stdcall wglGetProcAddress(LPCSTR);
__declspec(dllimport) BOOL  __stdcall wglMakeCurrent(HDC, HGLRC);
__declspec(dllimport) BOOL  __stdcall wglShareLists(HGLRC, HGLRC);
__declspec(dllimport) BOOL  __stdcall wglUseFontBitmapsA(HDC, DWORD, DWORD, DWORD);
__declspec(dllimport) BOOL  __stdcall wglUseFontBitmapsW(HDC, DWORD, DWORD, DWORD);




#line 4613 "e:\\program\\vc98\\include\\wingdi.h"
__declspec(dllimport) BOOL  __stdcall SwapBuffers(HDC);

typedef struct _POINTFLOAT {
    FLOAT   x;
    FLOAT   y;
} POINTFLOAT, *PPOINTFLOAT;

typedef struct _GLYPHMETRICSFLOAT {
    FLOAT       gmfBlackBoxX;
    FLOAT       gmfBlackBoxY;
    POINTFLOAT  gmfptGlyphOrigin;
    FLOAT       gmfCellIncX;
    FLOAT       gmfCellIncY;
} GLYPHMETRICSFLOAT, *PGLYPHMETRICSFLOAT,  *LPGLYPHMETRICSFLOAT;



__declspec(dllimport) BOOL  __stdcall wglUseFontOutlinesA(HDC, DWORD, DWORD, DWORD, FLOAT,
                                           FLOAT, int, LPGLYPHMETRICSFLOAT);
__declspec(dllimport) BOOL  __stdcall wglUseFontOutlinesW(HDC, DWORD, DWORD, DWORD, FLOAT,
                                           FLOAT, int, LPGLYPHMETRICSFLOAT);




#line 4639 "e:\\program\\vc98\\include\\wingdi.h"


typedef struct tagLAYERPLANEDESCRIPTOR { 
    WORD  nSize;
    WORD  nVersion;
    DWORD dwFlags;
    BYTE  iPixelType;
    BYTE  cColorBits;
    BYTE  cRedBits;
    BYTE  cRedShift;
    BYTE  cGreenBits;
    BYTE  cGreenShift;
    BYTE  cBlueBits;
    BYTE  cBlueShift;
    BYTE  cAlphaBits;
    BYTE  cAlphaShift;
    BYTE  cAccumBits;
    BYTE  cAccumRedBits;
    BYTE  cAccumGreenBits;
    BYTE  cAccumBlueBits;
    BYTE  cAccumAlphaBits;
    BYTE  cDepthBits;
    BYTE  cStencilBits;
    BYTE  cAuxBuffers;
    BYTE  iLayerPlane;
    BYTE  bReserved;
    COLORREF crTransparent;
} LAYERPLANEDESCRIPTOR, *PLAYERPLANEDESCRIPTOR,  *LPLAYERPLANEDESCRIPTOR;

















































__declspec(dllimport) BOOL  __stdcall wglDescribeLayerPlane(HDC, int, int, UINT,
                                             LPLAYERPLANEDESCRIPTOR);
__declspec(dllimport) int   __stdcall wglSetLayerPaletteEntries(HDC, int, int, int,
                                                 const COLORREF *);
__declspec(dllimport) int   __stdcall wglGetLayerPaletteEntries(HDC, int, int, int,
                                                 COLORREF *);
__declspec(dllimport) BOOL  __stdcall wglRealizeLayerPalette(HDC, int, BOOL);
__declspec(dllimport) BOOL  __stdcall wglSwapLayerBuffers(HDC, UINT);













#line 4738 "e:\\program\\vc98\\include\\wingdi.h"

#line 4740 "e:\\program\\vc98\\include\\wingdi.h"


}
#line 4744 "e:\\program\\vc98\\include\\wingdi.h"


#line 4747 "e:\\program\\vc98\\include\\wingdi.h"

#line 166 "e:\\program\\vc98\\include\\windows.h"
#line 1 "e:\\program\\vc98\\include\\winuser.h"




















#line 22 "e:\\program\\vc98\\include\\winuser.h"






extern "C" {
#line 30 "e:\\program\\vc98\\include\\winuser.h"









typedef HANDLE HDWP;
typedef void MENUTEMPLATEA;
typedef void MENUTEMPLATEW;



typedef MENUTEMPLATEA MENUTEMPLATE;
#line 47 "e:\\program\\vc98\\include\\winuser.h"
typedef PVOID LPMENUTEMPLATEA;
typedef PVOID LPMENUTEMPLATEW;



typedef LPMENUTEMPLATEA LPMENUTEMPLATE;
#line 54 "e:\\program\\vc98\\include\\winuser.h"

typedef LRESULT (__stdcall* WNDPROC)(HWND, UINT, WPARAM, LPARAM);



typedef BOOL (__stdcall* DLGPROC)(HWND, UINT, WPARAM, LPARAM);
typedef void (__stdcall* TIMERPROC)(HWND, UINT, UINT, DWORD);
typedef BOOL (__stdcall* GRAYSTRINGPROC)(HDC, LPARAM, int);
typedef BOOL (__stdcall* WNDENUMPROC)(HWND, LPARAM);
typedef LRESULT (__stdcall* HOOKPROC)(int code, WPARAM wParam, LPARAM lParam);
typedef void (__stdcall* SENDASYNCPROC)(HWND, UINT, DWORD, LRESULT);

typedef BOOL (__stdcall* PROPENUMPROCA)(HWND, LPCSTR, HANDLE);
typedef BOOL (__stdcall* PROPENUMPROCW)(HWND, LPCWSTR, HANDLE);

typedef BOOL (__stdcall* PROPENUMPROCEXA)(HWND, LPSTR, HANDLE, DWORD);
typedef BOOL (__stdcall* PROPENUMPROCEXW)(HWND, LPWSTR, HANDLE, DWORD);

typedef int (__stdcall* EDITWORDBREAKPROCA)(LPSTR lpch, int ichCurrent, int cch, int code);
typedef int (__stdcall* EDITWORDBREAKPROCW)(LPWSTR lpch, int ichCurrent, int cch, int code);


typedef BOOL (__stdcall* DRAWSTATEPROC)(HDC hdc, LPARAM lData, WPARAM wData, int cx, int cy);
#line 78 "e:\\program\\vc98\\include\\winuser.h"





















#line 100 "e:\\program\\vc98\\include\\winuser.h"






typedef PROPENUMPROCA        PROPENUMPROC;
typedef PROPENUMPROCEXA      PROPENUMPROCEX;
typedef EDITWORDBREAKPROCA   EDITWORDBREAKPROC;
#line 110 "e:\\program\\vc98\\include\\winuser.h"



typedef BOOL (__stdcall* NAMEENUMPROCA)(LPSTR, LPARAM);
typedef BOOL (__stdcall* NAMEENUMPROCW)(LPWSTR, LPARAM);

typedef NAMEENUMPROCA   WINSTAENUMPROCA;
typedef NAMEENUMPROCA   DESKTOPENUMPROCA;
typedef NAMEENUMPROCW   WINSTAENUMPROCW;
typedef NAMEENUMPROCW   DESKTOPENUMPROCW;












#line 133 "e:\\program\\vc98\\include\\winuser.h"







typedef WINSTAENUMPROCA     WINSTAENUMPROC;
typedef DESKTOPENUMPROCA    DESKTOPENUMPROC;

#line 144 "e:\\program\\vc98\\include\\winuser.h"







#line 152 "e:\\program\\vc98\\include\\winuser.h"




























#line 181 "e:\\program\\vc98\\include\\winuser.h"


#line 184 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
wvsprintfA(
    LPSTR,
    LPCSTR,
    va_list arglist);
__declspec(dllimport)
int
__stdcall
wvsprintfW(
    LPWSTR,
    LPCWSTR,
    va_list arglist);




#line 204 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport) int __cdecl wsprintfA(LPSTR, LPCSTR, ...);
__declspec(dllimport) int __cdecl wsprintfW(LPWSTR, LPCWSTR, ...);




#line 212 "e:\\program\\vc98\\include\\winuser.h"






























#line 243 "e:\\program\\vc98\\include\\winuser.h"











































#line 287 "e:\\program\\vc98\\include\\winuser.h"















#line 303 "e:\\program\\vc98\\include\\winuser.h"




































































































































#line 436 "e:\\program\\vc98\\include\\winuser.h"













#line 450 "e:\\program\\vc98\\include\\winuser.h"






















#line 473 "e:\\program\\vc98\\include\\winuser.h"




#line 478 "e:\\program\\vc98\\include\\winuser.h"




#line 483 "e:\\program\\vc98\\include\\winuser.h"

#line 485 "e:\\program\\vc98\\include\\winuser.h"


#line 488 "e:\\program\\vc98\\include\\winuser.h"
































typedef struct tagCBT_CREATEWNDA
{
    struct tagCREATESTRUCTA *lpcs;
    HWND           hwndInsertAfter;
} CBT_CREATEWNDA, *LPCBT_CREATEWNDA;



typedef struct tagCBT_CREATEWNDW
{
    struct tagCREATESTRUCTW *lpcs;
    HWND           hwndInsertAfter;
} CBT_CREATEWNDW, *LPCBT_CREATEWNDW;




typedef CBT_CREATEWNDA CBT_CREATEWND;
typedef LPCBT_CREATEWNDA LPCBT_CREATEWND;
#line 540 "e:\\program\\vc98\\include\\winuser.h"




typedef struct tagCBTACTIVATESTRUCT
{
    BOOL    fMouse;
    HWND    hWndActive;
} CBTACTIVATESTRUCT, *LPCBTACTIVATESTRUCT;






























#line 580 "e:\\program\\vc98\\include\\winuser.h"
#line 581 "e:\\program\\vc98\\include\\winuser.h"





typedef struct tagEVENTMSG {
    UINT    message;
    UINT    paramL;
    UINT    paramH;
    DWORD    time;
    HWND     hwnd;
} EVENTMSG, *PEVENTMSGMSG,  *NPEVENTMSGMSG,  *LPEVENTMSGMSG;

typedef struct tagEVENTMSG *PEVENTMSG,  *NPEVENTMSG,  *LPEVENTMSG;




typedef struct tagCWPSTRUCT {
    LPARAM  lParam;
    WPARAM  wParam;
    UINT    message;
    HWND    hwnd;
} CWPSTRUCT, *PCWPSTRUCT,  *NPCWPSTRUCT,  *LPCWPSTRUCT;





typedef struct tagCWPRETSTRUCT {
    LRESULT lResult;
    LPARAM  lParam;
    WPARAM  wParam;
    UINT    message;
    HWND    hwnd;
} CWPRETSTRUCT, *PCWPRETSTRUCT,  *NPCWPRETSTRUCT,  *LPCWPRETSTRUCT;

#line 619 "e:\\program\\vc98\\include\\winuser.h"


































#line 654 "e:\\program\\vc98\\include\\winuser.h"




typedef struct tagDEBUGHOOKINFO
{
    DWORD   idThread;
    DWORD   idThreadInstaller;
    LPARAM  lParam;
    WPARAM  wParam;
    int     code;
} DEBUGHOOKINFO, *PDEBUGHOOKINFO,  *NPDEBUGHOOKINFO, * LPDEBUGHOOKINFO;




typedef struct tagMOUSEHOOKSTRUCT {
    POINT   pt;
    HWND    hwnd;
    UINT    wHitTestCode;
    DWORD   dwExtraInfo;
} MOUSEHOOKSTRUCT,  *LPMOUSEHOOKSTRUCT, *PMOUSEHOOKSTRUCT;




typedef struct tagHARDWAREHOOKSTRUCT {
    HWND    hwnd;
    UINT    message;
    WPARAM  wParam;
    LPARAM  lParam;
} HARDWAREHOOKSTRUCT,  *LPHARDWAREHOOKSTRUCT, *PHARDWAREHOOKSTRUCT;
#line 687 "e:\\program\\vc98\\include\\winuser.h"
#line 688 "e:\\program\\vc98\\include\\winuser.h"















#line 704 "e:\\program\\vc98\\include\\winuser.h"








__declspec(dllimport)
HKL
__stdcall
LoadKeyboardLayoutA(
    LPCSTR pwszKLID,
    UINT Flags);
__declspec(dllimport)
HKL
__stdcall
LoadKeyboardLayoutW(
    LPCWSTR pwszKLID,
    UINT Flags);




#line 729 "e:\\program\\vc98\\include\\winuser.h"



__declspec(dllimport)
HKL
__stdcall
ActivateKeyboardLayout(
    HKL hkl,
    UINT Flags);







#line 746 "e:\\program\\vc98\\include\\winuser.h"


__declspec(dllimport)
int
__stdcall
ToUnicodeEx(
    UINT wVirtKey,
    UINT wScanCode,
    PBYTE lpKeyState,
    LPWSTR pwszBuff,
    int cchBuff,
    UINT wFlags,
    HKL dwhkl);
#line 760 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
UnloadKeyboardLayout(
    HKL hkl);

__declspec(dllimport)
BOOL
__stdcall
GetKeyboardLayoutNameA(
    LPSTR pwszKLID);
__declspec(dllimport)
BOOL
__stdcall
GetKeyboardLayoutNameW(
    LPWSTR pwszKLID);




#line 782 "e:\\program\\vc98\\include\\winuser.h"


__declspec(dllimport)
int
__stdcall
GetKeyboardLayoutList(
        int nBuff,
        HKL  *lpList);

__declspec(dllimport)
HKL
__stdcall
GetKeyboardLayout(
    DWORD dwLayout
);
#line 798 "e:\\program\\vc98\\include\\winuser.h"

























#line 824 "e:\\program\\vc98\\include\\winuser.h"























__declspec(dllimport)
HDESK
__stdcall
CreateDesktopA(
    LPSTR lpszDesktop,
    LPSTR lpszDevice,
    LPDEVMODEA pDevmode,
    DWORD dwFlags,
    ACCESS_MASK dwDesiredAccess,
    LPSECURITY_ATTRIBUTES lpsa);
__declspec(dllimport)
HDESK
__stdcall
CreateDesktopW(
    LPWSTR lpszDesktop,
    LPWSTR lpszDevice,
    LPDEVMODEW pDevmode,
    DWORD dwFlags,
    ACCESS_MASK dwDesiredAccess,
    LPSECURITY_ATTRIBUTES lpsa);




#line 872 "e:\\program\\vc98\\include\\winuser.h"

#line 874 "e:\\program\\vc98\\include\\winuser.h"
#line 875 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
HDESK
__stdcall
OpenDesktopA(
    LPSTR lpszDesktop,
    DWORD dwFlags,
    BOOL fInherit,
    ACCESS_MASK dwDesiredAccess);
__declspec(dllimport)
HDESK
__stdcall
OpenDesktopW(
    LPWSTR lpszDesktop,
    DWORD dwFlags,
    BOOL fInherit,
    ACCESS_MASK dwDesiredAccess);




#line 897 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
HDESK
__stdcall
OpenInputDesktop(
    DWORD dwFlags,
    BOOL fInherit,
    ACCESS_MASK dwDesiredAccess);

__declspec(dllimport)
BOOL
__stdcall
EnumDesktopsA(
    HWINSTA hwinsta,
    DESKTOPENUMPROCA lpEnumFunc,
    LPARAM lParam);
__declspec(dllimport)
BOOL
__stdcall
EnumDesktopsW(
    HWINSTA hwinsta,
    DESKTOPENUMPROCW lpEnumFunc,
    LPARAM lParam);




#line 925 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
EnumDesktopWindows(
    HDESK hDesktop,
    WNDENUMPROC lpfn,
    LPARAM lParam);

__declspec(dllimport)
BOOL
__stdcall
SwitchDesktop(
    HDESK hDesktop);

__declspec(dllimport)
BOOL
__stdcall
SetThreadDesktop(
    HDESK hDesktop);

__declspec(dllimport)
BOOL
__stdcall
CloseDesktop(
    HDESK hDesktop);

__declspec(dllimport)
HDESK
__stdcall
GetThreadDesktop(
    DWORD dwThreadId);
#line 958 "e:\\program\\vc98\\include\\winuser.h"





















__declspec(dllimport)
HWINSTA
__stdcall
CreateWindowStationA(
    LPSTR               lpwinsta,
    DWORD                 dwReserved,
    ACCESS_MASK           dwDesiredAccess,
    LPSECURITY_ATTRIBUTES lpsa);
__declspec(dllimport)
HWINSTA
__stdcall
CreateWindowStationW(
    LPWSTR               lpwinsta,
    DWORD                 dwReserved,
    ACCESS_MASK           dwDesiredAccess,
    LPSECURITY_ATTRIBUTES lpsa);




#line 1000 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
HWINSTA
__stdcall
OpenWindowStationA(
    LPSTR lpszWinSta,
    BOOL fInherit,
    ACCESS_MASK dwDesiredAccess);
__declspec(dllimport)
HWINSTA
__stdcall
OpenWindowStationW(
    LPWSTR lpszWinSta,
    BOOL fInherit,
    ACCESS_MASK dwDesiredAccess);




#line 1020 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
EnumWindowStationsA(
    WINSTAENUMPROCA lpEnumFunc,
    LPARAM lParam);
__declspec(dllimport)
BOOL
__stdcall
EnumWindowStationsW(
    WINSTAENUMPROCW lpEnumFunc,
    LPARAM lParam);




#line 1038 "e:\\program\\vc98\\include\\winuser.h"


__declspec(dllimport)
BOOL
__stdcall
CloseWindowStation(
    HWINSTA hWinSta);

__declspec(dllimport)
BOOL
__stdcall
SetProcessWindowStation(
    HWINSTA hWinSta);

__declspec(dllimport)
HWINSTA
__stdcall
GetProcessWindowStation(
    void);
#line 1058 "e:\\program\\vc98\\include\\winuser.h"



__declspec(dllimport)
BOOL
__stdcall
SetUserObjectSecurity(
    HANDLE hObj,
    PSECURITY_INFORMATION pSIRequested,
    PSECURITY_DESCRIPTOR pSID);

__declspec(dllimport)
BOOL
__stdcall
GetUserObjectSecurity(
    HANDLE hObj,
    PSECURITY_INFORMATION pSIRequested,
    PSECURITY_DESCRIPTOR pSID,
    DWORD nLength,
    LPDWORD lpnLengthNeeded);






typedef struct tagUSEROBJECTFLAGS {
    BOOL fInherit;
    BOOL fReserved;
    DWORD dwFlags;
} USEROBJECTFLAGS, *PUSEROBJECTFLAGS;

__declspec(dllimport)
BOOL
__stdcall
GetUserObjectInformationA(
    HANDLE hObj,
    int nIndex,
    PVOID pvInfo,
    DWORD nLength,
    LPDWORD lpnLengthNeeded);
__declspec(dllimport)
BOOL
__stdcall
GetUserObjectInformationW(
    HANDLE hObj,
    int nIndex,
    PVOID pvInfo,
    DWORD nLength,
    LPDWORD lpnLengthNeeded);




#line 1113 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
SetUserObjectInformationA(
    HANDLE hObj,
    int nIndex,
    PVOID pvInfo,
    DWORD nLength);
__declspec(dllimport)
BOOL
__stdcall
SetUserObjectInformationW(
    HANDLE hObj,
    int nIndex,
    PVOID pvInfo,
    DWORD nLength);




#line 1135 "e:\\program\\vc98\\include\\winuser.h"

#line 1137 "e:\\program\\vc98\\include\\winuser.h"


typedef struct tagWNDCLASSEXA {
    UINT        cbSize;
    
    UINT        style;
    WNDPROC     lpfnWndProc;
    int         cbClsExtra;
    int         cbWndExtra;
    HINSTANCE   hInstance;
    HICON       hIcon;
    HCURSOR     hCursor;
    HBRUSH      hbrBackground;
    LPCSTR      lpszMenuName;
    LPCSTR      lpszClassName;
    
    HICON       hIconSm;
} WNDCLASSEXA, *PWNDCLASSEXA,  *NPWNDCLASSEXA,  *LPWNDCLASSEXA;
typedef struct tagWNDCLASSEXW {
    UINT        cbSize;
    
    UINT        style;
    WNDPROC     lpfnWndProc;
    int         cbClsExtra;
    int         cbWndExtra;
    HINSTANCE   hInstance;
    HICON       hIcon;
    HCURSOR     hCursor;
    HBRUSH      hbrBackground;
    LPCWSTR     lpszMenuName;
    LPCWSTR     lpszClassName;
    
    HICON       hIconSm;
} WNDCLASSEXW, *PWNDCLASSEXW,  *NPWNDCLASSEXW,  *LPWNDCLASSEXW;






typedef WNDCLASSEXA WNDCLASSEX;
typedef PWNDCLASSEXA PWNDCLASSEX;
typedef NPWNDCLASSEXA NPWNDCLASSEX;
typedef LPWNDCLASSEXA LPWNDCLASSEX;
#line 1182 "e:\\program\\vc98\\include\\winuser.h"
#line 1183 "e:\\program\\vc98\\include\\winuser.h"

typedef struct tagWNDCLASSA {
    UINT        style;
    WNDPROC     lpfnWndProc;
    int         cbClsExtra;
    int         cbWndExtra;
    HINSTANCE   hInstance;
    HICON       hIcon;
    HCURSOR     hCursor;
    HBRUSH      hbrBackground;
    LPCSTR      lpszMenuName;
    LPCSTR      lpszClassName;
} WNDCLASSA, *PWNDCLASSA,  *NPWNDCLASSA,  *LPWNDCLASSA;
typedef struct tagWNDCLASSW {
    UINT        style;
    WNDPROC     lpfnWndProc;
    int         cbClsExtra;
    int         cbWndExtra;
    HINSTANCE   hInstance;
    HICON       hIcon;
    HCURSOR     hCursor;
    HBRUSH      hbrBackground;
    LPCWSTR     lpszMenuName;
    LPCWSTR     lpszClassName;
} WNDCLASSW, *PWNDCLASSW,  *NPWNDCLASSW,  *LPWNDCLASSW;






typedef WNDCLASSA WNDCLASS;
typedef PWNDCLASSA PWNDCLASS;
typedef NPWNDCLASSA NPWNDCLASS;
typedef LPWNDCLASSA LPWNDCLASS;
#line 1219 "e:\\program\\vc98\\include\\winuser.h"







typedef struct tagMSG {
    HWND        hwnd;
    UINT        message;
    WPARAM      wParam;
    LPARAM      lParam;
    DWORD       time;
    POINT       pt;



} MSG, *PMSG,  *NPMSG,  *LPMSG;











#line 1249 "e:\\program\\vc98\\include\\winuser.h"






























#line 1280 "e:\\program\\vc98\\include\\winuser.h"

#line 1282 "e:\\program\\vc98\\include\\winuser.h"










































#line 1325 "e:\\program\\vc98\\include\\winuser.h"

















typedef struct tagMINMAXINFO {
    POINT ptReserved;
    POINT ptMaxSize;
    POINT ptMaxPosition;
    POINT ptMinTrackSize;
    POINT ptMaxTrackSize;
} MINMAXINFO, *PMINMAXINFO, *LPMINMAXINFO;



















#line 1369 "e:\\program\\vc98\\include\\winuser.h"























typedef struct tagCOPYDATASTRUCT {
    DWORD dwData;
    DWORD cbData;
    PVOID lpData;
} COPYDATASTRUCT, *PCOPYDATASTRUCT;























#line 1421 "e:\\program\\vc98\\include\\winuser.h"




































#line 1458 "e:\\program\\vc98\\include\\winuser.h"


















#line 1477 "e:\\program\\vc98\\include\\winuser.h"


























#line 1504 "e:\\program\\vc98\\include\\winuser.h"

#line 1506 "e:\\program\\vc98\\include\\winuser.h"



#line 1510 "e:\\program\\vc98\\include\\winuser.h"


#line 1513 "e:\\program\\vc98\\include\\winuser.h"









typedef struct tagMDINEXTMENU
{
    HMENU   hmenuIn;
    HMENU   hmenuNext;
    HWND    hwndNext;
} MDINEXTMENU, * PMDINEXTMENU,  * LPMDINEXTMENU;


































#line 1563 "e:\\program\\vc98\\include\\winuser.h"



























#line 1591 "e:\\program\\vc98\\include\\winuser.h"


#line 1594 "e:\\program\\vc98\\include\\winuser.h"



#line 1598 "e:\\program\\vc98\\include\\winuser.h"





#line 1604 "e:\\program\\vc98\\include\\winuser.h"






























#line 1635 "e:\\program\\vc98\\include\\winuser.h"







#line 1643 "e:\\program\\vc98\\include\\winuser.h"




















#line 1664 "e:\\program\\vc98\\include\\winuser.h"




































#line 1701 "e:\\program\\vc98\\include\\winuser.h"









#line 1711 "e:\\program\\vc98\\include\\winuser.h"

#line 1713 "e:\\program\\vc98\\include\\winuser.h"

















__declspec(dllimport)
UINT
__stdcall
RegisterWindowMessageA(
    LPCSTR lpString);
__declspec(dllimport)
UINT
__stdcall
RegisterWindowMessageW(
    LPCWSTR lpString);




#line 1745 "e:\\program\\vc98\\include\\winuser.h"

























typedef struct tagWINDOWPOS {
    HWND    hwnd;
    HWND    hwndInsertAfter;
    int     x;
    int     y;
    int     cx;
    int     cy;
    UINT    flags;
} WINDOWPOS, *LPWINDOWPOS, *PWINDOWPOS;




typedef struct tagNCCALCSIZE_PARAMS {
    RECT       rgrc[3];
    PWINDOWPOS lppos;
} NCCALCSIZE_PARAMS, *LPNCCALCSIZE_PARAMS;



























#line 1815 "e:\\program\\vc98\\include\\winuser.h"





























#line 1845 "e:\\program\\vc98\\include\\winuser.h"



#line 1849 "e:\\program\\vc98\\include\\winuser.h"


















































































#line 1932 "e:\\program\\vc98\\include\\winuser.h"






















#line 1955 "e:\\program\\vc98\\include\\winuser.h"




















































__declspec(dllimport)
BOOL
__stdcall
DrawEdge(HDC hdc, LPRECT qrc, UINT edge, UINT grfFlags);









#line 2021 "e:\\program\\vc98\\include\\winuser.h"

































#line 2055 "e:\\program\\vc98\\include\\winuser.h"





__declspec(dllimport)
BOOL
__stdcall
DrawFrameControl(HDC, LPRECT, UINT, UINT);










#line 2075 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
DrawCaption(HWND, HDC, const RECT *, UINT);






__declspec(dllimport)
BOOL
__stdcall
DrawAnimatedRects(HWND hwnd, int idAni, const RECT * lprcFrom, const RECT * lprcTo);

#line 2092 "e:\\program\\vc98\\include\\winuser.h"


























#line 2119 "e:\\program\\vc98\\include\\winuser.h"





















#line 2141 "e:\\program\\vc98\\include\\winuser.h"










typedef struct tagACCEL {

    BYTE   fVirt;               
    WORD   key;
    WORD   cmd;




#line 2161 "e:\\program\\vc98\\include\\winuser.h"
} ACCEL, *LPACCEL;

typedef struct tagPAINTSTRUCT {
    HDC         hdc;
    BOOL        fErase;
    RECT        rcPaint;
    BOOL        fRestore;
    BOOL        fIncUpdate;
    BYTE        rgbReserved[32];
} PAINTSTRUCT, *PPAINTSTRUCT, *NPPAINTSTRUCT, *LPPAINTSTRUCT;

typedef struct tagCREATESTRUCTA {
    LPVOID      lpCreateParams;
    HINSTANCE   hInstance;
    HMENU       hMenu;
    HWND        hwndParent;
    int         cy;
    int         cx;
    int         y;
    int         x;
    LONG        style;
    LPCSTR      lpszName;
    LPCSTR      lpszClass;
    DWORD       dwExStyle;
} CREATESTRUCTA, *LPCREATESTRUCTA;
typedef struct tagCREATESTRUCTW {
    LPVOID      lpCreateParams;
    HINSTANCE   hInstance;
    HMENU       hMenu;
    HWND        hwndParent;
    int         cy;
    int         cx;
    int         y;
    int         x;
    LONG        style;
    LPCWSTR     lpszName;
    LPCWSTR     lpszClass;
    DWORD       dwExStyle;
} CREATESTRUCTW, *LPCREATESTRUCTW;




typedef CREATESTRUCTA CREATESTRUCT;
typedef LPCREATESTRUCTA LPCREATESTRUCT;
#line 2207 "e:\\program\\vc98\\include\\winuser.h"

typedef struct tagWINDOWPLACEMENT {
    UINT  length;
    UINT  flags;
    UINT  showCmd;
    POINT ptMinPosition;
    POINT ptMaxPosition;
    RECT  rcNormalPosition;



} WINDOWPLACEMENT;
typedef WINDOWPLACEMENT *PWINDOWPLACEMENT, *LPWINDOWPLACEMENT;




typedef struct tagNMHDR
{
    HWND  hwndFrom;
    UINT  idFrom;
    UINT  code;         
}   NMHDR;
typedef NMHDR  * LPNMHDR;

typedef struct tagSTYLESTRUCT
{
    DWORD   styleOld;
    DWORD   styleNew;
} STYLESTRUCT, * LPSTYLESTRUCT;
#line 2238 "e:\\program\\vc98\\include\\winuser.h"











#line 2250 "e:\\program\\vc98\\include\\winuser.h"



















#line 2270 "e:\\program\\vc98\\include\\winuser.h"



#line 2274 "e:\\program\\vc98\\include\\winuser.h"




typedef struct tagMEASUREITEMSTRUCT {
    UINT       CtlType;
    UINT       CtlID;
    UINT       itemID;
    UINT       itemWidth;
    UINT       itemHeight;
    DWORD      itemData;
} MEASUREITEMSTRUCT,  *PMEASUREITEMSTRUCT,  *LPMEASUREITEMSTRUCT;





typedef struct tagDRAWITEMSTRUCT {
    UINT        CtlType;
    UINT        CtlID;
    UINT        itemID;
    UINT        itemAction;
    UINT        itemState;
    HWND        hwndItem;
    HDC         hDC;
    RECT        rcItem;
    DWORD       itemData;
} DRAWITEMSTRUCT,  *PDRAWITEMSTRUCT,  *LPDRAWITEMSTRUCT;




typedef struct tagDELETEITEMSTRUCT {
    UINT       CtlType;
    UINT       CtlID;
    UINT       itemID;
    HWND       hwndItem;
    UINT       itemData;
} DELETEITEMSTRUCT,  *PDELETEITEMSTRUCT,  *LPDELETEITEMSTRUCT;




typedef struct tagCOMPAREITEMSTRUCT {
    UINT        CtlType;
    UINT        CtlID;
    HWND        hwndItem;
    UINT        itemID1;
    DWORD       itemData1;
    UINT        itemID2;
    DWORD       itemData2;
    DWORD       dwLocaleId;
} COMPAREITEMSTRUCT,  *PCOMPAREITEMSTRUCT,  *LPCOMPAREITEMSTRUCT;







__declspec(dllimport)
BOOL
__stdcall
GetMessageA(
    LPMSG lpMsg,
    HWND hWnd ,
    UINT wMsgFilterMin,
    UINT wMsgFilterMax);
__declspec(dllimport)
BOOL
__stdcall
GetMessageW(
    LPMSG lpMsg,
    HWND hWnd ,
    UINT wMsgFilterMin,
    UINT wMsgFilterMax);




#line 2355 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
TranslateMessage(
    const MSG *lpMsg);

__declspec(dllimport)
LONG
__stdcall
DispatchMessageA(
    const MSG *lpMsg);
__declspec(dllimport)
LONG
__stdcall
DispatchMessageW(
    const MSG *lpMsg);




#line 2377 "e:\\program\\vc98\\include\\winuser.h"


__declspec(dllimport)
BOOL
__stdcall
SetMessageQueue(
    int cMessagesMax);

__declspec(dllimport)
BOOL
__stdcall
PeekMessageA(
    LPMSG lpMsg,
    HWND hWnd ,
    UINT wMsgFilterMin,
    UINT wMsgFilterMax,
    UINT wRemoveMsg);
__declspec(dllimport)
BOOL
__stdcall
PeekMessageW(
    LPMSG lpMsg,
    HWND hWnd ,
    UINT wMsgFilterMin,
    UINT wMsgFilterMax,
    UINT wRemoveMsg);




#line 2408 "e:\\program\\vc98\\include\\winuser.h"








#line 2417 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
RegisterHotKey(
    HWND hWnd ,
    int id,
    UINT fsModifiers,
    UINT vk);

__declspec(dllimport)
BOOL
__stdcall
UnregisterHotKey(
    HWND hWnd,
    int id);






















#line 2456 "e:\\program\\vc98\\include\\winuser.h"








#line 2465 "e:\\program\\vc98\\include\\winuser.h"




__declspec(dllimport)
BOOL
__stdcall
ExitWindowsEx(
    UINT uFlags,
    DWORD dwReserved);

__declspec(dllimport)
BOOL
__stdcall
SwapMouseButton(
    BOOL fSwap);

__declspec(dllimport)
DWORD
__stdcall
GetMessagePos(
    void);

__declspec(dllimport)
LONG
__stdcall
GetMessageTime(
    void);

__declspec(dllimport)
LONG
__stdcall
GetMessageExtraInfo(
    void);


__declspec(dllimport)
LPARAM
__stdcall
SetMessageExtraInfo(
    LPARAM lParam);
#line 2507 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
LRESULT
__stdcall
SendMessageA(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);
__declspec(dllimport)
LRESULT
__stdcall
SendMessageW(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);




#line 2529 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
LRESULT
__stdcall
SendMessageTimeoutA(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam,
    UINT fuFlags,
    UINT uTimeout,
    LPDWORD lpdwResult);
__declspec(dllimport)
LRESULT
__stdcall
SendMessageTimeoutW(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam,
    UINT fuFlags,
    UINT uTimeout,
    LPDWORD lpdwResult);




#line 2557 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
SendNotifyMessageA(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);
__declspec(dllimport)
BOOL
__stdcall
SendNotifyMessageW(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);




#line 2579 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
SendMessageCallbackA(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam,
    SENDASYNCPROC lpResultCallBack,
    DWORD dwData);
__declspec(dllimport)
BOOL
__stdcall
SendMessageCallbackW(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam,
    SENDASYNCPROC lpResultCallBack,
    DWORD dwData);




#line 2605 "e:\\program\\vc98\\include\\winuser.h"











#line 2617 "e:\\program\\vc98\\include\\winuser.h"


#line 2620 "e:\\program\\vc98\\include\\winuser.h"



















#line 2640 "e:\\program\\vc98\\include\\winuser.h"





































#line 2678 "e:\\program\\vc98\\include\\winuser.h"


__declspec(dllimport)
BOOL
__stdcall
PostMessageA(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);
__declspec(dllimport)
BOOL
__stdcall
PostMessageW(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);




#line 2701 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
PostThreadMessageA(
    DWORD idThread,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);
__declspec(dllimport)
BOOL
__stdcall
PostThreadMessageW(
    DWORD idThread,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);




#line 2723 "e:\\program\\vc98\\include\\winuser.h"









#line 2733 "e:\\program\\vc98\\include\\winuser.h"








#line 2742 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
AttachThreadInput(
    DWORD idAttach,
    DWORD idAttachTo,
    BOOL fAttach);


__declspec(dllimport)
BOOL
__stdcall
ReplyMessage(
    LRESULT lResult);

__declspec(dllimport)
BOOL
__stdcall
WaitMessage(
    void);

__declspec(dllimport)
DWORD
__stdcall
WaitForInputIdle(
    HANDLE hProcess,
    DWORD dwMilliseconds);

__declspec(dllimport)

LRESULT
__stdcall



#line 2779 "e:\\program\\vc98\\include\\winuser.h"
DefWindowProcA(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);
__declspec(dllimport)

LRESULT
__stdcall



#line 2792 "e:\\program\\vc98\\include\\winuser.h"
DefWindowProcW(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);




#line 2802 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
void
__stdcall
PostQuitMessage(
    int nExitCode);



__declspec(dllimport)
LRESULT
__stdcall
CallWindowProcA(
    WNDPROC lpPrevWndFunc,
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);
__declspec(dllimport)
LRESULT
__stdcall
CallWindowProcW(
    WNDPROC lpPrevWndFunc,
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);




#line 2834 "e:\\program\\vc98\\include\\winuser.h"



























#line 2862 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
InSendMessage(
    void);
















#line 2885 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
UINT
__stdcall
GetDoubleClickTime(
    void);

__declspec(dllimport)
BOOL
__stdcall
SetDoubleClickTime(
    UINT);

__declspec(dllimport)
ATOM
__stdcall
RegisterClassA(
    const WNDCLASSA *lpWndClass);
__declspec(dllimport)
ATOM
__stdcall
RegisterClassW(
    const WNDCLASSW *lpWndClass);




#line 2913 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
UnregisterClassA(
    LPCSTR lpClassName,
    HINSTANCE hInstance);
__declspec(dllimport)
BOOL
__stdcall
UnregisterClassW(
    LPCWSTR lpClassName,
    HINSTANCE hInstance);




#line 2931 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
GetClassInfoA(
    HINSTANCE hInstance ,
    LPCSTR lpClassName,
    LPWNDCLASSA lpWndClass);
__declspec(dllimport)
BOOL
__stdcall
GetClassInfoW(
    HINSTANCE hInstance ,
    LPCWSTR lpClassName,
    LPWNDCLASSW lpWndClass);




#line 2951 "e:\\program\\vc98\\include\\winuser.h"


__declspec(dllimport)
ATOM
__stdcall
RegisterClassExA(const WNDCLASSEXA *);
__declspec(dllimport)
ATOM
__stdcall
RegisterClassExW(const WNDCLASSEXW *);




#line 2966 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
GetClassInfoExA(HINSTANCE, LPCSTR, LPWNDCLASSEXA);
__declspec(dllimport)
BOOL
__stdcall
GetClassInfoExW(HINSTANCE, LPCWSTR, LPWNDCLASSEXW);




#line 2980 "e:\\program\\vc98\\include\\winuser.h"

#line 2982 "e:\\program\\vc98\\include\\winuser.h"








__declspec(dllimport)
HWND
__stdcall
CreateWindowExA(
    DWORD dwExStyle,
    LPCSTR lpClassName,
    LPCSTR lpWindowName,
    DWORD dwStyle,
    int X,
    int Y,
    int nWidth,
    int nHeight,
    HWND hWndParent ,
    HMENU hMenu,
    HINSTANCE hInstance,
    LPVOID lpParam);
__declspec(dllimport)
HWND
__stdcall
CreateWindowExW(
    DWORD dwExStyle,
    LPCWSTR lpClassName,
    LPCWSTR lpWindowName,
    DWORD dwStyle,
    int X,
    int Y,
    int nWidth,
    int nHeight,
    HWND hWndParent ,
    HMENU hMenu,
    HINSTANCE hInstance,
    LPVOID lpParam);




#line 3027 "e:\\program\\vc98\\include\\winuser.h"













#line 3041 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
IsWindow(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
IsMenu(
    HMENU hMenu);

__declspec(dllimport)
BOOL
__stdcall
IsChild(
    HWND hWndParent,
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
DestroyWindow(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
ShowWindow(
    HWND hWnd,
    int nCmdShow);









#line 3083 "e:\\program\\vc98\\include\\winuser.h"


__declspec(dllimport)
BOOL
__stdcall
ShowWindowAsync(
    HWND hWnd,
    int nCmdShow);
#line 3092 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
FlashWindow(
    HWND hWnd,


#line 3101 "e:\\program\\vc98\\include\\winuser.h"
    BOOL bInvert);
#line 3103 "e:\\program\\vc98\\include\\winuser.h"








#line 3112 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
ShowOwnedPopups(
    HWND hWnd,
    BOOL fShow);

__declspec(dllimport)
BOOL
__stdcall
OpenIcon(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
CloseWindow(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
MoveWindow(
    HWND hWnd,
    int X,
    int Y,
    int nWidth,
    int nHeight,
    BOOL bRepaint);

__declspec(dllimport)
BOOL
__stdcall
SetWindowPos(
    HWND hWnd,
    HWND hWndInsertAfter ,
    int X,
    int Y,
    int cx,
    int cy,
    UINT uFlags);

__declspec(dllimport)
BOOL
__stdcall
GetWindowPlacement(
    HWND hWnd,
    WINDOWPLACEMENT *lpwndpl);

__declspec(dllimport)
BOOL
__stdcall
SetWindowPlacement(
    HWND hWnd,
    const WINDOWPLACEMENT *lpwndpl);




__declspec(dllimport)
HDWP
__stdcall
BeginDeferWindowPos(
    int nNumWindows);

__declspec(dllimport)
HDWP
__stdcall
DeferWindowPos(
    HDWP hWinPosInfo,
    HWND hWnd,
    HWND hWndInsertAfter ,
    int x,
    int y,
    int cx,
    int cy,
    UINT uFlags);

__declspec(dllimport)
BOOL
__stdcall
EndDeferWindowPos(
    HDWP hWinPosInfo);

#line 3198 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
IsWindowVisible(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
IsIconic(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
AnyPopup(
    void);

__declspec(dllimport)
BOOL
__stdcall
BringWindowToTop(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
IsZoomed(
    HWND hWnd);






















#line 3251 "e:\\program\\vc98\\include\\winuser.h"














#line 1 "e:\\program\\vc98\\include\\pshpack2.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "e:\\program\\vc98\\include\\pshpack2.h"
#pragma pack(2)


#line 32 "e:\\program\\vc98\\include\\pshpack2.h"
#line 33 "e:\\program\\vc98\\include\\pshpack2.h"
#line 3266 "e:\\program\\vc98\\include\\winuser.h"




typedef struct {
    DWORD style;
    DWORD dwExtendedStyle;
    WORD cdit;
    short x;
    short y;
    short cx;
    short cy;
} DLGTEMPLATE;
typedef DLGTEMPLATE *LPDLGTEMPLATEA;
typedef DLGTEMPLATE *LPDLGTEMPLATEW;



typedef LPDLGTEMPLATEA LPDLGTEMPLATE;
#line 3286 "e:\\program\\vc98\\include\\winuser.h"
typedef const DLGTEMPLATE *LPCDLGTEMPLATEA;
typedef const DLGTEMPLATE *LPCDLGTEMPLATEW;



typedef LPCDLGTEMPLATEA LPCDLGTEMPLATE;
#line 3293 "e:\\program\\vc98\\include\\winuser.h"




typedef struct {
    DWORD style;
    DWORD dwExtendedStyle;
    short x;
    short y;
    short cx;
    short cy;
    WORD id;
} DLGITEMTEMPLATE;
typedef DLGITEMTEMPLATE *PDLGITEMTEMPLATEA;
typedef DLGITEMTEMPLATE *PDLGITEMTEMPLATEW;



typedef PDLGITEMTEMPLATEA PDLGITEMTEMPLATE;
#line 3313 "e:\\program\\vc98\\include\\winuser.h"
typedef DLGITEMTEMPLATE *LPDLGITEMTEMPLATEA;
typedef DLGITEMTEMPLATE *LPDLGITEMTEMPLATEW;



typedef LPDLGITEMTEMPLATEA LPDLGITEMTEMPLATE;
#line 3320 "e:\\program\\vc98\\include\\winuser.h"


#line 1 "e:\\program\\vc98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "e:\\program\\vc98\\include\\poppack.h"


#line 36 "e:\\program\\vc98\\include\\poppack.h"
#line 37 "e:\\program\\vc98\\include\\poppack.h"
#line 3323 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
HWND
__stdcall
CreateDialogParamA(
    HINSTANCE hInstance,
    LPCSTR lpTemplateName,
    HWND hWndParent ,
    DLGPROC lpDialogFunc,
    LPARAM dwInitParam);
__declspec(dllimport)
HWND
__stdcall
CreateDialogParamW(
    HINSTANCE hInstance,
    LPCWSTR lpTemplateName,
    HWND hWndParent ,
    DLGPROC lpDialogFunc,
    LPARAM dwInitParam);




#line 3347 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
HWND
__stdcall
CreateDialogIndirectParamA(
    HINSTANCE hInstance,
    LPCDLGTEMPLATEA lpTemplate,
    HWND hWndParent,
    DLGPROC lpDialogFunc,
    LPARAM dwInitParam);
__declspec(dllimport)
HWND
__stdcall
CreateDialogIndirectParamW(
    HINSTANCE hInstance,
    LPCDLGTEMPLATEW lpTemplate,
    HWND hWndParent,
    DLGPROC lpDialogFunc,
    LPARAM dwInitParam);




#line 3371 "e:\\program\\vc98\\include\\winuser.h"









#line 3381 "e:\\program\\vc98\\include\\winuser.h"









#line 3391 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
DialogBoxParamA(
    HINSTANCE hInstance,
    LPCSTR lpTemplateName,
    HWND hWndParent ,
    DLGPROC lpDialogFunc,
    LPARAM dwInitParam);
__declspec(dllimport)
int
__stdcall
DialogBoxParamW(
    HINSTANCE hInstance,
    LPCWSTR lpTemplateName,
    HWND hWndParent ,
    DLGPROC lpDialogFunc,
    LPARAM dwInitParam);




#line 3415 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
DialogBoxIndirectParamA(
    HINSTANCE hInstance,
    LPCDLGTEMPLATEA hDialogTemplate,
    HWND hWndParent ,
    DLGPROC lpDialogFunc,
    LPARAM dwInitParam);
__declspec(dllimport)
int
__stdcall
DialogBoxIndirectParamW(
    HINSTANCE hInstance,
    LPCDLGTEMPLATEW hDialogTemplate,
    HWND hWndParent ,
    DLGPROC lpDialogFunc,
    LPARAM dwInitParam);




#line 3439 "e:\\program\\vc98\\include\\winuser.h"









#line 3449 "e:\\program\\vc98\\include\\winuser.h"









#line 3459 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
EndDialog(
    HWND hDlg,
    int nResult);

__declspec(dllimport)
HWND
__stdcall
GetDlgItem(
    HWND hDlg,
    int nIDDlgItem);

__declspec(dllimport)
BOOL
__stdcall
SetDlgItemInt(
    HWND hDlg,
    int nIDDlgItem,
    UINT uValue,
    BOOL bSigned);

__declspec(dllimport)
UINT
__stdcall
GetDlgItemInt(
    HWND hDlg,
    int nIDDlgItem,
    BOOL *lpTranslated,
    BOOL bSigned);

__declspec(dllimport)
BOOL
__stdcall
SetDlgItemTextA(
    HWND hDlg,
    int nIDDlgItem,
    LPCSTR lpString);
__declspec(dllimport)
BOOL
__stdcall
SetDlgItemTextW(
    HWND hDlg,
    int nIDDlgItem,
    LPCWSTR lpString);




#line 3511 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
UINT
__stdcall
GetDlgItemTextA(
    HWND hDlg,
    int nIDDlgItem,
    LPSTR lpString,
    int nMaxCount);
__declspec(dllimport)
UINT
__stdcall
GetDlgItemTextW(
    HWND hDlg,
    int nIDDlgItem,
    LPWSTR lpString,
    int nMaxCount);




#line 3533 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
CheckDlgButton(
    HWND hDlg,
    int nIDButton,
    UINT uCheck);

__declspec(dllimport)
BOOL
__stdcall
CheckRadioButton(
    HWND hDlg,
    int nIDFirstButton,
    int nIDLastButton,
    int nIDCheckButton);

__declspec(dllimport)
UINT
__stdcall
IsDlgButtonChecked(
    HWND hDlg,
    int nIDButton);

__declspec(dllimport)
LONG
__stdcall
SendDlgItemMessageA(
    HWND hDlg,
    int nIDDlgItem,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);
__declspec(dllimport)
LONG
__stdcall
SendDlgItemMessageW(
    HWND hDlg,
    int nIDDlgItem,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);




#line 3581 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
HWND
__stdcall
GetNextDlgGroupItem(
    HWND hDlg,
    HWND hCtl,
    BOOL bPrevious);

__declspec(dllimport)
HWND
__stdcall
GetNextDlgTabItem(
    HWND hDlg,
    HWND hCtl,
    BOOL bPrevious);

__declspec(dllimport)
int
__stdcall
GetDlgCtrlID(
    HWND hWnd);

__declspec(dllimport)
long
__stdcall
GetDialogBaseUnits(void);

__declspec(dllimport)

LRESULT
__stdcall



#line 3617 "e:\\program\\vc98\\include\\winuser.h"
DefDlgProcA(
    HWND hDlg,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);
__declspec(dllimport)

LRESULT
__stdcall



#line 3630 "e:\\program\\vc98\\include\\winuser.h"
DefDlgProcW(
    HWND hDlg,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);




#line 3640 "e:\\program\\vc98\\include\\winuser.h"








#line 3649 "e:\\program\\vc98\\include\\winuser.h"

#line 3651 "e:\\program\\vc98\\include\\winuser.h"



__declspec(dllimport)
BOOL
__stdcall
CallMsgFilterA(
    LPMSG lpMsg,
    int nCode);
__declspec(dllimport)
BOOL
__stdcall
CallMsgFilterW(
    LPMSG lpMsg,
    int nCode);




#line 3671 "e:\\program\\vc98\\include\\winuser.h"

#line 3673 "e:\\program\\vc98\\include\\winuser.h"







__declspec(dllimport)
BOOL
__stdcall
OpenClipboard(
    HWND hWndNewOwner);

__declspec(dllimport)
BOOL
__stdcall
CloseClipboard(
    void);








#line 3700 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
HWND
__stdcall
GetClipboardOwner(
    void);

__declspec(dllimport)
HWND
__stdcall
SetClipboardViewer(
    HWND hWndNewViewer);

__declspec(dllimport)
HWND
__stdcall
GetClipboardViewer(
    void);

__declspec(dllimport)
BOOL
__stdcall
ChangeClipboardChain(
    HWND hWndRemove,
    HWND hWndNewNext);

__declspec(dllimport)
HANDLE
__stdcall
SetClipboardData(
    UINT uFormat,
    HANDLE hMem);

__declspec(dllimport)
HANDLE
__stdcall
    GetClipboardData(
    UINT uFormat);

__declspec(dllimport)
UINT
__stdcall
RegisterClipboardFormatA(
    LPCSTR lpszFormat);
__declspec(dllimport)
UINT
__stdcall
RegisterClipboardFormatW(
    LPCWSTR lpszFormat);




#line 3754 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
CountClipboardFormats(
    void);

__declspec(dllimport)
UINT
__stdcall
EnumClipboardFormats(
    UINT format);

__declspec(dllimport)
int
__stdcall
GetClipboardFormatNameA(
    UINT format,
    LPSTR lpszFormatName,
    int cchMaxCount);
__declspec(dllimport)
int
__stdcall
GetClipboardFormatNameW(
    UINT format,
    LPWSTR lpszFormatName,
    int cchMaxCount);




#line 3786 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
EmptyClipboard(
    void);

__declspec(dllimport)
BOOL
__stdcall
IsClipboardFormatAvailable(
    UINT format);

__declspec(dllimport)
int
__stdcall
GetPriorityClipboardFormat(
    UINT *paFormatPriorityList,
    int cFormats);

__declspec(dllimport)
HWND
__stdcall
GetOpenClipboardWindow(
    void);

#line 3813 "e:\\program\\vc98\\include\\winuser.h"





__declspec(dllimport)
BOOL
__stdcall
CharToOemA(
    LPCSTR lpszSrc,
    LPSTR lpszDst);
__declspec(dllimport)
BOOL
__stdcall
CharToOemW(
    LPCWSTR lpszSrc,
    LPSTR lpszDst);




#line 3835 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
OemToCharA(
    LPCSTR lpszSrc,
    LPSTR lpszDst);
__declspec(dllimport)
BOOL
__stdcall
OemToCharW(
    LPCSTR lpszSrc,
    LPWSTR lpszDst);




#line 3853 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
CharToOemBuffA(
    LPCSTR lpszSrc,
    LPSTR lpszDst,
    DWORD cchDstLength);
__declspec(dllimport)
BOOL
__stdcall
CharToOemBuffW(
    LPCWSTR lpszSrc,
    LPSTR lpszDst,
    DWORD cchDstLength);




#line 3873 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
OemToCharBuffA(
    LPCSTR lpszSrc,
    LPSTR lpszDst,
    DWORD cchDstLength);
__declspec(dllimport)
BOOL
__stdcall
OemToCharBuffW(
    LPCSTR lpszSrc,
    LPWSTR lpszDst,
    DWORD cchDstLength);




#line 3893 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
LPSTR
__stdcall
CharUpperA(
    LPSTR lpsz);
__declspec(dllimport)
LPWSTR
__stdcall
CharUpperW(
    LPWSTR lpsz);




#line 3909 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
DWORD
__stdcall
CharUpperBuffA(
    LPSTR lpsz,
    DWORD cchLength);
__declspec(dllimport)
DWORD
__stdcall
CharUpperBuffW(
    LPWSTR lpsz,
    DWORD cchLength);




#line 3927 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
LPSTR
__stdcall
CharLowerA(
    LPSTR lpsz);
__declspec(dllimport)
LPWSTR
__stdcall
CharLowerW(
    LPWSTR lpsz);




#line 3943 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
DWORD
__stdcall
CharLowerBuffA(
    LPSTR lpsz,
    DWORD cchLength);
__declspec(dllimport)
DWORD
__stdcall
CharLowerBuffW(
    LPWSTR lpsz,
    DWORD cchLength);




#line 3961 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
LPSTR
__stdcall
CharNextA(
    LPCSTR lpsz);
__declspec(dllimport)
LPWSTR
__stdcall
CharNextW(
    LPCWSTR lpsz);




#line 3977 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
LPSTR
__stdcall
CharPrevA(
    LPCSTR lpszStart,
    LPCSTR lpszCurrent);
__declspec(dllimport)
LPWSTR
__stdcall
CharPrevW(
    LPCWSTR lpszStart,
    LPCWSTR lpszCurrent);




#line 3995 "e:\\program\\vc98\\include\\winuser.h"


__declspec(dllimport)
LPSTR
__stdcall
CharNextExA(
     WORD CodePage,
     LPCSTR lpCurrentChar,
     DWORD dwFlags);

__declspec(dllimport)
LPSTR
__stdcall
CharPrevExA(
     WORD CodePage,
     LPCSTR lpStart,
     LPCSTR lpCurrentChar,
     DWORD dwFlags);
#line 4014 "e:\\program\\vc98\\include\\winuser.h"




















__declspec(dllimport)
BOOL
__stdcall
IsCharAlphaA(
    CHAR ch);
__declspec(dllimport)
BOOL
__stdcall
IsCharAlphaW(
    WCHAR ch);




#line 4049 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
IsCharAlphaNumericA(
    CHAR ch);
__declspec(dllimport)
BOOL
__stdcall
IsCharAlphaNumericW(
    WCHAR ch);




#line 4065 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
IsCharUpperA(
    CHAR ch);
__declspec(dllimport)
BOOL
__stdcall
IsCharUpperW(
    WCHAR ch);




#line 4081 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
IsCharLowerA(
    CHAR ch);
__declspec(dllimport)
BOOL
__stdcall
IsCharLowerW(
    WCHAR ch);




#line 4097 "e:\\program\\vc98\\include\\winuser.h"

#line 4099 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
HWND
__stdcall
SetFocus(
    HWND hWnd);

__declspec(dllimport)
HWND
__stdcall
GetActiveWindow(
    void);

__declspec(dllimport)
HWND
__stdcall
GetFocus(
    void);

__declspec(dllimport)
UINT
__stdcall
GetKBCodePage(
    void);

__declspec(dllimport)
SHORT
__stdcall
GetKeyState(
    int nVirtKey);

__declspec(dllimport)
SHORT
__stdcall
GetAsyncKeyState(
    int vKey);

__declspec(dllimport)
BOOL
__stdcall
GetKeyboardState(
    PBYTE lpKeyState);

__declspec(dllimport)
BOOL
__stdcall
SetKeyboardState(
    LPBYTE lpKeyState);

__declspec(dllimport)
int
__stdcall
GetKeyNameTextA(
    LONG lParam,
    LPSTR lpString,
    int nSize
    );
__declspec(dllimport)
int
__stdcall
GetKeyNameTextW(
    LONG lParam,
    LPWSTR lpString,
    int nSize
    );




#line 4169 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
GetKeyboardType(
    int nTypeFlag);

__declspec(dllimport)
int
__stdcall
ToAscii(
    UINT uVirtKey,
    UINT uScanCode,
    PBYTE lpKeyState,
    LPWORD lpChar,
    UINT uFlags);


__declspec(dllimport)
int
__stdcall
ToAsciiEx(
    UINT uVirtKey,
    UINT uScanCode,
    PBYTE lpKeyState,
    LPWORD lpChar,
    UINT uFlags,
    HKL dwhkl);
#line 4198 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
ToUnicode(
    UINT wVirtKey,
    UINT wScanCode,
    PBYTE lpKeyState,
    LPWSTR pwszBuff,
    int cchBuff,
    UINT wFlags);

__declspec(dllimport)
DWORD
__stdcall
OemKeyScan(
    WORD wOemChar);

__declspec(dllimport)
SHORT
__stdcall
VkKeyScanA(
    CHAR ch);
__declspec(dllimport)
SHORT
__stdcall
VkKeyScanW(
    WCHAR ch);




#line 4231 "e:\\program\\vc98\\include\\winuser.h"


__declspec(dllimport)
SHORT
__stdcall VkKeyScanExA(
    CHAR  ch,
    HKL   dwhkl);
__declspec(dllimport)
SHORT
__stdcall VkKeyScanExW(
    WCHAR  ch,
    HKL   dwhkl);




#line 4248 "e:\\program\\vc98\\include\\winuser.h"
#line 4249 "e:\\program\\vc98\\include\\winuser.h"



__declspec(dllimport)
void
__stdcall
keybd_event(
    BYTE bVk,
    BYTE bScan,
    DWORD dwFlags,
    DWORD dwExtraInfo);











__declspec(dllimport)
void
__stdcall
mouse_event(
    DWORD dwFlags,
    DWORD dx,
    DWORD dy,
    DWORD dwData,
    DWORD dwExtraInfo);

















































#line 4330 "e:\\program\\vc98\\include\\winuser.h"












#line 4343 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
UINT
__stdcall
MapVirtualKeyA(
    UINT uCode,
    UINT uMapType);
__declspec(dllimport)
UINT
__stdcall
MapVirtualKeyW(
    UINT uCode,
    UINT uMapType);




#line 4361 "e:\\program\\vc98\\include\\winuser.h"


__declspec(dllimport)
UINT
__stdcall
MapVirtualKeyExA(
    UINT uCode,
    UINT uMapType,
    HKL dwhkl);
__declspec(dllimport)
UINT
__stdcall
MapVirtualKeyExW(
    UINT uCode,
    UINT uMapType,
    HKL dwhkl);




#line 4382 "e:\\program\\vc98\\include\\winuser.h"
#line 4383 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
GetInputState(
    void);

__declspec(dllimport)
DWORD
__stdcall
GetQueueStatus(
    UINT flags);

__declspec(dllimport)
HWND
__stdcall
GetCapture(
    void);

__declspec(dllimport)
HWND
__stdcall
SetCapture(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
ReleaseCapture(
    void);

__declspec(dllimport)
DWORD
__stdcall
MsgWaitForMultipleObjects(
    DWORD nCount,
    LPHANDLE pHandles,
    BOOL fWaitAll,
    DWORD dwMilliseconds,
    DWORD dwWakeMask);

__declspec(dllimport)
DWORD
__stdcall
MsgWaitForMultipleObjectsEx(
    DWORD nCount,
    LPHANDLE pHandles,
    DWORD dwMilliseconds,
    DWORD dwWakeMask,
    DWORD dwFlags);










































__declspec(dllimport)
UINT
__stdcall
SetTimer(
    HWND hWnd ,
    UINT nIDEvent,
    UINT uElapse,
    TIMERPROC lpTimerFunc);

__declspec(dllimport)
BOOL
__stdcall
KillTimer(
    HWND hWnd,
    UINT uIDEvent);

__declspec(dllimport)
BOOL
__stdcall
IsWindowUnicode(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
EnableWindow(
    HWND hWnd,
    BOOL bEnable);

__declspec(dllimport)
BOOL
__stdcall
IsWindowEnabled(
    HWND hWnd);

__declspec(dllimport)
HACCEL
__stdcall
LoadAcceleratorsA(
    HINSTANCE hInstance,
    LPCSTR lpTableName);
__declspec(dllimport)
HACCEL
__stdcall
LoadAcceleratorsW(
    HINSTANCE hInstance,
    LPCWSTR lpTableName);




#line 4527 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
HACCEL
__stdcall
CreateAcceleratorTableA(
    LPACCEL, int);
__declspec(dllimport)
HACCEL
__stdcall
CreateAcceleratorTableW(
    LPACCEL, int);




#line 4543 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
DestroyAcceleratorTable(
    HACCEL hAccel);

__declspec(dllimport)
int
__stdcall
CopyAcceleratorTableA(
    HACCEL hAccelSrc,
    LPACCEL lpAccelDst,
    int cAccelEntries);
__declspec(dllimport)
int
__stdcall
CopyAcceleratorTableW(
    HACCEL hAccelSrc,
    LPACCEL lpAccelDst,
    int cAccelEntries);




#line 4569 "e:\\program\\vc98\\include\\winuser.h"



__declspec(dllimport)
int
__stdcall
TranslateAcceleratorA(
    HWND hWnd,
    HACCEL hAccTable,
    LPMSG lpMsg);
__declspec(dllimport)
int
__stdcall
TranslateAcceleratorW(
    HWND hWnd,
    HACCEL hAccTable,
    LPMSG lpMsg);




#line 4591 "e:\\program\\vc98\\include\\winuser.h"

#line 4593 "e:\\program\\vc98\\include\\winuser.h"

















































































#line 4675 "e:\\program\\vc98\\include\\winuser.h"






#line 4682 "e:\\program\\vc98\\include\\winuser.h"


#line 4685 "e:\\program\\vc98\\include\\winuser.h"







#line 4693 "e:\\program\\vc98\\include\\winuser.h"





#line 4699 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
GetSystemMetrics(
    int nIndex);

#line 4707 "e:\\program\\vc98\\include\\winuser.h"



__declspec(dllimport)
HMENU
__stdcall
LoadMenuA(
    HINSTANCE hInstance,
    LPCSTR lpMenuName);
__declspec(dllimport)
HMENU
__stdcall
LoadMenuW(
    HINSTANCE hInstance,
    LPCWSTR lpMenuName);




#line 4727 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
HMENU
__stdcall
LoadMenuIndirectA(
    const MENUTEMPLATEA *lpMenuTemplate);
__declspec(dllimport)
HMENU
__stdcall
LoadMenuIndirectW(
    const MENUTEMPLATEW *lpMenuTemplate);




#line 4743 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
HMENU
__stdcall
GetMenu(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
SetMenu(
    HWND hWnd,
    HMENU hMenu);

__declspec(dllimport)
BOOL
__stdcall
ChangeMenuA(
    HMENU hMenu,
    UINT cmd,
    LPCSTR lpszNewItem,
    UINT cmdInsert,
    UINT flags);
__declspec(dllimport)
BOOL
__stdcall
ChangeMenuW(
    HMENU hMenu,
    UINT cmd,
    LPCWSTR lpszNewItem,
    UINT cmdInsert,
    UINT flags);




#line 4780 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
HiliteMenuItem(
    HWND hWnd,
    HMENU hMenu,
    UINT uIDHiliteItem,
    UINT uHilite);

__declspec(dllimport)
int
__stdcall
GetMenuStringA(
    HMENU hMenu,
    UINT uIDItem,
    LPSTR lpString,
    int nMaxCount,
    UINT uFlag);
__declspec(dllimport)
int
__stdcall
GetMenuStringW(
    HMENU hMenu,
    UINT uIDItem,
    LPWSTR lpString,
    int nMaxCount,
    UINT uFlag);




#line 4813 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
UINT
__stdcall
GetMenuState(
    HMENU hMenu,
    UINT uId,
    UINT uFlags);

__declspec(dllimport)
BOOL
__stdcall
DrawMenuBar(
    HWND hWnd);


__declspec(dllimport)
HMENU
__stdcall
GetSystemMenu(
    HWND hWnd,
    BOOL bRevert);


__declspec(dllimport)
HMENU
__stdcall
CreateMenu(
    void);

__declspec(dllimport)
HMENU
__stdcall
CreatePopupMenu(
    void);

__declspec(dllimport)
BOOL
__stdcall
DestroyMenu(
    HMENU hMenu);

__declspec(dllimport)
DWORD
__stdcall
CheckMenuItem(
    HMENU hMenu,
    UINT uIDCheckItem,
    UINT uCheck);

__declspec(dllimport)
BOOL
__stdcall
EnableMenuItem(
    HMENU hMenu,
    UINT uIDEnableItem,
    UINT uEnable);

__declspec(dllimport)
HMENU
__stdcall
GetSubMenu(
    HMENU hMenu,
    int nPos);

__declspec(dllimport)
UINT
__stdcall
GetMenuItemID(
    HMENU hMenu,
    int nPos);

__declspec(dllimport)
int
__stdcall
GetMenuItemCount(
    HMENU hMenu);

__declspec(dllimport)
BOOL
__stdcall
InsertMenuA(
    HMENU hMenu,
    UINT uPosition,
    UINT uFlags,
    UINT uIDNewItem,
    LPCSTR lpNewItem
    );
__declspec(dllimport)
BOOL
__stdcall
InsertMenuW(
    HMENU hMenu,
    UINT uPosition,
    UINT uFlags,
    UINT uIDNewItem,
    LPCWSTR lpNewItem
    );




#line 4916 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
AppendMenuA(
    HMENU hMenu,
    UINT uFlags,
    UINT uIDNewItem,
    LPCSTR lpNewItem
    );
__declspec(dllimport)
BOOL
__stdcall
AppendMenuW(
    HMENU hMenu,
    UINT uFlags,
    UINT uIDNewItem,
    LPCWSTR lpNewItem
    );




#line 4940 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
ModifyMenuA(
    HMENU hMnu,
    UINT uPosition,
    UINT uFlags,
    UINT uIDNewItem,
    LPCSTR lpNewItem
    );
__declspec(dllimport)
BOOL
__stdcall
ModifyMenuW(
    HMENU hMnu,
    UINT uPosition,
    UINT uFlags,
    UINT uIDNewItem,
    LPCWSTR lpNewItem
    );




#line 4966 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall RemoveMenu(
    HMENU hMenu,
    UINT uPosition,
    UINT uFlags);

__declspec(dllimport)
BOOL
__stdcall
DeleteMenu(
    HMENU hMenu,
    UINT uPosition,
    UINT uFlags);

__declspec(dllimport)
BOOL
__stdcall
SetMenuItemBitmaps(
    HMENU hMenu,
    UINT uPosition,
    UINT uFlags,
    HBITMAP hBitmapUnchecked,
    HBITMAP hBitmapChecked);

__declspec(dllimport)
LONG
__stdcall
GetMenuCheckMarkDimensions(
    void);

__declspec(dllimport)
BOOL
__stdcall
TrackPopupMenu(
    HMENU hMenu,
    UINT uFlags,
    int x,
    int y,
    int nReserved,
    HWND hWnd,
    const RECT *prcRect);








typedef struct tagTPMPARAMS
{
    UINT    cbSize;     
    RECT    rcExclude;  
}   TPMPARAMS;
typedef TPMPARAMS  *LPTPMPARAMS;

__declspec(dllimport) BOOL    __stdcall TrackPopupMenuEx(HMENU, UINT, int, int, HWND, LPTPMPARAMS);
#line 5026 "e:\\program\\vc98\\include\\winuser.h"









































































#line 5100 "e:\\program\\vc98\\include\\winuser.h"








#line 5109 "e:\\program\\vc98\\include\\winuser.h"

















#line 5127 "e:\\program\\vc98\\include\\winuser.h"


typedef struct tagMENUITEMINFOA
{
    UINT    cbSize;
    UINT    fMask;
    UINT    fType;          
    UINT    fState;         
    UINT    wID;            
    HMENU   hSubMenu;       
    HBITMAP hbmpChecked;    
    HBITMAP hbmpUnchecked;  
    DWORD   dwItemData;     
    LPSTR   dwTypeData;     
    UINT    cch;            


#line 5145 "e:\\program\\vc98\\include\\winuser.h"
}   MENUITEMINFOA,  *LPMENUITEMINFOA;
typedef struct tagMENUITEMINFOW
{
    UINT    cbSize;
    UINT    fMask;
    UINT    fType;          
    UINT    fState;         
    UINT    wID;            
    HMENU   hSubMenu;       
    HBITMAP hbmpChecked;    
    HBITMAP hbmpUnchecked;  
    DWORD   dwItemData;     
    LPWSTR  dwTypeData;     
    UINT    cch;            


#line 5162 "e:\\program\\vc98\\include\\winuser.h"
}   MENUITEMINFOW,  *LPMENUITEMINFOW;




typedef MENUITEMINFOA MENUITEMINFO;
typedef LPMENUITEMINFOA LPMENUITEMINFO;
#line 5170 "e:\\program\\vc98\\include\\winuser.h"
typedef MENUITEMINFOA const  *LPCMENUITEMINFOA;
typedef MENUITEMINFOW const  *LPCMENUITEMINFOW;



typedef LPCMENUITEMINFOA LPCMENUITEMINFO;
#line 5177 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
InsertMenuItemA(
    HMENU,
    UINT,
    BOOL,
    LPCMENUITEMINFOA
    );
__declspec(dllimport)
BOOL
__stdcall
InsertMenuItemW(
    HMENU,
    UINT,
    BOOL,
    LPCMENUITEMINFOW
    );




#line 5201 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
GetMenuItemInfoA(
    HMENU,
    UINT,
    BOOL,
    LPMENUITEMINFOA
    );
__declspec(dllimport)
BOOL
__stdcall
GetMenuItemInfoW(
    HMENU,
    UINT,
    BOOL,
    LPMENUITEMINFOW
    );




#line 5225 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
SetMenuItemInfoA(
    HMENU,
    UINT,
    BOOL,
    LPCMENUITEMINFOA
    );
__declspec(dllimport)
BOOL
__stdcall
SetMenuItemInfoW(
    HMENU,
    UINT,
    BOOL,
    LPCMENUITEMINFOW
    );




#line 5249 "e:\\program\\vc98\\include\\winuser.h"





__declspec(dllimport) UINT    __stdcall GetMenuDefaultItem(HMENU hMenu, UINT fByPos, UINT gmdiFlags);
__declspec(dllimport) BOOL    __stdcall SetMenuDefaultItem(HMENU hMenu, UINT uItem, UINT fByPos);

__declspec(dllimport) BOOL    __stdcall GetMenuItemRect(HWND hWnd, HMENU hMenu, UINT uItem, LPRECT lprcItem);
__declspec(dllimport) int     __stdcall MenuItemFromPoint(HWND hWnd, HMENU hMenu, POINT ptScreen);
#line 5260 "e:\\program\\vc98\\include\\winuser.h"


















#line 5279 "e:\\program\\vc98\\include\\winuser.h"


#line 5282 "e:\\program\\vc98\\include\\winuser.h"


#line 5285 "e:\\program\\vc98\\include\\winuser.h"







typedef struct tagDROPSTRUCT
{
    HWND    hwndSource;
    HWND    hwndSink;
    DWORD   wFmt;
    DWORD   dwData;
    POINT   ptDrop;
    DWORD   dwControlData;
} DROPSTRUCT, *PDROPSTRUCT, *LPDROPSTRUCT;











__declspec(dllimport)
DWORD
__stdcall
DragObject(HWND, HWND, UINT, DWORD, HCURSOR);

__declspec(dllimport)
BOOL
__stdcall
DragDetect(HWND, POINT);
#line 5322 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
DrawIcon(
    HDC hDC,
    int X,
    int Y,
    HICON hIcon);































typedef struct tagDRAWTEXTPARAMS
{
    UINT    cbSize;
    int     iTabLength;
    int     iLeftMargin;
    int     iRightMargin;
    UINT    uiLengthDrawn;
} DRAWTEXTPARAMS,  *LPDRAWTEXTPARAMS;
#line 5371 "e:\\program\\vc98\\include\\winuser.h"


__declspec(dllimport)
int
__stdcall
DrawTextA(
    HDC hDC,
    LPCSTR lpString,
    int nCount,
    LPRECT lpRect,
    UINT uFormat);
__declspec(dllimport)
int
__stdcall
DrawTextW(
    HDC hDC,
    LPCWSTR lpString,
    int nCount,
    LPRECT lpRect,
    UINT uFormat);




#line 5396 "e:\\program\\vc98\\include\\winuser.h"



__declspec(dllimport)
int
__stdcall
DrawTextExA(HDC, LPSTR, int, LPRECT, UINT, LPDRAWTEXTPARAMS);
__declspec(dllimport)
int
__stdcall
DrawTextExW(HDC, LPWSTR, int, LPRECT, UINT, LPDRAWTEXTPARAMS);




#line 5412 "e:\\program\\vc98\\include\\winuser.h"
#line 5413 "e:\\program\\vc98\\include\\winuser.h"

#line 5415 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
GrayStringA(
    HDC hDC,
    HBRUSH hBrush,
    GRAYSTRINGPROC lpOutputFunc,
    LPARAM lpData,
    int nCount,
    int X,
    int Y,
    int nWidth,
    int nHeight);
__declspec(dllimport)
BOOL
__stdcall
GrayStringW(
    HDC hDC,
    HBRUSH hBrush,
    GRAYSTRINGPROC lpOutputFunc,
    LPARAM lpData,
    int nCount,
    int X,
    int Y,
    int nWidth,
    int nHeight);




#line 5447 "e:\\program\\vc98\\include\\winuser.h"

















__declspec(dllimport) BOOL __stdcall DrawStateA(HDC, HBRUSH, DRAWSTATEPROC, LPARAM, WPARAM, int, int, int, int, UINT);
__declspec(dllimport) BOOL __stdcall DrawStateW(HDC, HBRUSH, DRAWSTATEPROC, LPARAM, WPARAM, int, int, int, int, UINT);




#line 5471 "e:\\program\\vc98\\include\\winuser.h"
#line 5472 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
LONG
__stdcall
TabbedTextOutA(
    HDC hDC,
    int X,
    int Y,
    LPCSTR lpString,
    int nCount,
    int nTabPositions,
    LPINT lpnTabStopPositions,
    int nTabOrigin);
__declspec(dllimport)
LONG
__stdcall
TabbedTextOutW(
    HDC hDC,
    int X,
    int Y,
    LPCWSTR lpString,
    int nCount,
    int nTabPositions,
    LPINT lpnTabStopPositions,
    int nTabOrigin);




#line 5502 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
DWORD
__stdcall
GetTabbedTextExtentA(
    HDC hDC,
    LPCSTR lpString,
    int nCount,
    int nTabPositions,
    LPINT lpnTabStopPositions);
__declspec(dllimport)
DWORD
__stdcall
GetTabbedTextExtentW(
    HDC hDC,
    LPCWSTR lpString,
    int nCount,
    int nTabPositions,
    LPINT lpnTabStopPositions);




#line 5526 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
UpdateWindow(
    HWND hWnd);

__declspec(dllimport)
HWND
__stdcall
SetActiveWindow(
    HWND hWnd);

__declspec(dllimport)
HWND
__stdcall
GetForegroundWindow(
    void);


__declspec(dllimport) BOOL __stdcall PaintDesktop(HDC hdc);

#line 5549 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
SetForegroundWindow(
    HWND hWnd);

__declspec(dllimport)
HWND
__stdcall
WindowFromDC(
    HDC hDC);

__declspec(dllimport)
HDC
__stdcall
GetDC(
    HWND hWnd);

__declspec(dllimport)
HDC
__stdcall
GetDCEx(
    HWND hWnd ,
    HRGN hrgnClip,
    DWORD flags);























__declspec(dllimport)
BOOL
__stdcall
AlignRects(LPRECT arc, DWORD cCount, DWORD iPrimary, DWORD dwFlags);













__declspec(dllimport)
HDC
__stdcall
GetWindowDC(
    HWND hWnd);

__declspec(dllimport)
int
__stdcall
ReleaseDC(
    HWND hWnd,
    HDC hDC);

__declspec(dllimport)
HDC
__stdcall
BeginPaint(
    HWND hWnd,
    LPPAINTSTRUCT lpPaint);

__declspec(dllimport)
BOOL
__stdcall
EndPaint(
    HWND hWnd,
    const PAINTSTRUCT *lpPaint);

__declspec(dllimport)
BOOL
__stdcall
GetUpdateRect(
    HWND hWnd,
    LPRECT lpRect,
    BOOL bErase);

__declspec(dllimport)
int
__stdcall
GetUpdateRgn(
    HWND hWnd,
    HRGN hRgn,
    BOOL bErase);

__declspec(dllimport)
int
__stdcall
SetWindowRgn(
    HWND hWnd,
    HRGN hRgn,
    BOOL bRedraw);

__declspec(dllimport)
int
__stdcall
GetWindowRgn(
    HWND hWnd,
    HRGN hRgn);

__declspec(dllimport)
int
__stdcall
ExcludeUpdateRgn(
    HDC hDC,
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
InvalidateRect(
    HWND hWnd ,
    const RECT *lpRect,
    BOOL bErase);

__declspec(dllimport)
BOOL
__stdcall
ValidateRect(
    HWND hWnd ,
    const RECT *lpRect);

__declspec(dllimport)
BOOL
__stdcall
InvalidateRgn(
    HWND hWnd,
    HRGN hRgn,
    BOOL bErase);

__declspec(dllimport)
BOOL
__stdcall
ValidateRgn(
    HWND hWnd,
    HRGN hRgn);


__declspec(dllimport)
BOOL
__stdcall
RedrawWindow(
    HWND hWnd,
    const RECT *lprcUpdate,
    HRGN hrgnUpdate,
    UINT flags);


























__declspec(dllimport)
BOOL
__stdcall
LockWindowUpdate(
    HWND hWndLock);

__declspec(dllimport)
BOOL
__stdcall
ScrollWindow(
    HWND hWnd,
    int XAmount,
    int YAmount,
    const RECT *lpRect,
    const RECT *lpClipRect);

__declspec(dllimport)
BOOL
__stdcall
ScrollDC(
    HDC hDC,
    int dx,
    int dy,
    const RECT *lprcScroll,
    const RECT *lprcClip ,
    HRGN hrgnUpdate,
    LPRECT lprcUpdate);

__declspec(dllimport)
int
__stdcall
ScrollWindowEx(
    HWND hWnd,
    int dx,
    int dy,
    const RECT *prcScroll,
    const RECT *prcClip ,
    HRGN hrgnUpdate,
    LPRECT prcUpdate,
    UINT flags);






#line 5792 "e:\\program\\vc98\\include\\winuser.h"



__declspec(dllimport)
int
__stdcall
SetScrollPos(
    HWND hWnd,
    int nBar,
    int nPos,
    BOOL bRedraw);

__declspec(dllimport)
int
__stdcall
GetScrollPos(
    HWND hWnd,
    int nBar);

__declspec(dllimport)
BOOL
__stdcall
SetScrollRange(
    HWND hWnd,
    int nBar,
    int nMinPos,
    int nMaxPos,
    BOOL bRedraw);

__declspec(dllimport)
BOOL
__stdcall
GetScrollRange(
    HWND hWnd,
    int nBar,
    LPINT lpMinPos,
    LPINT lpMaxPos);

__declspec(dllimport)
BOOL
__stdcall
ShowScrollBar(
    HWND hWnd,
    int wBar,
    BOOL bShow);

__declspec(dllimport)
BOOL
__stdcall
EnableScrollBar(
    HWND hWnd,
    UINT wSBflags,
    UINT wArrows);


















#line 5864 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
SetPropA(
    HWND hWnd,
    LPCSTR lpString,
    HANDLE hData);
__declspec(dllimport)
BOOL
__stdcall
SetPropW(
    HWND hWnd,
    LPCWSTR lpString,
    HANDLE hData);




#line 5884 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
HANDLE
__stdcall
GetPropA(
    HWND hWnd,
    LPCSTR lpString);
__declspec(dllimport)
HANDLE
__stdcall
GetPropW(
    HWND hWnd,
    LPCWSTR lpString);




#line 5902 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
HANDLE
__stdcall
RemovePropA(
    HWND hWnd,
    LPCSTR lpString);
__declspec(dllimport)
HANDLE
__stdcall
RemovePropW(
    HWND hWnd,
    LPCWSTR lpString);




#line 5920 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
EnumPropsExA(
    HWND hWnd,
    PROPENUMPROCEXA lpEnumFunc,
    LPARAM lParam);
__declspec(dllimport)
int
__stdcall
EnumPropsExW(
    HWND hWnd,
    PROPENUMPROCEXW lpEnumFunc,
    LPARAM lParam);




#line 5940 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
EnumPropsA(
    HWND hWnd,
    PROPENUMPROCA lpEnumFunc);
__declspec(dllimport)
int
__stdcall
EnumPropsW(
    HWND hWnd,
    PROPENUMPROCW lpEnumFunc);




#line 5958 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
SetWindowTextA(
    HWND hWnd,
    LPCSTR lpString);
__declspec(dllimport)
BOOL
__stdcall
SetWindowTextW(
    HWND hWnd,
    LPCWSTR lpString);




#line 5976 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
GetWindowTextA(
    HWND hWnd,
    LPSTR lpString,
    int nMaxCount);
__declspec(dllimport)
int
__stdcall
GetWindowTextW(
    HWND hWnd,
    LPWSTR lpString,
    int nMaxCount);




#line 5996 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
GetWindowTextLengthA(
    HWND hWnd);
__declspec(dllimport)
int
__stdcall
GetWindowTextLengthW(
    HWND hWnd);




#line 6012 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
GetClientRect(
    HWND hWnd,
    LPRECT lpRect);

__declspec(dllimport)
BOOL
__stdcall
GetWindowRect(
    HWND hWnd,
    LPRECT lpRect);

__declspec(dllimport)
BOOL
__stdcall
AdjustWindowRect(
    LPRECT lpRect,
    DWORD dwStyle,
    BOOL bMenu);

__declspec(dllimport)
BOOL
__stdcall
AdjustWindowRectEx(
    LPRECT lpRect,
    DWORD dwStyle,
    BOOL bMenu,
    DWORD dwExStyle);




typedef struct tagHELPINFO      
{
    UINT    cbSize;             
    int     iContextType;       
    int     iCtrlId;            
    HANDLE  hItemHandle;        
    DWORD   dwContextId;        
    POINT   MousePos;           
}  HELPINFO,  *LPHELPINFO;

__declspec(dllimport) BOOL  __stdcall  SetWindowContextHelpId(HWND, DWORD);
__declspec(dllimport) DWORD __stdcall  GetWindowContextHelpId(HWND);
__declspec(dllimport) BOOL  __stdcall  SetMenuContextHelpId(HMENU, DWORD);
__declspec(dllimport) DWORD __stdcall  GetMenuContextHelpId(HMENU);

#line 6063 "e:\\program\\vc98\\include\\winuser.h"
























#line 6088 "e:\\program\\vc98\\include\\winuser.h"









#line 6098 "e:\\program\\vc98\\include\\winuser.h"






#line 6105 "e:\\program\\vc98\\include\\winuser.h"











#line 6117 "e:\\program\\vc98\\include\\winuser.h"
















__declspec(dllimport)
int
__stdcall
MessageBoxA(
    HWND hWnd ,
    LPCSTR lpText,
    LPCSTR lpCaption,
    UINT uType);
__declspec(dllimport)
int
__stdcall
MessageBoxW(
    HWND hWnd ,
    LPCWSTR lpText,
    LPCWSTR lpCaption,
    UINT uType);




#line 6154 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
MessageBoxExA(
    HWND hWnd ,
    LPCSTR lpText,
    LPCSTR lpCaption,
    UINT uType,
    WORD wLanguageId);
__declspec(dllimport)
int
__stdcall
MessageBoxExW(
    HWND hWnd ,
    LPCWSTR lpText,
    LPCWSTR lpCaption,
    UINT uType,
    WORD wLanguageId);




#line 6178 "e:\\program\\vc98\\include\\winuser.h"



typedef void (__stdcall *MSGBOXCALLBACK)(LPHELPINFO lpHelpInfo);

typedef struct tagMSGBOXPARAMSA
{
    UINT        cbSize;
    HWND        hwndOwner;
    HINSTANCE   hInstance;
    LPCSTR      lpszText;
    LPCSTR      lpszCaption;
    DWORD       dwStyle;
    LPCSTR      lpszIcon;
    DWORD       dwContextHelpId;
    MSGBOXCALLBACK      lpfnMsgBoxCallback;
    DWORD   dwLanguageId;
} MSGBOXPARAMSA, *PMSGBOXPARAMSA, *LPMSGBOXPARAMSA;
typedef struct tagMSGBOXPARAMSW
{
    UINT        cbSize;
    HWND        hwndOwner;
    HINSTANCE   hInstance;
    LPCWSTR     lpszText;
    LPCWSTR     lpszCaption;
    DWORD       dwStyle;
    LPCWSTR     lpszIcon;
    DWORD       dwContextHelpId;
    MSGBOXCALLBACK      lpfnMsgBoxCallback;
    DWORD   dwLanguageId;
} MSGBOXPARAMSW, *PMSGBOXPARAMSW, *LPMSGBOXPARAMSW;





typedef MSGBOXPARAMSA MSGBOXPARAMS;
typedef PMSGBOXPARAMSA PMSGBOXPARAMS;
typedef LPMSGBOXPARAMSA LPMSGBOXPARAMS;
#line 6218 "e:\\program\\vc98\\include\\winuser.h"


__declspec(dllimport) int     __stdcall MessageBoxIndirectA(LPMSGBOXPARAMSA);
__declspec(dllimport) int     __stdcall MessageBoxIndirectW(LPMSGBOXPARAMSW);




#line 6227 "e:\\program\\vc98\\include\\winuser.h"
#line 6228 "e:\\program\\vc98\\include\\winuser.h"



__declspec(dllimport)
BOOL
__stdcall
MessageBeep(
    UINT uType);

#line 6238 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
ShowCursor(
    BOOL bShow);

__declspec(dllimport)
BOOL
__stdcall
SetCursorPos(
    int X,
    int Y);

__declspec(dllimport)
HCURSOR
__stdcall
SetCursor(
    HCURSOR hCursor);

__declspec(dllimport)
BOOL
__stdcall
GetCursorPos(
    LPPOINT lpPoint);

__declspec(dllimport)
BOOL
__stdcall
ClipCursor(
    const RECT *lpRect);

__declspec(dllimport)
BOOL
__stdcall
GetClipCursor(
    LPRECT lpRect);

__declspec(dllimport)
HCURSOR
__stdcall
GetCursor(
    void);

__declspec(dllimport)
BOOL
__stdcall
CreateCaret(
    HWND hWnd,
    HBITMAP hBitmap ,
    int nWidth,
    int nHeight);

__declspec(dllimport)
UINT
__stdcall
GetCaretBlinkTime(
    void);

__declspec(dllimport)
BOOL
__stdcall
SetCaretBlinkTime(
    UINT uMSeconds);

__declspec(dllimport)
BOOL
__stdcall
DestroyCaret(
    void);

__declspec(dllimport)
BOOL
__stdcall
HideCaret(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
ShowCaret(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
SetCaretPos(
    int X,
    int Y);

__declspec(dllimport)
BOOL
__stdcall
GetCaretPos(
    LPPOINT lpPoint);

__declspec(dllimport)
BOOL
__stdcall
ClientToScreen(
    HWND hWnd,
    LPPOINT lpPoint);

__declspec(dllimport)
BOOL
__stdcall
ScreenToClient(
    HWND hWnd,
    LPPOINT lpPoint);

__declspec(dllimport)
int
__stdcall
MapWindowPoints(
    HWND hWndFrom,
    HWND hWndTo,
    LPPOINT lpPoints,
    UINT cPoints);

__declspec(dllimport)
HWND
__stdcall
WindowFromPoint(
    POINT Point);

__declspec(dllimport)
HWND
__stdcall
ChildWindowFromPoint(
    HWND hWndParent,
    POINT Point);







__declspec(dllimport) HWND    __stdcall ChildWindowFromPointEx(HWND, POINT, UINT);
#line 6378 "e:\\program\\vc98\\include\\winuser.h"










































#line 6421 "e:\\program\\vc98\\include\\winuser.h"





#line 6427 "e:\\program\\vc98\\include\\winuser.h"








#line 6436 "e:\\program\\vc98\\include\\winuser.h"


__declspec(dllimport)
DWORD
__stdcall
GetSysColor(
    int nIndex);


__declspec(dllimport)
HBRUSH
__stdcall
GetSysColorBrush(
    int nIndex);


#line 6453 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
SetSysColors(
    int cElements,
    const INT * lpaElements,
    const COLORREF * lpaRgbValues);

#line 6463 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
DrawFocusRect(
    HDC hDC,
    const RECT * lprc);

__declspec(dllimport)
int
__stdcall
FillRect(
    HDC hDC,
    const RECT *lprc,
    HBRUSH hbr);

__declspec(dllimport)
int
__stdcall
FrameRect(
    HDC hDC,
    const RECT *lprc,
    HBRUSH hbr);

__declspec(dllimport)
BOOL
__stdcall
InvertRect(
    HDC hDC,
    const RECT *lprc);

__declspec(dllimport)
BOOL
__stdcall
SetRect(
    LPRECT lprc,
    int xLeft,
    int yTop,
    int xRight,
    int yBottom);

__declspec(dllimport)
BOOL
__stdcall
    SetRectEmpty(
    LPRECT lprc);

__declspec(dllimport)
BOOL
__stdcall
CopyRect(
    LPRECT lprcDst,
    const RECT *lprcSrc);

__declspec(dllimport)
BOOL
__stdcall
InflateRect(
    LPRECT lprc,
    int dx,
    int dy);

__declspec(dllimport)
BOOL
__stdcall
IntersectRect(
    LPRECT lprcDst,
    const RECT *lprcSrc1,
    const RECT *lprcSrc2);

__declspec(dllimport)
BOOL
__stdcall
UnionRect(
    LPRECT lprcDst,
    const RECT *lprcSrc1,
    const RECT *lprcSrc2);

__declspec(dllimport)
BOOL
__stdcall
SubtractRect(
    LPRECT lprcDst,
    const RECT *lprcSrc1,
    const RECT *lprcSrc2);

__declspec(dllimport)
BOOL
__stdcall
OffsetRect(
    LPRECT lprc,
    int dx,
    int dy);

__declspec(dllimport)
BOOL
__stdcall
IsRectEmpty(
    const RECT *lprc);

__declspec(dllimport)
BOOL
__stdcall
EqualRect(
    const RECT *lprc1,
    const RECT *lprc2);

__declspec(dllimport)
BOOL
__stdcall
PtInRect(
    const RECT *lprc,
    POINT pt);



__declspec(dllimport)
WORD
__stdcall
GetWindowWord(
    HWND hWnd,
    int nIndex);

__declspec(dllimport)
WORD
__stdcall
SetWindowWord(
    HWND hWnd,
    int nIndex,
    WORD wNewWord);

__declspec(dllimport)
LONG
__stdcall
GetWindowLongA(
    HWND hWnd,
    int nIndex);
__declspec(dllimport)
LONG
__stdcall
GetWindowLongW(
    HWND hWnd,
    int nIndex);




#line 6611 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
LONG
__stdcall
SetWindowLongA(
    HWND hWnd,
    int nIndex,
    LONG dwNewLong);
__declspec(dllimport)
LONG
__stdcall
SetWindowLongW(
    HWND hWnd,
    int nIndex,
    LONG dwNewLong);




#line 6631 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
WORD
__stdcall
GetClassWord(
    HWND hWnd,
    int nIndex);

__declspec(dllimport)
WORD
__stdcall
SetClassWord(
    HWND hWnd,
    int nIndex,
    WORD wNewWord);

__declspec(dllimport)
DWORD
__stdcall
GetClassLongA(
    HWND hWnd,
    int nIndex);
__declspec(dllimport)
DWORD
__stdcall
GetClassLongW(
    HWND hWnd,
    int nIndex);




#line 6664 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
DWORD
__stdcall
SetClassLongA(
    HWND hWnd,
    int nIndex,
    LONG dwNewLong);
__declspec(dllimport)
DWORD
__stdcall
SetClassLongW(
    HWND hWnd,
    int nIndex,
    LONG dwNewLong);




#line 6684 "e:\\program\\vc98\\include\\winuser.h"

#line 6686 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
HWND
__stdcall
GetDesktopWindow(
    void);


__declspec(dllimport)
HWND
__stdcall
GetParent(
    HWND hWnd);

__declspec(dllimport)
HWND
__stdcall
SetParent(
    HWND hWndChild,
    HWND hWndNewParent);

__declspec(dllimport)
BOOL
__stdcall
EnumChildWindows(
    HWND hWndParent,
    WNDENUMPROC lpEnumFunc,
    LPARAM lParam);

__declspec(dllimport)
HWND
__stdcall
FindWindowA(
    LPCSTR lpClassName ,
    LPCSTR lpWindowName);
__declspec(dllimport)
HWND
__stdcall
FindWindowW(
    LPCWSTR lpClassName ,
    LPCWSTR lpWindowName);




#line 6732 "e:\\program\\vc98\\include\\winuser.h"


__declspec(dllimport) HWND    __stdcall FindWindowExA(HWND, HWND, LPCSTR, LPCSTR);
__declspec(dllimport) HWND    __stdcall FindWindowExW(HWND, HWND, LPCWSTR, LPCWSTR);




#line 6741 "e:\\program\\vc98\\include\\winuser.h"

#line 6743 "e:\\program\\vc98\\include\\winuser.h"


__declspec(dllimport)
BOOL
__stdcall
EnumWindows(
    WNDENUMPROC lpEnumFunc,
    LPARAM lParam);

__declspec(dllimport)
BOOL
__stdcall
EnumThreadWindows(
    DWORD dwThreadId,
    WNDENUMPROC lpfn,
    LPARAM lParam);



__declspec(dllimport)
int
__stdcall
GetClassNameA(
    HWND hWnd,
    LPSTR lpClassName,
    int nMaxCount);
__declspec(dllimport)
int
__stdcall
GetClassNameW(
    HWND hWnd,
    LPWSTR lpClassName,
    int nMaxCount);




#line 6781 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
HWND
__stdcall
GetTopWindow(
    HWND hWnd);





__declspec(dllimport)
DWORD
__stdcall
GetWindowThreadProcessId(
    HWND hWnd,
    LPDWORD lpdwProcessId);




__declspec(dllimport)
HWND
__stdcall
GetLastActivePopup(
    HWND hWnd);















#line 6823 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
HWND
__stdcall
GetWindow(
    HWND hWnd,
    UINT uCmd);







__declspec(dllimport)
HHOOK
__stdcall
SetWindowsHookA(
    int nFilterType,
    HOOKPROC pfnFilterProc);
__declspec(dllimport)
HHOOK
__stdcall
SetWindowsHookW(
    int nFilterType,
    HOOKPROC pfnFilterProc);




#line 6854 "e:\\program\\vc98\\include\\winuser.h"





















#line 6876 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
UnhookWindowsHook(
    int nCode,
    HOOKPROC pfnFilterProc);

__declspec(dllimport)
HHOOK
__stdcall
SetWindowsHookExA(
    int idHook,
    HOOKPROC lpfn,
    HINSTANCE hmod,
    DWORD dwThreadId);
__declspec(dllimport)
HHOOK
__stdcall
SetWindowsHookExW(
    int idHook,
    HOOKPROC lpfn,
    HINSTANCE hmod,
    DWORD dwThreadId);




#line 6905 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
UnhookWindowsHookEx(
    HHOOK hhk);

__declspec(dllimport)
LRESULT
__stdcall
CallNextHookEx(
    HHOOK hhk,
    int nCode,
    WPARAM wParam,
    LPARAM lParam);










#line 6931 "e:\\program\\vc98\\include\\winuser.h"

#line 6933 "e:\\program\\vc98\\include\\winuser.h"









































#line 6975 "e:\\program\\vc98\\include\\winuser.h"




#line 6980 "e:\\program\\vc98\\include\\winuser.h"




#line 6985 "e:\\program\\vc98\\include\\winuser.h"





























#line 7015 "e:\\program\\vc98\\include\\winuser.h"

#line 7017 "e:\\program\\vc98\\include\\winuser.h"





__declspec(dllimport)
BOOL
__stdcall
CheckMenuRadioItem(HMENU, UINT, UINT, UINT, UINT);
#line 7027 "e:\\program\\vc98\\include\\winuser.h"




typedef struct {
    WORD versionNumber;
    WORD offset;
} MENUITEMTEMPLATEHEADER, *PMENUITEMTEMPLATEHEADER;

typedef struct {        
    WORD mtOption;
    WORD mtID;
    WCHAR mtString[1];
} MENUITEMTEMPLATE, *PMENUITEMTEMPLATE;


#line 7044 "e:\\program\\vc98\\include\\winuser.h"




























#line 7073 "e:\\program\\vc98\\include\\winuser.h"







#line 7081 "e:\\program\\vc98\\include\\winuser.h"





__declspec(dllimport)
HBITMAP
__stdcall
LoadBitmapA(
    HINSTANCE hInstance,
    LPCSTR lpBitmapName);
__declspec(dllimport)
HBITMAP
__stdcall
LoadBitmapW(
    HINSTANCE hInstance,
    LPCWSTR lpBitmapName);




#line 7103 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
HCURSOR
__stdcall
LoadCursorA(
    HINSTANCE hInstance,
    LPCSTR lpCursorName);
__declspec(dllimport)
HCURSOR
__stdcall
LoadCursorW(
    HINSTANCE hInstance,
    LPCWSTR lpCursorName);




#line 7121 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
HCURSOR
__stdcall
LoadCursorFromFileA(
    LPCSTR    lpFileName);
__declspec(dllimport)
HCURSOR
__stdcall
LoadCursorFromFileW(
    LPCWSTR    lpFileName);




#line 7137 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
HCURSOR
__stdcall
CreateCursor(
    HINSTANCE hInst,
    int xHotSpot,
    int yHotSpot,
    int nWidth,
    int nHeight,
    const void *pvANDPlane,
    const void *pvXORPlane);

__declspec(dllimport)
BOOL
__stdcall
DestroyCursor(
    HCURSOR hCursor);









#line 7165 "e:\\program\\vc98\\include\\winuser.h"



















#line 7185 "e:\\program\\vc98\\include\\winuser.h"



#line 7189 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
SetSystemCursor(
    HCURSOR hcur,
    DWORD   id);

typedef struct _ICONINFO {
    BOOL    fIcon;
    DWORD   xHotspot;
    DWORD   yHotspot;
    HBITMAP hbmMask;
    HBITMAP hbmColor;
} ICONINFO;
typedef ICONINFO *PICONINFO;

__declspec(dllimport)
HICON
__stdcall
LoadIconA(
    HINSTANCE hInstance,
    LPCSTR lpIconName);
__declspec(dllimport)
HICON
__stdcall
LoadIconW(
    HINSTANCE hInstance,
    LPCWSTR lpIconName);




#line 7223 "e:\\program\\vc98\\include\\winuser.h"


__declspec(dllimport)
HICON
__stdcall
CreateIcon(
    HINSTANCE hInstance,
    int nWidth,
    int nHeight,
    BYTE cPlanes,
    BYTE cBitsPixel,
    const BYTE *lpbANDbits,
    const BYTE *lpbXORbits);

__declspec(dllimport)
BOOL
__stdcall
DestroyIcon(
    HICON hIcon);

__declspec(dllimport)
int
__stdcall
LookupIconIdFromDirectory(
    PBYTE presbits,
    BOOL fIcon);


__declspec(dllimport)
int
__stdcall
LookupIconIdFromDirectoryEx(
    PBYTE presbits,
    BOOL  fIcon,
    int   cxDesired,
    int   cyDesired,
    UINT  Flags);
#line 7261 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
HICON
__stdcall
CreateIconFromResource(
    PBYTE presbits,
    DWORD dwResSize,
    BOOL fIcon,
    DWORD dwVer);


__declspec(dllimport)
HICON
__stdcall
CreateIconFromResourceEx(
    PBYTE presbits,
    DWORD dwResSize,
    BOOL  fIcon,
    DWORD dwVer,
    int   cxDesired,
    int   cyDesired,
    UINT  Flags);


typedef struct tagCURSORSHAPE
{
    int     xHotSpot;
    int     yHotSpot;
    int     cx;
    int     cy;
    int     cbWidth;
    BYTE    Planes;
    BYTE    BitsPixel;
} CURSORSHAPE,  *LPCURSORSHAPE;
#line 7296 "e:\\program\\vc98\\include\\winuser.h"





















__declspec(dllimport)
HANDLE
__stdcall
LoadImageA(
    HINSTANCE,
    LPCSTR,
    UINT,
    int,
    int,
    UINT);
__declspec(dllimport)
HANDLE
__stdcall
LoadImageW(
    HINSTANCE,
    LPCWSTR,
    UINT,
    int,
    int,
    UINT);




#line 7342 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
HANDLE
__stdcall
CopyImage(
    HANDLE,
    UINT,
    int,
    int,
    UINT);







__declspec(dllimport) BOOL __stdcall DrawIconEx(HDC hdc, int xLeft, int yTop,
              HICON hIcon, int cxWidth, int cyWidth,
              UINT istepIfAniCur, HBRUSH hbrFlickerFreeDraw, UINT diFlags);
#line 7363 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
HICON
__stdcall
CreateIconIndirect(
    PICONINFO piconinfo);

__declspec(dllimport)
HICON
__stdcall
CopyIcon(
    HICON hIcon);

__declspec(dllimport)
BOOL
__stdcall
GetIconInfo(
    HICON hIcon,
    PICONINFO piconinfo);




#line 7387 "e:\\program\\vc98\\include\\winuser.h"














































































































#line 7498 "e:\\program\\vc98\\include\\winuser.h"
#line 7499 "e:\\program\\vc98\\include\\winuser.h"





#line 7505 "e:\\program\\vc98\\include\\winuser.h"



#line 7509 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
LoadStringA(
    HINSTANCE hInstance,
    UINT uID,
    LPSTR lpBuffer,
    int nBufferMax);
__declspec(dllimport)
int
__stdcall
LoadStringW(
    HINSTANCE hInstance,
    UINT uID,
    LPWSTR lpBuffer,
    int nBufferMax);




#line 7531 "e:\\program\\vc98\\include\\winuser.h"
















#line 7548 "e:\\program\\vc98\\include\\winuser.h"































#line 7580 "e:\\program\\vc98\\include\\winuser.h"



#line 7584 "e:\\program\\vc98\\include\\winuser.h"


















#line 7603 "e:\\program\\vc98\\include\\winuser.h"









#line 7613 "e:\\program\\vc98\\include\\winuser.h"














































#line 7660 "e:\\program\\vc98\\include\\winuser.h"




#line 7665 "e:\\program\\vc98\\include\\winuser.h"



#line 7669 "e:\\program\\vc98\\include\\winuser.h"








































#line 7710 "e:\\program\\vc98\\include\\winuser.h"
















#line 7727 "e:\\program\\vc98\\include\\winuser.h"



















#line 7747 "e:\\program\\vc98\\include\\winuser.h"

























#line 7773 "e:\\program\\vc98\\include\\winuser.h"











#line 7785 "e:\\program\\vc98\\include\\winuser.h"
















#line 7802 "e:\\program\\vc98\\include\\winuser.h"

#line 7804 "e:\\program\\vc98\\include\\winuser.h"



















__declspec(dllimport)
BOOL
__stdcall
IsDialogMessageA(
    HWND hDlg,
    LPMSG lpMsg);
__declspec(dllimport)
BOOL
__stdcall
IsDialogMessageW(
    HWND hDlg,
    LPMSG lpMsg);




#line 7840 "e:\\program\\vc98\\include\\winuser.h"

#line 7842 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
MapDialogRect(
    HWND hDlg,
    LPRECT lpRect);

__declspec(dllimport)
int
__stdcall
DlgDirListA(
    HWND hDlg,
    LPSTR lpPathSpec,
    int nIDListBox,
    int nIDStaticPath,
    UINT uFileType);
__declspec(dllimport)
int
__stdcall
DlgDirListW(
    HWND hDlg,
    LPWSTR lpPathSpec,
    int nIDListBox,
    int nIDStaticPath,
    UINT uFileType);




#line 7873 "e:\\program\\vc98\\include\\winuser.h"















__declspec(dllimport)
BOOL
__stdcall
DlgDirSelectExA(
    HWND hDlg,
    LPSTR lpString,
    int nCount,
    int nIDListBox);
__declspec(dllimport)
BOOL
__stdcall
DlgDirSelectExW(
    HWND hDlg,
    LPWSTR lpString,
    int nCount,
    int nIDListBox);




#line 7909 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
DlgDirListComboBoxA(
    HWND hDlg,
    LPSTR lpPathSpec,
    int nIDComboBox,
    int nIDStaticPath,
    UINT uFiletype);
__declspec(dllimport)
int
__stdcall
DlgDirListComboBoxW(
    HWND hDlg,
    LPWSTR lpPathSpec,
    int nIDComboBox,
    int nIDStaticPath,
    UINT uFiletype);




#line 7933 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
DlgDirSelectComboBoxExA(
    HWND hDlg,
    LPSTR lpString,
    int nCount,
    int nIDComboBox);
__declspec(dllimport)
BOOL
__stdcall
DlgDirSelectComboBoxExW(
    HWND hDlg,
    LPWSTR lpString,
    int nCount,
    int nIDComboBox);




#line 7955 "e:\\program\\vc98\\include\\winuser.h"

























#line 7981 "e:\\program\\vc98\\include\\winuser.h"








#line 7990 "e:\\program\\vc98\\include\\winuser.h"


































                                  




























































#line 8086 "e:\\program\\vc98\\include\\winuser.h"




#line 8091 "e:\\program\\vc98\\include\\winuser.h"

#line 8093 "e:\\program\\vc98\\include\\winuser.h"
























#line 8118 "e:\\program\\vc98\\include\\winuser.h"




#line 8123 "e:\\program\\vc98\\include\\winuser.h"













































#line 8169 "e:\\program\\vc98\\include\\winuser.h"


#line 8172 "e:\\program\\vc98\\include\\winuser.h"









































#line 8214 "e:\\program\\vc98\\include\\winuser.h"




#line 8219 "e:\\program\\vc98\\include\\winuser.h"
#line 8220 "e:\\program\\vc98\\include\\winuser.h"





















#line 8242 "e:\\program\\vc98\\include\\winuser.h"



#line 8246 "e:\\program\\vc98\\include\\winuser.h"






















typedef struct tagSCROLLINFO
{
    UINT    cbSize;
    UINT    fMask;
    int     nMin;
    int     nMax;
    UINT    nPage;
    int     nPos;
    int     nTrackPos;
}   SCROLLINFO,  *LPSCROLLINFO;
typedef SCROLLINFO const  *LPCSCROLLINFO;

__declspec(dllimport) int     __stdcall SetScrollInfo(HWND, int, LPCSCROLLINFO, BOOL);
__declspec(dllimport) BOOL    __stdcall GetScrollInfo(HWND, int, LPSCROLLINFO);
#line 8283 "e:\\program\\vc98\\include\\winuser.h"
#line 8284 "e:\\program\\vc98\\include\\winuser.h"
#line 8285 "e:\\program\\vc98\\include\\winuser.h"















typedef struct tagMDICREATESTRUCTA {
    LPCSTR   szClass;
    LPCSTR   szTitle;
    HANDLE hOwner;
    int x;
    int y;
    int cx;
    int cy;
    DWORD style;
    LPARAM lParam;        
} MDICREATESTRUCTA, *LPMDICREATESTRUCTA;
typedef struct tagMDICREATESTRUCTW {
    LPCWSTR  szClass;
    LPCWSTR  szTitle;
    HANDLE hOwner;
    int x;
    int y;
    int cx;
    int cy;
    DWORD style;
    LPARAM lParam;        
} MDICREATESTRUCTW, *LPMDICREATESTRUCTW;




typedef MDICREATESTRUCTA MDICREATESTRUCT;
typedef LPMDICREATESTRUCTA LPMDICREATESTRUCT;
#line 8329 "e:\\program\\vc98\\include\\winuser.h"

typedef struct tagCLIENTCREATESTRUCT {
    HANDLE hWindowMenu;
    UINT idFirstChild;
} CLIENTCREATESTRUCT, *LPCLIENTCREATESTRUCT;

__declspec(dllimport)
LRESULT
__stdcall
DefFrameProcA(
    HWND hWnd,
    HWND hWndMDIClient ,
    UINT uMsg,
    WPARAM wParam,
    LPARAM lParam);
__declspec(dllimport)
LRESULT
__stdcall
DefFrameProcW(
    HWND hWnd,
    HWND hWndMDIClient ,
    UINT uMsg,
    WPARAM wParam,
    LPARAM lParam);




#line 8358 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)

LRESULT
__stdcall



#line 8367 "e:\\program\\vc98\\include\\winuser.h"
DefMDIChildProcA(
    HWND hWnd,
    UINT uMsg,
    WPARAM wParam,
    LPARAM lParam);
__declspec(dllimport)

LRESULT
__stdcall



#line 8380 "e:\\program\\vc98\\include\\winuser.h"
DefMDIChildProcW(
    HWND hWnd,
    UINT uMsg,
    WPARAM wParam,
    LPARAM lParam);




#line 8390 "e:\\program\\vc98\\include\\winuser.h"



__declspec(dllimport)
BOOL
__stdcall
TranslateMDISysAccel(
    HWND hWndClient,
    LPMSG lpMsg);

#line 8401 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
UINT
__stdcall
ArrangeIconicWindows(
    HWND hWnd);

__declspec(dllimport)
HWND
__stdcall
CreateMDIWindowA(
    LPSTR lpClassName,
    LPSTR lpWindowName,
    DWORD dwStyle,
    int X,
    int Y,
    int nWidth,
    int nHeight,
    HWND hWndParent,
    HINSTANCE hInstance,
    LPARAM lParam
    );
__declspec(dllimport)
HWND
__stdcall
CreateMDIWindowW(
    LPWSTR lpClassName,
    LPWSTR lpWindowName,
    DWORD dwStyle,
    int X,
    int Y,
    int nWidth,
    int nHeight,
    HWND hWndParent,
    HINSTANCE hInstance,
    LPARAM lParam
    );




#line 8443 "e:\\program\\vc98\\include\\winuser.h"


__declspec(dllimport) WORD    __stdcall TileWindows(HWND hwndParent, UINT wHow, const RECT * lpRect, UINT cKids, const HWND  * lpKids);
__declspec(dllimport) WORD    __stdcall CascadeWindows(HWND hwndParent, UINT wHow, const RECT * lpRect, UINT cKids,  const HWND  * lpKids);
#line 8448 "e:\\program\\vc98\\include\\winuser.h"
#line 8449 "e:\\program\\vc98\\include\\winuser.h"

#line 8451 "e:\\program\\vc98\\include\\winuser.h"





typedef DWORD HELPPOLY;
typedef struct tagMULTIKEYHELPA {

    DWORD  mkSize;


#line 8463 "e:\\program\\vc98\\include\\winuser.h"
    CHAR   mkKeylist;
    CHAR   szKeyphrase[1];
} MULTIKEYHELPA, *PMULTIKEYHELPA, *LPMULTIKEYHELPA;
typedef struct tagMULTIKEYHELPW {

    DWORD  mkSize;


#line 8472 "e:\\program\\vc98\\include\\winuser.h"
    WCHAR  mkKeylist;
    WCHAR  szKeyphrase[1];
} MULTIKEYHELPW, *PMULTIKEYHELPW, *LPMULTIKEYHELPW;





typedef MULTIKEYHELPA MULTIKEYHELP;
typedef PMULTIKEYHELPA PMULTIKEYHELP;
typedef LPMULTIKEYHELPA LPMULTIKEYHELP;
#line 8484 "e:\\program\\vc98\\include\\winuser.h"

typedef struct tagHELPWININFOA {
    int  wStructSize;
    int  x;
    int  y;
    int  dx;
    int  dy;
    int  wMax;
    CHAR   rgchMember[2];
} HELPWININFOA, *PHELPWININFOA, *LPHELPWININFOA;
typedef struct tagHELPWININFOW {
    int  wStructSize;
    int  x;
    int  y;
    int  dx;
    int  dy;
    int  wMax;
    WCHAR  rgchMember[2];
} HELPWININFOW, *PHELPWININFOW, *LPHELPWININFOW;





typedef HELPWININFOA HELPWININFO;
typedef PHELPWININFOA PHELPWININFO;
typedef LPHELPWININFOA LPHELPWININFO;
#line 8512 "e:\\program\\vc98\\include\\winuser.h"






































#line 8551 "e:\\program\\vc98\\include\\winuser.h"




__declspec(dllimport)
BOOL
__stdcall
WinHelpA(
    HWND hWndMain,
    LPCSTR lpszHelp,
    UINT uCommand,
    DWORD dwData
    );
__declspec(dllimport)
BOOL
__stdcall
WinHelpW(
    HWND hWndMain,
    LPCWSTR lpszHelp,
    UINT uCommand,
    DWORD dwData
    );




#line 8578 "e:\\program\\vc98\\include\\winuser.h"

#line 8580 "e:\\program\\vc98\\include\\winuser.h"






#line 8587 "e:\\program\\vc98\\include\\winuser.h"




















































































#line 8672 "e:\\program\\vc98\\include\\winuser.h"















#line 8688 "e:\\program\\vc98\\include\\winuser.h"















#line 8704 "e:\\program\\vc98\\include\\winuser.h"






#line 8711 "e:\\program\\vc98\\include\\winuser.h"
























#line 8736 "e:\\program\\vc98\\include\\winuser.h"












typedef struct tagNONCLIENTMETRICSA
{
    UINT    cbSize;
    int     iBorderWidth;
    int     iScrollWidth;
    int     iScrollHeight;
    int     iCaptionWidth;
    int     iCaptionHeight;
    LOGFONTA lfCaptionFont;
    int     iSmCaptionWidth;
    int     iSmCaptionHeight;
    LOGFONTA lfSmCaptionFont;
    int     iMenuWidth;
    int     iMenuHeight;
    LOGFONTA lfMenuFont;
    LOGFONTA lfStatusFont;
    LOGFONTA lfMessageFont;
}   NONCLIENTMETRICSA, *PNONCLIENTMETRICSA, * LPNONCLIENTMETRICSA;
typedef struct tagNONCLIENTMETRICSW
{
    UINT    cbSize;
    int     iBorderWidth;
    int     iScrollWidth;
    int     iScrollHeight;
    int     iCaptionWidth;
    int     iCaptionHeight;
    LOGFONTW lfCaptionFont;
    int     iSmCaptionWidth;
    int     iSmCaptionHeight;
    LOGFONTW lfSmCaptionFont;
    int     iMenuWidth;
    int     iMenuHeight;
    LOGFONTW lfMenuFont;
    LOGFONTW lfStatusFont;
    LOGFONTW lfMessageFont;
}   NONCLIENTMETRICSW, *PNONCLIENTMETRICSW, * LPNONCLIENTMETRICSW;





typedef NONCLIENTMETRICSA NONCLIENTMETRICS;
typedef PNONCLIENTMETRICSA PNONCLIENTMETRICS;
typedef LPNONCLIENTMETRICSA LPNONCLIENTMETRICS;
#line 8793 "e:\\program\\vc98\\include\\winuser.h"
#line 8794 "e:\\program\\vc98\\include\\winuser.h"
#line 8795 "e:\\program\\vc98\\include\\winuser.h"















typedef struct tagMINIMIZEDMETRICS
{
    UINT    cbSize;
    int     iWidth;
    int     iHorzGap;
    int     iVertGap;
    int     iArrange;
}   MINIMIZEDMETRICS, *PMINIMIZEDMETRICS, *LPMINIMIZEDMETRICS;



typedef struct tagICONMETRICSA
{
    UINT    cbSize;
    int     iHorzSpacing;
    int     iVertSpacing;
    int     iTitleWrap;
    LOGFONTA lfFont;
}   ICONMETRICSA, *PICONMETRICSA, *LPICONMETRICSA;
typedef struct tagICONMETRICSW
{
    UINT    cbSize;
    int     iHorzSpacing;
    int     iVertSpacing;
    int     iTitleWrap;
    LOGFONTW lfFont;
}   ICONMETRICSW, *PICONMETRICSW, *LPICONMETRICSW;





typedef ICONMETRICSA ICONMETRICS;
typedef PICONMETRICSA PICONMETRICS;
typedef LPICONMETRICSA LPICONMETRICS;
#line 8846 "e:\\program\\vc98\\include\\winuser.h"
#line 8847 "e:\\program\\vc98\\include\\winuser.h"
#line 8848 "e:\\program\\vc98\\include\\winuser.h"

typedef struct tagANIMATIONINFO
{
    UINT    cbSize;
    int     iMinAnimate;
}   ANIMATIONINFO, *LPANIMATIONINFO;

typedef struct tagSERIALKEYSA
{
    UINT    cbSize;
    DWORD   dwFlags;
    LPSTR     lpszActivePort;
    LPSTR     lpszPort;
    UINT    iBaudRate;
    UINT    iPortState;
    UINT    iActive;
}   SERIALKEYSA, *LPSERIALKEYSA;
typedef struct tagSERIALKEYSW
{
    UINT    cbSize;
    DWORD   dwFlags;
    LPWSTR    lpszActivePort;
    LPWSTR    lpszPort;
    UINT    iBaudRate;
    UINT    iPortState;
    UINT    iActive;
}   SERIALKEYSW, *LPSERIALKEYSW;




typedef SERIALKEYSA SERIALKEYS;
typedef LPSERIALKEYSA LPSERIALKEYS;
#line 8882 "e:\\program\\vc98\\include\\winuser.h"







typedef struct tagHIGHCONTRASTA
{
    UINT    cbSize;
    DWORD   dwFlags;
    LPSTR   lpszDefaultScheme;
}   HIGHCONTRASTA, *LPHIGHCONTRASTA;
typedef struct tagHIGHCONTRASTW
{
    UINT    cbSize;
    DWORD   dwFlags;
    LPWSTR  lpszDefaultScheme;
}   HIGHCONTRASTW, *LPHIGHCONTRASTW;




typedef HIGHCONTRASTA HIGHCONTRAST;
typedef LPHIGHCONTRASTA LPHIGHCONTRAST;
#line 8908 "e:\\program\\vc98\\include\\winuser.h"
































__declspec(dllimport)
LONG
__stdcall
ChangeDisplaySettingsA(
    LPDEVMODEA  lpDevMode,
    DWORD       dwFlags);
__declspec(dllimport)
LONG
__stdcall
ChangeDisplaySettingsW(
    LPDEVMODEW  lpDevMode,
    DWORD       dwFlags);




#line 8957 "e:\\program\\vc98\\include\\winuser.h"

__declspec(dllimport)
LONG
__stdcall
ChangeDisplaySettingsExA(
    LPCSTR    lpszDeviceName,
    LPDEVMODEA  lpDevMode,
    HWND        hwnd,
    DWORD       dwflags,
    LPVOID      lParam);
__declspec(dllimport)
LONG
__stdcall
ChangeDisplaySettingsExW(
    LPCWSTR    lpszDeviceName,
    LPDEVMODEW  lpDevMode,
    HWND        hwnd,
    DWORD       dwflags,
    LPVOID      lParam);




#line 8981 "e:\\program\\vc98\\include\\winuser.h"




__declspec(dllimport)
BOOL
__stdcall
EnumDisplaySettingsA(
    LPCSTR lpszDeviceName,
    DWORD iModeNum,
    LPDEVMODEA lpDevMode);
__declspec(dllimport)
BOOL
__stdcall
EnumDisplaySettingsW(
    LPCWSTR lpszDeviceName,
    DWORD iModeNum,
    LPDEVMODEW lpDevMode);




#line 9004 "e:\\program\\vc98\\include\\winuser.h"
























#line 9029 "e:\\program\\vc98\\include\\winuser.h"

#line 9031 "e:\\program\\vc98\\include\\winuser.h"
#line 9032 "e:\\program\\vc98\\include\\winuser.h"


__declspec(dllimport)
BOOL
__stdcall
SystemParametersInfoA(
    UINT uiAction,
    UINT uiParam,
    PVOID pvParam,
    UINT fWinIni);
__declspec(dllimport)
BOOL
__stdcall
SystemParametersInfoW(
    UINT uiAction,
    UINT uiParam,
    PVOID pvParam,
    UINT fWinIni);




#line 9055 "e:\\program\\vc98\\include\\winuser.h"

#line 9057 "e:\\program\\vc98\\include\\winuser.h"




typedef struct tagFILTERKEYS
{
    UINT  cbSize;
    DWORD dwFlags;
    DWORD iWaitMSec;            
    DWORD iDelayMSec;           
    DWORD iRepeatMSec;          
    DWORD iBounceMSec;          
} FILTERKEYS, *LPFILTERKEYS;












typedef struct tagSTICKYKEYS
{
    UINT  cbSize;
    DWORD dwFlags;
} STICKYKEYS, *LPSTICKYKEYS;






























#line 9118 "e:\\program\\vc98\\include\\winuser.h"

typedef struct tagMOUSEKEYS
{
    UINT cbSize;
    DWORD dwFlags;
    DWORD iMaxSpeed;
    DWORD iTimeToMaxSpeed;
    DWORD iCtrlSpeed;
    DWORD dwReserved1;
    DWORD dwReserved2;
} MOUSEKEYS, *LPMOUSEKEYS;


















#line 9148 "e:\\program\\vc98\\include\\winuser.h"

typedef struct tagACCESSTIMEOUT
{
    UINT  cbSize;
    DWORD dwFlags;
    DWORD iTimeOutMSec;
} ACCESSTIMEOUT, *LPACCESSTIMEOUT;
























typedef struct tagSOUNDSENTRYA
{
    UINT cbSize;
    DWORD dwFlags;
    DWORD iFSTextEffect;
    DWORD iFSTextEffectMSec;
    DWORD iFSTextEffectColorBits;
    DWORD iFSGrafEffect;
    DWORD iFSGrafEffectMSec;
    DWORD iFSGrafEffectColor;
    DWORD iWindowsEffect;
    DWORD iWindowsEffectMSec;
    LPSTR   lpszWindowsEffectDLL;
    DWORD iWindowsEffectOrdinal;
} SOUNDSENTRYA, *LPSOUNDSENTRYA;
typedef struct tagSOUNDSENTRYW
{
    UINT cbSize;
    DWORD dwFlags;
    DWORD iFSTextEffect;
    DWORD iFSTextEffectMSec;
    DWORD iFSTextEffectColorBits;
    DWORD iFSGrafEffect;
    DWORD iFSGrafEffectMSec;
    DWORD iFSGrafEffectColor;
    DWORD iWindowsEffect;
    DWORD iWindowsEffectMSec;
    LPWSTR  lpszWindowsEffectDLL;
    DWORD iWindowsEffectOrdinal;
} SOUNDSENTRYW, *LPSOUNDSENTRYW;




typedef SOUNDSENTRYA SOUNDSENTRY;
typedef LPSOUNDSENTRYA LPSOUNDSENTRY;
#line 9216 "e:\\program\\vc98\\include\\winuser.h"








typedef struct tagTOGGLEKEYS
{
    UINT cbSize;
    DWORD dwFlags;
} TOGGLEKEYS, *LPTOGGLEKEYS;















__declspec(dllimport)
void
__stdcall
SetDebugErrorLevel(
    DWORD dwLevel
    );









__declspec(dllimport)
void
__stdcall
SetLastErrorEx(
    DWORD dwErrCode,
    DWORD dwType
    );






























































































































































































































































































































































































































































































































































































































































































































































































































































































#line 10129 "e:\\program\\vc98\\include\\winuser.h"








#line 10138 "e:\\program\\vc98\\include\\winuser.h"







#line 10146 "e:\\program\\vc98\\include\\winuser.h"


}
#line 10150 "e:\\program\\vc98\\include\\winuser.h"

#line 10152 "e:\\program\\vc98\\include\\winuser.h"
#line 167 "e:\\program\\vc98\\include\\windows.h"





#line 1 "e:\\program\\vc98\\include\\winnls.h"





















extern "C" {
#line 24 "e:\\program\\vc98\\include\\winnls.h"






































#line 63 "e:\\program\\vc98\\include\\winnls.h"



















































































#line 147 "e:\\program\\vc98\\include\\winnls.h"































































































































































































































#line 371 "e:\\program\\vc98\\include\\winnls.h"























































































































#line 491 "e:\\program\\vc98\\include\\winnls.h"









#line 501 "e:\\program\\vc98\\include\\winnls.h"





















#line 523 "e:\\program\\vc98\\include\\winnls.h"























































#line 579 "e:\\program\\vc98\\include\\winnls.h"





































typedef DWORD LCTYPE;





typedef DWORD CALTYPE;





typedef DWORD CALID;






typedef struct _cpinfo {
    UINT    MaxCharSize;                    
    BYTE    DefaultChar[2];   
    BYTE    LeadByte[12];        
} CPINFO, *LPCPINFO;

typedef struct _cpinfoexA {
    UINT    MaxCharSize;                    
    BYTE    DefaultChar[2];   
    BYTE    LeadByte[12];        
    WCHAR   UnicodeDefaultChar;             
    UINT    CodePage;                       
    CHAR    CodePageName[260];         
} CPINFOEXA, *LPCPINFOEXA;
typedef struct _cpinfoexW {
    UINT    MaxCharSize;                    
    BYTE    DefaultChar[2];   
    BYTE    LeadByte[12];        
    WCHAR   UnicodeDefaultChar;             
    UINT    CodePage;                       
    WCHAR   CodePageName[260];         
} CPINFOEXW, *LPCPINFOEXW;




typedef CPINFOEXA CPINFOEX;
typedef LPCPINFOEXA LPCPINFOEX;
#line 664 "e:\\program\\vc98\\include\\winnls.h"






typedef struct _numberfmtA {
    UINT    NumDigits;                 
    UINT    LeadingZero;               
    UINT    Grouping;                  
    LPSTR   lpDecimalSep;              
    LPSTR   lpThousandSep;             
    UINT    NegativeOrder;             
} NUMBERFMTA, *LPNUMBERFMTA;
typedef struct _numberfmtW {
    UINT    NumDigits;                 
    UINT    LeadingZero;               
    UINT    Grouping;                  
    LPWSTR  lpDecimalSep;              
    LPWSTR  lpThousandSep;             
    UINT    NegativeOrder;             
} NUMBERFMTW, *LPNUMBERFMTW;




typedef NUMBERFMTA NUMBERFMT;
typedef LPNUMBERFMTA LPNUMBERFMT;
#line 693 "e:\\program\\vc98\\include\\winnls.h"






typedef struct _currencyfmtA {
    UINT    NumDigits;                 
    UINT    LeadingZero;               
    UINT    Grouping;                  
    LPSTR   lpDecimalSep;              
    LPSTR   lpThousandSep;             
    UINT    NegativeOrder;             
    UINT    PositiveOrder;             
    LPSTR   lpCurrencySymbol;          
} CURRENCYFMTA, *LPCURRENCYFMTA;
typedef struct _currencyfmtW {
    UINT    NumDigits;                 
    UINT    LeadingZero;               
    UINT    Grouping;                  
    LPWSTR  lpDecimalSep;              
    LPWSTR  lpThousandSep;             
    UINT    NegativeOrder;             
    UINT    PositiveOrder;             
    LPWSTR  lpCurrencySymbol;          
} CURRENCYFMTW, *LPCURRENCYFMTW;




typedef CURRENCYFMTA CURRENCYFMT;
typedef LPCURRENCYFMTA LPCURRENCYFMT;
#line 726 "e:\\program\\vc98\\include\\winnls.h"








typedef BOOL (__stdcall* LOCALE_ENUMPROCA)(LPSTR);
typedef BOOL (__stdcall* CODEPAGE_ENUMPROCA)(LPSTR);
typedef BOOL (__stdcall* DATEFMT_ENUMPROCA)(LPSTR);
typedef BOOL (__stdcall* DATEFMT_ENUMPROCEXA)(LPSTR, CALID);
typedef BOOL (__stdcall* TIMEFMT_ENUMPROCA)(LPSTR);
typedef BOOL (__stdcall* CALINFO_ENUMPROCA)(LPSTR);
typedef BOOL (__stdcall* CALINFO_ENUMPROCEXA)(LPSTR, CALID);

typedef BOOL (__stdcall* LOCALE_ENUMPROCW)(LPWSTR);
typedef BOOL (__stdcall* CODEPAGE_ENUMPROCW)(LPWSTR);
typedef BOOL (__stdcall* DATEFMT_ENUMPROCW)(LPWSTR);
typedef BOOL (__stdcall* DATEFMT_ENUMPROCEXW)(LPWSTR, CALID);
typedef BOOL (__stdcall* TIMEFMT_ENUMPROCW)(LPWSTR);
typedef BOOL (__stdcall* CALINFO_ENUMPROCW)(LPWSTR);
typedef BOOL (__stdcall* CALINFO_ENUMPROCEXW)(LPWSTR, CALID);



















#line 769 "e:\\program\\vc98\\include\\winnls.h"





















#line 791 "e:\\program\\vc98\\include\\winnls.h"



























__declspec(dllimport)
BOOL
__stdcall
IsValidCodePage(
    UINT  CodePage);

__declspec(dllimport)
UINT
__stdcall
GetACP(void);

__declspec(dllimport)
UINT
__stdcall
GetOEMCP(void);

__declspec(dllimport)
BOOL
__stdcall
GetCPInfo(
    UINT      CodePage,
    LPCPINFO  lpCPInfo);

__declspec(dllimport)
BOOL
__stdcall
GetCPInfoExA(
    UINT         CodePage,
    DWORD        dwFlags,
    LPCPINFOEXA  lpCPInfoEx);
__declspec(dllimport)
BOOL
__stdcall
GetCPInfoExW(
    UINT         CodePage,
    DWORD        dwFlags,
    LPCPINFOEXW  lpCPInfoEx);




#line 860 "e:\\program\\vc98\\include\\winnls.h"

__declspec(dllimport)
BOOL
__stdcall
IsDBCSLeadByte(
    BYTE  TestChar);

__declspec(dllimport)
BOOL
__stdcall
IsDBCSLeadByteEx(
    UINT  CodePage,
    BYTE  TestChar);

__declspec(dllimport)
int
__stdcall
MultiByteToWideChar(
    UINT     CodePage,
    DWORD    dwFlags,
    LPCSTR   lpMultiByteStr,
    int      cchMultiByte,
    LPWSTR   lpWideCharStr,
    int      cchWideChar);

__declspec(dllimport)
int
__stdcall
WideCharToMultiByte(
    UINT     CodePage,
    DWORD    dwFlags,
    LPCWSTR  lpWideCharStr,
    int      cchWideChar,
    LPSTR    lpMultiByteStr,
    int      cchMultiByte,
    LPCSTR   lpDefaultChar,
    LPBOOL   lpUsedDefaultChar);






__declspec(dllimport)
int
__stdcall
CompareStringA(
    LCID     Locale,
    DWORD    dwCmpFlags,
    LPCSTR lpString1,
    int      cchCount1,
    LPCSTR lpString2,
    int      cchCount2);
__declspec(dllimport)
int
__stdcall
CompareStringW(
    LCID     Locale,
    DWORD    dwCmpFlags,
    LPCWSTR lpString1,
    int      cchCount1,
    LPCWSTR lpString2,
    int      cchCount2);




#line 928 "e:\\program\\vc98\\include\\winnls.h"

__declspec(dllimport)
int
__stdcall
LCMapStringA(
    LCID     Locale,
    DWORD    dwMapFlags,
    LPCSTR lpSrcStr,
    int      cchSrc,
    LPSTR  lpDestStr,
    int      cchDest);
__declspec(dllimport)
int
__stdcall
LCMapStringW(
    LCID     Locale,
    DWORD    dwMapFlags,
    LPCWSTR lpSrcStr,
    int      cchSrc,
    LPWSTR  lpDestStr,
    int      cchDest);




#line 954 "e:\\program\\vc98\\include\\winnls.h"

__declspec(dllimport)
int
__stdcall
GetLocaleInfoA(
    LCID     Locale,
    LCTYPE   LCType,
    LPSTR  lpLCData,
    int      cchData);
__declspec(dllimport)
int
__stdcall
GetLocaleInfoW(
    LCID     Locale,
    LCTYPE   LCType,
    LPWSTR  lpLCData,
    int      cchData);




#line 976 "e:\\program\\vc98\\include\\winnls.h"

__declspec(dllimport)
BOOL
__stdcall
SetLocaleInfoA(
    LCID     Locale,
    LCTYPE   LCType,
    LPCSTR lpLCData);
__declspec(dllimport)
BOOL
__stdcall
SetLocaleInfoW(
    LCID     Locale,
    LCTYPE   LCType,
    LPCWSTR lpLCData);




#line 996 "e:\\program\\vc98\\include\\winnls.h"

__declspec(dllimport)
int
__stdcall
GetTimeFormatA(
    LCID     Locale,
    DWORD    dwFlags,
    const SYSTEMTIME *lpTime,
    LPCSTR lpFormat,
    LPSTR  lpTimeStr,
    int      cchTime);
__declspec(dllimport)
int
__stdcall
GetTimeFormatW(
    LCID     Locale,
    DWORD    dwFlags,
    const SYSTEMTIME *lpTime,
    LPCWSTR lpFormat,
    LPWSTR  lpTimeStr,
    int      cchTime);




#line 1022 "e:\\program\\vc98\\include\\winnls.h"

__declspec(dllimport)
int
__stdcall
GetDateFormatA(
    LCID     Locale,
    DWORD    dwFlags,
    const SYSTEMTIME *lpDate,
    LPCSTR lpFormat,
    LPSTR  lpDateStr,
    int      cchDate);
__declspec(dllimport)
int
__stdcall
GetDateFormatW(
    LCID     Locale,
    DWORD    dwFlags,
    const SYSTEMTIME *lpDate,
    LPCWSTR lpFormat,
    LPWSTR  lpDateStr,
    int      cchDate);




#line 1048 "e:\\program\\vc98\\include\\winnls.h"

__declspec(dllimport)
int
__stdcall
GetNumberFormatA(
    LCID     Locale,
    DWORD    dwFlags,
    LPCSTR lpValue,
    const NUMBERFMTA *lpFormat,
    LPSTR  lpNumberStr,
    int      cchNumber);
__declspec(dllimport)
int
__stdcall
GetNumberFormatW(
    LCID     Locale,
    DWORD    dwFlags,
    LPCWSTR lpValue,
    const NUMBERFMTW *lpFormat,
    LPWSTR  lpNumberStr,
    int      cchNumber);




#line 1074 "e:\\program\\vc98\\include\\winnls.h"

__declspec(dllimport)
int
__stdcall
GetCurrencyFormatA(
    LCID     Locale,
    DWORD    dwFlags,
    LPCSTR lpValue,
    const CURRENCYFMTA *lpFormat,
    LPSTR  lpCurrencyStr,
    int      cchCurrency);
__declspec(dllimport)
int
__stdcall
GetCurrencyFormatW(
    LCID     Locale,
    DWORD    dwFlags,
    LPCWSTR lpValue,
    const CURRENCYFMTW *lpFormat,
    LPWSTR  lpCurrencyStr,
    int      cchCurrency);




#line 1100 "e:\\program\\vc98\\include\\winnls.h"

__declspec(dllimport)
BOOL
__stdcall
EnumCalendarInfoA(
    CALINFO_ENUMPROCA lpCalInfoEnumProc,
    LCID              Locale,
    CALID             Calendar,
    CALTYPE           CalType);
__declspec(dllimport)
BOOL
__stdcall
EnumCalendarInfoW(
    CALINFO_ENUMPROCW lpCalInfoEnumProc,
    LCID              Locale,
    CALID             Calendar,
    CALTYPE           CalType);




#line 1122 "e:\\program\\vc98\\include\\winnls.h"























#line 1146 "e:\\program\\vc98\\include\\winnls.h"

__declspec(dllimport)
BOOL
__stdcall
EnumTimeFormatsA(
    TIMEFMT_ENUMPROCA lpTimeFmtEnumProc,
    LCID              Locale,
    DWORD             dwFlags);
__declspec(dllimport)
BOOL
__stdcall
EnumTimeFormatsW(
    TIMEFMT_ENUMPROCW lpTimeFmtEnumProc,
    LCID              Locale,
    DWORD             dwFlags);




#line 1166 "e:\\program\\vc98\\include\\winnls.h"

__declspec(dllimport)
BOOL
__stdcall
EnumDateFormatsA(
    DATEFMT_ENUMPROCA lpDateFmtEnumProc,
    LCID              Locale,
    DWORD             dwFlags);
__declspec(dllimport)
BOOL
__stdcall
EnumDateFormatsW(
    DATEFMT_ENUMPROCW lpDateFmtEnumProc,
    LCID              Locale,
    DWORD             dwFlags);




#line 1186 "e:\\program\\vc98\\include\\winnls.h"





















#line 1208 "e:\\program\\vc98\\include\\winnls.h"

__declspec(dllimport)
BOOL
__stdcall
IsValidLocale(
    LCID   Locale,
    DWORD  dwFlags);

__declspec(dllimport)
LCID
__stdcall
ConvertDefaultLocale(
    LCID   Locale);

__declspec(dllimport)
LCID
__stdcall
GetThreadLocale(void);

__declspec(dllimport)
BOOL
__stdcall
SetThreadLocale(
    LCID  Locale
    );

__declspec(dllimport)
LANGID
__stdcall
GetSystemDefaultLangID(void);

__declspec(dllimport)
LANGID
__stdcall
GetUserDefaultLangID(void);

__declspec(dllimport)
LCID
__stdcall
GetSystemDefaultLCID(void);

__declspec(dllimport)
LCID
__stdcall
GetUserDefaultLCID(void);






__declspec(dllimport)
BOOL
__stdcall
GetStringTypeExA(
    LCID     Locale,
    DWORD    dwInfoType,
    LPCSTR lpSrcStr,
    int      cchSrc,
    LPWORD   lpCharType);
__declspec(dllimport)
BOOL
__stdcall
GetStringTypeExW(
    LCID     Locale,
    DWORD    dwInfoType,
    LPCWSTR lpSrcStr,
    int      cchSrc,
    LPWORD   lpCharType);




#line 1282 "e:\\program\\vc98\\include\\winnls.h"












__declspec(dllimport)
BOOL
__stdcall
GetStringTypeA(
    LCID     Locale,
    DWORD    dwInfoType,
    LPCSTR   lpSrcStr,
    int      cchSrc,
    LPWORD   lpCharType);

__declspec(dllimport)
BOOL
__stdcall
GetStringTypeW(
    DWORD    dwInfoType,
    LPCWSTR  lpSrcStr,
    int      cchSrc,
    LPWORD   lpCharType);


__declspec(dllimport)
int
__stdcall
FoldStringA(
    DWORD    dwMapFlags,
    LPCSTR lpSrcStr,
    int      cchSrc,
    LPSTR  lpDestStr,
    int      cchDest);
__declspec(dllimport)
int
__stdcall
FoldStringW(
    DWORD    dwMapFlags,
    LPCWSTR lpSrcStr,
    int      cchSrc,
    LPWSTR  lpDestStr,
    int      cchDest);




#line 1337 "e:\\program\\vc98\\include\\winnls.h"

__declspec(dllimport)
BOOL
__stdcall
EnumSystemLocalesA(
    LOCALE_ENUMPROCA lpLocaleEnumProc,
    DWORD            dwFlags);
__declspec(dllimport)
BOOL
__stdcall
EnumSystemLocalesW(
    LOCALE_ENUMPROCW lpLocaleEnumProc,
    DWORD            dwFlags);




#line 1355 "e:\\program\\vc98\\include\\winnls.h"

__declspec(dllimport)
BOOL
__stdcall
EnumSystemCodePagesA(
    CODEPAGE_ENUMPROCA lpCodePageEnumProc,
    DWORD              dwFlags);
__declspec(dllimport)
BOOL
__stdcall
EnumSystemCodePagesW(
    CODEPAGE_ENUMPROCW lpCodePageEnumProc,
    DWORD              dwFlags);




#line 1373 "e:\\program\\vc98\\include\\winnls.h"


#line 1376 "e:\\program\\vc98\\include\\winnls.h"



}
#line 1381 "e:\\program\\vc98\\include\\winnls.h"

#line 1383 "e:\\program\\vc98\\include\\winnls.h"
#line 173 "e:\\program\\vc98\\include\\windows.h"
#line 174 "e:\\program\\vc98\\include\\windows.h"

#line 1 "e:\\program\\vc98\\include\\wincon.h"

























extern "C" {
#line 28 "e:\\program\\vc98\\include\\wincon.h"

typedef struct _COORD {
    SHORT X;
    SHORT Y;
} COORD, *PCOORD;

typedef struct _SMALL_RECT {
    SHORT Left;
    SHORT Top;
    SHORT Right;
    SHORT Bottom;
} SMALL_RECT, *PSMALL_RECT;

typedef struct _KEY_EVENT_RECORD {
    BOOL bKeyDown;
    WORD wRepeatCount;
    WORD wVirtualKeyCode;
    WORD wVirtualScanCode;
    union {
        WCHAR UnicodeChar;
        CHAR   AsciiChar;
    } uChar;
    DWORD dwControlKeyState;
} KEY_EVENT_RECORD, *PKEY_EVENT_RECORD;






















typedef struct _MOUSE_EVENT_RECORD {
    COORD dwMousePosition;
    DWORD dwButtonState;
    DWORD dwControlKeyState;
    DWORD dwEventFlags;
} MOUSE_EVENT_RECORD, *PMOUSE_EVENT_RECORD;



















typedef struct _WINDOW_BUFFER_SIZE_RECORD {
    COORD dwSize;
} WINDOW_BUFFER_SIZE_RECORD, *PWINDOW_BUFFER_SIZE_RECORD;

typedef struct _MENU_EVENT_RECORD {
    UINT dwCommandId;
} MENU_EVENT_RECORD, *PMENU_EVENT_RECORD;

typedef struct _FOCUS_EVENT_RECORD {
    BOOL bSetFocus;
} FOCUS_EVENT_RECORD, *PFOCUS_EVENT_RECORD;

typedef struct _INPUT_RECORD {
    WORD EventType;
    union {
        KEY_EVENT_RECORD KeyEvent;
        MOUSE_EVENT_RECORD MouseEvent;
        WINDOW_BUFFER_SIZE_RECORD WindowBufferSizeEvent;
        MENU_EVENT_RECORD MenuEvent;
        FOCUS_EVENT_RECORD FocusEvent;
    } Event;
} INPUT_RECORD, *PINPUT_RECORD;











typedef struct _CHAR_INFO {
    union {
        WCHAR UnicodeChar;
        CHAR   AsciiChar;
    } Char;
    WORD Attributes;
} CHAR_INFO, *PCHAR_INFO;
























typedef struct _CONSOLE_SCREEN_BUFFER_INFO {
    COORD dwSize;
    COORD dwCursorPosition;
    WORD  wAttributes;
    SMALL_RECT srWindow;
    COORD dwMaximumWindowSize;
} CONSOLE_SCREEN_BUFFER_INFO, *PCONSOLE_SCREEN_BUFFER_INFO;

typedef struct _CONSOLE_CURSOR_INFO {
    DWORD  dwSize;
    BOOL   bVisible;
} CONSOLE_CURSOR_INFO, *PCONSOLE_CURSOR_INFO;





typedef
BOOL
(__stdcall *PHANDLER_ROUTINE)(
    DWORD CtrlType
    );






























__declspec(dllimport)
BOOL
__stdcall
PeekConsoleInputA(
    HANDLE hConsoleInput,
    PINPUT_RECORD lpBuffer,
    DWORD nLength,
    LPDWORD lpNumberOfEventsRead
    );
__declspec(dllimport)
BOOL
__stdcall
PeekConsoleInputW(
    HANDLE hConsoleInput,
    PINPUT_RECORD lpBuffer,
    DWORD nLength,
    LPDWORD lpNumberOfEventsRead
    );




#line 238 "e:\\program\\vc98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
ReadConsoleInputA(
    HANDLE hConsoleInput,
    PINPUT_RECORD lpBuffer,
    DWORD nLength,
    LPDWORD lpNumberOfEventsRead
    );
__declspec(dllimport)
BOOL
__stdcall
ReadConsoleInputW(
    HANDLE hConsoleInput,
    PINPUT_RECORD lpBuffer,
    DWORD nLength,
    LPDWORD lpNumberOfEventsRead
    );




#line 262 "e:\\program\\vc98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
WriteConsoleInputA(
    HANDLE hConsoleInput,
    const INPUT_RECORD *lpBuffer,
    DWORD nLength,
    LPDWORD lpNumberOfEventsWritten
    );
__declspec(dllimport)
BOOL
__stdcall
WriteConsoleInputW(
    HANDLE hConsoleInput,
    const INPUT_RECORD *lpBuffer,
    DWORD nLength,
    LPDWORD lpNumberOfEventsWritten
    );




#line 286 "e:\\program\\vc98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
ReadConsoleOutputA(
    HANDLE hConsoleOutput,
    PCHAR_INFO lpBuffer,
    COORD dwBufferSize,
    COORD dwBufferCoord,
    PSMALL_RECT lpReadRegion
    );
__declspec(dllimport)
BOOL
__stdcall
ReadConsoleOutputW(
    HANDLE hConsoleOutput,
    PCHAR_INFO lpBuffer,
    COORD dwBufferSize,
    COORD dwBufferCoord,
    PSMALL_RECT lpReadRegion
    );




#line 312 "e:\\program\\vc98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
WriteConsoleOutputA(
    HANDLE hConsoleOutput,
    const CHAR_INFO *lpBuffer,
    COORD dwBufferSize,
    COORD dwBufferCoord,
    PSMALL_RECT lpWriteRegion
    );
__declspec(dllimport)
BOOL
__stdcall
WriteConsoleOutputW(
    HANDLE hConsoleOutput,
    const CHAR_INFO *lpBuffer,
    COORD dwBufferSize,
    COORD dwBufferCoord,
    PSMALL_RECT lpWriteRegion
    );




#line 338 "e:\\program\\vc98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
ReadConsoleOutputCharacterA(
    HANDLE hConsoleOutput,
    LPSTR lpCharacter,
    DWORD nLength,
    COORD dwReadCoord,
    LPDWORD lpNumberOfCharsRead
    );
__declspec(dllimport)
BOOL
__stdcall
ReadConsoleOutputCharacterW(
    HANDLE hConsoleOutput,
    LPWSTR lpCharacter,
    DWORD nLength,
    COORD dwReadCoord,
    LPDWORD lpNumberOfCharsRead
    );




#line 364 "e:\\program\\vc98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
ReadConsoleOutputAttribute(
    HANDLE hConsoleOutput,
    LPWORD lpAttribute,
    DWORD nLength,
    COORD dwReadCoord,
    LPDWORD lpNumberOfAttrsRead
    );

__declspec(dllimport)
BOOL
__stdcall
WriteConsoleOutputCharacterA(
    HANDLE hConsoleOutput,
    LPCSTR lpCharacter,
    DWORD nLength,
    COORD dwWriteCoord,
    LPDWORD lpNumberOfCharsWritten
    );
__declspec(dllimport)
BOOL
__stdcall
WriteConsoleOutputCharacterW(
    HANDLE hConsoleOutput,
    LPCWSTR lpCharacter,
    DWORD nLength,
    COORD dwWriteCoord,
    LPDWORD lpNumberOfCharsWritten
    );




#line 401 "e:\\program\\vc98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
WriteConsoleOutputAttribute(
    HANDLE hConsoleOutput,
    const WORD *lpAttribute,
    DWORD nLength,
    COORD dwWriteCoord,
    LPDWORD lpNumberOfAttrsWritten
    );

__declspec(dllimport)
BOOL
__stdcall
FillConsoleOutputCharacterA(
    HANDLE hConsoleOutput,
    CHAR  cCharacter,
    DWORD  nLength,
    COORD  dwWriteCoord,
    LPDWORD lpNumberOfCharsWritten
    );
__declspec(dllimport)
BOOL
__stdcall
FillConsoleOutputCharacterW(
    HANDLE hConsoleOutput,
    WCHAR  cCharacter,
    DWORD  nLength,
    COORD  dwWriteCoord,
    LPDWORD lpNumberOfCharsWritten
    );




#line 438 "e:\\program\\vc98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
FillConsoleOutputAttribute(
    HANDLE hConsoleOutput,
    WORD   wAttribute,
    DWORD  nLength,
    COORD  dwWriteCoord,
    LPDWORD lpNumberOfAttrsWritten
    );

__declspec(dllimport)
BOOL
__stdcall
GetConsoleMode(
    HANDLE hConsoleHandle,
    LPDWORD lpMode
    );

__declspec(dllimport)
BOOL
__stdcall
GetNumberOfConsoleInputEvents(
    HANDLE hConsoleInput,
    LPDWORD lpNumberOfEvents
    );

__declspec(dllimport)
BOOL
__stdcall
GetConsoleScreenBufferInfo(
    HANDLE hConsoleOutput,
    PCONSOLE_SCREEN_BUFFER_INFO lpConsoleScreenBufferInfo
    );

__declspec(dllimport)
COORD
__stdcall
GetLargestConsoleWindowSize(
    HANDLE hConsoleOutput
    );

__declspec(dllimport)
BOOL
__stdcall
GetConsoleCursorInfo(
    HANDLE hConsoleOutput,
    PCONSOLE_CURSOR_INFO lpConsoleCursorInfo
    );

__declspec(dllimport)
BOOL
__stdcall
GetNumberOfConsoleMouseButtons(
    LPDWORD lpNumberOfMouseButtons
    );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleMode(
    HANDLE hConsoleHandle,
    DWORD dwMode
    );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleActiveScreenBuffer(
    HANDLE hConsoleOutput
    );

__declspec(dllimport)
BOOL
__stdcall
FlushConsoleInputBuffer(
    HANDLE hConsoleInput
    );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleScreenBufferSize(
    HANDLE hConsoleOutput,
    COORD dwSize
    );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleCursorPosition(
    HANDLE hConsoleOutput,
    COORD dwCursorPosition
    );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleCursorInfo(
    HANDLE hConsoleOutput,
    const CONSOLE_CURSOR_INFO *lpConsoleCursorInfo
    );

__declspec(dllimport)
BOOL
__stdcall
ScrollConsoleScreenBufferA(
    HANDLE hConsoleOutput,
    const SMALL_RECT *lpScrollRectangle,
    const SMALL_RECT *lpClipRectangle,
    COORD dwDestinationOrigin,
    const CHAR_INFO *lpFill
    );
__declspec(dllimport)
BOOL
__stdcall
ScrollConsoleScreenBufferW(
    HANDLE hConsoleOutput,
    const SMALL_RECT *lpScrollRectangle,
    const SMALL_RECT *lpClipRectangle,
    COORD dwDestinationOrigin,
    const CHAR_INFO *lpFill
    );




#line 567 "e:\\program\\vc98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
SetConsoleWindowInfo(
    HANDLE hConsoleOutput,
    BOOL bAbsolute,
    const SMALL_RECT *lpConsoleWindow
    );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleTextAttribute(
    HANDLE hConsoleOutput,
    WORD wAttributes
    );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleCtrlHandler(
    PHANDLER_ROUTINE HandlerRoutine,
    BOOL Add
    );

__declspec(dllimport)
BOOL
__stdcall
GenerateConsoleCtrlEvent(
    DWORD dwCtrlEvent,
    DWORD dwProcessGroupId
    );

__declspec(dllimport)
BOOL
__stdcall
AllocConsole( void );

__declspec(dllimport)
BOOL
__stdcall
FreeConsole( void );


__declspec(dllimport)
DWORD
__stdcall
GetConsoleTitleA(
    LPSTR lpConsoleTitle,
    DWORD nSize
    );
__declspec(dllimport)
DWORD
__stdcall
GetConsoleTitleW(
    LPWSTR lpConsoleTitle,
    DWORD nSize
    );




#line 631 "e:\\program\\vc98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
SetConsoleTitleA(
    LPCSTR lpConsoleTitle
    );
__declspec(dllimport)
BOOL
__stdcall
SetConsoleTitleW(
    LPCWSTR lpConsoleTitle
    );




#line 649 "e:\\program\\vc98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
ReadConsoleA(
    HANDLE hConsoleInput,
    LPVOID lpBuffer,
    DWORD nNumberOfCharsToRead,
    LPDWORD lpNumberOfCharsRead,
    LPVOID lpReserved
    );
__declspec(dllimport)
BOOL
__stdcall
ReadConsoleW(
    HANDLE hConsoleInput,
    LPVOID lpBuffer,
    DWORD nNumberOfCharsToRead,
    LPDWORD lpNumberOfCharsRead,
    LPVOID lpReserved
    );




#line 675 "e:\\program\\vc98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
WriteConsoleA(
    HANDLE hConsoleOutput,
    const void *lpBuffer,
    DWORD nNumberOfCharsToWrite,
    LPDWORD lpNumberOfCharsWritten,
    LPVOID lpReserved
    );
__declspec(dllimport)
BOOL
__stdcall
WriteConsoleW(
    HANDLE hConsoleOutput,
    const void *lpBuffer,
    DWORD nNumberOfCharsToWrite,
    LPDWORD lpNumberOfCharsWritten,
    LPVOID lpReserved
    );




#line 701 "e:\\program\\vc98\\include\\wincon.h"



__declspec(dllimport)
HANDLE
__stdcall
CreateConsoleScreenBuffer(
    DWORD dwDesiredAccess,
    DWORD dwShareMode,
    const SECURITY_ATTRIBUTES *lpSecurityAttributes,
    DWORD dwFlags,
    LPVOID lpScreenBufferData
    );

__declspec(dllimport)
UINT
__stdcall
GetConsoleCP( void );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleCP(
    UINT wCodePageID
    );

__declspec(dllimport)
UINT
__stdcall
GetConsoleOutputCP( void );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleOutputCP(
    UINT wCodePageID
    );


}
#line 742 "e:\\program\\vc98\\include\\wincon.h"

#line 744 "e:\\program\\vc98\\include\\wincon.h"

#line 176 "e:\\program\\vc98\\include\\windows.h"
#line 1 "e:\\program\\vc98\\include\\winver.h"
















extern "C" {
#line 19 "e:\\program\\vc98\\include\\winver.h"











#line 31 "e:\\program\\vc98\\include\\winver.h"

































































































typedef struct tagVS_FIXEDFILEINFO
{
    DWORD   dwSignature;            
    DWORD   dwStrucVersion;         
    DWORD   dwFileVersionMS;        
    DWORD   dwFileVersionLS;        
    DWORD   dwProductVersionMS;     
    DWORD   dwProductVersionLS;     
    DWORD   dwFileFlagsMask;        
    DWORD   dwFileFlags;            
    DWORD   dwFileOS;               
    DWORD   dwFileType;             
    DWORD   dwFileSubtype;          
    DWORD   dwFileDateMS;           
    DWORD   dwFileDateLS;           
} VS_FIXEDFILEINFO;



DWORD
__stdcall
VerFindFileA(
        DWORD uFlags,
        LPSTR szFileName,
        LPSTR szWinDir,
        LPSTR szAppDir,
        LPSTR szCurDir,
        PUINT lpuCurDirLen,
        LPSTR szDestDir,
        PUINT lpuDestDirLen
        );
DWORD
__stdcall
VerFindFileW(
        DWORD uFlags,
        LPWSTR szFileName,
        LPWSTR szWinDir,
        LPWSTR szAppDir,
        LPWSTR szCurDir,
        PUINT lpuCurDirLen,
        LPWSTR szDestDir,
        PUINT lpuDestDirLen
        );




#line 176 "e:\\program\\vc98\\include\\winver.h"

DWORD
__stdcall
VerInstallFileA(
        DWORD uFlags,
        LPSTR szSrcFileName,
        LPSTR szDestFileName,
        LPSTR szSrcDir,
        LPSTR szDestDir,
        LPSTR szCurDir,
        LPSTR szTmpFile,
        PUINT lpuTmpFileLen
        );
DWORD
__stdcall
VerInstallFileW(
        DWORD uFlags,
        LPWSTR szSrcFileName,
        LPWSTR szDestFileName,
        LPWSTR szSrcDir,
        LPWSTR szDestDir,
        LPWSTR szCurDir,
        LPWSTR szTmpFile,
        PUINT lpuTmpFileLen
        );




#line 206 "e:\\program\\vc98\\include\\winver.h"


DWORD
__stdcall
GetFileVersionInfoSizeA(
        LPSTR lptstrFilename, 
        LPDWORD lpdwHandle
        );                      

DWORD
__stdcall
GetFileVersionInfoSizeW(
        LPWSTR lptstrFilename, 
        LPDWORD lpdwHandle
        );                      




#line 226 "e:\\program\\vc98\\include\\winver.h"


BOOL
__stdcall
GetFileVersionInfoA(
        LPSTR lptstrFilename, 
        DWORD dwHandle,         
        DWORD dwLen,            
        LPVOID lpData
        );                      

BOOL
__stdcall
GetFileVersionInfoW(
        LPWSTR lptstrFilename, 
        DWORD dwHandle,         
        DWORD dwLen,            
        LPVOID lpData
        );                      




#line 250 "e:\\program\\vc98\\include\\winver.h"

DWORD
__stdcall
VerLanguageNameA(
        DWORD wLang,
        LPSTR szLang,
        DWORD nSize
        );
DWORD
__stdcall
VerLanguageNameW(
        DWORD wLang,
        LPWSTR szLang,
        DWORD nSize
        );




#line 270 "e:\\program\\vc98\\include\\winver.h"

BOOL
__stdcall
VerQueryValueA(
        const LPVOID pBlock,
        LPSTR lpSubBlock,
        LPVOID * lplpBuffer,
        PUINT puLen
        );
BOOL
__stdcall
VerQueryValueW(
        const LPVOID pBlock,
        LPWSTR lpSubBlock,
        LPVOID * lplpBuffer,
        PUINT puLen
        );




#line 292 "e:\\program\\vc98\\include\\winver.h"

#line 294 "e:\\program\\vc98\\include\\winver.h"


}
#line 298 "e:\\program\\vc98\\include\\winver.h"

#line 300 "e:\\program\\vc98\\include\\winver.h"
#line 177 "e:\\program\\vc98\\include\\windows.h"
#line 178 "e:\\program\\vc98\\include\\windows.h"

#line 1 "e:\\program\\vc98\\include\\winreg.h"
























extern "C" {
#line 27 "e:\\program\\vc98\\include\\winreg.h"









typedef ACCESS_MASK REGSAM;





struct HKEY__ { int unused; }; typedef struct HKEY__ *HKEY;
typedef HKEY *PHKEY;
#line 45 "e:\\program\\vc98\\include\\winreg.h"



















struct val_context {
    int valuelen;       
    LPVOID value_context;   
    LPVOID val_buff_ptr;    
};

typedef struct val_context  *PVALCONTEXT;

typedef struct pvalueA {           
    LPSTR   pv_valuename;          
    int pv_valuelen;
    LPVOID pv_value_context;
    DWORD pv_type;
}PVALUEA,  *PPVALUEA;
typedef struct pvalueW {           
    LPWSTR  pv_valuename;          
    int pv_valuelen;
    LPVOID pv_value_context;
    DWORD pv_type;
}PVALUEW,  *PPVALUEW;




typedef PVALUEA PVALUE;
typedef PPVALUEA PPVALUE;
#line 91 "e:\\program\\vc98\\include\\winreg.h"

typedef
DWORD _cdecl
QUERYHANDLER (LPVOID keycontext, PVALCONTEXT val_list, DWORD num_vals,
          LPVOID outputbuffer, DWORD  *total_outlen, DWORD input_blen);

typedef QUERYHANDLER  *PQUERYHANDLER;

typedef struct provider_info {
    PQUERYHANDLER pi_R0_1val;
    PQUERYHANDLER pi_R0_allvals;
    PQUERYHANDLER pi_R3_1val;
    PQUERYHANDLER pi_R3_allvals;
    DWORD pi_flags;    
    LPVOID pi_key_context;
}REG_PROVIDER;

typedef struct provider_info  *PPROVIDER;

typedef struct value_entA {
    LPSTR   ve_valuename;
    DWORD ve_valuelen;
    DWORD ve_valueptr;
    DWORD ve_type;
}VALENTA,  *PVALENTA;
typedef struct value_entW {
    LPWSTR  ve_valuename;
    DWORD ve_valuelen;
    DWORD ve_valueptr;
    DWORD ve_type;
}VALENTW,  *PVALENTW;




typedef VALENTA VALENT;
typedef PVALENTA PVALENT;
#line 129 "e:\\program\\vc98\\include\\winreg.h"

#line 131 "e:\\program\\vc98\\include\\winreg.h"


#line 134 "e:\\program\\vc98\\include\\winreg.h"













__declspec(dllimport)
LONG
__stdcall
RegCloseKey (
    HKEY hKey
    );

__declspec(dllimport)
LONG
__stdcall
RegOverridePredefKey (
    HKEY hKey,
    HKEY hNewHKey
    );

__declspec(dllimport)
LONG
__stdcall
RegConnectRegistryA (
    LPCSTR lpMachineName,
    HKEY hKey,
    PHKEY phkResult
    );
__declspec(dllimport)
LONG
__stdcall
RegConnectRegistryW (
    LPCWSTR lpMachineName,
    HKEY hKey,
    PHKEY phkResult
    );




#line 183 "e:\\program\\vc98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegCreateKeyA (
    HKEY hKey,
    LPCSTR lpSubKey,
    PHKEY phkResult
    );
__declspec(dllimport)
LONG
__stdcall
RegCreateKeyW (
    HKEY hKey,
    LPCWSTR lpSubKey,
    PHKEY phkResult
    );




#line 205 "e:\\program\\vc98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegCreateKeyExA (
    HKEY hKey,
    LPCSTR lpSubKey,
    DWORD Reserved,
    LPSTR lpClass,
    DWORD dwOptions,
    REGSAM samDesired,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes,
    PHKEY phkResult,
    LPDWORD lpdwDisposition
    );
__declspec(dllimport)
LONG
__stdcall
RegCreateKeyExW (
    HKEY hKey,
    LPCWSTR lpSubKey,
    DWORD Reserved,
    LPWSTR lpClass,
    DWORD dwOptions,
    REGSAM samDesired,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes,
    PHKEY phkResult,
    LPDWORD lpdwDisposition
    );




#line 239 "e:\\program\\vc98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegDeleteKeyA (
    HKEY hKey,
    LPCSTR lpSubKey
    );
__declspec(dllimport)
LONG
__stdcall
RegDeleteKeyW (
    HKEY hKey,
    LPCWSTR lpSubKey
    );




#line 259 "e:\\program\\vc98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegDeleteValueA (
    HKEY hKey,
    LPCSTR lpValueName
    );
__declspec(dllimport)
LONG
__stdcall
RegDeleteValueW (
    HKEY hKey,
    LPCWSTR lpValueName
    );




#line 279 "e:\\program\\vc98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegEnumKeyA (
    HKEY hKey,
    DWORD dwIndex,
    LPSTR lpName,
    DWORD cbName
    );
__declspec(dllimport)
LONG
__stdcall
RegEnumKeyW (
    HKEY hKey,
    DWORD dwIndex,
    LPWSTR lpName,
    DWORD cbName
    );




#line 303 "e:\\program\\vc98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegEnumKeyExA (
    HKEY hKey,
    DWORD dwIndex,
    LPSTR lpName,
    LPDWORD lpcbName,
    LPDWORD lpReserved,
    LPSTR lpClass,
    LPDWORD lpcbClass,
    PFILETIME lpftLastWriteTime
    );
__declspec(dllimport)
LONG
__stdcall
RegEnumKeyExW (
    HKEY hKey,
    DWORD dwIndex,
    LPWSTR lpName,
    LPDWORD lpcbName,
    LPDWORD lpReserved,
    LPWSTR lpClass,
    LPDWORD lpcbClass,
    PFILETIME lpftLastWriteTime
    );




#line 335 "e:\\program\\vc98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegEnumValueA (
    HKEY hKey,
    DWORD dwIndex,
    LPSTR lpValueName,
    LPDWORD lpcbValueName,
    LPDWORD lpReserved,
    LPDWORD lpType,
    LPBYTE lpData,
    LPDWORD lpcbData
    );
__declspec(dllimport)
LONG
__stdcall
RegEnumValueW (
    HKEY hKey,
    DWORD dwIndex,
    LPWSTR lpValueName,
    LPDWORD lpcbValueName,
    LPDWORD lpReserved,
    LPDWORD lpType,
    LPBYTE lpData,
    LPDWORD lpcbData
    );




#line 367 "e:\\program\\vc98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegFlushKey (
    HKEY hKey
    );

__declspec(dllimport)
LONG
__stdcall
RegGetKeySecurity (
    HKEY hKey,
    SECURITY_INFORMATION SecurityInformation,
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    LPDWORD lpcbSecurityDescriptor
    );

__declspec(dllimport)
LONG
__stdcall
RegLoadKeyA (
    HKEY    hKey,
    LPCSTR  lpSubKey,
    LPCSTR  lpFile
    );
__declspec(dllimport)
LONG
__stdcall
RegLoadKeyW (
    HKEY    hKey,
    LPCWSTR  lpSubKey,
    LPCWSTR  lpFile
    );




#line 406 "e:\\program\\vc98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegNotifyChangeKeyValue (
    HKEY hKey,
    BOOL bWatchSubtree,
    DWORD dwNotifyFilter,
    HANDLE hEvent,
    BOOL fAsynchronus
    );

__declspec(dllimport)
LONG
__stdcall
RegOpenKeyA (
    HKEY hKey,
    LPCSTR lpSubKey,
    PHKEY phkResult
    );
__declspec(dllimport)
LONG
__stdcall
RegOpenKeyW (
    HKEY hKey,
    LPCWSTR lpSubKey,
    PHKEY phkResult
    );




#line 439 "e:\\program\\vc98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegOpenKeyExA (
    HKEY hKey,
    LPCSTR lpSubKey,
    DWORD ulOptions,
    REGSAM samDesired,
    PHKEY phkResult
    );
__declspec(dllimport)
LONG
__stdcall
RegOpenKeyExW (
    HKEY hKey,
    LPCWSTR lpSubKey,
    DWORD ulOptions,
    REGSAM samDesired,
    PHKEY phkResult
    );




#line 465 "e:\\program\\vc98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegQueryInfoKeyA (
    HKEY hKey,
    LPSTR lpClass,
    LPDWORD lpcbClass,
    LPDWORD lpReserved,
    LPDWORD lpcSubKeys,
    LPDWORD lpcbMaxSubKeyLen,
    LPDWORD lpcbMaxClassLen,
    LPDWORD lpcValues,
    LPDWORD lpcbMaxValueNameLen,
    LPDWORD lpcbMaxValueLen,
    LPDWORD lpcbSecurityDescriptor,
    PFILETIME lpftLastWriteTime
    );
__declspec(dllimport)
LONG
__stdcall
RegQueryInfoKeyW (
    HKEY hKey,
    LPWSTR lpClass,
    LPDWORD lpcbClass,
    LPDWORD lpReserved,
    LPDWORD lpcSubKeys,
    LPDWORD lpcbMaxSubKeyLen,
    LPDWORD lpcbMaxClassLen,
    LPDWORD lpcValues,
    LPDWORD lpcbMaxValueNameLen,
    LPDWORD lpcbMaxValueLen,
    LPDWORD lpcbSecurityDescriptor,
    PFILETIME lpftLastWriteTime
    );




#line 505 "e:\\program\\vc98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegQueryValueA (
    HKEY hKey,
    LPCSTR lpSubKey,
    LPSTR lpValue,
    PLONG   lpcbValue
    );
__declspec(dllimport)
LONG
__stdcall
RegQueryValueW (
    HKEY hKey,
    LPCWSTR lpSubKey,
    LPWSTR lpValue,
    PLONG   lpcbValue
    );




#line 529 "e:\\program\\vc98\\include\\winreg.h"


__declspec(dllimport)
LONG
__stdcall
RegQueryMultipleValuesA (
    HKEY hKey,
    PVALENTA val_list,
    DWORD num_vals,
    LPSTR lpValueBuf,
    LPDWORD ldwTotsize
    );
__declspec(dllimport)
LONG
__stdcall
RegQueryMultipleValuesW (
    HKEY hKey,
    PVALENTW val_list,
    DWORD num_vals,
    LPWSTR lpValueBuf,
    LPDWORD ldwTotsize
    );




#line 556 "e:\\program\\vc98\\include\\winreg.h"
#line 557 "e:\\program\\vc98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegQueryValueExA (
    HKEY hKey,
    LPCSTR lpValueName,
    LPDWORD lpReserved,
    LPDWORD lpType,
    LPBYTE lpData,
    LPDWORD lpcbData
    );
__declspec(dllimport)
LONG
__stdcall
RegQueryValueExW (
    HKEY hKey,
    LPCWSTR lpValueName,
    LPDWORD lpReserved,
    LPDWORD lpType,
    LPBYTE lpData,
    LPDWORD lpcbData
    );




#line 585 "e:\\program\\vc98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegReplaceKeyA (
    HKEY     hKey,
    LPCSTR  lpSubKey,
    LPCSTR  lpNewFile,
    LPCSTR  lpOldFile
    );
__declspec(dllimport)
LONG
__stdcall
RegReplaceKeyW (
    HKEY     hKey,
    LPCWSTR  lpSubKey,
    LPCWSTR  lpNewFile,
    LPCWSTR  lpOldFile
    );




#line 609 "e:\\program\\vc98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegRestoreKeyA (
    HKEY hKey,
    LPCSTR lpFile,
    DWORD   dwFlags
    );
__declspec(dllimport)
LONG
__stdcall
RegRestoreKeyW (
    HKEY hKey,
    LPCWSTR lpFile,
    DWORD   dwFlags
    );




#line 631 "e:\\program\\vc98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegSaveKeyA (
    HKEY hKey,
    LPCSTR lpFile,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );
__declspec(dllimport)
LONG
__stdcall
RegSaveKeyW (
    HKEY hKey,
    LPCWSTR lpFile,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );




#line 653 "e:\\program\\vc98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegSetKeySecurity (
    HKEY hKey,
    SECURITY_INFORMATION SecurityInformation,
    PSECURITY_DESCRIPTOR pSecurityDescriptor
    );

__declspec(dllimport)
LONG
__stdcall
RegSetValueA (
    HKEY hKey,
    LPCSTR lpSubKey,
    DWORD dwType,
    LPCSTR lpData,
    DWORD cbData
    );
__declspec(dllimport)
LONG
__stdcall
RegSetValueW (
    HKEY hKey,
    LPCWSTR lpSubKey,
    DWORD dwType,
    LPCWSTR lpData,
    DWORD cbData
    );




#line 688 "e:\\program\\vc98\\include\\winreg.h"


__declspec(dllimport)
LONG
__stdcall
RegSetValueExA (
    HKEY hKey,
    LPCSTR lpValueName,
    DWORD Reserved,
    DWORD dwType,
    const BYTE* lpData,
    DWORD cbData
    );
__declspec(dllimport)
LONG
__stdcall
RegSetValueExW (
    HKEY hKey,
    LPCWSTR lpValueName,
    DWORD Reserved,
    DWORD dwType,
    const BYTE* lpData,
    DWORD cbData
    );




#line 717 "e:\\program\\vc98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegUnLoadKeyA (
    HKEY    hKey,
    LPCSTR lpSubKey
    );
__declspec(dllimport)
LONG
__stdcall
RegUnLoadKeyW (
    HKEY    hKey,
    LPCWSTR lpSubKey
    );




#line 737 "e:\\program\\vc98\\include\\winreg.h"





__declspec(dllimport)
BOOL
__stdcall
InitiateSystemShutdownA(
    LPSTR lpMachineName,
    LPSTR lpMessage,
    DWORD dwTimeout,
    BOOL bForceAppsClosed,
    BOOL bRebootAfterShutdown
    );
__declspec(dllimport)
BOOL
__stdcall
InitiateSystemShutdownW(
    LPWSTR lpMachineName,
    LPWSTR lpMessage,
    DWORD dwTimeout,
    BOOL bForceAppsClosed,
    BOOL bRebootAfterShutdown
    );




#line 767 "e:\\program\\vc98\\include\\winreg.h"


__declspec(dllimport)
BOOL
__stdcall
AbortSystemShutdownA(
    LPSTR lpMachineName
    );
__declspec(dllimport)
BOOL
__stdcall
AbortSystemShutdownW(
    LPWSTR lpMachineName
    );




#line 786 "e:\\program\\vc98\\include\\winreg.h"


}
#line 790 "e:\\program\\vc98\\include\\winreg.h"


#line 793 "e:\\program\\vc98\\include\\winreg.h"

#line 180 "e:\\program\\vc98\\include\\windows.h"
#line 181 "e:\\program\\vc98\\include\\windows.h"

#line 1 "e:\\program\\vc98\\include\\winnetwk.h"



























extern "C" {
#line 30 "e:\\program\\vc98\\include\\winnetwk.h"
















































#line 79 "e:\\program\\vc98\\include\\winnetwk.h"






#line 86 "e:\\program\\vc98\\include\\winnetwk.h"









#line 96 "e:\\program\\vc98\\include\\winnetwk.h"













#line 110 "e:\\program\\vc98\\include\\winnetwk.h"



#line 114 "e:\\program\\vc98\\include\\winnetwk.h"

typedef struct  _NETRESOURCEA {
    DWORD    dwScope;
    DWORD    dwType;
    DWORD    dwDisplayType;
    DWORD    dwUsage;
    LPSTR    lpLocalName;
    LPSTR    lpRemoteName;
    LPSTR    lpComment ;
    LPSTR    lpProvider;
}NETRESOURCEA, *LPNETRESOURCEA;
typedef struct  _NETRESOURCEW {
    DWORD    dwScope;
    DWORD    dwType;
    DWORD    dwDisplayType;
    DWORD    dwUsage;
    LPWSTR   lpLocalName;
    LPWSTR   lpRemoteName;
    LPWSTR   lpComment ;
    LPWSTR   lpProvider;
}NETRESOURCEW, *LPNETRESOURCEW;




typedef NETRESOURCEA NETRESOURCE;
typedef LPNETRESOURCEA LPNETRESOURCE;
#line 142 "e:\\program\\vc98\\include\\winnetwk.h"





















#line 164 "e:\\program\\vc98\\include\\winnetwk.h"

DWORD __stdcall
WNetAddConnectionA(
     LPCSTR   lpRemoteName,
     LPCSTR   lpPassword,
     LPCSTR   lpLocalName
    );
DWORD __stdcall
WNetAddConnectionW(
     LPCWSTR   lpRemoteName,
     LPCWSTR   lpPassword,
     LPCWSTR   lpLocalName
    );




#line 182 "e:\\program\\vc98\\include\\winnetwk.h"

DWORD __stdcall
WNetAddConnection2A(
     LPNETRESOURCEA lpNetResource,
     LPCSTR       lpPassword,
     LPCSTR       lpUserName,
     DWORD          dwFlags
    );
DWORD __stdcall
WNetAddConnection2W(
     LPNETRESOURCEW lpNetResource,
     LPCWSTR       lpPassword,
     LPCWSTR       lpUserName,
     DWORD          dwFlags
    );




#line 202 "e:\\program\\vc98\\include\\winnetwk.h"

DWORD __stdcall
WNetAddConnection3A(
     HWND           hwndOwner,
     LPNETRESOURCEA lpNetResource,
     LPCSTR       lpPassword,
     LPCSTR       lpUserName,
     DWORD          dwFlags
    );
DWORD __stdcall
WNetAddConnection3W(
     HWND           hwndOwner,
     LPNETRESOURCEW lpNetResource,
     LPCWSTR       lpPassword,
     LPCWSTR       lpUserName,
     DWORD          dwFlags
    );




#line 224 "e:\\program\\vc98\\include\\winnetwk.h"

DWORD __stdcall
WNetCancelConnectionA(
     LPCSTR lpName,
     BOOL     fForce
    );
DWORD __stdcall
WNetCancelConnectionW(
     LPCWSTR lpName,
     BOOL     fForce
    );




#line 240 "e:\\program\\vc98\\include\\winnetwk.h"

DWORD __stdcall
WNetCancelConnection2A(
     LPCSTR lpName,
     DWORD    dwFlags,
     BOOL     fForce
    );
DWORD __stdcall
WNetCancelConnection2W(
     LPCWSTR lpName,
     DWORD    dwFlags,
     BOOL     fForce
    );




#line 258 "e:\\program\\vc98\\include\\winnetwk.h"

DWORD __stdcall
WNetGetConnectionA(
     LPCSTR lpLocalName,
     LPSTR  lpRemoteName,
     LPDWORD  lpnLength
    );
DWORD __stdcall
WNetGetConnectionW(
     LPCWSTR lpLocalName,
     LPWSTR  lpRemoteName,
     LPDWORD  lpnLength
    );




#line 276 "e:\\program\\vc98\\include\\winnetwk.h"



DWORD __stdcall
WNetUseConnectionA(
    HWND            hwndOwner,
    LPNETRESOURCEA  lpNetResource,
    LPCSTR        lpUserID,
    LPCSTR        lpPassword,
    DWORD           dwFlags,
    LPSTR         lpAccessName,
    LPDWORD         lpBufferSize,
    LPDWORD         lpResult
    );
DWORD __stdcall
WNetUseConnectionW(
    HWND            hwndOwner,
    LPNETRESOURCEW  lpNetResource,
    LPCWSTR        lpUserID,
    LPCWSTR        lpPassword,
    DWORD           dwFlags,
    LPWSTR         lpAccessName,
    LPDWORD         lpBufferSize,
    LPDWORD         lpResult
    );




#line 306 "e:\\program\\vc98\\include\\winnetwk.h"
#line 307 "e:\\program\\vc98\\include\\winnetwk.h"






DWORD __stdcall
WNetConnectionDialog(
    HWND  hwnd,
    DWORD dwType
    );

DWORD __stdcall
WNetDisconnectDialog(
    HWND  hwnd,
    DWORD dwType
    );


typedef struct _CONNECTDLGSTRUCTA{
    DWORD cbStructure;       
    HWND hwndOwner;          
    LPNETRESOURCEA lpConnRes;
    DWORD dwFlags;           
    DWORD dwDevNum;          
} CONNECTDLGSTRUCTA,  *LPCONNECTDLGSTRUCTA;
typedef struct _CONNECTDLGSTRUCTW{
    DWORD cbStructure;       
    HWND hwndOwner;          
    LPNETRESOURCEW lpConnRes;
    DWORD dwFlags;           
    DWORD dwDevNum;          
} CONNECTDLGSTRUCTW,  *LPCONNECTDLGSTRUCTW;




typedef CONNECTDLGSTRUCTA CONNECTDLGSTRUCT;
typedef LPCONNECTDLGSTRUCTA LPCONNECTDLGSTRUCT;
#line 347 "e:\\program\\vc98\\include\\winnetwk.h"














DWORD __stdcall
WNetConnectionDialog1A(
    LPCONNECTDLGSTRUCTA lpConnDlgStruct
    );
DWORD __stdcall
WNetConnectionDialog1W(
    LPCONNECTDLGSTRUCTW lpConnDlgStruct
    );




#line 374 "e:\\program\\vc98\\include\\winnetwk.h"

typedef struct _DISCDLGSTRUCTA{
    DWORD           cbStructure;      
    HWND            hwndOwner;        
    LPSTR           lpLocalName;      
    LPSTR           lpRemoteName;     
    DWORD           dwFlags;          
} DISCDLGSTRUCTA,  *LPDISCDLGSTRUCTA;
typedef struct _DISCDLGSTRUCTW{
    DWORD           cbStructure;      
    HWND            hwndOwner;        
    LPWSTR          lpLocalName;      
    LPWSTR          lpRemoteName;     
    DWORD           dwFlags;          
} DISCDLGSTRUCTW,  *LPDISCDLGSTRUCTW;




typedef DISCDLGSTRUCTA DISCDLGSTRUCT;
typedef LPDISCDLGSTRUCTA LPDISCDLGSTRUCT;
#line 396 "e:\\program\\vc98\\include\\winnetwk.h"




DWORD __stdcall
WNetDisconnectDialog1A(
    LPDISCDLGSTRUCTA lpConnDlgStruct
    );
DWORD __stdcall
WNetDisconnectDialog1W(
    LPDISCDLGSTRUCTW lpConnDlgStruct
    );




#line 413 "e:\\program\\vc98\\include\\winnetwk.h"
#line 414 "e:\\program\\vc98\\include\\winnetwk.h"





DWORD __stdcall
WNetOpenEnumA(
     DWORD          dwScope,
     DWORD          dwType,
     DWORD          dwUsage,
     LPNETRESOURCEA lpNetResource,
     LPHANDLE       lphEnum
    );
DWORD __stdcall
WNetOpenEnumW(
     DWORD          dwScope,
     DWORD          dwType,
     DWORD          dwUsage,
     LPNETRESOURCEW lpNetResource,
     LPHANDLE       lphEnum
    );




#line 440 "e:\\program\\vc98\\include\\winnetwk.h"

DWORD __stdcall
WNetEnumResourceA(
     HANDLE  hEnum,
     LPDWORD lpcCount,
     LPVOID  lpBuffer,
     LPDWORD lpBufferSize
    );
DWORD __stdcall
WNetEnumResourceW(
     HANDLE  hEnum,
     LPDWORD lpcCount,
     LPVOID  lpBuffer,
     LPDWORD lpBufferSize
    );




#line 460 "e:\\program\\vc98\\include\\winnetwk.h"

DWORD __stdcall
WNetCloseEnum(
    HANDLE   hEnum
    );









typedef struct  _UNIVERSAL_NAME_INFOA {
    LPSTR    lpUniversalName;
}UNIVERSAL_NAME_INFOA, *LPUNIVERSAL_NAME_INFOA;
typedef struct  _UNIVERSAL_NAME_INFOW {
    LPWSTR   lpUniversalName;
}UNIVERSAL_NAME_INFOW, *LPUNIVERSAL_NAME_INFOW;




typedef UNIVERSAL_NAME_INFOA UNIVERSAL_NAME_INFO;
typedef LPUNIVERSAL_NAME_INFOA LPUNIVERSAL_NAME_INFO;
#line 487 "e:\\program\\vc98\\include\\winnetwk.h"

typedef struct  _REMOTE_NAME_INFOA {
    LPSTR    lpUniversalName;
    LPSTR    lpConnectionName;
    LPSTR    lpRemainingPath;
}REMOTE_NAME_INFOA, *LPREMOTE_NAME_INFOA;
typedef struct  _REMOTE_NAME_INFOW {
    LPWSTR   lpUniversalName;
    LPWSTR   lpConnectionName;
    LPWSTR   lpRemainingPath;
}REMOTE_NAME_INFOW, *LPREMOTE_NAME_INFOW;




typedef REMOTE_NAME_INFOA REMOTE_NAME_INFO;
typedef LPREMOTE_NAME_INFOA LPREMOTE_NAME_INFO;
#line 505 "e:\\program\\vc98\\include\\winnetwk.h"

DWORD __stdcall
WNetGetUniversalNameA(
     LPCSTR lpLocalPath,
     DWORD    dwInfoLevel,
     LPVOID   lpBuffer,
     LPDWORD  lpBufferSize
     );
DWORD __stdcall
WNetGetUniversalNameW(
     LPCWSTR lpLocalPath,
     DWORD    dwInfoLevel,
     LPVOID   lpBuffer,
     LPDWORD  lpBufferSize
     );




#line 525 "e:\\program\\vc98\\include\\winnetwk.h"





DWORD __stdcall
WNetGetUserA(
     LPCSTR  lpName,
     LPSTR   lpUserName,
     LPDWORD   lpnLength
    );
DWORD __stdcall
WNetGetUserW(
     LPCWSTR  lpName,
     LPWSTR   lpUserName,
     LPDWORD   lpnLength
    );




#line 547 "e:\\program\\vc98\\include\\winnetwk.h"











#line 559 "e:\\program\\vc98\\include\\winnetwk.h"



DWORD __stdcall
WNetGetProviderNameA(
    DWORD   dwNetType,
    LPSTR lpProviderName,
    LPDWORD lpBufferSize
    );
DWORD __stdcall
WNetGetProviderNameW(
    DWORD   dwNetType,
    LPWSTR lpProviderName,
    LPDWORD lpBufferSize
    );




#line 579 "e:\\program\\vc98\\include\\winnetwk.h"

typedef struct _NETINFOSTRUCT{
    DWORD cbStructure;
    DWORD dwProviderVersion;
    DWORD dwStatus;
    DWORD dwCharacteristics;
    DWORD dwHandle;
    WORD  wNetType;
    DWORD dwPrinters;
    DWORD dwDrives;
} NETINFOSTRUCT,  *LPNETINFOSTRUCT;





DWORD __stdcall
WNetGetNetworkInformationA(
    LPCSTR          lpProvider,
    LPNETINFOSTRUCT   lpNetInfoStruct
    );
DWORD __stdcall
WNetGetNetworkInformationW(
    LPCWSTR          lpProvider,
    LPNETINFOSTRUCT   lpNetInfoStruct
    );




#line 610 "e:\\program\\vc98\\include\\winnetwk.h"





typedef UINT ( __stdcall *PFNGETPROFILEPATHA) (
    LPCSTR    pszUsername,
    LPSTR     pszBuffer,
    UINT        cbBuffer
    );
typedef UINT ( __stdcall *PFNGETPROFILEPATHW) (
    LPCWSTR    pszUsername,
    LPWSTR     pszBuffer,
    UINT        cbBuffer
    );




#line 630 "e:\\program\\vc98\\include\\winnetwk.h"

typedef UINT ( __stdcall *PFNRECONCILEPROFILEA) (
    LPCSTR    pszCentralFile,
    LPCSTR    pszLocalFile,
    DWORD       dwFlags
    );
typedef UINT ( __stdcall *PFNRECONCILEPROFILEW) (
    LPCWSTR    pszCentralFile,
    LPCWSTR    pszLocalFile,
    DWORD       dwFlags
    );




#line 646 "e:\\program\\vc98\\include\\winnetwk.h"









typedef BOOL ( __stdcall *PFNPROCESSPOLICIESA) (
    HWND        hwnd,
    LPCSTR    pszPath,
    LPCSTR    pszUsername,
    LPCSTR    pszComputerName,
    DWORD       dwFlags
    );
typedef BOOL ( __stdcall *PFNPROCESSPOLICIESW) (
    HWND        hwnd,
    LPCWSTR    pszPath,
    LPCWSTR    pszUsername,
    LPCWSTR    pszComputerName,
    DWORD       dwFlags
    );




#line 674 "e:\\program\\vc98\\include\\winnetwk.h"


#line 677 "e:\\program\\vc98\\include\\winnetwk.h"





DWORD __stdcall
WNetGetLastErrorA(
     LPDWORD    lpError,
     LPSTR    lpErrorBuf,
     DWORD      nErrorBufSize,
     LPSTR    lpNameBuf,
     DWORD      nNameBufSize
    );
DWORD __stdcall
WNetGetLastErrorW(
     LPDWORD    lpError,
     LPWSTR    lpErrorBuf,
     DWORD      nErrorBufSize,
     LPWSTR    lpNameBuf,
     DWORD      nNameBufSize
    );




#line 703 "e:\\program\\vc98\\include\\winnetwk.h"





























#line 733 "e:\\program\\vc98\\include\\winnetwk.h"






























#line 764 "e:\\program\\vc98\\include\\winnetwk.h"






typedef struct _NETCONNECTINFOSTRUCT{
    DWORD cbStructure;
    DWORD dwFlags;
    DWORD dwSpeed;
    DWORD dwDelay;
    DWORD dwOptDataSize;
} NETCONNECTINFOSTRUCT,  *LPNETCONNECTINFOSTRUCT;






DWORD __stdcall
MultinetGetConnectionPerformanceA(
        LPNETRESOURCEA lpNetResource,
        LPNETCONNECTINFOSTRUCT lpNetConnectInfoStruct
        );
DWORD __stdcall
MultinetGetConnectionPerformanceW(
        LPNETRESOURCEW lpNetResource,
        LPNETCONNECTINFOSTRUCT lpNetConnectInfoStruct
        );




#line 798 "e:\\program\\vc98\\include\\winnetwk.h"
#line 799 "e:\\program\\vc98\\include\\winnetwk.h"


}
#line 803 "e:\\program\\vc98\\include\\winnetwk.h"

#line 805 "e:\\program\\vc98\\include\\winnetwk.h"

#line 183 "e:\\program\\vc98\\include\\windows.h"
#line 184 "e:\\program\\vc98\\include\\windows.h"




















































#line 1 "e:\\program\\vc98\\include\\winsvc.h"






























#line 32 "e:\\program\\vc98\\include\\winsvc.h"


extern "C" {
#line 36 "e:\\program\\vc98\\include\\winsvc.h"




































#line 73 "e:\\program\\vc98\\include\\winsvc.h"







































































































typedef struct _SERVICE_DESCRIPTIONA {
    LPSTR       lpDescription;
} SERVICE_DESCRIPTIONA, *LPSERVICE_DESCRIPTIONA;



typedef struct _SERVICE_DESCRIPTIONW {
    LPWSTR      lpDescription;
} SERVICE_DESCRIPTIONW, *LPSERVICE_DESCRIPTIONW;




typedef SERVICE_DESCRIPTIONA SERVICE_DESCRIPTION;
typedef LPSERVICE_DESCRIPTIONA LPSERVICE_DESCRIPTION;
#line 192 "e:\\program\\vc98\\include\\winsvc.h"




typedef enum _SC_ACTION_TYPE {
        SC_ACTION_NONE          = 0,
        SC_ACTION_RESTART       = 1,
        SC_ACTION_REBOOT        = 2,
        SC_ACTION_RUN_COMMAND   = 3
} SC_ACTION_TYPE;

typedef struct _SC_ACTION {
    SC_ACTION_TYPE  Type;
    DWORD           Delay;
} SC_ACTION, *LPSC_ACTION;

typedef struct _SERVICE_FAILURE_ACTIONSA {
    DWORD       dwResetPeriod;
    LPSTR       lpRebootMsg;
    LPSTR       lpCommand;
    DWORD       cActions;



    SC_ACTION * lpsaActions;
} SERVICE_FAILURE_ACTIONSA, *LPSERVICE_FAILURE_ACTIONSA;
typedef struct _SERVICE_FAILURE_ACTIONSW {
    DWORD       dwResetPeriod;
    LPWSTR      lpRebootMsg;
    LPWSTR      lpCommand;
    DWORD       cActions;



    SC_ACTION * lpsaActions;
} SERVICE_FAILURE_ACTIONSW, *LPSERVICE_FAILURE_ACTIONSW;




typedef SERVICE_FAILURE_ACTIONSA SERVICE_FAILURE_ACTIONS;
typedef LPSERVICE_FAILURE_ACTIONSA LPSERVICE_FAILURE_ACTIONS;
#line 235 "e:\\program\\vc98\\include\\winsvc.h"






typedef HANDLE      SC_HANDLE;
typedef SC_HANDLE   *LPSC_HANDLE;

typedef DWORD       SERVICE_STATUS_HANDLE;





typedef struct _SERVICE_STATUS {
    DWORD   dwServiceType;
    DWORD   dwCurrentState;
    DWORD   dwControlsAccepted;
    DWORD   dwWin32ExitCode;
    DWORD   dwServiceSpecificExitCode;
    DWORD   dwCheckPoint;
    DWORD   dwWaitHint;
} SERVICE_STATUS, *LPSERVICE_STATUS;







typedef struct _ENUM_SERVICE_STATUSA {
    LPSTR          lpServiceName;
    LPSTR          lpDisplayName;
    SERVICE_STATUS ServiceStatus;
} ENUM_SERVICE_STATUSA, *LPENUM_SERVICE_STATUSA;
typedef struct _ENUM_SERVICE_STATUSW {
    LPWSTR         lpServiceName;
    LPWSTR         lpDisplayName;
    SERVICE_STATUS ServiceStatus;
} ENUM_SERVICE_STATUSW, *LPENUM_SERVICE_STATUSW;




typedef ENUM_SERVICE_STATUSA ENUM_SERVICE_STATUS;
typedef LPENUM_SERVICE_STATUSA LPENUM_SERVICE_STATUS;
#line 283 "e:\\program\\vc98\\include\\winsvc.h"






typedef LPVOID  SC_LOCK;

typedef struct _QUERY_SERVICE_LOCK_STATUSA {
    DWORD   fIsLocked;
    LPSTR   lpLockOwner;
    DWORD   dwLockDuration;
} QUERY_SERVICE_LOCK_STATUSA, *LPQUERY_SERVICE_LOCK_STATUSA;
typedef struct _QUERY_SERVICE_LOCK_STATUSW {
    DWORD   fIsLocked;
    LPWSTR  lpLockOwner;
    DWORD   dwLockDuration;
} QUERY_SERVICE_LOCK_STATUSW, *LPQUERY_SERVICE_LOCK_STATUSW;




typedef QUERY_SERVICE_LOCK_STATUSA QUERY_SERVICE_LOCK_STATUS;
typedef LPQUERY_SERVICE_LOCK_STATUSA LPQUERY_SERVICE_LOCK_STATUS;
#line 308 "e:\\program\\vc98\\include\\winsvc.h"







typedef struct _QUERY_SERVICE_CONFIGA {
    DWORD   dwServiceType;
    DWORD   dwStartType;
    DWORD   dwErrorControl;
    LPSTR   lpBinaryPathName;
    LPSTR   lpLoadOrderGroup;
    DWORD   dwTagId;
    LPSTR   lpDependencies;
    LPSTR   lpServiceStartName;
    LPSTR   lpDisplayName;
} QUERY_SERVICE_CONFIGA, *LPQUERY_SERVICE_CONFIGA;
typedef struct _QUERY_SERVICE_CONFIGW {
    DWORD   dwServiceType;
    DWORD   dwStartType;
    DWORD   dwErrorControl;
    LPWSTR  lpBinaryPathName;
    LPWSTR  lpLoadOrderGroup;
    DWORD   dwTagId;
    LPWSTR  lpDependencies;
    LPWSTR  lpServiceStartName;
    LPWSTR  lpDisplayName;
} QUERY_SERVICE_CONFIGW, *LPQUERY_SERVICE_CONFIGW;




typedef QUERY_SERVICE_CONFIGA QUERY_SERVICE_CONFIG;
typedef LPQUERY_SERVICE_CONFIGA LPQUERY_SERVICE_CONFIG;
#line 344 "e:\\program\\vc98\\include\\winsvc.h"







typedef void (__stdcall *LPSERVICE_MAIN_FUNCTIONW)(
    DWORD   dwNumServicesArgs,
    LPWSTR  *lpServiceArgVectors
    );

typedef void (__stdcall *LPSERVICE_MAIN_FUNCTIONA)(
    DWORD   dwNumServicesArgs,
    LPSTR   *lpServiceArgVectors
    );





#line 366 "e:\\program\\vc98\\include\\winsvc.h"






typedef struct _SERVICE_TABLE_ENTRYA {
    LPSTR                       lpServiceName;
    LPSERVICE_MAIN_FUNCTIONA    lpServiceProc;
}SERVICE_TABLE_ENTRYA, *LPSERVICE_TABLE_ENTRYA;
typedef struct _SERVICE_TABLE_ENTRYW {
    LPWSTR                      lpServiceName;
    LPSERVICE_MAIN_FUNCTIONW    lpServiceProc;
}SERVICE_TABLE_ENTRYW, *LPSERVICE_TABLE_ENTRYW;




typedef SERVICE_TABLE_ENTRYA SERVICE_TABLE_ENTRY;
typedef LPSERVICE_TABLE_ENTRYA LPSERVICE_TABLE_ENTRY;
#line 387 "e:\\program\\vc98\\include\\winsvc.h"





typedef void (__stdcall *LPHANDLER_FUNCTION)(
    DWORD    dwControl
    );







__declspec(dllimport)
BOOL
__stdcall
ChangeServiceConfigA(
    SC_HANDLE    hService,
    DWORD        dwServiceType,
    DWORD        dwStartType,
    DWORD        dwErrorControl,
    LPCSTR     lpBinaryPathName,
    LPCSTR     lpLoadOrderGroup,
    LPDWORD      lpdwTagId,
    LPCSTR     lpDependencies,
    LPCSTR     lpServiceStartName,
    LPCSTR     lpPassword,
    LPCSTR     lpDisplayName
    );
__declspec(dllimport)
BOOL
__stdcall
ChangeServiceConfigW(
    SC_HANDLE    hService,
    DWORD        dwServiceType,
    DWORD        dwStartType,
    DWORD        dwErrorControl,
    LPCWSTR     lpBinaryPathName,
    LPCWSTR     lpLoadOrderGroup,
    LPDWORD      lpdwTagId,
    LPCWSTR     lpDependencies,
    LPCWSTR     lpServiceStartName,
    LPCWSTR     lpPassword,
    LPCWSTR     lpDisplayName
    );




#line 439 "e:\\program\\vc98\\include\\winsvc.h"

__declspec(dllimport)
BOOL
__stdcall
ChangeServiceConfig2A(
    SC_HANDLE    hService,
    DWORD        dwInfoLevel,
    LPVOID       lpInfo
    );	
__declspec(dllimport)
BOOL
__stdcall
ChangeServiceConfig2W(
    SC_HANDLE    hService,
    DWORD        dwInfoLevel,
    LPVOID       lpInfo
    );	




#line 461 "e:\\program\\vc98\\include\\winsvc.h"

__declspec(dllimport)
BOOL
__stdcall
CloseServiceHandle(
    SC_HANDLE   hSCObject
    );

__declspec(dllimport)
BOOL
__stdcall
ControlService(
    SC_HANDLE           hService,
    DWORD               dwControl,
    LPSERVICE_STATUS    lpServiceStatus
    );

__declspec(dllimport)
SC_HANDLE
__stdcall
CreateServiceA(
    SC_HANDLE    hSCManager,
    LPCSTR     lpServiceName,
    LPCSTR     lpDisplayName,
    DWORD        dwDesiredAccess,
    DWORD        dwServiceType,
    DWORD        dwStartType,
    DWORD        dwErrorControl,
    LPCSTR     lpBinaryPathName,
    LPCSTR     lpLoadOrderGroup,
    LPDWORD      lpdwTagId,
    LPCSTR     lpDependencies,
    LPCSTR     lpServiceStartName,
    LPCSTR     lpPassword
    );
__declspec(dllimport)
SC_HANDLE
__stdcall
CreateServiceW(
    SC_HANDLE    hSCManager,
    LPCWSTR     lpServiceName,
    LPCWSTR     lpDisplayName,
    DWORD        dwDesiredAccess,
    DWORD        dwServiceType,
    DWORD        dwStartType,
    DWORD        dwErrorControl,
    LPCWSTR     lpBinaryPathName,
    LPCWSTR     lpLoadOrderGroup,
    LPDWORD      lpdwTagId,
    LPCWSTR     lpDependencies,
    LPCWSTR     lpServiceStartName,
    LPCWSTR     lpPassword
    );




#line 519 "e:\\program\\vc98\\include\\winsvc.h"

__declspec(dllimport)
BOOL
__stdcall
DeleteService(
    SC_HANDLE   hService
    );

__declspec(dllimport)
BOOL
__stdcall
EnumDependentServicesA(
    SC_HANDLE               hService,
    DWORD                   dwServiceState,
    LPENUM_SERVICE_STATUSA  lpServices,
    DWORD                   cbBufSize,
    LPDWORD                 pcbBytesNeeded,
    LPDWORD                 lpServicesReturned
    );
__declspec(dllimport)
BOOL
__stdcall
EnumDependentServicesW(
    SC_HANDLE               hService,
    DWORD                   dwServiceState,
    LPENUM_SERVICE_STATUSW  lpServices,
    DWORD                   cbBufSize,
    LPDWORD                 pcbBytesNeeded,
    LPDWORD                 lpServicesReturned
    );




#line 554 "e:\\program\\vc98\\include\\winsvc.h"

__declspec(dllimport)
BOOL
__stdcall
EnumServicesStatusA(
    SC_HANDLE               hSCManager,
    DWORD                   dwServiceType,
    DWORD                   dwServiceState,
    LPENUM_SERVICE_STATUSA  lpServices,
    DWORD                   cbBufSize,
    LPDWORD                 pcbBytesNeeded,
    LPDWORD                 lpServicesReturned,
    LPDWORD                 lpResumeHandle
    );
__declspec(dllimport)
BOOL
__stdcall
EnumServicesStatusW(
    SC_HANDLE               hSCManager,
    DWORD                   dwServiceType,
    DWORD                   dwServiceState,
    LPENUM_SERVICE_STATUSW  lpServices,
    DWORD                   cbBufSize,
    LPDWORD                 pcbBytesNeeded,
    LPDWORD                 lpServicesReturned,
    LPDWORD                 lpResumeHandle
    );




#line 586 "e:\\program\\vc98\\include\\winsvc.h"

__declspec(dllimport)
BOOL
__stdcall
GetServiceKeyNameA(
    SC_HANDLE               hSCManager,
    LPCSTR                lpDisplayName,
    LPSTR                 lpServiceName,
    LPDWORD                 lpcchBuffer
    );
__declspec(dllimport)
BOOL
__stdcall
GetServiceKeyNameW(
    SC_HANDLE               hSCManager,
    LPCWSTR                lpDisplayName,
    LPWSTR                 lpServiceName,
    LPDWORD                 lpcchBuffer
    );




#line 610 "e:\\program\\vc98\\include\\winsvc.h"

__declspec(dllimport)
BOOL
__stdcall
GetServiceDisplayNameA(
    SC_HANDLE               hSCManager,
    LPCSTR                lpServiceName,
    LPSTR                 lpDisplayName,
    LPDWORD                 lpcchBuffer
    );
__declspec(dllimport)
BOOL
__stdcall
GetServiceDisplayNameW(
    SC_HANDLE               hSCManager,
    LPCWSTR                lpServiceName,
    LPWSTR                 lpDisplayName,
    LPDWORD                 lpcchBuffer
    );




#line 634 "e:\\program\\vc98\\include\\winsvc.h"

__declspec(dllimport)
SC_LOCK
__stdcall
LockServiceDatabase(
    SC_HANDLE   hSCManager
    );

__declspec(dllimport)
BOOL
__stdcall
NotifyBootConfigStatus(
    BOOL     BootAcceptable
    );

__declspec(dllimport)
SC_HANDLE
__stdcall
OpenSCManagerA(
    LPCSTR lpMachineName,
    LPCSTR lpDatabaseName,
    DWORD   dwDesiredAccess
    );
__declspec(dllimport)
SC_HANDLE
__stdcall
OpenSCManagerW(
    LPCWSTR lpMachineName,
    LPCWSTR lpDatabaseName,
    DWORD   dwDesiredAccess
    );




#line 670 "e:\\program\\vc98\\include\\winsvc.h"

__declspec(dllimport)
SC_HANDLE
__stdcall
OpenServiceA(
    SC_HANDLE   hSCManager,
    LPCSTR    lpServiceName,
    DWORD       dwDesiredAccess
    );
__declspec(dllimport)
SC_HANDLE
__stdcall
OpenServiceW(
    SC_HANDLE   hSCManager,
    LPCWSTR    lpServiceName,
    DWORD       dwDesiredAccess
    );




#line 692 "e:\\program\\vc98\\include\\winsvc.h"

__declspec(dllimport)
BOOL
__stdcall
QueryServiceConfigA(
    SC_HANDLE               hService,
    LPQUERY_SERVICE_CONFIGA lpServiceConfig,
    DWORD                   cbBufSize,
    LPDWORD                 pcbBytesNeeded
    );
__declspec(dllimport)
BOOL
__stdcall
QueryServiceConfigW(
    SC_HANDLE               hService,
    LPQUERY_SERVICE_CONFIGW lpServiceConfig,
    DWORD                   cbBufSize,
    LPDWORD                 pcbBytesNeeded
    );




#line 716 "e:\\program\\vc98\\include\\winsvc.h"

__declspec(dllimport)
BOOL
__stdcall
QueryServiceConfig2A(
    SC_HANDLE   hService,
    DWORD       dwInfoLevel,
    LPBYTE      lpBuffer,
    DWORD       cbBufSize,
    LPDWORD     pcbBytesNeeded
    );
__declspec(dllimport)
BOOL
__stdcall
QueryServiceConfig2W(
    SC_HANDLE   hService,
    DWORD       dwInfoLevel,
    LPBYTE      lpBuffer,
    DWORD       cbBufSize,
    LPDWORD     pcbBytesNeeded
    );




#line 742 "e:\\program\\vc98\\include\\winsvc.h"

__declspec(dllimport)
BOOL
__stdcall
QueryServiceLockStatusA(
    SC_HANDLE                       hSCManager,
    LPQUERY_SERVICE_LOCK_STATUSA    lpLockStatus,
    DWORD                           cbBufSize,
    LPDWORD                         pcbBytesNeeded
    );
__declspec(dllimport)
BOOL
__stdcall
QueryServiceLockStatusW(
    SC_HANDLE                       hSCManager,
    LPQUERY_SERVICE_LOCK_STATUSW    lpLockStatus,
    DWORD                           cbBufSize,
    LPDWORD                         pcbBytesNeeded
    );




#line 766 "e:\\program\\vc98\\include\\winsvc.h"

__declspec(dllimport)
BOOL
__stdcall
QueryServiceObjectSecurity(
    SC_HANDLE               hService,
    SECURITY_INFORMATION    dwSecurityInformation,
    PSECURITY_DESCRIPTOR    lpSecurityDescriptor,
    DWORD                   cbBufSize,
    LPDWORD                 pcbBytesNeeded
    );

__declspec(dllimport)
BOOL
__stdcall
QueryServiceStatus(
    SC_HANDLE           hService,
    LPSERVICE_STATUS    lpServiceStatus
    );

__declspec(dllimport)
SERVICE_STATUS_HANDLE
__stdcall
RegisterServiceCtrlHandlerA(
    LPCSTR             lpServiceName,
    LPHANDLER_FUNCTION   lpHandlerProc
    );
__declspec(dllimport)
SERVICE_STATUS_HANDLE
__stdcall
RegisterServiceCtrlHandlerW(
    LPCWSTR             lpServiceName,
    LPHANDLER_FUNCTION   lpHandlerProc
    );




#line 805 "e:\\program\\vc98\\include\\winsvc.h"

__declspec(dllimport)
BOOL
__stdcall
SetServiceObjectSecurity(
    SC_HANDLE               hService,
    SECURITY_INFORMATION    dwSecurityInformation,
    PSECURITY_DESCRIPTOR    lpSecurityDescriptor
    );

__declspec(dllimport)
BOOL
__stdcall
SetServiceStatus(
    SERVICE_STATUS_HANDLE   hServiceStatus,
    LPSERVICE_STATUS        lpServiceStatus
    );

__declspec(dllimport)
BOOL
__stdcall
StartServiceCtrlDispatcherA(
    const SERVICE_TABLE_ENTRYA *lpServiceStartTable
    );
__declspec(dllimport)
BOOL
__stdcall
StartServiceCtrlDispatcherW(
    const SERVICE_TABLE_ENTRYW *lpServiceStartTable
    );




#line 840 "e:\\program\\vc98\\include\\winsvc.h"


__declspec(dllimport)
BOOL
__stdcall
StartServiceA(
    SC_HANDLE            hService,
    DWORD                dwNumServiceArgs,
    LPCSTR             *lpServiceArgVectors
    );
__declspec(dllimport)
BOOL
__stdcall
StartServiceW(
    SC_HANDLE            hService,
    DWORD                dwNumServiceArgs,
    LPCWSTR             *lpServiceArgVectors
    );




#line 863 "e:\\program\\vc98\\include\\winsvc.h"

__declspec(dllimport)
BOOL
__stdcall
UnlockServiceDatabase(
    SC_LOCK     ScLock
    );



}
#line 875 "e:\\program\\vc98\\include\\winsvc.h"

#line 877 "e:\\program\\vc98\\include\\winsvc.h"
#line 237 "e:\\program\\vc98\\include\\windows.h"
#line 238 "e:\\program\\vc98\\include\\windows.h"



#line 1 "e:\\program\\vc98\\include\\mcx.h"











typedef struct _MODEMDEVCAPS {
    DWORD   dwActualSize;
    DWORD   dwRequiredSize;
    DWORD   dwDevSpecificOffset;
    DWORD   dwDevSpecificSize;

    
    DWORD   dwModemProviderVersion;
    DWORD   dwModemManufacturerOffset;
    DWORD   dwModemManufacturerSize;
    DWORD   dwModemModelOffset;
    DWORD   dwModemModelSize;
    DWORD   dwModemVersionOffset;
    DWORD   dwModemVersionSize;

    
    DWORD   dwDialOptions;          
    DWORD   dwCallSetupFailTimer;   
    DWORD   dwInactivityTimeout;    
    DWORD   dwSpeakerVolume;        
    DWORD   dwSpeakerMode;          
    DWORD   dwModemOptions;         
    DWORD   dwMaxDTERate;           
    DWORD   dwMaxDCERate;           

    
    BYTE    abVariablePortion [1];
} MODEMDEVCAPS, *PMODEMDEVCAPS, *LPMODEMDEVCAPS;

typedef struct _MODEMSETTINGS {
    DWORD   dwActualSize;
    DWORD   dwRequiredSize;
    DWORD   dwDevSpecificOffset;
    DWORD   dwDevSpecificSize;

    
    DWORD   dwCallSetupFailTimer;       
    DWORD   dwInactivityTimeout;        
    DWORD   dwSpeakerVolume;            
    DWORD   dwSpeakerMode;              
    DWORD   dwPreferredModemOptions;    

    
    DWORD   dwNegotiatedModemOptions;   
    DWORD   dwNegotiatedDCERate;        

    
    BYTE    abVariablePortion [1];
} MODEMSETTINGS, *PMODEMSETTINGS, *LPMODEMSETTINGS;









































#line 103 "e:\\program\\vc98\\include\\mcx.h"
#line 242 "e:\\program\\vc98\\include\\windows.h"
#line 243 "e:\\program\\vc98\\include\\windows.h"
                   

#line 1 "e:\\program\\vc98\\include\\imm.h"











extern "C" {
#line 14 "e:\\program\\vc98\\include\\imm.h"




#line 19 "e:\\program\\vc98\\include\\imm.h"
typedef DWORD   HIMC;
typedef DWORD   HIMCC;
#line 22 "e:\\program\\vc98\\include\\imm.h"

typedef HKL   *LPHKL;
typedef UINT  *LPUINT;


typedef struct tagCOMPOSITIONFORM {
    DWORD dwStyle;
    POINT ptCurrentPos;
    RECT  rcArea;
} COMPOSITIONFORM, *PCOMPOSITIONFORM,  *NPCOMPOSITIONFORM,  *LPCOMPOSITIONFORM;


typedef struct tagCANDIDATEFORM {
    DWORD dwIndex;
    DWORD dwStyle;
    POINT ptCurrentPos;
    RECT  rcArea;
} CANDIDATEFORM, *PCANDIDATEFORM,  *NPCANDIDATEFORM,  *LPCANDIDATEFORM;


typedef struct tagCANDIDATELIST {
    DWORD dwSize;
    DWORD dwStyle;
    DWORD dwCount;
    DWORD dwSelection;
    DWORD dwPageStart;
    DWORD dwPageSize;
    DWORD dwOffset[1];
} CANDIDATELIST, *PCANDIDATELIST,  *NPCANDIDATELIST,  *LPCANDIDATELIST;

typedef struct tagREGISTERWORDA {
    LPSTR   lpReading;
    LPSTR   lpWord;
} REGISTERWORDA, *PREGISTERWORDA,  *NPREGISTERWORDA,  *LPREGISTERWORDA;
typedef struct tagREGISTERWORDW {
    LPWSTR  lpReading;
    LPWSTR  lpWord;
} REGISTERWORDW, *PREGISTERWORDW,  *NPREGISTERWORDW,  *LPREGISTERWORDW;






typedef REGISTERWORDA REGISTERWORD;
typedef PREGISTERWORDA PREGISTERWORD;
typedef NPREGISTERWORDA NPREGISTERWORD;
typedef LPREGISTERWORDA LPREGISTERWORD;
#line 71 "e:\\program\\vc98\\include\\imm.h"













#line 85 "e:\\program\\vc98\\include\\imm.h"



typedef struct tagSTYLEBUFA {
    DWORD       dwStyle;
    CHAR        szDescription[32];
} STYLEBUFA, *PSTYLEBUFA,  *NPSTYLEBUFA,  *LPSTYLEBUFA;
typedef struct tagSTYLEBUFW {
    DWORD       dwStyle;
    WCHAR       szDescription[32];
} STYLEBUFW, *PSTYLEBUFW,  *NPSTYLEBUFW,  *LPSTYLEBUFW;






typedef STYLEBUFA STYLEBUF;
typedef PSTYLEBUFA PSTYLEBUF;
typedef NPSTYLEBUFA NPSTYLEBUF;
typedef LPSTYLEBUFA LPSTYLEBUF;
#line 107 "e:\\program\\vc98\\include\\imm.h"






































#line 146 "e:\\program\\vc98\\include\\imm.h"



HKL  __stdcall ImmInstallIMEA(LPCSTR lpszIMEFileName, LPCSTR lpszLayoutText);
HKL  __stdcall ImmInstallIMEW(LPCWSTR lpszIMEFileName, LPCWSTR lpszLayoutText);




#line 156 "e:\\program\\vc98\\include\\imm.h"

HWND __stdcall ImmGetDefaultIMEWnd(HWND);

UINT __stdcall ImmGetDescriptionA(HKL, LPSTR, UINT uBufLen);
UINT __stdcall ImmGetDescriptionW(HKL, LPWSTR, UINT uBufLen);




#line 166 "e:\\program\\vc98\\include\\imm.h"

UINT __stdcall ImmGetIMEFileNameA(HKL, LPSTR, UINT uBufLen);
UINT __stdcall ImmGetIMEFileNameW(HKL, LPWSTR, UINT uBufLen);




#line 174 "e:\\program\\vc98\\include\\imm.h"

DWORD __stdcall ImmGetProperty(HKL, DWORD);


BOOL __stdcall ImmIsIME(HKL);
BOOL __stdcall ImmSimulateHotKey(HWND, DWORD);

HIMC __stdcall ImmCreateContext(void);
BOOL __stdcall ImmDestroyContext(HIMC);
HIMC __stdcall ImmGetContext(HWND);
BOOL __stdcall ImmReleaseContext(HWND, HIMC);
HIMC __stdcall ImmAssociateContext(HWND, HIMC);


#line 189 "e:\\program\\vc98\\include\\imm.h"

LONG  __stdcall ImmGetCompositionStringA(HIMC, DWORD, LPVOID, DWORD);
LONG  __stdcall ImmGetCompositionStringW(HIMC, DWORD, LPVOID, DWORD);




#line 197 "e:\\program\\vc98\\include\\imm.h"

BOOL  __stdcall ImmSetCompositionStringA(HIMC, DWORD dwIndex, LPCVOID lpComp, DWORD, LPCVOID lpRead, DWORD);
BOOL  __stdcall ImmSetCompositionStringW(HIMC, DWORD dwIndex, LPCVOID lpComp, DWORD, LPCVOID lpRead, DWORD);




#line 205 "e:\\program\\vc98\\include\\imm.h"

DWORD __stdcall ImmGetCandidateListCountA(HIMC, LPDWORD lpdwListCount);
DWORD __stdcall ImmGetCandidateListCountW(HIMC, LPDWORD lpdwListCount);




#line 213 "e:\\program\\vc98\\include\\imm.h"

DWORD __stdcall ImmGetCandidateListA(HIMC, DWORD deIndex, LPCANDIDATELIST, DWORD dwBufLen);
DWORD __stdcall ImmGetCandidateListW(HIMC, DWORD deIndex, LPCANDIDATELIST, DWORD dwBufLen);




#line 221 "e:\\program\\vc98\\include\\imm.h"

DWORD __stdcall ImmGetGuideLineA(HIMC, DWORD dwIndex, LPSTR, DWORD dwBufLen);
DWORD __stdcall ImmGetGuideLineW(HIMC, DWORD dwIndex, LPWSTR, DWORD dwBufLen);




#line 229 "e:\\program\\vc98\\include\\imm.h"

BOOL __stdcall ImmGetConversionStatus(HIMC, LPDWORD, LPDWORD);
BOOL __stdcall ImmSetConversionStatus(HIMC, DWORD, DWORD);
BOOL __stdcall ImmGetOpenStatus(HIMC);
BOOL __stdcall ImmSetOpenStatus(HIMC, BOOL);



BOOL __stdcall ImmGetCompositionFontA(HIMC, LPLOGFONTA);
BOOL __stdcall ImmGetCompositionFontW(HIMC, LPLOGFONTW);




#line 244 "e:\\program\\vc98\\include\\imm.h"

BOOL __stdcall ImmSetCompositionFontA(HIMC, LPLOGFONTA);
BOOL __stdcall ImmSetCompositionFontW(HIMC, LPLOGFONTW);




#line 252 "e:\\program\\vc98\\include\\imm.h"
#line 253 "e:\\program\\vc98\\include\\imm.h"
#line 254 "e:\\program\\vc98\\include\\imm.h"

BOOL    __stdcall ImmConfigureIMEA(HKL, HWND, DWORD, LPVOID);
BOOL    __stdcall ImmConfigureIMEW(HKL, HWND, DWORD, LPVOID);




#line 262 "e:\\program\\vc98\\include\\imm.h"

LRESULT __stdcall ImmEscapeA(HKL, HIMC, UINT, LPVOID);
LRESULT __stdcall ImmEscapeW(HKL, HIMC, UINT, LPVOID);




#line 270 "e:\\program\\vc98\\include\\imm.h"

DWORD   __stdcall ImmGetConversionListA(HKL, HIMC, LPCSTR, LPCANDIDATELIST, DWORD dwBufLen, UINT uFlag);
DWORD   __stdcall ImmGetConversionListW(HKL, HIMC, LPCWSTR, LPCANDIDATELIST, DWORD dwBufLen, UINT uFlag);




#line 278 "e:\\program\\vc98\\include\\imm.h"

BOOL    __stdcall ImmNotifyIME(HIMC, DWORD dwAction, DWORD dwIndex, DWORD dwValue);


BOOL __stdcall ImmGetStatusWindowPos(HIMC, LPPOINT);
BOOL __stdcall ImmSetStatusWindowPos(HIMC, LPPOINT);
BOOL __stdcall ImmGetCompositionWindow(HIMC, LPCOMPOSITIONFORM);
BOOL __stdcall ImmSetCompositionWindow(HIMC, LPCOMPOSITIONFORM);
BOOL __stdcall ImmGetCandidateWindow(HIMC, DWORD, LPCANDIDATEFORM);
BOOL __stdcall ImmSetCandidateWindow(HIMC, LPCANDIDATEFORM);

BOOL __stdcall ImmIsUIMessageA(HWND, UINT, WPARAM, LPARAM);
BOOL __stdcall ImmIsUIMessageW(HWND, UINT, WPARAM, LPARAM);




#line 296 "e:\\program\\vc98\\include\\imm.h"


UINT __stdcall ImmGetVirtualKey(HWND);

typedef int (__stdcall *REGISTERWORDENUMPROCA)(LPCSTR, DWORD, LPCSTR, LPVOID);
typedef int (__stdcall *REGISTERWORDENUMPROCW)(LPCWSTR, DWORD, LPCWSTR, LPVOID);




#line 307 "e:\\program\\vc98\\include\\imm.h"

BOOL __stdcall ImmRegisterWordA(HKL, LPCSTR lpszReading, DWORD, LPCSTR lpszRegister);
BOOL __stdcall ImmRegisterWordW(HKL, LPCWSTR lpszReading, DWORD, LPCWSTR lpszRegister);




#line 315 "e:\\program\\vc98\\include\\imm.h"

BOOL __stdcall ImmUnregisterWordA(HKL, LPCSTR lpszReading, DWORD, LPCSTR lpszUnregister);
BOOL __stdcall ImmUnregisterWordW(HKL, LPCWSTR lpszReading, DWORD, LPCWSTR lpszUnregister);




#line 323 "e:\\program\\vc98\\include\\imm.h"

UINT __stdcall ImmGetRegisterWordStyleA(HKL, UINT nItem, LPSTYLEBUFA);
UINT __stdcall ImmGetRegisterWordStyleW(HKL, UINT nItem, LPSTYLEBUFW);




#line 331 "e:\\program\\vc98\\include\\imm.h"

UINT __stdcall ImmEnumRegisterWordA(HKL, REGISTERWORDENUMPROCA, LPCSTR lpszReading, DWORD, LPCSTR lpszRegister, LPVOID);
UINT __stdcall ImmEnumRegisterWordW(HKL, REGISTERWORDENUMPROCW, LPCWSTR lpszReading, DWORD, LPCWSTR lpszRegister, LPVOID);




#line 339 "e:\\program\\vc98\\include\\imm.h"











#line 351 "e:\\program\\vc98\\include\\imm.h"











































































































































































































































































#line 619 "e:\\program\\vc98\\include\\imm.h"



































































#line 687 "e:\\program\\vc98\\include\\imm.h"









}
#line 698 "e:\\program\\vc98\\include\\imm.h"


#line 701 "e:\\program\\vc98\\include\\imm.h"


#line 246 "e:\\program\\vc98\\include\\windows.h"
#line 247 "e:\\program\\vc98\\include\\windows.h"
#line 248 "e:\\program\\vc98\\include\\windows.h"
#line 249 "e:\\program\\vc98\\include\\windows.h"



#pragma warning(default:4001)
#pragma warning(default:4201)
#pragma warning(default:4214)

#line 257 "e:\\program\\vc98\\include\\windows.h"
#line 258 "e:\\program\\vc98\\include\\windows.h"

#line 260 "e:\\program\\vc98\\include\\windows.h"

#line 262 "e:\\program\\vc98\\include\\windows.h"
#line 263 "e:\\program\\vc98\\include\\windows.h"

#line 18 "e:\\programming\\git\\ph2\\link\\program\\p20140808_spy\\wbxu_20140808\\injectdll\\stdafx.h"






#line 25 "e:\\programming\\git\\ph2\\link\\program\\p20140808_spy\\wbxu_20140808\\injectdll\\stdafx.h"
#line 2 "e:\\programming\\git\\ph2\\link\\program\\p20140808_spy\\wbxu_20140808\\injectdll\\process.cpp"


#line 1 "e:\\program\\vc98\\include\\tchar.h"
















#pragma once
#line 19 "e:\\program\\vc98\\include\\tchar.h"





#pragma warning(disable:4514)       
 
#line 27 "e:\\program\\vc98\\include\\tchar.h"


extern "C" {
#line 31 "e:\\program\\vc98\\include\\tchar.h"






#line 38 "e:\\program\\vc98\\include\\tchar.h"























































































































































































































































































































































































}   
#line 415 "e:\\program\\vc98\\include\\tchar.h"




extern "C" {
#line 421 "e:\\program\\vc98\\include\\tchar.h"















#line 437 "e:\\program\\vc98\\include\\tchar.h"


























































































































#line 560 "e:\\program\\vc98\\include\\tchar.h"

























#line 586 "e:\\program\\vc98\\include\\tchar.h"

































}   
#line 621 "e:\\program\\vc98\\include\\tchar.h"

#line 1 "e:\\program\\vc98\\include\\mbstring.h"














#pragma once
#line 17 "e:\\program\\vc98\\include\\mbstring.h"






#line 24 "e:\\program\\vc98\\include\\mbstring.h"







#pragma pack(push,8)
#line 33 "e:\\program\\vc98\\include\\mbstring.h"


extern "C" {
#line 37 "e:\\program\\vc98\\include\\mbstring.h"

















#line 55 "e:\\program\\vc98\\include\\mbstring.h"





































struct _iobuf {
        char *_ptr;
        int   _cnt;
        char *_base;
        int   _flag;
        int   _file;
        int   _charbuf;
        int   _bufsiz;
        char *_tmpfname;
        };
typedef struct _iobuf FILE;

#line 105 "e:\\program\\vc98\\include\\mbstring.h"









 unsigned int __cdecl _mbbtombc(unsigned int);
 int __cdecl _mbbtype(unsigned char, int);
 unsigned int __cdecl _mbctombb(unsigned int);
 int __cdecl _mbsbtype(const unsigned char *, size_t);
 unsigned char * __cdecl _mbscat(unsigned char *, const unsigned char *);
 unsigned char * __cdecl _mbschr(const unsigned char *, unsigned int);
 int __cdecl _mbscmp(const unsigned char *, const unsigned char *);
 int __cdecl _mbscoll(const unsigned char *, const unsigned char *);
 unsigned char * __cdecl _mbscpy(unsigned char *, const unsigned char *);
 size_t __cdecl _mbscspn(const unsigned char *, const unsigned char *);
 unsigned char * __cdecl _mbsdec(const unsigned char *, const unsigned char *);
 unsigned char * __cdecl _mbsdup(const unsigned char *);
 int __cdecl _mbsicmp(const unsigned char *, const unsigned char *);
 int __cdecl _mbsicoll(const unsigned char *, const unsigned char *);
 unsigned char * __cdecl _mbsinc(const unsigned char *);
 size_t __cdecl _mbslen(const unsigned char *);
 unsigned char * __cdecl _mbslwr(unsigned char *);
 unsigned char * __cdecl _mbsnbcat(unsigned char *, const unsigned char *, size_t);
 int __cdecl _mbsnbcmp(const unsigned char *, const unsigned char *, size_t);
 int __cdecl _mbsnbcoll(const unsigned char *, const unsigned char *, size_t);
 size_t __cdecl _mbsnbcnt(const unsigned char *, size_t);
 unsigned char * __cdecl _mbsnbcpy(unsigned char *, const unsigned char *, size_t);
 int __cdecl _mbsnbicmp(const unsigned char *, const unsigned char *, size_t);
 int __cdecl _mbsnbicoll(const unsigned char *, const unsigned char *, size_t);
 unsigned char * __cdecl _mbsnbset(unsigned char *, unsigned int, size_t);
 unsigned char * __cdecl _mbsncat(unsigned char *, const unsigned char *, size_t);
 size_t __cdecl _mbsnccnt(const unsigned char *, size_t);
 int __cdecl _mbsncmp(const unsigned char *, const unsigned char *, size_t);
 int __cdecl _mbsncoll(const unsigned char *, const unsigned char *, size_t);
 unsigned char * __cdecl _mbsncpy(unsigned char *, const unsigned char *, size_t);
 unsigned int __cdecl _mbsnextc (const unsigned char *);
 int __cdecl _mbsnicmp(const unsigned char *, const unsigned char *, size_t);
 int __cdecl _mbsnicoll(const unsigned char *, const unsigned char *, size_t);
 unsigned char * __cdecl _mbsninc(const unsigned char *, size_t);
 unsigned char * __cdecl _mbsnset(unsigned char *, unsigned int, size_t);
 unsigned char * __cdecl _mbspbrk(const unsigned char *, const unsigned char *);
 unsigned char * __cdecl _mbsrchr(const unsigned char *, unsigned int);
 unsigned char * __cdecl _mbsrev(unsigned char *);
 unsigned char * __cdecl _mbsset(unsigned char *, unsigned int);
 size_t __cdecl _mbsspn(const unsigned char *, const unsigned char *);
 unsigned char * __cdecl _mbsspnp(const unsigned char *, const unsigned char *);
 unsigned char * __cdecl _mbsstr(const unsigned char *, const unsigned char *);
 unsigned char * __cdecl _mbstok(unsigned char *, const unsigned char *);
 unsigned char * __cdecl _mbsupr(unsigned char *);

 size_t __cdecl _mbclen(const unsigned char *);
 void __cdecl _mbccpy(unsigned char *, const unsigned char *);




 int __cdecl _ismbcalnum(unsigned int);
 int __cdecl _ismbcalpha(unsigned int);
 int __cdecl _ismbcdigit(unsigned int);
 int __cdecl _ismbcgraph(unsigned int);
 int __cdecl _ismbclegal(unsigned int);
 int __cdecl _ismbclower(unsigned int);
 int __cdecl _ismbcprint(unsigned int);
 int __cdecl _ismbcpunct(unsigned int);
 int __cdecl _ismbcspace(unsigned int);
 int __cdecl _ismbcupper(unsigned int);

 unsigned int __cdecl _mbctolower(unsigned int);
 unsigned int __cdecl _mbctoupper(unsigned int);


#line 181 "e:\\program\\vc98\\include\\mbstring.h"


 int __cdecl _ismbblead( unsigned int );
 int __cdecl _ismbbtrail( unsigned int );
 int __cdecl _ismbslead( const unsigned char *, const unsigned char *);
 int __cdecl _ismbstrail( const unsigned char *, const unsigned char *);

#line 189 "e:\\program\\vc98\\include\\mbstring.h"



 int __cdecl _ismbchira(unsigned int);
 int __cdecl _ismbckata(unsigned int);
 int __cdecl _ismbcsymbol(unsigned int);
 int __cdecl _ismbcl0(unsigned int);
 int __cdecl _ismbcl1(unsigned int);
 int __cdecl _ismbcl2(unsigned int);
 unsigned int __cdecl _mbcjistojms(unsigned int);
 unsigned int __cdecl _mbcjmstojis(unsigned int);
 unsigned int __cdecl _mbctohira(unsigned int);
 unsigned int __cdecl _mbctokata(unsigned int);


}
#line 206 "e:\\program\\vc98\\include\\mbstring.h"


#pragma pack(pop)
#line 210 "e:\\program\\vc98\\include\\mbstring.h"

#line 212 "e:\\program\\vc98\\include\\mbstring.h"
#line 623 "e:\\program\\vc98\\include\\tchar.h"


extern "C" {
#line 627 "e:\\program\\vc98\\include\\tchar.h"



typedef char            _TCHAR;
typedef signed char     _TSCHAR;
typedef unsigned char   _TUCHAR;
typedef unsigned char   _TXCHAR;
typedef unsigned int    _TINT;

#line 637 "e:\\program\\vc98\\include\\tchar.h"





































































































































#line 771 "e:\\program\\vc98\\include\\tchar.h"












__inline char * _tcschr(const char * _s1,unsigned int _c) {return (char *)_mbschr((const unsigned char *)_s1,_c);}
__inline size_t _tcscspn(const char * _s1,const char * _s2) {return _mbscspn((const unsigned char *)_s1,(const unsigned char *)_s2);}
__inline char * _tcsncat(char * _s1,const char * _s2,size_t _n) {return (char *)_mbsnbcat((unsigned char *)_s1,(const unsigned char *)_s2,_n);}
__inline char * _tcsncpy(char * _s1,const char * _s2,size_t _n) {return (char *)_mbsnbcpy((unsigned char *)_s1,(const unsigned char *)_s2,_n);}
__inline char * _tcspbrk(const char * _s1,const char * _s2) {return (char *)_mbspbrk((const unsigned char *)_s1,(const unsigned char *)_s2);}
__inline char * _tcsrchr(const char * _s1,unsigned int _c) {return (char *)_mbsrchr((const unsigned char *)_s1,_c);}
__inline size_t _tcsspn(const char * _s1,const char * _s2) {return _mbsspn((const unsigned char *)_s1,(const unsigned char *)_s2);}
__inline char * _tcsstr(const char * _s1,const char * _s2) {return (char *)_mbsstr((const unsigned char *)_s1,(const unsigned char *)_s2);}
__inline char * _tcstok(char * _s1,const char * _s2) {return (char *)_mbstok((unsigned char *)_s1,(const unsigned char *)_s2);}

__inline char * _tcsnset(char * _s1,unsigned int _c,size_t _n) {return (char *)_mbsnbset((unsigned char *)_s1,_c,_n);}
__inline char * _tcsrev(char * _s1) {return (char *)_mbsrev((unsigned char *)_s1);}
__inline char * _tcsset(char * _s1,unsigned int _c) {return (char *)_mbsset((unsigned char *)_s1,_c);}

__inline int _tcscmp(const char * _s1,const char * _s2) {return _mbscmp((const unsigned char *)_s1,(const unsigned char *)_s2);}
__inline int _tcsicmp(const char * _s1,const char * _s2) {return _mbsicmp((const unsigned char *)_s1,(const unsigned char *)_s2);}
__inline int _tcsnccmp(const char * _s1,const char * _s2,size_t _n) {return _mbsncmp((const unsigned char *)_s1,(const unsigned char *)_s2,_n);}
__inline int _tcsncmp(const char * _s1,const char * _s2,size_t _n) {return _mbsnbcmp((const unsigned char *)_s1,(const unsigned char *)_s2,_n);}
__inline int _tcsncicmp(const char * _s1,const char * _s2,size_t _n) {return _mbsnicmp((const unsigned char *)_s1,(const unsigned char *)_s2,_n);}
__inline int _tcsnicmp(const char * _s1,const char * _s2,size_t _n) {return _mbsnbicmp((const unsigned char *)_s1,(const unsigned char *)_s2,_n);}

__inline int _tcscoll(const char * _s1,const char * _s2) {return _mbscoll((const unsigned char *)_s1,(const unsigned char *)_s2);}
__inline int _tcsicoll(const char * _s1,const char * _s2) {return _mbsicoll((const unsigned char *)_s1,(const unsigned char *)_s2);}
__inline int _tcsnccoll(const char * _s1,const char * _s2,size_t _n) {return _mbsncoll((const unsigned char *)_s1,(const unsigned char *)_s2,_n);}
__inline int _tcsncoll(const char * _s1,const char * _s2,size_t _n) {return _mbsnbcoll((const unsigned char *)_s1,(const unsigned char *)_s2,_n);}
__inline int _tcsncicoll(const char * _s1,const char * _s2,size_t _n) {return _mbsnicoll((const unsigned char *)_s1,(const unsigned char *)_s2,_n);}
__inline int _tcsnicoll(const char * _s1,const char * _s2,size_t _n) {return _mbsnbicoll((const unsigned char *)_s1,(const unsigned char *)_s2,_n);}




__inline size_t _tcsclen(const char * _s1) {return _mbslen((const unsigned char *)_s1);}
__inline char * _tcsnccat(char * _s1,const char * _s2,size_t _n) {return (char *)_mbsncat((unsigned char *)_s1,(const unsigned char *)_s2,_n);}
__inline char * _tcsnccpy(char * _s1,const char * _s2,size_t _n) {return (char *)_mbsncpy((unsigned char *)_s1,(const unsigned char *)_s2,_n);}
__inline char * _tcsncset(char * _s1,unsigned int _c,size_t _n) {return (char *)_mbsnset((unsigned char *)_s1,_c,_n);}




__inline char * _tcsdec(const char * _s1,const char * _s2) {return (char *)_mbsdec((const unsigned char *)_s1,(const unsigned char *)_s2);}
__inline char * _tcsinc(const char * _s1) {return (char *)_mbsinc((const unsigned char *)_s1);}
__inline size_t _tcsnbcnt(const char * _s1,size_t _n) {return _mbsnbcnt((const unsigned char *)_s1,_n);}
__inline size_t _tcsnccnt(const char * _s1,size_t _n) {return _mbsnccnt((const unsigned char *)_s1,_n);}
__inline char * _tcsninc(const char * _s1,size_t _n) {return (char *)_mbsninc((const unsigned char *)_s1,_n);}
__inline char * _tcsspnp(const char * _s1,const char * _s2) {return (char *)_mbsspnp((const unsigned char *)_s1,(const unsigned char *)_s2);}
__inline char * _tcslwr(char * _s1) {return (char *)_mbslwr((unsigned char *)_s1);}
__inline char * _tcsupr(char * _s1) {return (char *)_mbsupr((unsigned char *)_s1);}

__inline size_t _tclen(const char * _s1) {return _mbclen((const unsigned char *)_s1);}
__inline void _tccpy(char * _s1,const char * _s2) {_mbccpy((unsigned char *)_s1,(const unsigned char *)_s2); return;}



__inline unsigned int _tcsnextc(const char * _s1) {unsigned int _n=0; if (_ismbblead((unsigned int)*(unsigned char *)_s1)) _n=((unsigned int)*_s1++)<<8; _n+=(unsigned int)*_s1; return(_n);}


#line 840 "e:\\program\\vc98\\include\\tchar.h"

#line 842 "e:\\program\\vc98\\include\\tchar.h"



































































































































































#line 1006 "e:\\program\\vc98\\include\\tchar.h"

#line 1008 "e:\\program\\vc98\\include\\tchar.h"










}   
#line 1020 "e:\\program\\vc98\\include\\tchar.h"

#line 1022 "e:\\program\\vc98\\include\\tchar.h"
#line 5 "e:\\programming\\git\\ph2\\link\\program\\p20140808_spy\\wbxu_20140808\\injectdll\\process.cpp"
#line 1 "e:\\program\\vc98\\include\\commctrl.h"





















#line 23 "e:\\program\\vc98\\include\\commctrl.h"

















#line 41 "e:\\program\\vc98\\include\\commctrl.h"
#line 42 "e:\\program\\vc98\\include\\commctrl.h"

















#line 60 "e:\\program\\vc98\\include\\commctrl.h"
#line 61 "e:\\program\\vc98\\include\\commctrl.h"


#line 1 "e:\\program\\vc98\\include\\pshpack1.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "e:\\program\\vc98\\include\\pshpack1.h"
#pragma pack(1)


#line 32 "e:\\program\\vc98\\include\\pshpack1.h"
#line 33 "e:\\program\\vc98\\include\\pshpack1.h"
#line 64 "e:\\program\\vc98\\include\\commctrl.h"
#line 65 "e:\\program\\vc98\\include\\commctrl.h"


extern "C" {
#line 69 "e:\\program\\vc98\\include\\commctrl.h"






















#line 1 "e:\\program\\vc98\\include\\prsht.h"



















#line 21 "e:\\program\\vc98\\include\\prsht.h"
#line 22 "e:\\program\\vc98\\include\\prsht.h"














#line 37 "e:\\program\\vc98\\include\\prsht.h"





















extern "C" {
#line 60 "e:\\program\\vc98\\include\\prsht.h"








#line 69 "e:\\program\\vc98\\include\\prsht.h"






#line 76 "e:\\program\\vc98\\include\\prsht.h"
#line 77 "e:\\program\\vc98\\include\\prsht.h"



struct _PSP;
typedef struct _PSP * HPROPSHEETPAGE;


struct _PROPSHEETPAGEA;
struct _PROPSHEETPAGEW;
#line 87 "e:\\program\\vc98\\include\\prsht.h"

typedef UINT (__stdcall  * LPFNPSPCALLBACKA)(HWND hwnd, UINT uMsg, struct _PROPSHEETPAGEA  *ppsp);
typedef UINT (__stdcall  * LPFNPSPCALLBACKW)(HWND hwnd, UINT uMsg, struct _PROPSHEETPAGEW  *ppsp);





#line 96 "e:\\program\\vc98\\include\\prsht.h"



















#line 116 "e:\\program\\vc98\\include\\prsht.h"








typedef struct _PROPSHEETPAGEA {
        DWORD           dwSize;
        DWORD           dwFlags;
        HINSTANCE       hInstance;
        union {
            LPCSTR          pszTemplate;

            LPCDLGTEMPLATE  pResource;


#line 135 "e:\\program\\vc98\\include\\prsht.h"
        } ;
        union {
            HICON       hIcon;
            LPCSTR      pszIcon;
        } ;
        LPCSTR          pszTitle;
        DLGPROC         pfnDlgProc;
        LPARAM          lParam;
        LPFNPSPCALLBACKA pfnCallback;
        UINT  * pcRefParent;


        LPCSTR pszHeaderTitle;    
        LPCSTR pszHeaderSubTitle; 
#line 150 "e:\\program\\vc98\\include\\prsht.h"
} PROPSHEETPAGEA,  *LPPROPSHEETPAGEA;
typedef const PROPSHEETPAGEA  *LPCPROPSHEETPAGEA;

typedef struct _PROPSHEETPAGEW {
        DWORD           dwSize;
        DWORD           dwFlags;
        HINSTANCE       hInstance;
        union {
            LPCWSTR          pszTemplate;

            LPCDLGTEMPLATE  pResource;


#line 164 "e:\\program\\vc98\\include\\prsht.h"
        };
        union {
            HICON       hIcon;
            LPCWSTR      pszIcon;
        };
        LPCWSTR          pszTitle;
        DLGPROC         pfnDlgProc;
        LPARAM          lParam;
        LPFNPSPCALLBACKW pfnCallback;
        UINT  * pcRefParent;
        

        LPCWSTR pszHeaderTitle;    
        LPCWSTR pszHeaderSubTitle; 
#line 179 "e:\\program\\vc98\\include\\prsht.h"
} PROPSHEETPAGEW,  *LPPROPSHEETPAGEW;
typedef const PROPSHEETPAGEW  *LPCPROPSHEETPAGEW;











#line 193 "e:\\program\\vc98\\include\\prsht.h"





























#line 223 "e:\\program\\vc98\\include\\prsht.h"


typedef int (__stdcall *PFNPROPSHEETCALLBACK)(HWND, UINT, LPARAM);




typedef struct _PROPSHEETHEADERA {
        DWORD           dwSize;
        DWORD           dwFlags;
        HWND            hwndParent;
        HINSTANCE       hInstance;
        union {
            HICON       hIcon;
            LPCSTR      pszIcon;
        };
        LPCSTR          pszCaption;

        UINT            nPages;
        union {
            UINT        nStartPage;
            LPCSTR      pStartPage;
        };
        union {
            LPCPROPSHEETPAGEA ppsp;
            HPROPSHEETPAGE  *phpage;
        };
        PFNPROPSHEETCALLBACK pfnCallback;


        union {
            HBITMAP hbmWatermark;
            LPCSTR pszbmWatermark;
        } ;
        HPALETTE hplWatermark;
        union {
            HBITMAP hbmHeader;     
            LPCSTR pszbmHeader;
        } ;
#line 263 "e:\\program\\vc98\\include\\prsht.h"
} PROPSHEETHEADERA,  *LPPROPSHEETHEADERA;

typedef const PROPSHEETHEADERA  *LPCPROPSHEETHEADERA;

typedef struct _PROPSHEETHEADERW {
        DWORD           dwSize;
        DWORD           dwFlags;
        HWND            hwndParent;
        HINSTANCE       hInstance;
        union {
            HICON       hIcon;
            LPCWSTR     pszIcon;
        };
        LPCWSTR         pszCaption;


        UINT            nPages;
        union {
            UINT        nStartPage;
            LPCWSTR     pStartPage;
        };
        union {
            LPCPROPSHEETPAGEW ppsp;
            HPROPSHEETPAGE  *phpage;
        };
        PFNPROPSHEETCALLBACK pfnCallback;


        union {
            HBITMAP hbmWatermark;
            LPCWSTR pszbmWatermark;
        } ;
        HPALETTE hplWatermark;
        union {
            HBITMAP hbmHeader;
            LPCWSTR pszbmHeader;
        } ;
#line 301 "e:\\program\\vc98\\include\\prsht.h"
} PROPSHEETHEADERW,  *LPPROPSHEETHEADERW;
typedef const PROPSHEETHEADERW  *LPCPROPSHEETHEADERW;











#line 315 "e:\\program\\vc98\\include\\prsht.h"





__declspec(dllimport) HPROPSHEETPAGE __stdcall CreatePropertySheetPageA(LPCPROPSHEETPAGEA);
__declspec(dllimport) HPROPSHEETPAGE __stdcall CreatePropertySheetPageW(LPCPROPSHEETPAGEW);
__declspec(dllimport) BOOL           __stdcall DestroyPropertySheetPage(HPROPSHEETPAGE);
__declspec(dllimport) int            __stdcall PropertySheetA(LPCPROPSHEETHEADERA);
__declspec(dllimport) int            __stdcall PropertySheetW(LPCPROPSHEETHEADERW);







#line 333 "e:\\program\\vc98\\include\\prsht.h"



typedef BOOL (__stdcall  * LPFNADDPROPSHEETPAGE)(HPROPSHEETPAGE, LPARAM);
typedef BOOL (__stdcall  * LPFNADDPROPSHEETPAGES)(LPVOID, LPFNADDPROPSHEETPAGE, LPARAM);


typedef struct _PSHNOTIFY
{
    NMHDR hdr;
    LPARAM lParam;
} PSHNOTIFY,  *LPPSHNOTIFY;


















#line 364 "e:\\program\\vc98\\include\\prsht.h"































































#line 428 "e:\\program\\vc98\\include\\prsht.h"












































#line 473 "e:\\program\\vc98\\include\\prsht.h"









































}
#line 516 "e:\\program\\vc98\\include\\prsht.h"


#line 519 "e:\\program\\vc98\\include\\prsht.h"

#line 92 "e:\\program\\vc98\\include\\commctrl.h"








































__declspec(dllimport) void __stdcall InitCommonControls(void);


typedef struct tagINITCOMMONCONTROLSEX {
    DWORD dwSize;             
    DWORD dwICC;              
} INITCOMMONCONTROLSEX, *LPINITCOMMONCONTROLSEX;
















#line 156 "e:\\program\\vc98\\include\\commctrl.h"
__declspec(dllimport) BOOL __stdcall InitCommonControlsEx(LPINITCOMMONCONTROLSEX);
#line 158 "e:\\program\\vc98\\include\\commctrl.h"




















typedef struct tagCOLORSCHEME {
   DWORD            dwSize;
   COLORREF         clrBtnHighlight;       
   COLORREF         clrBtnShadow;          
} COLORSCHEME, *LPCOLORSCHEME;







#line 191 "e:\\program\\vc98\\include\\commctrl.h"




#line 196 "e:\\program\\vc98\\include\\commctrl.h"






















#line 219 "e:\\program\\vc98\\include\\commctrl.h"






#line 226 "e:\\program\\vc98\\include\\commctrl.h"









typedef struct tagNMMOUSE {
    NMHDR   hdr;
    DWORD   dwItemSpec;
    DWORD   dwItemData;
    POINT   pt;
    DWORD   dwHitInfo; 
} NMMOUSE, * LPNMMOUSE;

typedef NMMOUSE NMCLICK;
typedef LPNMMOUSE LPNMCLICK;



typedef struct tagNMOBJECTNOTIFY {
    NMHDR   hdr;
    int     iItem;



    const void *piid;
#line 256 "e:\\program\\vc98\\include\\commctrl.h"
    void *pObject;
    HRESULT hResult;
    DWORD dwFlags;    
} NMOBJECTNOTIFY, *LPNMOBJECTNOTIFY;



typedef struct tagNMKEY
{
    NMHDR hdr;
    UINT  nVKey;
    UINT  uFlags;
} NMKEY,  *LPNMKEY;



typedef struct tagNMCHAR {
    NMHDR   hdr;
    UINT    ch;
    DWORD   dwItemPrev;     
    DWORD   dwItemNext;     
} NMCHAR, * LPNMCHAR;

#line 280 "e:\\program\\vc98\\include\\commctrl.h"











































#line 324 "e:\\program\\vc98\\include\\commctrl.h"











#line 336 "e:\\program\\vc98\\include\\commctrl.h"






















#line 359 "e:\\program\\vc98\\include\\commctrl.h"

















#line 377 "e:\\program\\vc98\\include\\commctrl.h"













typedef struct tagNMCUSTOMDRAWINFO
{
    NMHDR hdr;
    DWORD dwDrawStage;
    HDC hdc;
    RECT rc;
    DWORD dwItemSpec;  
    UINT  uItemState;
    LPARAM lItemlParam;
} NMCUSTOMDRAW,  * LPNMCUSTOMDRAW;



typedef struct tagNMTTCUSTOMDRAW
{
    NMCUSTOMDRAW nmcd;
    UINT uDrawFlags;
} NMTTCUSTOMDRAW,  * LPNMTTCUSTOMDRAW;

#line 410 "e:\\program\\vc98\\include\\commctrl.h"









struct _IMAGELIST;
typedef struct _IMAGELIST * HIMAGELIST;


typedef struct _IMAGELISTDRAWPARAMS {
    DWORD       cbSize;
    HIMAGELIST  himl;
    int         i;
    HDC         hdcDst;
    int         x;
    int         y;
    int         cx;
    int         cy;
    int         xBitmap;        
    int         yBitmap;        
    COLORREF    rgbBk;
    COLORREF    rgbFg;
    UINT        fStyle;
    DWORD       dwRop;
} IMAGELISTDRAWPARAMS,  * LPIMAGELISTDRAWPARAMS;
#line 440 "e:\\program\\vc98\\include\\commctrl.h"











__declspec(dllimport) HIMAGELIST  __stdcall ImageList_Create(int cx, int cy, UINT flags, int cInitial, int cGrow);
__declspec(dllimport) BOOL        __stdcall ImageList_Destroy(HIMAGELIST himl);
__declspec(dllimport) int         __stdcall ImageList_GetImageCount(HIMAGELIST himl);

__declspec(dllimport) BOOL        __stdcall ImageList_SetImageCount(HIMAGELIST himl, UINT uNewCount);
#line 457 "e:\\program\\vc98\\include\\commctrl.h"
__declspec(dllimport) int         __stdcall ImageList_Add(HIMAGELIST himl, HBITMAP hbmImage, HBITMAP hbmMask);
__declspec(dllimport) int         __stdcall ImageList_ReplaceIcon(HIMAGELIST himl, int i, HICON hicon);
__declspec(dllimport) COLORREF    __stdcall ImageList_SetBkColor(HIMAGELIST himl, COLORREF clrBk);
__declspec(dllimport) COLORREF    __stdcall ImageList_GetBkColor(HIMAGELIST himl);
__declspec(dllimport) BOOL        __stdcall ImageList_SetOverlayImage(HIMAGELIST himl, int iImage, int iOverlay);









#line 472 "e:\\program\\vc98\\include\\commctrl.h"










__declspec(dllimport) BOOL __stdcall ImageList_Draw(HIMAGELIST himl, int i, HDC hdcDst, int x, int y, UINT fStyle);




__declspec(dllimport) BOOL        __stdcall ImageList_Replace(HIMAGELIST himl, int i, HBITMAP hbmImage, HBITMAP hbmMask);
__declspec(dllimport) int         __stdcall ImageList_AddMasked(HIMAGELIST himl, HBITMAP hbmImage, COLORREF crMask);
__declspec(dllimport) BOOL        __stdcall ImageList_DrawEx(HIMAGELIST himl, int i, HDC hdcDst, int x, int y, int dx, int dy, COLORREF rgbBk, COLORREF rgbFg, UINT fStyle);

__declspec(dllimport) BOOL        __stdcall ImageList_DrawIndirect(IMAGELISTDRAWPARAMS* pimldp);
#line 493 "e:\\program\\vc98\\include\\commctrl.h"
__declspec(dllimport) BOOL        __stdcall ImageList_Remove(HIMAGELIST himl, int i);
__declspec(dllimport) HICON       __stdcall ImageList_GetIcon(HIMAGELIST himl, int i, UINT flags);
__declspec(dllimport) HIMAGELIST  __stdcall ImageList_LoadImageA(HINSTANCE hi, LPCSTR lpbmp, int cx, int cGrow, COLORREF crMask, UINT uType, UINT uFlags);
__declspec(dllimport) HIMAGELIST  __stdcall ImageList_LoadImageW(HINSTANCE hi, LPCWSTR lpbmp, int cx, int cGrow, COLORREF crMask, UINT uType, UINT uFlags);





#line 503 "e:\\program\\vc98\\include\\commctrl.h"




__declspec(dllimport) BOOL        __stdcall ImageList_Copy(HIMAGELIST himlDst, int iDst, HIMAGELIST himlSrc, int iSrc, UINT uFlags);
#line 509 "e:\\program\\vc98\\include\\commctrl.h"

__declspec(dllimport) BOOL        __stdcall ImageList_BeginDrag(HIMAGELIST himlTrack, int iTrack, int dxHotspot, int dyHotspot);
__declspec(dllimport) void        __stdcall ImageList_EndDrag();
__declspec(dllimport) BOOL        __stdcall ImageList_DragEnter(HWND hwndLock, int x, int y);
__declspec(dllimport) BOOL        __stdcall ImageList_DragLeave(HWND hwndLock);
__declspec(dllimport) BOOL        __stdcall ImageList_DragMove(int x, int y);
__declspec(dllimport) BOOL        __stdcall ImageList_SetDragCursorImage(HIMAGELIST himlDrag, int iDrag, int dxHotspot, int dyHotspot);

__declspec(dllimport) BOOL        __stdcall ImageList_DragShowNolock(BOOL fShow);
__declspec(dllimport) HIMAGELIST  __stdcall ImageList_GetDragImage(POINT * ppt,POINT * pptHotspot);










typedef struct _IMAGEINFO
{
    HBITMAP hbmImage;
    HBITMAP hbmMask;
    int     Unused1;
    int     Unused2;
    RECT    rcImage;
} IMAGEINFO,  *LPIMAGEINFO;

__declspec(dllimport) BOOL        __stdcall ImageList_GetIconSize(HIMAGELIST himl, int  *cx, int  *cy);
__declspec(dllimport) BOOL        __stdcall ImageList_SetIconSize(HIMAGELIST himl, int cx, int cy);
__declspec(dllimport) BOOL        __stdcall ImageList_GetImageInfo(HIMAGELIST himl, int i, IMAGEINFO * pImageInfo);
__declspec(dllimport) HIMAGELIST  __stdcall ImageList_Merge(HIMAGELIST himl1, int i1, HIMAGELIST himl2, int i2, int dx, int dy);

__declspec(dllimport) HIMAGELIST  __stdcall ImageList_Duplicate(HIMAGELIST himl);
#line 545 "e:\\program\\vc98\\include\\commctrl.h"


#line 548 "e:\\program\\vc98\\include\\commctrl.h"

#line 550 "e:\\program\\vc98\\include\\commctrl.h"














#line 565 "e:\\program\\vc98\\include\\commctrl.h"



#line 569 "e:\\program\\vc98\\include\\commctrl.h"







#line 577 "e:\\program\\vc98\\include\\commctrl.h"





#line 583 "e:\\program\\vc98\\include\\commctrl.h"









#line 593 "e:\\program\\vc98\\include\\commctrl.h"


typedef struct _HD_ITEMA
{
    UINT    mask;
    int     cxy;
    LPSTR   pszText;
    HBITMAP hbm;
    int     cchTextMax;
    int     fmt;
    LPARAM  lParam;

    int     iImage;        
    int     iOrder;        
#line 608 "e:\\program\\vc98\\include\\commctrl.h"
} HDITEMA,  * LPHDITEMA;





typedef struct _HD_ITEMW
{
    UINT    mask;
    int     cxy;
    LPWSTR   pszText;
    HBITMAP hbm;
    int     cchTextMax;
    int     fmt;
    LPARAM  lParam;

    int     iImage;        
    int     iOrder;
#line 627 "e:\\program\\vc98\\include\\commctrl.h"
} HDITEMW,  * LPHDITEMW;









#line 638 "e:\\program\\vc98\\include\\commctrl.h"












#line 651 "e:\\program\\vc98\\include\\commctrl.h"













#line 665 "e:\\program\\vc98\\include\\commctrl.h"













#line 679 "e:\\program\\vc98\\include\\commctrl.h"

















#line 697 "e:\\program\\vc98\\include\\commctrl.h"












#line 710 "e:\\program\\vc98\\include\\commctrl.h"








#line 719 "e:\\program\\vc98\\include\\commctrl.h"

typedef struct _HD_LAYOUT
{
    RECT * prc;
    WINDOWPOS * pwpos;
} HDLAYOUT,  *LPHDLAYOUT;




















#line 746 "e:\\program\\vc98\\include\\commctrl.h"

typedef struct _HD_HITTESTINFO
{
    POINT pt;
    UINT flags;
    int iItem;
} HDHITTESTINFO,  *LPHDHITTESTINFO;

















































#line 803 "e:\\program\\vc98\\include\\commctrl.h"









#line 813 "e:\\program\\vc98\\include\\commctrl.h"






















#line 836 "e:\\program\\vc98\\include\\commctrl.h"
























#line 861 "e:\\program\\vc98\\include\\commctrl.h"
#line 862 "e:\\program\\vc98\\include\\commctrl.h"











#line 874 "e:\\program\\vc98\\include\\commctrl.h"


typedef struct tagNMHEADERA
{
    NMHDR   hdr;
    int     iItem;
    int     iButton;
    HDITEMA * pitem;
}  NMHEADERA, * LPNMHEADERA;


typedef struct tagNMHEADERW
{
    NMHDR   hdr;
    int     iItem;
    int     iButton;
    HDITEMW * pitem;
} NMHEADERW, * LPNMHEADERW;







#line 900 "e:\\program\\vc98\\include\\commctrl.h"

typedef struct tagNMHDDISPINFOW
{
    NMHDR   hdr;
    int     iItem;
    UINT    mask;
    LPWSTR  pszText;
    int     cchTextMax;
    int     iImage;
    LPARAM  lParam;
} NMHDDISPINFOW, * LPNMHDDISPINFOW;

typedef struct tagNMHDDISPINFOA
{
    NMHDR   hdr;
    int     iItem;
    UINT    mask;
    LPSTR   pszText;
    int     cchTextMax;
    int     iImage;
    LPARAM  lParam;
} NMHDDISPINFOA, * LPNMHDDISPINFOA;








#line 931 "e:\\program\\vc98\\include\\commctrl.h"

#line 933 "e:\\program\\vc98\\include\\commctrl.h"














#line 948 "e:\\program\\vc98\\include\\commctrl.h"



#line 952 "e:\\program\\vc98\\include\\commctrl.h"

typedef struct _TBBUTTON {
    int iBitmap;
    int idCommand;
    BYTE fsState;
    BYTE fsStyle;

    BYTE bReserved[2];
#line 961 "e:\\program\\vc98\\include\\commctrl.h"
    DWORD dwData;
    int iString;
} TBBUTTON, * PTBBUTTON, * LPTBBUTTON;
typedef const TBBUTTON * LPCTBBUTTON;


typedef struct _COLORMAP {
    COLORREF from;
    COLORREF to;
} COLORMAP, * LPCOLORMAP;

__declspec(dllimport) HWND __stdcall CreateToolbarEx(HWND hwnd, DWORD ws, UINT wID, int nBitmaps,
                        HINSTANCE hBMInst, UINT wBMID, LPCTBBUTTON lpButtons,
                        int iNumButtons, int dxButton, int dyButton,
                        int dxBitmap, int dyBitmap, UINT uStructSize);

__declspec(dllimport) HBITMAP __stdcall CreateMappedBitmap(HINSTANCE hInstance, int idBitmap,
                                  UINT wFlags, LPCOLORMAP lpColorMap,
                                  int iNumMaps);











#line 992 "e:\\program\\vc98\\include\\commctrl.h"


#line 995 "e:\\program\\vc98\\include\\commctrl.h"








#line 1004 "e:\\program\\vc98\\include\\commctrl.h"



#line 1008 "e:\\program\\vc98\\include\\commctrl.h"








#line 1017 "e:\\program\\vc98\\include\\commctrl.h"




#line 1022 "e:\\program\\vc98\\include\\commctrl.h"



typedef struct _NMTBCUSTOMDRAW {
    NMCUSTOMDRAW nmcd;
    HBRUSH hbrMonoDither;
    HBRUSH hbrLines;                
    HPEN hpenLines;                 

    COLORREF clrText;               
    COLORREF clrMark;               
    COLORREF clrTextHighlight;      
    COLORREF clrBtnFace;            
    COLORREF clrBtnHighlight;       
    COLORREF clrHighlightHotTrack;  
                                    
    RECT rcText;                    

    int nStringBkMode;
    int nHLStringBkMode;
} NMTBCUSTOMDRAW, * LPNMTBCUSTOMDRAW;








#line 1052 "e:\\program\\vc98\\include\\commctrl.h"








#line 1061 "e:\\program\\vc98\\include\\commctrl.h"







#line 1069 "e:\\program\\vc98\\include\\commctrl.h"





typedef struct tagTBADDBITMAP {
        HINSTANCE       hInst;
        UINT            nID;
} TBADDBITMAP, *LPTBADDBITMAP;









#line 1088 "e:\\program\\vc98\\include\\commctrl.h"



































#line 1124 "e:\\program\\vc98\\include\\commctrl.h"







#line 1132 "e:\\program\\vc98\\include\\commctrl.h"

#line 1134 "e:\\program\\vc98\\include\\commctrl.h"







#line 1142 "e:\\program\\vc98\\include\\commctrl.h"








typedef struct tagTBSAVEPARAMSA {
    HKEY hkr;
    LPCSTR pszSubKey;
    LPCSTR pszValueName;
} TBSAVEPARAMSA, * LPTBSAVEPARAMSA;

typedef struct tagTBSAVEPARAMSW {
    HKEY hkr;
    LPCWSTR pszSubKey;
    LPCWSTR pszValueName;
} TBSAVEPARAMSW,  *LPTBSAVEPARAMW;







#line 1169 "e:\\program\\vc98\\include\\commctrl.h"

#line 1171 "e:\\program\\vc98\\include\\commctrl.h"






































#line 1210 "e:\\program\\vc98\\include\\commctrl.h"









#line 1220 "e:\\program\\vc98\\include\\commctrl.h"








typedef struct {
    int   iButton;
    DWORD dwFlags;
} TBINSERTMARK, * LPTBINSERTMARK;


























#line 1259 "e:\\program\\vc98\\include\\commctrl.h"
#line 1260 "e:\\program\\vc98\\include\\commctrl.h"

typedef struct {
    HINSTANCE       hInstOld;
    UINT            nIDOld;
    HINSTANCE       hInstNew;
    UINT            nIDNew;
    int             nButtons;
} TBREPLACEBITMAP, *LPTBREPLACEBITMAP;
















typedef struct {
    UINT cbSize;
    DWORD dwMask;
    int idCommand;
    int iImage;
    BYTE fsState;
    BYTE fsStyle;
    WORD cx;
    DWORD lParam;
    LPSTR pszText;
    int cchText;
} TBBUTTONINFOA, *LPTBBUTTONINFOA;

typedef struct {
    UINT cbSize;
    DWORD dwMask;
    int idCommand;
    int iImage;
    BYTE fsState;
    BYTE fsStyle;
    WORD cx;
    DWORD lParam;
    LPWSTR pszText;
    int cchText;
} TBBUTTONINFOW, *LPTBBUTTONINFOW;







#line 1317 "e:\\program\\vc98\\include\\commctrl.h"













#line 1331 "e:\\program\\vc98\\include\\commctrl.h"
















#line 1348 "e:\\program\\vc98\\include\\commctrl.h"



#line 1352 "e:\\program\\vc98\\include\\commctrl.h"














#line 1367 "e:\\program\\vc98\\include\\commctrl.h"





typedef struct tagNMTBHOTITEM
{
    NMHDR   hdr;
    int     idOld;
    int     idNew;
    DWORD   dwFlags;           
} NMTBHOTITEM, * LPNMTBHOTITEM;





















typedef struct tagNMTBGETINFOTIPA
{
    NMHDR hdr;
    LPSTR pszText;
    int cchTextMax;
    int iItem;
    LPARAM lParam;
} NMTBGETINFOTIPA, *LPNMTBGETINFOTIPA;

typedef struct tagNMTBGETINFOTIPW
{
    NMHDR hdr;
    LPWSTR pszText;
    int cchTextMax;
    int iItem;
    LPARAM lParam;
} NMTBGETINFOTIPW, *LPNMTBGETINFOTIPW;









#line 1427 "e:\\program\\vc98\\include\\commctrl.h"





typedef struct {
    NMHDR  hdr;
    DWORD dwMask;     
    int idCommand;    
    DWORD lParam;     
    int iImage;       
    LPSTR pszText;    
    int cchText;      
} NMTBDISPINFOA, *LPNMTBDISPINFOA;

typedef struct {
    NMHDR hdr;
    DWORD dwMask;      
    int idCommand;    
    DWORD lParam;     
    int iImage;       
    LPWSTR pszText;   
    int cchText;      
} NMTBDISPINFOW, *LPNMTBDISPINFOW;










#line 1462 "e:\\program\\vc98\\include\\commctrl.h"






#line 1469 "e:\\program\\vc98\\include\\commctrl.h"






#line 1476 "e:\\program\\vc98\\include\\commctrl.h"













#line 1490 "e:\\program\\vc98\\include\\commctrl.h"





typedef struct tagNMTOOLBARA {
    NMHDR   hdr;
    int     iItem;
    TBBUTTON tbButton;
    int     cchText;
    LPSTR   pszText;
} NMTOOLBARA, * LPNMTOOLBARA;
#line 1503 "e:\\program\\vc98\\include\\commctrl.h"



typedef struct tagNMTOOLBARW {
    NMHDR   hdr;
    int     iItem;
    TBBUTTON tbButton;
    int     cchText;
    LPWSTR   pszText;
} NMTOOLBARW, * LPNMTOOLBARW;
#line 1514 "e:\\program\\vc98\\include\\commctrl.h"








#line 1523 "e:\\program\\vc98\\include\\commctrl.h"

#line 1525 "e:\\program\\vc98\\include\\commctrl.h"

#line 1527 "e:\\program\\vc98\\include\\commctrl.h"















#line 1543 "e:\\program\\vc98\\include\\commctrl.h"



#line 1547 "e:\\program\\vc98\\include\\commctrl.h"

















#line 1565 "e:\\program\\vc98\\include\\commctrl.h"


typedef struct tagREBARINFO
{
    UINT        cbSize;
    UINT        fMask;

    HIMAGELIST  himl;


#line 1576 "e:\\program\\vc98\\include\\commctrl.h"
}   REBARINFO,  *LPREBARINFO;











#line 1589 "e:\\program\\vc98\\include\\commctrl.h"














#line 1604 "e:\\program\\vc98\\include\\commctrl.h"

typedef struct tagREBARBANDINFOA
{
    UINT        cbSize;
    UINT        fMask;
    UINT        fStyle;
    COLORREF    clrFore;
    COLORREF    clrBack;
    LPSTR       lpText;
    UINT        cch;
    int         iImage;
    HWND        hwndChild;
    UINT        cxMinChild;
    UINT        cyMinChild;
    UINT        cx;
    HBITMAP     hbmBack;
    UINT        wID;

    UINT        cyChild;
    UINT        cyMaxChild;
    UINT        cyIntegral;
    UINT        cxIdeal;
    LPARAM      lParam;
    UINT        cxHeader;
#line 1629 "e:\\program\\vc98\\include\\commctrl.h"
}   REBARBANDINFOA,  *LPREBARBANDINFOA;
typedef REBARBANDINFOA const  *LPCREBARBANDINFOA;




typedef struct tagREBARBANDINFOW
{
    UINT        cbSize;
    UINT        fMask;
    UINT        fStyle;
    COLORREF    clrFore;
    COLORREF    clrBack;
    LPWSTR      lpText;
    UINT        cch;
    int         iImage;
    HWND        hwndChild;
    UINT        cxMinChild;
    UINT        cyMinChild;
    UINT        cx;
    HBITMAP     hbmBack;
    UINT        wID;

    UINT        cyChild;
    UINT        cyMaxChild;
    UINT        cyIntegral;
    UINT        cxIdeal;
    LPARAM      lParam;
    UINT        cxHeader;
#line 1659 "e:\\program\\vc98\\include\\commctrl.h"
}   REBARBANDINFOW,  *LPREBARBANDINFOW;
typedef REBARBANDINFOW const  *LPCREBARBANDINFOW;











#line 1673 "e:\\program\\vc98\\include\\commctrl.h"







#line 1681 "e:\\program\\vc98\\include\\commctrl.h"





#line 1687 "e:\\program\\vc98\\include\\commctrl.h"














#line 1702 "e:\\program\\vc98\\include\\commctrl.h"










#line 1713 "e:\\program\\vc98\\include\\commctrl.h"




        
        











#line 1731 "e:\\program\\vc98\\include\\commctrl.h"
















#line 1748 "e:\\program\\vc98\\include\\commctrl.h"














typedef struct tagNMREBARCHILDSIZE
{
    NMHDR hdr;
    UINT uBand;
    UINT wID;
    RECT rcChild;
    RECT rcBand;
} NMREBARCHILDSIZE, *LPNMREBARCHILDSIZE;

typedef struct tagNMREBAR
{
    NMHDR   hdr;
    DWORD   dwMask;           
    UINT    uBand;
    UINT    fStyle;
    UINT    wID;
    LPARAM  lParam;
} NMREBAR, *LPNMREBAR;







typedef struct tagNMRBAUTOSIZE
{
    NMHDR hdr;
    BOOL fChanged;
    RECT rcTarget;
    RECT rcActual;
} NMRBAUTOSIZE, *LPNMRBAUTOSIZE;






typedef struct _RB_HITTESTINFO
{
    POINT pt;
    UINT flags;
    int iBand;
} RBHITTESTINFO,  *LPRBHITTESTINFO;

#line 1808 "e:\\program\\vc98\\include\\commctrl.h"

#line 1810 "e:\\program\\vc98\\include\\commctrl.h"

#line 1812 "e:\\program\\vc98\\include\\commctrl.h"














#line 1827 "e:\\program\\vc98\\include\\commctrl.h"



#line 1831 "e:\\program\\vc98\\include\\commctrl.h"











#line 1843 "e:\\program\\vc98\\include\\commctrl.h"







typedef struct tagTOOLINFOA {
    UINT cbSize;
    UINT uFlags;
    HWND hwnd;
    UINT uId;
    RECT rect;
    HINSTANCE hinst;
    LPSTR lpszText;

    LPARAM lParam;
#line 1861 "e:\\program\\vc98\\include\\commctrl.h"
} TTTOOLINFOA,  *PTOOLINFOA,  *LPTTTOOLINFOA;

typedef struct tagTOOLINFOW {
    UINT cbSize;
    UINT uFlags;
    HWND hwnd;
    UINT uId;
    RECT rect;
    HINSTANCE hinst;
    LPWSTR lpszText;

    LPARAM lParam;
#line 1874 "e:\\program\\vc98\\include\\commctrl.h"
} TTTOOLINFOW,  *PTOOLINFOW, * LPTTTOOLINFOW;











#line 1887 "e:\\program\\vc98\\include\\commctrl.h"
























#line 1912 "e:\\program\\vc98\\include\\commctrl.h"















































#line 1960 "e:\\program\\vc98\\include\\commctrl.h"


#line 1963 "e:\\program\\vc98\\include\\commctrl.h"
























#line 1988 "e:\\program\\vc98\\include\\commctrl.h"








#line 1997 "e:\\program\\vc98\\include\\commctrl.h"



typedef struct _TT_HITTESTINFOA {
    HWND hwnd;
    POINT pt;
    TTTOOLINFOA ti;
} TTHITTESTINFOA,  * LPTTHITTESTINFOA;

typedef struct _TT_HITTESTINFOW {
    HWND hwnd;
    POINT pt;
    TTTOOLINFOW ti;
} TTHITTESTINFOW,  * LPTTHITTESTINFOW;







#line 2019 "e:\\program\\vc98\\include\\commctrl.h"










#line 2030 "e:\\program\\vc98\\include\\commctrl.h"

















#line 2048 "e:\\program\\vc98\\include\\commctrl.h"







typedef struct tagNMTTDISPIFNOA {
    NMHDR hdr;
    LPSTR lpszText;
    char szText[80];
    HINSTANCE hinst;
    UINT uFlags;

    LPARAM lParam;
#line 2064 "e:\\program\\vc98\\include\\commctrl.h"
} NMTTDISPINFOA,  *LPNMTTDISPINFOA;

typedef struct tagNMTTDISPINFOW {
    NMHDR hdr;
    LPWSTR lpszText;
    WCHAR szText[80];
    HINSTANCE hinst;
    UINT uFlags;

    LPARAM lParam;
#line 2075 "e:\\program\\vc98\\include\\commctrl.h"
} NMTTDISPINFOW,  *LPNMTTDISPINFOW;









#line 2086 "e:\\program\\vc98\\include\\commctrl.h"

#line 2088 "e:\\program\\vc98\\include\\commctrl.h"












__declspec(dllimport) void __stdcall DrawStatusTextA(HDC hDC, LPRECT lprc, LPCSTR pszText, UINT uFlags);
__declspec(dllimport) void __stdcall DrawStatusTextW(HDC hDC, LPRECT lprc, LPCWSTR pszText, UINT uFlags);

__declspec(dllimport) HWND __stdcall CreateStatusWindowA(LONG style, LPCSTR lpszText, HWND hwndParent, UINT wID);
__declspec(dllimport) HWND __stdcall CreateStatusWindowW(LONG style, LPCWSTR lpszText, HWND hwndParent, UINT wID);







#line 2113 "e:\\program\\vc98\\include\\commctrl.h"









#line 2123 "e:\\program\\vc98\\include\\commctrl.h"



#line 2127 "e:\\program\\vc98\\include\\commctrl.h"























#line 2151 "e:\\program\\vc98\\include\\commctrl.h"
#line 2152 "e:\\program\\vc98\\include\\commctrl.h"










#line 2163 "e:\\program\\vc98\\include\\commctrl.h"









#line 2173 "e:\\program\\vc98\\include\\commctrl.h"







#line 2181 "e:\\program\\vc98\\include\\commctrl.h"






#line 2188 "e:\\program\\vc98\\include\\commctrl.h"

#line 2190 "e:\\program\\vc98\\include\\commctrl.h"





__declspec(dllimport) void __stdcall MenuHelp(UINT uMsg, WPARAM wParam, LPARAM lParam, HMENU hMainMenu, HINSTANCE hInst, HWND hwndStatus, UINT  *lpwIDs);
__declspec(dllimport) BOOL __stdcall ShowHideMenuCtl(HWND hWnd, UINT uFlags, LPINT lpInfo);
__declspec(dllimport) void __stdcall GetEffectiveClientRect(HWND hWnd, LPRECT lprc, LPINT lpInfo);



#line 2202 "e:\\program\\vc98\\include\\commctrl.h"















#line 2218 "e:\\program\\vc98\\include\\commctrl.h"



#line 2222 "e:\\program\\vc98\\include\\commctrl.h"


















#line 2241 "e:\\program\\vc98\\include\\commctrl.h"











































#line 2285 "e:\\program\\vc98\\include\\commctrl.h"



#line 2289 "e:\\program\\vc98\\include\\commctrl.h"


















#line 2308 "e:\\program\\vc98\\include\\commctrl.h"

#line 2310 "e:\\program\\vc98\\include\\commctrl.h"





typedef struct tagDRAGLISTINFO {
    UINT uNotification;
    HWND hWnd;
    POINT ptCursor;
} DRAGLISTINFO,  *LPDRAGLISTINFO;













__declspec(dllimport) BOOL __stdcall MakeDragList(HWND hLB);
__declspec(dllimport) void __stdcall DrawInsert(HWND handParent, HWND hLB, int nItem);
__declspec(dllimport) int __stdcall LBItemFromPt(HWND hLB, POINT pt, BOOL bAutoScroll);

#line 2338 "e:\\program\\vc98\\include\\commctrl.h"















#line 2354 "e:\\program\\vc98\\include\\commctrl.h"



#line 2358 "e:\\program\\vc98\\include\\commctrl.h"


typedef struct _UDACCEL {
    UINT nSec;
    UINT nInc;
} UDACCEL,  *LPUDACCEL;
















#line 2381 "e:\\program\\vc98\\include\\commctrl.h"


















#line 2400 "e:\\program\\vc98\\include\\commctrl.h"

__declspec(dllimport) HWND __stdcall CreateUpDownControl(DWORD dwStyle, int x, int y, int cx, int cy,
                                HWND hParent, int nID, HINSTANCE hInst,
                                HWND hBuddy,
                                int nUpper, int nLower, int nPos);







#line 2413 "e:\\program\\vc98\\include\\commctrl.h"

typedef struct _NM_UPDOWN
{
    NMHDR hdr;
    int iPos;
    int iDelta;
} NMUPDOWN,  *LPNMUPDOWN;



#line 2424 "e:\\program\\vc98\\include\\commctrl.h"















#line 2440 "e:\\program\\vc98\\include\\commctrl.h"



#line 2444 "e:\\program\\vc98\\include\\commctrl.h"





#line 2450 "e:\\program\\vc98\\include\\commctrl.h"








typedef struct
{
   int iLow;
   int iHigh;
} PBRANGE, *PPBRANGE;




#line 2468 "e:\\program\\vc98\\include\\commctrl.h"

#line 2470 "e:\\program\\vc98\\include\\commctrl.h"

#line 2472 "e:\\program\\vc98\\include\\commctrl.h"













#line 2486 "e:\\program\\vc98\\include\\commctrl.h"
























#line 2511 "e:\\program\\vc98\\include\\commctrl.h"



#line 2515 "e:\\program\\vc98\\include\\commctrl.h"

#line 2517 "e:\\program\\vc98\\include\\commctrl.h"

















#line 2535 "e:\\program\\vc98\\include\\commctrl.h"
















#line 2552 "e:\\program\\vc98\\include\\commctrl.h"



#line 2556 "e:\\program\\vc98\\include\\commctrl.h"


















#line 2575 "e:\\program\\vc98\\include\\commctrl.h"






















#line 2598 "e:\\program\\vc98\\include\\commctrl.h"

































#line 2632 "e:\\program\\vc98\\include\\commctrl.h"





















#line 2654 "e:\\program\\vc98\\include\\commctrl.h"






typedef struct tagLVITEMA
{
    UINT mask;
    int iItem;
    int iSubItem;
    UINT state;
    UINT stateMask;
    LPSTR pszText;
    int cchTextMax;
    int iImage;
    LPARAM lParam;

    int iIndent;
#line 2674 "e:\\program\\vc98\\include\\commctrl.h"
} LVITEMA, * LPLVITEMA;

typedef struct tagLVITEMW
{
    UINT mask;
    int iItem;
    int iSubItem;
    UINT state;
    UINT stateMask;
    LPWSTR pszText;
    int cchTextMax;
    int iImage;
    LPARAM lParam;

    int iIndent;
#line 2690 "e:\\program\\vc98\\include\\commctrl.h"
} LVITEMW, * LPLVITEMW;










#line 2702 "e:\\program\\vc98\\include\\commctrl.h"








#line 2711 "e:\\program\\vc98\\include\\commctrl.h"









#line 2721 "e:\\program\\vc98\\include\\commctrl.h"











#line 2733 "e:\\program\\vc98\\include\\commctrl.h"











#line 2745 "e:\\program\\vc98\\include\\commctrl.h"























































#line 2801 "e:\\program\\vc98\\include\\commctrl.h"



typedef struct tagLVFINDINFOA
{
    UINT flags;
    LPCSTR psz;
    LPARAM lParam;
    POINT pt;
    UINT vkDirection;
} LVFINDINFOA, * LPFINDINFOA;

typedef struct tagLVFINDINFOW
{
    UINT flags;
    LPCWSTR psz;
    LPARAM lParam;
    POINT pt;
    UINT vkDirection;
} LVFINDINFOW, * LPFINDINFOW;





#line 2827 "e:\\program\\vc98\\include\\commctrl.h"







#line 2835 "e:\\program\\vc98\\include\\commctrl.h"
































#line 2868 "e:\\program\\vc98\\include\\commctrl.h"





















#line 2890 "e:\\program\\vc98\\include\\commctrl.h"



typedef struct tagLVHITTESTINFO
{
    POINT pt;
    UINT flags;
    int iItem;

    int iSubItem;    
#line 2901 "e:\\program\\vc98\\include\\commctrl.h"
} LVHITTESTINFO, * LPLVHITTESTINFO;





































#line 2940 "e:\\program\\vc98\\include\\commctrl.h"


















#line 2959 "e:\\program\\vc98\\include\\commctrl.h"






typedef struct tagLVCOLUMNA
{
    UINT mask;
    int fmt;
    int cx;
    LPSTR pszText;
    int cchTextMax;
    int iSubItem;

    int iImage;
    int iOrder;
#line 2977 "e:\\program\\vc98\\include\\commctrl.h"
} LVCOLUMNA, * LPLVCOLUMNA;

typedef struct tagLVCOLUMNW
{
    UINT mask;
    int fmt;
    int cx;
    LPWSTR pszText;
    int cchTextMax;
    int iSubItem;

    int iImage;
    int iOrder;
#line 2991 "e:\\program\\vc98\\include\\commctrl.h"
} LVCOLUMNW, * LPLVCOLUMNW;









#line 3002 "e:\\program\\vc98\\include\\commctrl.h"









#line 3012 "e:\\program\\vc98\\include\\commctrl.h"









#line 3022 "e:\\program\\vc98\\include\\commctrl.h"







#line 3030 "e:\\program\\vc98\\include\\commctrl.h"











#line 3042 "e:\\program\\vc98\\include\\commctrl.h"











#line 3054 "e:\\program\\vc98\\include\\commctrl.h"


























#line 3081 "e:\\program\\vc98\\include\\commctrl.h"



































































#line 3149 "e:\\program\\vc98\\include\\commctrl.h"








#line 3158 "e:\\program\\vc98\\include\\commctrl.h"

















#line 3176 "e:\\program\\vc98\\include\\commctrl.h"












#line 3189 "e:\\program\\vc98\\include\\commctrl.h"








#line 3198 "e:\\program\\vc98\\include\\commctrl.h"

typedef int (__stdcall *PFNLVCOMPARE)(LPARAM, LPARAM, LPARAM);
































#line 3233 "e:\\program\\vc98\\include\\commctrl.h"


















#line 3252 "e:\\program\\vc98\\include\\commctrl.h"




















#line 3273 "e:\\program\\vc98\\include\\commctrl.h"





































#line 3311 "e:\\program\\vc98\\include\\commctrl.h"











































typedef struct tagLVBKIMAGEA
{
    ULONG ulFlags;              
    HBITMAP hbm;
    LPSTR pszImage;
    UINT cchImageMax;
    int xOffsetPercent;
    int yOffsetPercent;
} LVBKIMAGEA,  *LPLVBKIMAGEA;
typedef struct tagLVBKIMAGEW
{
    ULONG ulFlags;              
    HBITMAP hbm;
    LPWSTR pszImage;
    UINT cchImageMax;
    int xOffsetPercent;
    int yOffsetPercent;
} LVBKIMAGEW,  *LPLVBKIMAGEW;
























#line 3397 "e:\\program\\vc98\\include\\commctrl.h"








#line 3406 "e:\\program\\vc98\\include\\commctrl.h"








#line 3415 "e:\\program\\vc98\\include\\commctrl.h"

typedef struct tagNMLISTVIEW
{
    NMHDR   hdr;
    int     iItem;
    int     iSubItem;
    UINT    uNewState;
    UINT    uOldState;
    UINT    uChanged;
    POINT   ptAction;
    LPARAM  lParam;
} NMLISTVIEW,  *LPNMLISTVIEW;








typedef struct tagNMITEMACTIVATE
{
    NMHDR   hdr;
    int     iItem;
    int     iSubItem;
    UINT    uNewState;
    UINT    uOldState;
    UINT    uChanged;
    POINT   ptAction;
    LPARAM  lParam;
    UINT    uKeyFlags;
} NMITEMACTIVATE,  *LPNMITEMACTIVATE;





#line 3453 "e:\\program\\vc98\\include\\commctrl.h"





typedef struct tagNMLVCUSTOMDRAW
{
    NMCUSTOMDRAW nmcd;
    COLORREF clrText;
    COLORREF clrTextBk;

    int iSubItem;
#line 3466 "e:\\program\\vc98\\include\\commctrl.h"
} NMLVCUSTOMDRAW, *LPNMLVCUSTOMDRAW;

typedef struct tagNMLVCACHEHINT
{
    NMHDR   hdr;
    int     iFrom;
    int     iTo;
} NMLVCACHEHINT,  *LPNMLVCACHEHINT;





typedef struct tagNMLVFINDITEM
{
    NMHDR   hdr;
    int     iStart;
    LVFINDINFOA lvfi;
} NMLVFINDITEM,  *LPNMLVFINDITEM;





typedef struct tagNMLVODSTATECHANGE
{
    NMHDR hdr;
    int iFrom;
    int iTo;
    UINT uNewState;
    UINT uOldState;
} NMLVODSTATECHANGE,  *LPNMLVODSTATECHANGE;




#line 3503 "e:\\program\\vc98\\include\\commctrl.h"



























#line 3531 "e:\\program\\vc98\\include\\commctrl.h"
#line 3532 "e:\\program\\vc98\\include\\commctrl.h"




#line 3537 "e:\\program\\vc98\\include\\commctrl.h"
















#line 3554 "e:\\program\\vc98\\include\\commctrl.h"












#line 3567 "e:\\program\\vc98\\include\\commctrl.h"



typedef struct tagLVDISPINFO {
    NMHDR hdr;
    LVITEMA item;
} NMLVDISPINFOA,  *LPNMLVDISPINFOA;

typedef struct tagLVDISPINFOW {
    NMHDR hdr;
    LVITEMW item;
} NMLVDISPINFOW,  * LPNMLVDISPINFOW;





#line 3585 "e:\\program\\vc98\\include\\commctrl.h"








#line 3594 "e:\\program\\vc98\\include\\commctrl.h"

typedef struct tagLVKEYDOWN
{
    NMHDR hdr;
    WORD wVKey;
    UINT flags;
} NMLVKEYDOWN,  *LPNMLVKEYDOWN;



#line 3605 "e:\\program\\vc98\\include\\commctrl.h"


typedef struct tagNMLVGETINFOTIPA
{
    NMHDR hdr;
    DWORD dwFlags;
    LPSTR pszText;
    int cchTextMax;
    int iItem;
    int iSubItem;
    LPARAM lParam;
} NMLVGETINFOTIPA, *LPNMLVGETINFOTIPA;

typedef struct tagNMLVGETINFOTIPW
{
    NMHDR hdr;
    DWORD dwFlags;
    LPWSTR pszText;
    int cchTextMax;
    int iItem;
    int iSubItem;
    LPARAM lParam;
} NMLVGETINFOTIPW, *LPNMLVGETINFOTIPW;
















#line 3645 "e:\\program\\vc98\\include\\commctrl.h"


#line 3648 "e:\\program\\vc98\\include\\commctrl.h"

#line 3650 "e:\\program\\vc98\\include\\commctrl.h"













#line 3664 "e:\\program\\vc98\\include\\commctrl.h"



#line 3668 "e:\\program\\vc98\\include\\commctrl.h"





















#line 3690 "e:\\program\\vc98\\include\\commctrl.h"

#line 3692 "e:\\program\\vc98\\include\\commctrl.h"



typedef struct _TREEITEM * HTREEITEM;










#line 3707 "e:\\program\\vc98\\include\\commctrl.h"








#line 3716 "e:\\program\\vc98\\include\\commctrl.h"



















#line 3736 "e:\\program\\vc98\\include\\commctrl.h"




typedef struct tagTVITEMA {
    UINT      mask;
    HTREEITEM hItem;
    UINT      state;
    UINT      stateMask;
    LPSTR     pszText;
    int       cchTextMax;
    int       iImage;
    int       iSelectedImage;
    int       cChildren;
    LPARAM    lParam;
} TVITEMA,  *LPTVITEMA;

typedef struct tagTVITEMW {
    UINT      mask;
    HTREEITEM hItem;
    UINT      state;
    UINT      stateMask;
    LPWSTR    pszText;
    int       cchTextMax;
    int       iImage;
    int       iSelectedImage;
    int       cChildren;
    LPARAM    lParam;
} TVITEMW,  *LPTVITEMW;



typedef struct tagTVITEMEXA {
    UINT      mask;
    HTREEITEM hItem;
    UINT      state;
    UINT      stateMask;
    LPSTR     pszText;
    int       cchTextMax;
    int       iImage;
    int       iSelectedImage;
    int       cChildren;
    LPARAM    lParam;
    int       iIntegral;
} TVITEMEXA,  *LPTVITEMEXA;

typedef struct tagTVITEMEXW {
    UINT      mask;
    HTREEITEM hItem;
    UINT      state;
    UINT      stateMask;
    LPWSTR    pszText;
    int       cchTextMax;
    int       iImage;
    int       iSelectedImage;
    int       cChildren;
    LPARAM    lParam;
    int       iIntegral;
} TVITEMEXW,  *LPTVITEMEXW;




typedef TVITEMEXA TVITEMEX;
typedef LPTVITEMEXA LPTVITEMEX;
#line 3802 "e:\\program\\vc98\\include\\commctrl.h"

#line 3804 "e:\\program\\vc98\\include\\commctrl.h"







#line 3812 "e:\\program\\vc98\\include\\commctrl.h"



















#line 3832 "e:\\program\\vc98\\include\\commctrl.h"








typedef struct tagTVINSERTSTRUCTA {
    HTREEITEM hParent;
    HTREEITEM hInsertAfter;

    union
    {
        TVITEMEXA itemex;
        TVITEMA  item;
    } ;


#line 3852 "e:\\program\\vc98\\include\\commctrl.h"
} TVINSERTSTRUCTA,  *LPTVINSERTSTRUCTA;

typedef struct tagTVINSERTSTRUCTW {
    HTREEITEM hParent;
    HTREEITEM hInsertAfter;

    union
    {
        TVITEMEXW itemex;
        TVITEMW  item;
    } ;


#line 3866 "e:\\program\\vc98\\include\\commctrl.h"
} TVINSERTSTRUCTW,  *LPTVINSERTSTRUCTW;









#line 3877 "e:\\program\\vc98\\include\\commctrl.h"







#line 3885 "e:\\program\\vc98\\include\\commctrl.h"
























#line 3910 "e:\\program\\vc98\\include\\commctrl.h"






















































#line 3965 "e:\\program\\vc98\\include\\commctrl.h"













#line 3979 "e:\\program\\vc98\\include\\commctrl.h"


















#line 3998 "e:\\program\\vc98\\include\\commctrl.h"












#line 4011 "e:\\program\\vc98\\include\\commctrl.h"











#line 4023 "e:\\program\\vc98\\include\\commctrl.h"



























#line 4051 "e:\\program\\vc98\\include\\commctrl.h"

typedef struct tagTVHITTESTINFO {
    POINT       pt;
    UINT        flags;
    HTREEITEM   hItem;
} TVHITTESTINFO,  *LPTVHITTESTINFO;

















































#line 4107 "e:\\program\\vc98\\include\\commctrl.h"








#line 4116 "e:\\program\\vc98\\include\\commctrl.h"

















#line 4134 "e:\\program\\vc98\\include\\commctrl.h"









































#line 4176 "e:\\program\\vc98\\include\\commctrl.h"

#line 4178 "e:\\program\\vc98\\include\\commctrl.h"

typedef int (__stdcall *PFNTVCOMPARE)(LPARAM lParam1, LPARAM lParam2, LPARAM lParamSort);








#line 4189 "e:\\program\\vc98\\include\\commctrl.h"

typedef struct tagTVSORTCB
{
        HTREEITEM       hParent;
        PFNTVCOMPARE    lpfnCompare;
        LPARAM          lParam;
} TVSORTCB,  *LPTVSORTCB;














#line 4211 "e:\\program\\vc98\\include\\commctrl.h"




typedef struct tagNMTREEVIEWA {
    NMHDR       hdr;
    UINT        action;
    TVITEMA    itemOld;
    TVITEMA    itemNew;
    POINT       ptDrag;
} NMTREEVIEWA,  *LPNMTREEVIEWA;


typedef struct tagNMTREEVIEWW {
    NMHDR       hdr;
    UINT        action;
    TVITEMW    itemOld;
    TVITEMW    itemNew;
    POINT       ptDrag;
} NMTREEVIEWW,  *LPNMTREEVIEWW;








#line 4240 "e:\\program\\vc98\\include\\commctrl.h"


























#line 4267 "e:\\program\\vc98\\include\\commctrl.h"



typedef struct tagTVDISPINFOA {
    NMHDR hdr;
    TVITEMA item;
} NMTVDISPINFOA,  *LPNMTVDISPINFOA;

typedef struct tagTVDISPINFOW {
    NMHDR hdr;
    TVITEMW item;
} NMTVDISPINFOW,  *LPNMTVDISPINFOW;








#line 4288 "e:\\program\\vc98\\include\\commctrl.h"





















#line 4310 "e:\\program\\vc98\\include\\commctrl.h"







#line 4318 "e:\\program\\vc98\\include\\commctrl.h"

typedef struct tagTVKEYDOWN {
    NMHDR hdr;
    WORD wVKey;
    UINT flags;
} NMTVKEYDOWN,  *LPNMTVKEYDOWN;


























#line 4351 "e:\\program\\vc98\\include\\commctrl.h"




typedef struct tagNMTVCUSTOMDRAW
{
    NMCUSTOMDRAW nmcd;
    COLORREF     clrText;
    COLORREF     clrTextBk;

    int iLevel;
#line 4363 "e:\\program\\vc98\\include\\commctrl.h"
} NMTVCUSTOMDRAW, *LPNMTVCUSTOMDRAW;
#line 4365 "e:\\program\\vc98\\include\\commctrl.h"






typedef struct tagNMTVGETINFOTIPA
{
    NMHDR hdr;
    LPSTR pszText;
    int cchTextMax;
    HTREEITEM hItem;
    LPARAM lParam;
} NMTVGETINFOTIPA, *LPNMTVGETINFOTIPA;

typedef struct tagNMTVGETINFOTIPW
{
    NMHDR hdr;
    LPWSTR pszText;
    int cchTextMax;
    HTREEITEM hItem;
    LPARAM lParam;
} NMTVGETINFOTIPW, *LPNMTVGETINFOTIPW;










#line 4399 "e:\\program\\vc98\\include\\commctrl.h"









#line 4409 "e:\\program\\vc98\\include\\commctrl.h"

#line 4411 "e:\\program\\vc98\\include\\commctrl.h"















#line 4427 "e:\\program\\vc98\\include\\commctrl.h"











typedef struct tagCOMBOBOXEXITEMA
{
    UINT mask;
    int iItem;
    LPSTR pszText;
    int cchTextMax;
    int iImage;
    int iSelectedImage;
    int iOverlay;
    int iIndent;
    LPARAM lParam;
} COMBOBOXEXITEMA, *PCOMBOBOXEXITEMA;
typedef COMBOBOXEXITEMA const *PCCOMBOEXITEMA;


typedef struct tagCOMBOBOXEXITEMW
{
    UINT mask;
    int iItem;
    LPWSTR pszText;
    int cchTextMax;
    int iImage;
    int iSelectedImage;
    int iOverlay;
    int iIndent;
    LPARAM lParam;
} COMBOBOXEXITEMW, *PCOMBOBOXEXITEMW;
typedef COMBOBOXEXITEMW const *PCCOMBOEXITEMW;









#line 4476 "e:\\program\\vc98\\include\\commctrl.h"



















#line 4496 "e:\\program\\vc98\\include\\commctrl.h"













#line 4510 "e:\\program\\vc98\\include\\commctrl.h"








typedef struct {
    NMHDR hdr;
    COMBOBOXEXITEMA ceItem;
} NMCOMBOBOXEXA, *PNMCOMBOBOXEXA;

typedef struct {
    NMHDR hdr;
    COMBOBOXEXITEMW ceItem;
} NMCOMBOBOXEXW, *PNMCOMBOBOXEXW;









#line 4537 "e:\\program\\vc98\\include\\commctrl.h"









#line 4547 "e:\\program\\vc98\\include\\commctrl.h"



#line 4551 "e:\\program\\vc98\\include\\commctrl.h"








#line 4560 "e:\\program\\vc98\\include\\commctrl.h"









#line 4570 "e:\\program\\vc98\\include\\commctrl.h"

#line 4572 "e:\\program\\vc98\\include\\commctrl.h"






#line 4579 "e:\\program\\vc98\\include\\commctrl.h"











typedef struct {
    NMHDR hdr;
    int   iItemid;
    WCHAR szText[260];
}NMCBEDRAGBEGINW, *LPNMCBEDRAGBEGINW, *PNMCBEDRAGBEGINW;


typedef struct {
    NMHDR hdr;
    int   iItemid;
    char szText[260];
}NMCBEDRAGBEGINA, *LPNMCBEDRAGBEGINA, *PNMCBEDRAGBEGINA;









#line 4612 "e:\\program\\vc98\\include\\commctrl.h"
#line 4613 "e:\\program\\vc98\\include\\commctrl.h"





typedef struct {
        NMHDR hdr;
        BOOL fChanged;
        int iNewSelection;
        WCHAR szText[260];
        int iWhy;
} NMCBEENDEDITW, *LPNMCBEENDEDITW, *PNMCBEENDEDITW;

typedef struct {
        NMHDR hdr;
        BOOL fChanged;
        int iNewSelection;
        char szText[260];
        int iWhy;
} NMCBEENDEDITA, *LPNMCBEENDEDITA,*PNMCBEENDEDITA;









#line 4643 "e:\\program\\vc98\\include\\commctrl.h"

#line 4645 "e:\\program\\vc98\\include\\commctrl.h"

#line 4647 "e:\\program\\vc98\\include\\commctrl.h"















#line 4663 "e:\\program\\vc98\\include\\commctrl.h"



#line 4667 "e:\\program\\vc98\\include\\commctrl.h"








#line 4676 "e:\\program\\vc98\\include\\commctrl.h"


#line 4679 "e:\\program\\vc98\\include\\commctrl.h"





#line 4685 "e:\\program\\vc98\\include\\commctrl.h"
















#line 4702 "e:\\program\\vc98\\include\\commctrl.h"




























#line 4731 "e:\\program\\vc98\\include\\commctrl.h"


#line 4734 "e:\\program\\vc98\\include\\commctrl.h"









#line 4744 "e:\\program\\vc98\\include\\commctrl.h"


typedef struct tagTCITEMHEADERA
{
    UINT mask;
    UINT lpReserved1;
    UINT lpReserved2;
    LPSTR pszText;
    int cchTextMax;
    int iImage;
} TCITEMHEADERA,  *LPTCITEMHEADERA;

typedef struct tagTCITEMHEADERW
{
    UINT mask;
    UINT lpReserved1;
    UINT lpReserved2;
    LPWSTR pszText;
    int cchTextMax;
    int iImage;
} TCITEMHEADERW,  *LPTCITEMHEADERW;







#line 4773 "e:\\program\\vc98\\include\\commctrl.h"










#line 4784 "e:\\program\\vc98\\include\\commctrl.h"


typedef struct tagTCITEMA
{
    UINT mask;

    DWORD dwState;
    DWORD dwStateMask;



#line 4796 "e:\\program\\vc98\\include\\commctrl.h"
    LPSTR pszText;
    int cchTextMax;
    int iImage;

    LPARAM lParam;
} TCITEMA,  *LPTCITEMA;

typedef struct tagTCITEMW
{
    UINT mask;

    DWORD dwState;
    DWORD dwStateMask;



#line 4813 "e:\\program\\vc98\\include\\commctrl.h"
    LPWSTR pszText;
    int cchTextMax;
    int iImage;

    LPARAM lParam;
} TCITEMW,  *LPTCITEMW;







#line 4827 "e:\\program\\vc98\\include\\commctrl.h"









#line 4837 "e:\\program\\vc98\\include\\commctrl.h"












#line 4850 "e:\\program\\vc98\\include\\commctrl.h"












#line 4863 "e:\\program\\vc98\\include\\commctrl.h"










































#line 4906 "e:\\program\\vc98\\include\\commctrl.h"

typedef struct tagTCHITTESTINFO
{
    POINT pt;
    UINT flags;
} TCHITTESTINFO,  * LPTCHITTESTINFO;































































#line 4976 "e:\\program\\vc98\\include\\commctrl.h"























#line 5000 "e:\\program\\vc98\\include\\commctrl.h"








#line 5009 "e:\\program\\vc98\\include\\commctrl.h"

typedef struct tagTCKEYDOWN
{
    NMHDR hdr;
    WORD wVKey;
    UINT flags;
} NMTCKEYDOWN;





#line 5022 "e:\\program\\vc98\\include\\commctrl.h"

#line 5024 "e:\\program\\vc98\\include\\commctrl.h"

















#line 5042 "e:\\program\\vc98\\include\\commctrl.h"








#line 5051 "e:\\program\\vc98\\include\\commctrl.h"










#line 5062 "e:\\program\\vc98\\include\\commctrl.h"



















#line 5082 "e:\\program\\vc98\\include\\commctrl.h"

#line 5084 "e:\\program\\vc98\\include\\commctrl.h"














#line 5099 "e:\\program\\vc98\\include\\commctrl.h"



typedef DWORD MONTHDAYSTATE,  * LPMONTHDAYSTATE;






























































































typedef struct {
        UINT cbSize;
        POINT pt;

        UINT uHit;   
        SYSTEMTIME st;
} MCHITTESTINFO, *PMCHITTESTINFO;
















































































#line 5285 "e:\\program\\vc98\\include\\commctrl.h"




typedef struct tagNMSELCHANGE
{
    NMHDR           nmhdr;  

    SYSTEMTIME      stSelStart;
    SYSTEMTIME      stSelEnd;
} NMSELCHANGE,  * LPNMSELCHANGE;










typedef struct tagNMDAYSTATE
{
    NMHDR           nmhdr;  

    SYSTEMTIME      stStart;
    int             cDayState;

    LPMONTHDAYSTATE prgDayState; 
} NMDAYSTATE,  * LPNMDAYSTATE;





typedef NMSELCHANGE NMSELECT,  * LPNMSELECT;













#line 5335 "e:\\program\\vc98\\include\\commctrl.h"



                                


#line 5342 "e:\\program\\vc98\\include\\commctrl.h"
#line 5343 "e:\\program\\vc98\\include\\commctrl.h"














#line 5358 "e:\\program\\vc98\\include\\commctrl.h"










































#line 5401 "e:\\program\\vc98\\include\\commctrl.h"
























#line 5426 "e:\\program\\vc98\\include\\commctrl.h"










typedef struct tagNMDATETIMECHANGE
{
    NMHDR       nmhdr;
    DWORD       dwFlags;    
    SYSTEMTIME  st;         
} NMDATETIMECHANGE,  * LPNMDATETIMECHANGE;



typedef struct tagNMDATETIMESTRINGA
{
    NMHDR      nmhdr;
    LPCSTR     pszUserString;  
    SYSTEMTIME st;             
    DWORD      dwFlags;        
} NMDATETIMESTRINGA,  * LPNMDATETIMESTRINGA;

typedef struct tagNMDATETIMESTRINGW
{
    NMHDR      nmhdr;
    LPCWSTR    pszUserString;  
    SYSTEMTIME st;             
    DWORD      dwFlags;        
} NMDATETIMESTRINGW,  * LPNMDATETIMESTRINGW;









#line 5470 "e:\\program\\vc98\\include\\commctrl.h"




typedef struct tagNMDATETIMEWMKEYDOWNA
{
    NMHDR      nmhdr;
    int        nVirtKey;  
    LPCSTR     pszFormat; 
    SYSTEMTIME st;        
} NMDATETIMEWMKEYDOWNA,  * LPNMDATETIMEWMKEYDOWNA;

typedef struct tagNMDATETIMEWMKEYDOWNW
{
    NMHDR      nmhdr;
    int        nVirtKey;  
    LPCWSTR    pszFormat; 
    SYSTEMTIME st;        
} NMDATETIMEWMKEYDOWNW,  * LPNMDATETIMEWMKEYDOWNW;









#line 5499 "e:\\program\\vc98\\include\\commctrl.h"




typedef struct tagNMDATETIMEFORMATA
{
    NMHDR nmhdr;
    LPCSTR  pszFormat;   
    SYSTEMTIME st;       
    LPCSTR pszDisplay;   
    CHAR szDisplay[64];  
} NMDATETIMEFORMATA,  * LPNMDATETIMEFORMATA;

typedef struct tagNMDATETIMEFORMATW
{
    NMHDR nmhdr;
    LPCWSTR pszFormat;   
    SYSTEMTIME st;       
    LPCWSTR pszDisplay;  
    WCHAR szDisplay[64]; 
} NMDATETIMEFORMATW,  * LPNMDATETIMEFORMATW;









#line 5530 "e:\\program\\vc98\\include\\commctrl.h"




typedef struct tagNMDATETIMEFORMATQUERYA
{
    NMHDR nmhdr;
    LPCSTR pszFormat;  
    SIZE szMax;        
} NMDATETIMEFORMATQUERYA,  * LPNMDATETIMEFORMATQUERYA;

typedef struct tagNMDATETIMEFORMATQUERYW
{
    NMHDR nmhdr;
    LPCWSTR pszFormat; 
    SIZE szMax;        
} NMDATETIMEFORMATQUERYW,  * LPNMDATETIMEFORMATQUERYW;









#line 5557 "e:\\program\\vc98\\include\\commctrl.h"














#line 5572 "e:\\program\\vc98\\include\\commctrl.h"
#line 5573 "e:\\program\\vc98\\include\\commctrl.h"

























#line 5599 "e:\\program\\vc98\\include\\commctrl.h"


typedef struct tagNMIPADDRESS
{
        NMHDR hdr;
        int iField;
        int iValue;
} NMIPADDRESS, *LPNMIPADDRESS;


















#line 5626 "e:\\program\\vc98\\include\\commctrl.h"


















#line 5645 "e:\\program\\vc98\\include\\commctrl.h"







































































































typedef struct {
    NMHDR hdr;
    WORD fwKeys;            
    RECT rcParent;          
    int  iDir;              
    int  iXpos;             
    int  iYpos;             
    int  iScroll;           
}NMPGSCROLL, *LPNMPGSCROLL;









typedef struct {
    NMHDR   hdr;
    DWORD   dwFlag;
    int     iWidth;
    int     iHeight;
}NMPGCALCSIZE, *LPNMPGCALCSIZE;

#line 5774 "e:\\program\\vc98\\include\\commctrl.h"















#line 5790 "e:\\program\\vc98\\include\\commctrl.h"








#line 5799 "e:\\program\\vc98\\include\\commctrl.h"


#line 5802 "e:\\program\\vc98\\include\\commctrl.h"













#line 5816 "e:\\program\\vc98\\include\\commctrl.h"















typedef struct tagTRACKMOUSEEVENT {
    DWORD cbSize;
    DWORD dwFlags;
    HWND  hwndTrack;
    DWORD dwHoverTime;
} TRACKMOUSEEVENT, *LPTRACKMOUSEEVENT;

#line 5839 "e:\\program\\vc98\\include\\commctrl.h"





__declspec(dllimport)
BOOL
__stdcall
_TrackMouseEvent(
    LPTRACKMOUSEEVENT lpEventTrack);

#line 5851 "e:\\program\\vc98\\include\\commctrl.h"
























__declspec(dllimport) BOOL __stdcall FlatSB_EnableScrollBar(HWND, int, UINT);
__declspec(dllimport) BOOL __stdcall FlatSB_ShowScrollBar(HWND, int code, BOOL);

__declspec(dllimport) BOOL __stdcall FlatSB_GetScrollRange(HWND, int code, LPINT, LPINT);
__declspec(dllimport) BOOL __stdcall FlatSB_GetScrollInfo(HWND, int code, LPSCROLLINFO);
__declspec(dllimport) int __stdcall FlatSB_GetScrollPos(HWND, int code);
__declspec(dllimport) BOOL __stdcall FlatSB_GetScrollProp(HWND, int propIndex, LPINT);

__declspec(dllimport) int __stdcall FlatSB_SetScrollPos(HWND, int code, int pos, BOOL fRedraw);
__declspec(dllimport) int __stdcall FlatSB_SetScrollInfo(HWND, int code, LPSCROLLINFO, BOOL fRedraw);
__declspec(dllimport) int __stdcall FlatSB_SetScrollRange(HWND, int code, int min, int max, BOOL fRedraw);
__declspec(dllimport) BOOL __stdcall FlatSB_SetScrollProp(HWND, UINT index, int newValue, BOOL);

__declspec(dllimport) BOOL __stdcall InitializeFlatSB(HWND);
__declspec(dllimport) HRESULT __stdcall UninitializeFlatSB(HWND);

#line 5892 "e:\\program\\vc98\\include\\commctrl.h"

#line 5894 "e:\\program\\vc98\\include\\commctrl.h"

#line 5896 "e:\\program\\vc98\\include\\commctrl.h"

#line 5898 "e:\\program\\vc98\\include\\commctrl.h"



}
#line 5903 "e:\\program\\vc98\\include\\commctrl.h"


#line 1 "e:\\program\\vc98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "e:\\program\\vc98\\include\\poppack.h"


#line 36 "e:\\program\\vc98\\include\\poppack.h"
#line 37 "e:\\program\\vc98\\include\\poppack.h"
#line 5906 "e:\\program\\vc98\\include\\commctrl.h"
#line 5907 "e:\\program\\vc98\\include\\commctrl.h"

#line 5909 "e:\\program\\vc98\\include\\commctrl.h"


#line 5912 "e:\\program\\vc98\\include\\commctrl.h"
#line 6 "e:\\programming\\git\\ph2\\link\\program\\p20140808_spy\\wbxu_20140808\\injectdll\\process.cpp"
#line 1 "e:\\program\\vc98\\include\\tlhelp32.h"
















extern "C" {            
#line 19 "e:\\program\\vc98\\include\\tlhelp32.h"





HANDLE
__stdcall
CreateToolhelp32Snapshot(
    DWORD dwFlags,
    DWORD th32ProcessID
    );



























typedef struct tagHEAPLIST32
{
    DWORD  dwSize;
    DWORD  th32ProcessID;   
    DWORD  th32HeapID;      
    DWORD  dwFlags;
} HEAPLIST32;
typedef HEAPLIST32 *  PHEAPLIST32;
typedef HEAPLIST32 *  LPHEAPLIST32;






BOOL
__stdcall
Heap32ListFirst(
    HANDLE hSnapshot,
    LPHEAPLIST32 lphl
    );

BOOL
__stdcall
Heap32ListNext(
    HANDLE hSnapshot,
    LPHEAPLIST32 lphl
    );

typedef struct tagHEAPENTRY32
{
    DWORD  dwSize;
    HANDLE hHandle;     
    DWORD  dwAddress;   
    DWORD  dwBlockSize; 
    DWORD  dwFlags;
    DWORD  dwLockCount;
    DWORD  dwResvd;
    DWORD  th32ProcessID;   
    DWORD  th32HeapID;      
} HEAPENTRY32;
typedef HEAPENTRY32 *  PHEAPENTRY32;
typedef HEAPENTRY32 *  LPHEAPENTRY32;







BOOL
__stdcall
Heap32First(
    LPHEAPENTRY32 lphe,
    DWORD th32ProcessID,
    DWORD th32HeapID
    );

BOOL
__stdcall
Heap32Next(
    LPHEAPENTRY32 lphe
    );

BOOL
__stdcall
Toolhelp32ReadProcessMemory(
    DWORD   th32ProcessID,
    LPCVOID lpBaseAddress,
    LPVOID  lpBuffer,
    DWORD   cbRead,
    LPDWORD lpNumberOfBytesRead
    );



typedef struct tagPROCESSENTRY32W
{
    DWORD   dwSize;
    DWORD   cntUsage;
    DWORD   th32ProcessID;          
    DWORD   th32DefaultHeapID;
    DWORD   th32ModuleID;           
    DWORD   cntThreads;
    DWORD   th32ParentProcessID;    
    LONG    pcPriClassBase;         
    DWORD   dwFlags;
    WCHAR   szExeFile[260];    
} PROCESSENTRY32W;
typedef PROCESSENTRY32W *  PPROCESSENTRY32W;
typedef PROCESSENTRY32W *  LPPROCESSENTRY32W;

BOOL
__stdcall
Process32FirstW(
    HANDLE hSnapshot,
    LPPROCESSENTRY32W lppe
    );

BOOL
__stdcall
Process32NextW(
    HANDLE hSnapshot,
    LPPROCESSENTRY32W lppe
    );

typedef struct tagPROCESSENTRY32
{
    DWORD   dwSize;
    DWORD   cntUsage;
    DWORD   th32ProcessID;          
    DWORD   th32DefaultHeapID;
    DWORD   th32ModuleID;           
    DWORD   cntThreads;
    DWORD   th32ParentProcessID;    
    LONG    pcPriClassBase;         
    DWORD   dwFlags;
    CHAR    szExeFile[260];    
} PROCESSENTRY32;
typedef PROCESSENTRY32 *  PPROCESSENTRY32;
typedef PROCESSENTRY32 *  LPPROCESSENTRY32;

BOOL
__stdcall
Process32First(
    HANDLE hSnapshot,
    LPPROCESSENTRY32 lppe
    );

BOOL
__stdcall
Process32Next(
    HANDLE hSnapshot,
    LPPROCESSENTRY32 lppe
    );











typedef struct tagTHREADENTRY32
{
    DWORD   dwSize;
    DWORD   cntUsage;
    DWORD   th32ThreadID;       
    DWORD   th32OwnerProcessID; 
    LONG    tpBasePri;
    LONG    tpDeltaPri;
    DWORD   dwFlags;
} THREADENTRY32;
typedef THREADENTRY32 *  PTHREADENTRY32;
typedef THREADENTRY32 *  LPTHREADENTRY32;

BOOL
__stdcall
Thread32First(
    HANDLE hSnapshot,
    LPTHREADENTRY32 lpte
    );

BOOL
__stdcall
Thread32Next(
    HANDLE hSnapshot,
    LPTHREADENTRY32 lpte
    );



typedef struct tagMODULEENTRY32W
{
    DWORD   dwSize;
    DWORD   th32ModuleID;       
    DWORD   th32ProcessID;      
    DWORD   GlblcntUsage;       
    DWORD   ProccntUsage;       
    BYTE  * modBaseAddr;        
    DWORD   modBaseSize;        
    HMODULE hModule;            
    WCHAR   szModule[255 + 1];
    WCHAR   szExePath[260];
} MODULEENTRY32W;
typedef MODULEENTRY32W *  PMODULEENTRY32W;
typedef MODULEENTRY32W *  LPMODULEENTRY32W;

BOOL
__stdcall
Module32FirstW(
    HANDLE hSnapshot,
    LPMODULEENTRY32W lpme
    );

BOOL
__stdcall
Module32NextW(
    HANDLE hSnapshot,
    LPMODULEENTRY32W lpme
    );


typedef struct tagMODULEENTRY32
{
    DWORD   dwSize;
    DWORD   th32ModuleID;       
    DWORD   th32ProcessID;      
    DWORD   GlblcntUsage;       
    DWORD   ProccntUsage;       
    BYTE  * modBaseAddr;        
    DWORD   modBaseSize;        
    HMODULE hModule;            
    char    szModule[255 + 1];
    char    szExePath[260];
} MODULEENTRY32;
typedef MODULEENTRY32 *  PMODULEENTRY32;
typedef MODULEENTRY32 *  LPMODULEENTRY32;






BOOL
__stdcall
Module32First(
    HANDLE hSnapshot,
    LPMODULEENTRY32 lpme
    );

BOOL
__stdcall
Module32Next(
    HANDLE hSnapshot,
    LPMODULEENTRY32 lpme
    );











}
#line 310 "e:\\program\\vc98\\include\\tlhelp32.h"

#line 312 "e:\\program\\vc98\\include\\tlhelp32.h"
#line 7 "e:\\programming\\git\\ph2\\link\\program\\p20140808_spy\\wbxu_20140808\\injectdll\\process.cpp"
#line 1 "e:\\program\\vc98\\include\\psapi.h"
























#pragma once
#line 27 "e:\\program\\vc98\\include\\psapi.h"


extern "C" {
#line 31 "e:\\program\\vc98\\include\\psapi.h"

BOOL
__stdcall
EnumProcesses(
    DWORD * lpidProcess,
    DWORD   cb,
    DWORD * cbNeeded
    );

BOOL
__stdcall
EnumProcessModules(
    HANDLE hProcess,
    HMODULE *lphModule,
    DWORD cb,
    LPDWORD lpcbNeeded
    );

DWORD
__stdcall
GetModuleBaseNameA(
    HANDLE hProcess,
    HMODULE hModule,
    LPSTR lpBaseName,
    DWORD nSize
    );

DWORD
__stdcall
GetModuleBaseNameW(
    HANDLE hProcess,
    HMODULE hModule,
    LPWSTR lpBaseName,
    DWORD nSize
    );





#line 72 "e:\\program\\vc98\\include\\psapi.h"


DWORD
__stdcall
GetModuleFileNameExA(
    HANDLE hProcess,
    HMODULE hModule,
    LPSTR lpFilename,
    DWORD nSize
    );

DWORD
__stdcall
GetModuleFileNameExW(
    HANDLE hProcess,
    HMODULE hModule,
    LPWSTR lpFilename,
    DWORD nSize
    );





#line 97 "e:\\program\\vc98\\include\\psapi.h"


typedef struct _MODULEINFO {
    LPVOID lpBaseOfDll;
    DWORD SizeOfImage;
    LPVOID EntryPoint;
} MODULEINFO, *LPMODULEINFO;


BOOL
__stdcall
GetModuleInformation(
    HANDLE hProcess,
    HMODULE hModule,
    LPMODULEINFO lpmodinfo,
    DWORD cb
    );


BOOL
__stdcall
EmptyWorkingSet(
    HANDLE hProcess
    );


BOOL
__stdcall
QueryWorkingSet(
    HANDLE hProcess,
    PVOID pv,
    DWORD cb
    );

BOOL
__stdcall
QueryWorkingSetEx(
    HANDLE hProcess,
    PVOID pv,
    DWORD cb
    );

BOOL
__stdcall
InitializeProcessForWsWatch(
    HANDLE hProcess
    );


typedef struct _PSAPI_WS_WATCH_INFORMATION {
    LPVOID FaultingPc;
    LPVOID FaultingVa;
} PSAPI_WS_WATCH_INFORMATION, *PPSAPI_WS_WATCH_INFORMATION;

BOOL
__stdcall
GetWsChanges(
    HANDLE hProcess,
    PPSAPI_WS_WATCH_INFORMATION lpWatchInfo,
    DWORD cb
    );

DWORD
__stdcall
GetMappedFileNameW(
    HANDLE hProcess,
    LPVOID lpv,
    LPWSTR lpFilename,
    DWORD nSize
    );

DWORD
__stdcall
GetMappedFileNameA(
    HANDLE hProcess,
    LPVOID lpv,
    LPSTR lpFilename,
    DWORD nSize
    );





#line 182 "e:\\program\\vc98\\include\\psapi.h"

BOOL
__stdcall
EnumDeviceDrivers(
    LPVOID *lpImageBase,
    DWORD cb,
    LPDWORD lpcbNeeded
    );


DWORD
__stdcall
GetDeviceDriverBaseNameA(
    LPVOID ImageBase,
    LPSTR lpBaseName,
    DWORD nSize
    );

DWORD
__stdcall
GetDeviceDriverBaseNameW(
    LPVOID ImageBase,
    LPWSTR lpBaseName,
    DWORD nSize
    );





#line 213 "e:\\program\\vc98\\include\\psapi.h"


DWORD
__stdcall
GetDeviceDriverFileNameA(
    LPVOID ImageBase,
    LPSTR lpFilename,
    DWORD nSize
    );

DWORD
__stdcall
GetDeviceDriverFileNameW(
    LPVOID ImageBase,
    LPWSTR lpFilename,
    DWORD nSize
    );





#line 236 "e:\\program\\vc98\\include\\psapi.h"



typedef struct _PROCESS_MEMORY_COUNTERS {
    DWORD cb;
    DWORD PageFaultCount;
    SIZE_T PeakWorkingSetSize;
    SIZE_T WorkingSetSize;
    SIZE_T QuotaPeakPagedPoolUsage;
    SIZE_T QuotaPagedPoolUsage;
    SIZE_T QuotaPeakNonPagedPoolUsage;
    SIZE_T QuotaNonPagedPoolUsage;
    SIZE_T PagefileUsage;
    SIZE_T PeakPagefileUsage;
} PROCESS_MEMORY_COUNTERS;
typedef PROCESS_MEMORY_COUNTERS *PPROCESS_MEMORY_COUNTERS;


















#line 271 "e:\\program\\vc98\\include\\psapi.h"

BOOL
__stdcall
GetProcessMemoryInfo(
    HANDLE Process,
    PPROCESS_MEMORY_COUNTERS ppsmemCounters,
    DWORD cb
    );

typedef struct _PERFORMANCE_INFORMATION {
    DWORD cb;
    SIZE_T CommitTotal;
    SIZE_T CommitLimit;
    SIZE_T CommitPeak;
    SIZE_T PhysicalTotal;
    SIZE_T PhysicalAvailable;
    SIZE_T SystemCache;
    SIZE_T KernelTotal;
    SIZE_T KernelPaged;
    SIZE_T KernelNonpaged;
    SIZE_T PageSize;
    DWORD HandleCount;
    DWORD ProcessCount;
    DWORD ThreadCount;
} PERFORMANCE_INFORMATION, *PPERFORMANCE_INFORMATION, PERFORMACE_INFORMATION, *PPERFORMACE_INFORMATION;

BOOL
__stdcall
GetPerformanceInfo (
    PPERFORMACE_INFORMATION pPerformanceInformation,
    DWORD cb
    );

typedef struct _ENUM_PAGE_FILE_INFORMATION {
    DWORD cb;
    DWORD Reserved;
    SIZE_T TotalSize;
    SIZE_T TotalInUse;
    SIZE_T PeakUsage;
} ENUM_PAGE_FILE_INFORMATION, *PENUM_PAGE_FILE_INFORMATION;

typedef BOOL (*PENUM_PAGE_FILE_CALLBACKW) (LPVOID pContext, PENUM_PAGE_FILE_INFORMATION pPageFileInfo, LPCWSTR lpFilename);

typedef BOOL (*PENUM_PAGE_FILE_CALLBACKA) (LPVOID pContext, PENUM_PAGE_FILE_INFORMATION pPageFileInfo, LPCSTR lpFilename);

BOOL
__stdcall
EnumPageFilesW (
    PENUM_PAGE_FILE_CALLBACKW pCallBackRoutine,
    LPVOID pContext
    );

BOOL
__stdcall
EnumPageFilesA (
    PENUM_PAGE_FILE_CALLBACKA pCallBackRoutine,
    LPVOID pContext
    );







#line 337 "e:\\program\\vc98\\include\\psapi.h"

DWORD
__stdcall
GetProcessImageFileNameA(
    HANDLE hProcess,
    LPSTR lpImageFileName,
    DWORD nSize
    );

DWORD
__stdcall
GetProcessImageFileNameW(
    HANDLE hProcess,
    LPWSTR lpImageFileName,
    DWORD nSize
    );





#line 359 "e:\\program\\vc98\\include\\psapi.h"


}
#line 363 "e:\\program\\vc98\\include\\psapi.h"

#line 365 "e:\\program\\vc98\\include\\psapi.h"
#line 8 "e:\\programming\\git\\ph2\\link\\program\\p20140808_spy\\wbxu_20140808\\injectdll\\process.cpp"
#pragma comment(lib, "psapi.lib")

#line 1 "e:\\programming\\git\\ph2\\link\\program\\p20140808_spy\\wbxu_20140808\\injectdll\\resource.h"


















#line 11 "e:\\programming\\git\\ph2\\link\\program\\p20140808_spy\\wbxu_20140808\\injectdll\\process.cpp"

extern HMODULE g_hModule;
extern HWND g_hCalc;

int g_nRecords = 0;

void InsertHeader(HWND hChild)
{
    TCHAR szHeaderInfo[] = "映像名称|进程ID|父进程ID|映像路径|";
    TCHAR seps[] = "|";
    TCHAR *token = 0;

    int i = 0;
    LVCOLUMNA lvc;
    lvc.mask = 0x0004 | 0x0002;
    lvc.cx   = 100;

    token =  _tcstok(szHeaderInfo, seps);
    while ( token != 0)
    {
        lvc.pszText = token;
        SendMessageA(hChild, (0x1000 + 27), (WPARAM)i, (LPARAM)&lvc);

        token = _tcstok(0, seps);
        i++;
    }
}

void InsertRecord(TCHAR *pszRecord, HWND hChild)
{
    int i = 0;
    TCHAR *pszTaskInfo = pszRecord;
    TCHAR seps[] = "|";
    TCHAR *token = 0;

    LVITEMA lv;
    lv.mask = 0x0001;      
    lv.iItem = g_nRecords++; 
    
    token = _tcstok(pszTaskInfo, seps);
    while (token != 0)
    {
        lv.pszText = token;
        lv.iSubItem = i;
        if (0 == i)
        {
            SendMessageA(hChild, (0x1000 + 7), (WPARAM)0, (LPARAM)&lv);
        }
        else
        {
            SendMessageA(hChild, (0x1000 + 46), (WPARAM)lv.iItem, (LPARAM)&lv);
        }
        
        i++;
        
        token = _tcstok( 0, seps );
    } 
}

void Walk(HWND hChild)
{
    
    HANDLE         hProcessSnap = 0; 
    BOOL           bRet         = 0; 
    PROCESSENTRY32 pe32         = {0}; 
    TCHAR szRecord[260 * 2]      = {0};
    TCHAR   szFullPath[260] = {0};
    HANDLE hProcess = 0;

    g_nRecords = 0;
    
    hProcessSnap = CreateToolhelp32Snapshot(0x00000002, 0);     
    if ((HANDLE)-1 == hProcessSnap) 
    {
        return;
    }
    
    pe32.dwSize = sizeof(PROCESSENTRY32); 
    
    bRet = Process32First(hProcessSnap, &pe32);
    if (!bRet)
    {
        
        goto ERROR_CLEAN;
    }
    
    do 
    {
        hProcess = OpenProcess((0x0400) | (0x0010), 
                                        0,
                                        pe32.th32ProcessID);
        if (0 == hProcess)
        {
            strcpy(szFullPath, "OpenProcess Error");
        }
        else
        {
            if (0 == GetModuleFileNameExA(hProcess, 
                                        0, 
                                        szFullPath, 
                                        260)
                )
            {
                strcpy(szFullPath, "GetPath Error");
            }
            
            CloseHandle(hProcess);
            hProcess = 0;
        }
        
        wsprintfA(szRecord, "%s|%d|%d|%s|", pe32.szExeFile,
                                pe32.th32ProcessID,
                                pe32.th32ParentProcessID,
                                szFullPath
                                );
        
        InsertRecord(szRecord, hChild);
        
    } while (Process32Next(hProcessSnap, &pe32));
    
ERROR_CLEAN:
    CloseHandle(hProcessSnap);
    hProcessSnap = 0;
}

void InitListCtrl(HWND hwndDlg)
{
    HWND hChild = GetDlgItem(hwndDlg, 1000);
    
    
    SendMessageA(hChild,
                (0x1000 + 54), 
                (WPARAM)0x00000020, 
                (LPARAM)0x00000020
                );

    
    InsertHeader(hChild);

    
    Walk(hChild);
}

INT_PTR __stdcall ProcessWalkProc(
                              HWND hwndDlg,  
                              UINT uMsg,     
                              WPARAM wParam, 
                              LPARAM lParam  
                              )
{
    switch (uMsg)
    {
    case 0x0110:
        {            
            
            InitListCtrl(hwndDlg);          
            break;
        }

    case 0x0010:
        {
            EndDialog(hwndDlg, -1);
            break;
        }
        
    default:
        return 0;   
    }
    
    return 1;
}

void ProcessWalk()
{
    



DialogBoxParamA(g_hModule, (LPSTR)((DWORD)((WORD)(102))), g_hCalc, (DLGPROC)ProcessWalkProc, 0L);
}
