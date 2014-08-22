# Microsoft Developer Studio Generated NMAKE File, Based on Tab.dsp
!IF "$(CFG)" == ""
CFG=Tab - Win32 Debug
!MESSAGE No configuration specified. Defaulting to Tab - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Tab - Win32 Release" && "$(CFG)" != "Tab - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Tab.mak" CFG="Tab - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Tab - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "Tab - Win32 Debug" (based on "Win32 (x86) Application")
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

!IF  "$(CFG)" == "Tab - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\Tab.exe"


CLEAN :
	-@erase "$(INTDIR)\Page1.obj"
	-@erase "$(INTDIR)\Page2.obj"
	-@erase "$(INTDIR)\Page3.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\Tab.obj"
	-@erase "$(INTDIR)\Tab.pch"
	-@erase "$(INTDIR)\Tab.res"
	-@erase "$(INTDIR)\TabDlg.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\Tab.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\Tab.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\Tab.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Tab.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\Tab.pdb" /machine:I386 /out:"$(OUTDIR)\Tab.exe" 
LINK32_OBJS= \
	"$(INTDIR)\Tab.obj" \
	"$(INTDIR)\TabDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\Tab.res" \
	"$(INTDIR)\Page1.obj" \
	"$(INTDIR)\Page2.obj" \
	"$(INTDIR)\Page3.obj"

"$(OUTDIR)\Tab.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Tab - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\Tab.exe"


CLEAN :
	-@erase "$(INTDIR)\Page1.obj"
	-@erase "$(INTDIR)\Page2.obj"
	-@erase "$(INTDIR)\Page3.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\Tab.obj"
	-@erase "$(INTDIR)\Tab.pch"
	-@erase "$(INTDIR)\Tab.res"
	-@erase "$(INTDIR)\TabDlg.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\Tab.exe"
	-@erase "$(OUTDIR)\Tab.ilk"
	-@erase "$(OUTDIR)\Tab.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\Tab.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ   /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\Tab.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Tab.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\Tab.pdb" /debug /machine:I386 /out:"$(OUTDIR)\Tab.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\Tab.obj" \
	"$(INTDIR)\TabDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\Tab.res" \
	"$(INTDIR)\Page1.obj" \
	"$(INTDIR)\Page2.obj" \
	"$(INTDIR)\Page3.obj"

"$(OUTDIR)\Tab.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("Tab.dep")
!INCLUDE "Tab.dep"
!ELSE 
!MESSAGE Warning: cannot find "Tab.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "Tab - Win32 Release" || "$(CFG)" == "Tab - Win32 Debug"
SOURCE=.\Page1.cpp

"$(INTDIR)\Page1.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Tab.pch"


SOURCE=.\Page2.cpp

"$(INTDIR)\Page2.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Tab.pch"


SOURCE=.\Page3.cpp

"$(INTDIR)\Page3.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Tab.pch"


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "Tab - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\Tab.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\Tab.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "Tab - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\Tab.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ   /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\Tab.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 

SOURCE=.\Tab.cpp

"$(INTDIR)\Tab.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Tab.pch"


SOURCE=.\Tab.rc

"$(INTDIR)\Tab.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\TabDlg.cpp

"$(INTDIR)\TabDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Tab.pch"



!ENDIF 

