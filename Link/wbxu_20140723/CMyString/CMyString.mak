# Microsoft Developer Studio Generated NMAKE File, Based on CMyString.dsp
!IF "$(CFG)" == ""
CFG=CMyString - Win32 Debug
!MESSAGE No configuration specified. Defaulting to CMyString - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "CMyString - Win32 Release" && "$(CFG)" != "CMyString - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "CMyString.mak" CFG="CMyString - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "CMyString - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "CMyString - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "CMyString - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\CMyString.dll"


CLEAN :
	-@erase "$(INTDIR)\CMyString.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\CMyString.dll"
	-@erase "$(OUTDIR)\CMyString.exp"
	-@erase "$(OUTDIR)\CMyString.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "CMYSTRING_EXPORTS" /Fp"$(INTDIR)\CMyString.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\CMyString.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:no /pdb:"$(OUTDIR)\CMyString.pdb" /machine:I386 /out:"$(OUTDIR)\CMyString.dll" /implib:"$(OUTDIR)\CMyString.lib" 
LINK32_OBJS= \
	"$(INTDIR)\CMyString.obj"

"$(OUTDIR)\CMyString.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "CMyString - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "..\Bin\Debug\CMyString.dll"


CLEAN :
	-@erase "$(INTDIR)\CMyString.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\CMyString.exp"
	-@erase "$(OUTDIR)\CMyString.lib"
	-@erase "$(OUTDIR)\CMyString.pdb"
	-@erase "..\Bin\Debug\CMyString.dll"
	-@erase "..\Bin\Debug\CMyString.ilk"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "CMYSTRING_EXPORTS" /Fp"$(INTDIR)\CMyString.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ  /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\CMyString.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:yes /pdb:"$(OUTDIR)\CMyString.pdb" /debug /machine:I386 /out:"../Bin/Debug/CMyString.dll" /implib:"$(OUTDIR)\CMyString.lib" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\CMyString.obj"

"..\Bin\Debug\CMyString.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("CMyString.dep")
!INCLUDE "CMyString.dep"
!ELSE 
!MESSAGE Warning: cannot find "CMyString.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "CMyString - Win32 Release" || "$(CFG)" == "CMyString - Win32 Debug"
SOURCE=.\CMyString.cpp

"$(INTDIR)\CMyString.obj" : $(SOURCE) "$(INTDIR)"



!ENDIF 

