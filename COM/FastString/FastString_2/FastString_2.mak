# Microsoft Developer Studio Generated NMAKE File, Based on FastString_2.dsp
!IF "$(CFG)" == ""
CFG=FastString_2 - Win32 Debug
!MESSAGE No configuration specified. Defaulting to FastString_2 - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "FastString_2 - Win32 Release" && "$(CFG)" != "FastString_2 - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "FastString_2.mak" CFG="FastString_2 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "FastString_2 - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "FastString_2 - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
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

!IF  "$(CFG)" == "FastString_2 - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\FastString_2.dll"


CLEAN :
	-@erase "$(INTDIR)\FastString.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\FastString_2.dll"
	-@erase "$(OUTDIR)\FastString_2.exp"
	-@erase "$(OUTDIR)\FastString_2.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "FASTSTRING_2_EXPORTS" /Fp"$(INTDIR)\FastString_2.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\FastString_2.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:no /pdb:"$(OUTDIR)\FastString_2.pdb" /machine:I386 /out:"$(OUTDIR)\FastString_2.dll" /implib:"$(OUTDIR)\FastString_2.lib" 
LINK32_OBJS= \
	"$(INTDIR)\FastString.obj"

"$(OUTDIR)\FastString_2.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "FastString_2 - Win32 Debug"

OUTDIR=.\FastString_2___Win32_Debug
INTDIR=.\FastString_2___Win32_Debug

ALL : "..\Caller\FastString_2.dll"


CLEAN :
	-@erase "$(INTDIR)\FastString.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\FastString_2.exp"
	-@erase "$(OUTDIR)\FastString_2.lib"
	-@erase "$(OUTDIR)\FastString_2.pdb"
	-@erase "..\Caller\FastString_2.dll"
	-@erase "..\Caller\FastString_2.ilk"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "FASTSTRING_2_EXPORTS" /Fp"$(INTDIR)\FastString_2.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ  /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\FastString_2.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:yes /pdb:"$(OUTDIR)\FastString_2.pdb" /debug /machine:I386 /out:"../Caller/FastString_2.dll" /implib:"$(OUTDIR)\FastString_2.lib" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\FastString.obj"

"..\Caller\FastString_2.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("FastString_2.dep")
!INCLUDE "FastString_2.dep"
!ELSE 
!MESSAGE Warning: cannot find "FastString_2.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "FastString_2 - Win32 Release" || "$(CFG)" == "FastString_2 - Win32 Debug"
SOURCE=.\FastString.cpp

"$(INTDIR)\FastString.obj" : $(SOURCE) "$(INTDIR)"



!ENDIF 

