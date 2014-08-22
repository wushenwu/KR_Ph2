# Microsoft Developer Studio Generated NMAKE File, Based on DLL_DEF.dsp
!IF "$(CFG)" == ""
CFG=DLL_DEF - Win32 Debug
!MESSAGE No configuration specified. Defaulting to DLL_DEF - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "DLL_DEF - Win32 Release" && "$(CFG)" != "DLL_DEF - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "DLL_DEF.mak" CFG="DLL_DEF - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "DLL_DEF - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "DLL_DEF - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
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

!IF  "$(CFG)" == "DLL_DEF - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\DLL_DEF.dll"


CLEAN :
	-@erase "$(INTDIR)\DLL_DEF.OBJ"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\DLL_DEF.dll"
	-@erase "$(OUTDIR)\DLL_DEF.exp"
	-@erase "$(OUTDIR)\DLL_DEF.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "DLL_DEF_EXPORTS" /Fp"$(INTDIR)\DLL_DEF.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\DLL_DEF.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:no /pdb:"$(OUTDIR)\DLL_DEF.pdb" /machine:I386 /def:".\DLL_DEF.def" /out:"$(OUTDIR)\DLL_DEF.dll" /implib:"$(OUTDIR)\DLL_DEF.lib" 
DEF_FILE= \
	".\DLL_DEF.def"
LINK32_OBJS= \
	"$(INTDIR)\DLL_DEF.OBJ"

"$(OUTDIR)\DLL_DEF.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "DLL_DEF - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "..\Bin\Debug\DLL_DEF.dll"


CLEAN :
	-@erase "$(INTDIR)\DLL_DEF.OBJ"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\DLL_DEF.exp"
	-@erase "$(OUTDIR)\DLL_DEF.lib"
	-@erase "$(OUTDIR)\DLL_DEF.pdb"
	-@erase "..\Bin\Debug\DLL_DEF.dll"
	-@erase "..\Bin\Debug\DLL_DEF.ilk"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "DLL_DEF_EXPORTS" /Fp"$(INTDIR)\DLL_DEF.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ  /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\DLL_DEF.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:yes /pdb:"$(OUTDIR)\DLL_DEF.pdb" /debug /machine:I386 /def:".\DLL_DEF.def" /out:"../Bin/Debug/DLL_DEF.dll" /implib:"$(OUTDIR)\DLL_DEF.lib" /pdbtype:sept 
DEF_FILE= \
	".\DLL_DEF.def"
LINK32_OBJS= \
	"$(INTDIR)\DLL_DEF.OBJ"

"..\Bin\Debug\DLL_DEF.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("DLL_DEF.dep")
!INCLUDE "DLL_DEF.dep"
!ELSE 
!MESSAGE Warning: cannot find "DLL_DEF.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "DLL_DEF - Win32 Release" || "$(CFG)" == "DLL_DEF - Win32 Debug"
SOURCE=.\DLL_DEF.CPP

"$(INTDIR)\DLL_DEF.OBJ" : $(SOURCE) "$(INTDIR)"



!ENDIF 

