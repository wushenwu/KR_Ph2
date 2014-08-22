# Microsoft Developer Studio Generated NMAKE File, Based on DLL.dsp
!IF "$(CFG)" == ""
CFG=DLL - Win32 Debug
!MESSAGE No configuration specified. Defaulting to DLL - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "DLL - Win32 Release" && "$(CFG)" != "DLL - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "DLL.mak" CFG="DLL - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "DLL - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "DLL - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
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

!IF  "$(CFG)" == "DLL - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\DLL.dll"


CLEAN :
	-@erase "$(INTDIR)\DLL.OBJ"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\DLL.dll"
	-@erase "$(OUTDIR)\DLL.exp"
	-@erase "$(OUTDIR)\DLL.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "DLL_EXPORTS" /Fp"$(INTDIR)\DLL.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\DLL.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:no /pdb:"$(OUTDIR)\DLL.pdb" /machine:I386 /out:"$(OUTDIR)\DLL.dll" /implib:"$(OUTDIR)\DLL.lib" 
LINK32_OBJS= \
	"$(INTDIR)\DLL.OBJ"

"$(OUTDIR)\DLL.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "DLL - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "..\Bin\Debug\DLL.dll"


CLEAN :
	-@erase "$(INTDIR)\DLL.OBJ"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\DLL.exp"
	-@erase "$(OUTDIR)\DLL.lib"
	-@erase "$(OUTDIR)\DLL.pdb"
	-@erase "..\Bin\Debug\DLL.dll"
	-@erase "..\Bin\Debug\DLL.ilk"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "DLL_EXPORTS" /Fp"$(INTDIR)\DLL.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ  /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\DLL.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:yes /pdb:"$(OUTDIR)\DLL.pdb" /debug /machine:I386 /out:"../Bin/Debug/DLL.dll" /implib:"$(OUTDIR)\DLL.lib" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\DLL.OBJ"

"..\Bin\Debug\DLL.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("DLL.dep")
!INCLUDE "DLL.dep"
!ELSE 
!MESSAGE Warning: cannot find "DLL.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "DLL - Win32 Release" || "$(CFG)" == "DLL - Win32 Debug"
SOURCE=.\DLL.CPP

"$(INTDIR)\DLL.OBJ" : $(SOURCE) "$(INTDIR)"



!ENDIF 

