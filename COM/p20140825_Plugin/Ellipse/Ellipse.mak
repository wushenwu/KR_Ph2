# Microsoft Developer Studio Generated NMAKE File, Based on Ellipse.dsp
!IF "$(CFG)" == ""
CFG=Ellipse - Win32 Debug
!MESSAGE No configuration specified. Defaulting to Ellipse - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Ellipse - Win32 Release" && "$(CFG)" != "Ellipse - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Ellipse.mak" CFG="Ellipse - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Ellipse - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "Ellipse - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
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

!IF  "$(CFG)" == "Ellipse - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\Ellipse.dll"


CLEAN :
	-@erase "$(INTDIR)\Ellipse.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\Ellipse.dll"
	-@erase "$(OUTDIR)\Ellipse.exp"
	-@erase "$(OUTDIR)\Ellipse.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "ELLIPSE_EXPORTS" /Fp"$(INTDIR)\Ellipse.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Ellipse.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:no /pdb:"$(OUTDIR)\Ellipse.pdb" /machine:I386 /def:".\Ellipse.def" /out:"$(OUTDIR)\Ellipse.dll" /implib:"$(OUTDIR)\Ellipse.lib" 
DEF_FILE= \
	".\Ellipse.def"
LINK32_OBJS= \
	"$(INTDIR)\Ellipse.obj"

"$(OUTDIR)\Ellipse.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Ellipse - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "..\CAD\Plugin\Ellipse.dll"


CLEAN :
	-@erase "$(INTDIR)\Ellipse.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\Ellipse.exp"
	-@erase "$(OUTDIR)\Ellipse.lib"
	-@erase "$(OUTDIR)\Ellipse.pdb"
	-@erase "..\CAD\Plugin\Ellipse.dll"
	-@erase "..\CAD\Plugin\Ellipse.ilk"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "ELLIPSE_EXPORTS" /Fp"$(INTDIR)\Ellipse.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Ellipse.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:yes /pdb:"$(OUTDIR)\Ellipse.pdb" /debug /machine:I386 /def:".\Ellipse.def" /out:"../CAD/Plugin/Ellipse.dll" /implib:"$(OUTDIR)\Ellipse.lib" /pdbtype:sept 
DEF_FILE= \
	".\Ellipse.def"
LINK32_OBJS= \
	"$(INTDIR)\Ellipse.obj"

"..\CAD\Plugin\Ellipse.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("Ellipse.dep")
!INCLUDE "Ellipse.dep"
!ELSE 
!MESSAGE Warning: cannot find "Ellipse.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "Ellipse - Win32 Release" || "$(CFG)" == "Ellipse - Win32 Debug"
SOURCE=.\Ellipse.cpp

"$(INTDIR)\Ellipse.obj" : $(SOURCE) "$(INTDIR)"



!ENDIF 

