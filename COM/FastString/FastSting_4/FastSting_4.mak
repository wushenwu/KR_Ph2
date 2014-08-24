# Microsoft Developer Studio Generated NMAKE File, Based on FastSting_4.dsp
!IF "$(CFG)" == ""
CFG=FastSting_4 - Win32 Debug
!MESSAGE No configuration specified. Defaulting to FastSting_4 - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "FastSting_4 - Win32 Release" && "$(CFG)" != "FastSting_4 - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "FastSting_4.mak" CFG="FastSting_4 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "FastSting_4 - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "FastSting_4 - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
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

!IF  "$(CFG)" == "FastSting_4 - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\FastSting_4.dll"


CLEAN :
	-@erase "$(INTDIR)\FastString.obj"
	-@erase "$(INTDIR)\IFastString.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\FastSting_4.dll"
	-@erase "$(OUTDIR)\FastSting_4.exp"
	-@erase "$(OUTDIR)\FastSting_4.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "FASTSTING_4_EXPORTS" /Fp"$(INTDIR)\FastSting_4.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\FastSting_4.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:no /pdb:"$(OUTDIR)\FastSting_4.pdb" /machine:I386 /out:"$(OUTDIR)\FastSting_4.dll" /implib:"$(OUTDIR)\FastSting_4.lib" 
LINK32_OBJS= \
	"$(INTDIR)\IFastString.obj" \
	"$(INTDIR)\FastString.obj"

"$(OUTDIR)\FastSting_4.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "FastSting_4 - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "..\Caller\FastSting_4.dll"


CLEAN :
	-@erase "$(INTDIR)\FastString.obj"
	-@erase "$(INTDIR)\IFastString.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\FastSting_4.exp"
	-@erase "$(OUTDIR)\FastSting_4.lib"
	-@erase "$(OUTDIR)\FastSting_4.pdb"
	-@erase "..\Caller\FastSting_4.dll"
	-@erase "..\Caller\FastSting_4.ilk"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "FASTSTING_4_EXPORTS" /Fp"$(INTDIR)\FastSting_4.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ  /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\FastSting_4.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:yes /pdb:"$(OUTDIR)\FastSting_4.pdb" /debug /machine:I386 /out:"../Caller/FastSting_4.dll" /implib:"$(OUTDIR)\FastSting_4.lib" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\IFastString.obj" \
	"$(INTDIR)\FastString.obj"

"..\Caller\FastSting_4.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("FastSting_4.dep")
!INCLUDE "FastSting_4.dep"
!ELSE 
!MESSAGE Warning: cannot find "FastSting_4.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "FastSting_4 - Win32 Release" || "$(CFG)" == "FastSting_4 - Win32 Debug"
SOURCE=.\FastString.cpp

"$(INTDIR)\FastString.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\IFastString.cpp

"$(INTDIR)\IFastString.obj" : $(SOURCE) "$(INTDIR)"



!ENDIF 

