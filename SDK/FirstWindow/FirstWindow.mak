# Microsoft Developer Studio Generated NMAKE File, Based on FirstWindow.dsp
!IF "$(CFG)" == ""
CFG=FirstWindow - Win32 Debug
!MESSAGE No configuration specified. Defaulting to FirstWindow - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "FirstWindow - Win32 Release" && "$(CFG)" != "FirstWindow - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "FirstWindow.mak" CFG="FirstWindow - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "FirstWindow - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "FirstWindow - Win32 Debug" (based on "Win32 (x86) Application")
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

!IF  "$(CFG)" == "FirstWindow - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\FirstWindow.exe"


CLEAN :
	-@erase "$(INTDIR)\FirstWindow.obj"
	-@erase "$(INTDIR)\FirstWindow.res"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\FirstWindow.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /Fp"$(INTDIR)\FirstWindow.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\FirstWindow.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\FirstWindow.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\FirstWindow.pdb" /machine:I386 /out:"$(OUTDIR)\FirstWindow.exe" 
LINK32_OBJS= \
	"$(INTDIR)\FirstWindow.obj" \
	"$(INTDIR)\FirstWindow.res"

"$(OUTDIR)\FirstWindow.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "FirstWindow - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\FirstWindow.exe"


CLEAN :
	-@erase "$(INTDIR)\FirstWindow.obj"
	-@erase "$(INTDIR)\FirstWindow.res"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\FirstWindow.exe"
	-@erase "$(OUTDIR)\FirstWindow.ilk"
	-@erase "$(OUTDIR)\FirstWindow.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MLd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /Fp"$(INTDIR)\FirstWindow.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\FirstWindow.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\FirstWindow.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib comctl32.lib /nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\FirstWindow.pdb" /debug /machine:I386 /out:"$(OUTDIR)\FirstWindow.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\FirstWindow.obj" \
	"$(INTDIR)\FirstWindow.res"

"$(OUTDIR)\FirstWindow.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("FirstWindow.dep")
!INCLUDE "FirstWindow.dep"
!ELSE 
!MESSAGE Warning: cannot find "FirstWindow.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "FirstWindow - Win32 Release" || "$(CFG)" == "FirstWindow - Win32 Debug"
SOURCE=.\FirstWindow.cpp

"$(INTDIR)\FirstWindow.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\FirstWindow.rc

"$(INTDIR)\FirstWindow.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)



!ENDIF 

