# Microsoft Developer Studio Generated NMAKE File, Based on Rect.dsp
!IF "$(CFG)" == ""
CFG=Rect - Win32 Debug
!MESSAGE No configuration specified. Defaulting to Rect - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Rect - Win32 Release" && "$(CFG)" != "Rect - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Rect.mak" CFG="Rect - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Rect - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "Rect - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
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

!IF  "$(CFG)" == "Rect - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\Rect.dll"


CLEAN :
	-@erase "$(INTDIR)\Rect.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\Rect.dll"
	-@erase "$(OUTDIR)\Rect.exp"
	-@erase "$(OUTDIR)\Rect.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "RECT_EXPORTS" /Fp"$(INTDIR)\Rect.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Rect.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:no /pdb:"$(OUTDIR)\Rect.pdb" /machine:I386 /def:".\Rect.def" /out:"$(OUTDIR)\Rect.dll" /implib:"$(OUTDIR)\Rect.lib" 
DEF_FILE= \
	".\Rect.def"
LINK32_OBJS= \
	"$(INTDIR)\Rect.obj"

"$(OUTDIR)\Rect.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Rect - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "..\CAD\Plugin\Rect.dll"


CLEAN :
	-@erase "$(INTDIR)\Rect.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\Rect.exp"
	-@erase "$(OUTDIR)\Rect.lib"
	-@erase "$(OUTDIR)\Rect.pdb"
	-@erase "..\CAD\Plugin\Rect.dll"
	-@erase "..\CAD\Plugin\Rect.ilk"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "RECT_EXPORTS" /Fp"$(INTDIR)\Rect.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ  /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Rect.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:yes /pdb:"$(OUTDIR)\Rect.pdb" /debug /machine:I386 /def:".\Rect.def" /out:"../CAD/Plugin/Rect.dll" /implib:"$(OUTDIR)\Rect.lib" /pdbtype:sept 
DEF_FILE= \
	".\Rect.def"
LINK32_OBJS= \
	"$(INTDIR)\Rect.obj"

"..\CAD\Plugin\Rect.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("Rect.dep")
!INCLUDE "Rect.dep"
!ELSE 
!MESSAGE Warning: cannot find "Rect.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "Rect - Win32 Release" || "$(CFG)" == "Rect - Win32 Debug"
SOURCE=.\Rect.cpp

"$(INTDIR)\Rect.obj" : $(SOURCE) "$(INTDIR)"



!ENDIF 

