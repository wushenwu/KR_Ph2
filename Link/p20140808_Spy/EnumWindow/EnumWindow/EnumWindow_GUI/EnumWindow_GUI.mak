# Microsoft Developer Studio Generated NMAKE File, Based on EnumWindow_GUI.dsp
!IF "$(CFG)" == ""
CFG=EnumWindow_GUI - Win32 Debug
!MESSAGE No configuration specified. Defaulting to EnumWindow_GUI - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "EnumWindow_GUI - Win32 Release" && "$(CFG)" != "EnumWindow_GUI - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "EnumWindow_GUI.mak" CFG="EnumWindow_GUI - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "EnumWindow_GUI - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "EnumWindow_GUI - Win32 Debug" (based on "Win32 (x86) Application")
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

!IF  "$(CFG)" == "EnumWindow_GUI - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\EnumWindow_GUI.exe"


CLEAN :
	-@erase "$(INTDIR)\EnumWindow_GUI.obj"
	-@erase "$(INTDIR)\EnumWindow_GUI.pch"
	-@erase "$(INTDIR)\EnumWindow_GUI.res"
	-@erase "$(INTDIR)\EnumWindow_GUIDoc.obj"
	-@erase "$(INTDIR)\EnumWindow_GUIView.obj"
	-@erase "$(INTDIR)\MainFrm.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\EnumWindow_GUI.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\EnumWindow_GUI.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\EnumWindow_GUI.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\EnumWindow_GUI.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\EnumWindow_GUI.pdb" /machine:I386 /out:"$(OUTDIR)\EnumWindow_GUI.exe" 
LINK32_OBJS= \
	"$(INTDIR)\EnumWindow_GUI.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\MainFrm.obj" \
	"$(INTDIR)\EnumWindow_GUIDoc.obj" \
	"$(INTDIR)\EnumWindow_GUIView.obj" \
	"$(INTDIR)\EnumWindow_GUI.res"

"$(OUTDIR)\EnumWindow_GUI.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "EnumWindow_GUI - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\EnumWindow_GUI.exe"


CLEAN :
	-@erase "$(INTDIR)\EnumWindow_GUI.obj"
	-@erase "$(INTDIR)\EnumWindow_GUI.pch"
	-@erase "$(INTDIR)\EnumWindow_GUI.res"
	-@erase "$(INTDIR)\EnumWindow_GUIDoc.obj"
	-@erase "$(INTDIR)\EnumWindow_GUIView.obj"
	-@erase "$(INTDIR)\MainFrm.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\EnumWindow_GUI.exe"
	-@erase "$(OUTDIR)\EnumWindow_GUI.ilk"
	-@erase "$(OUTDIR)\EnumWindow_GUI.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\EnumWindow_GUI.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ   /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\EnumWindow_GUI.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\EnumWindow_GUI.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\EnumWindow_GUI.pdb" /debug /machine:I386 /out:"$(OUTDIR)\EnumWindow_GUI.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\EnumWindow_GUI.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\MainFrm.obj" \
	"$(INTDIR)\EnumWindow_GUIDoc.obj" \
	"$(INTDIR)\EnumWindow_GUIView.obj" \
	"$(INTDIR)\EnumWindow_GUI.res"

"$(OUTDIR)\EnumWindow_GUI.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("EnumWindow_GUI.dep")
!INCLUDE "EnumWindow_GUI.dep"
!ELSE 
!MESSAGE Warning: cannot find "EnumWindow_GUI.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "EnumWindow_GUI - Win32 Release" || "$(CFG)" == "EnumWindow_GUI - Win32 Debug"
SOURCE=.\EnumWindow_GUI.cpp

"$(INTDIR)\EnumWindow_GUI.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\EnumWindow_GUI.pch"


SOURCE=.\EnumWindow_GUI.rc

"$(INTDIR)\EnumWindow_GUI.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\EnumWindow_GUIDoc.cpp

"$(INTDIR)\EnumWindow_GUIDoc.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\EnumWindow_GUI.pch"


SOURCE=.\EnumWindow_GUIView.cpp

"$(INTDIR)\EnumWindow_GUIView.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\EnumWindow_GUI.pch"


SOURCE=.\MainFrm.cpp

"$(INTDIR)\MainFrm.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\EnumWindow_GUI.pch"


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "EnumWindow_GUI - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\EnumWindow_GUI.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\EnumWindow_GUI.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "EnumWindow_GUI - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\EnumWindow_GUI.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ   /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\EnumWindow_GUI.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

