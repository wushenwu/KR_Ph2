# Microsoft Developer Studio Generated NMAKE File, Based on CallWindow.dsp
!IF "$(CFG)" == ""
CFG=CallWindow - Win32 Debug
!MESSAGE No configuration specified. Defaulting to CallWindow - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "CallWindow - Win32 Release" && "$(CFG)" != "CallWindow - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "CallWindow.mak" CFG="CallWindow - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "CallWindow - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "CallWindow - Win32 Debug" (based on "Win32 (x86) Application")
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

!IF  "$(CFG)" == "CallWindow - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\CallWindow.exe"


CLEAN :
	-@erase "$(INTDIR)\CallWindow.obj"
	-@erase "$(INTDIR)\CallWindow.pch"
	-@erase "$(INTDIR)\CallWindow.res"
	-@erase "$(INTDIR)\CallWindowDlg.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\CallWindow.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\CallWindow.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\CallWindow.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\CallWindow.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\CallWindow.pdb" /machine:I386 /out:"$(OUTDIR)\CallWindow.exe" 
LINK32_OBJS= \
	"$(INTDIR)\CallWindow.obj" \
	"$(INTDIR)\CallWindowDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\CallWindow.res"

"$(OUTDIR)\CallWindow.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "CallWindow - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\CallWindow.exe"


CLEAN :
	-@erase "$(INTDIR)\CallWindow.obj"
	-@erase "$(INTDIR)\CallWindow.pch"
	-@erase "$(INTDIR)\CallWindow.res"
	-@erase "$(INTDIR)\CallWindowDlg.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\CallWindow.exe"
	-@erase "$(OUTDIR)\CallWindow.ilk"
	-@erase "$(OUTDIR)\CallWindow.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\CallWindow.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ   /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\CallWindow.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\CallWindow.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\CallWindow.pdb" /debug /machine:I386 /out:"$(OUTDIR)\CallWindow.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\CallWindow.obj" \
	"$(INTDIR)\CallWindowDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\CallWindow.res"

"$(OUTDIR)\CallWindow.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("CallWindow.dep")
!INCLUDE "CallWindow.dep"
!ELSE 
!MESSAGE Warning: cannot find "CallWindow.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "CallWindow - Win32 Release" || "$(CFG)" == "CallWindow - Win32 Debug"
SOURCE=.\CallWindow.cpp

"$(INTDIR)\CallWindow.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CallWindow.pch"


SOURCE=.\CallWindow.rc

"$(INTDIR)\CallWindow.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\CallWindowDlg.cpp

"$(INTDIR)\CallWindowDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CallWindow.pch"


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "CallWindow - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\CallWindow.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\CallWindow.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "CallWindow - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\CallWindow.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ   /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\CallWindow.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

