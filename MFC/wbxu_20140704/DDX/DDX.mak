# Microsoft Developer Studio Generated NMAKE File, Based on DDX.dsp
!IF "$(CFG)" == ""
CFG=DDX - Win32 Debug
!MESSAGE No configuration specified. Defaulting to DDX - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "DDX - Win32 Release" && "$(CFG)" != "DDX - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "DDX.mak" CFG="DDX - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "DDX - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "DDX - Win32 Debug" (based on "Win32 (x86) Application")
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

!IF  "$(CFG)" == "DDX - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\DDX.exe"


CLEAN :
	-@erase "$(INTDIR)\DDX.obj"
	-@erase "$(INTDIR)\DDX.pch"
	-@erase "$(INTDIR)\DDX.res"
	-@erase "$(INTDIR)\DDXDlg.obj"
	-@erase "$(INTDIR)\MyButtonProxy.obj"
	-@erase "$(INTDIR)\MyEditProxy.obj"
	-@erase "$(INTDIR)\MyListBoxProxy.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\DDX.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\DDX.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\DDX.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\DDX.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\DDX.pdb" /machine:I386 /out:"$(OUTDIR)\DDX.exe" 
LINK32_OBJS= \
	"$(INTDIR)\DDX.obj" \
	"$(INTDIR)\DDXDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\DDX.res" \
	"$(INTDIR)\MyButtonProxy.obj" \
	"$(INTDIR)\MyEditProxy.obj" \
	"$(INTDIR)\MyListBoxProxy.obj"

"$(OUTDIR)\DDX.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "DDX - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\DDX.exe"


CLEAN :
	-@erase "$(INTDIR)\DDX.obj"
	-@erase "$(INTDIR)\DDX.pch"
	-@erase "$(INTDIR)\DDX.res"
	-@erase "$(INTDIR)\DDXDlg.obj"
	-@erase "$(INTDIR)\MyButtonProxy.obj"
	-@erase "$(INTDIR)\MyEditProxy.obj"
	-@erase "$(INTDIR)\MyListBoxProxy.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\DDX.exe"
	-@erase "$(OUTDIR)\DDX.ilk"
	-@erase "$(OUTDIR)\DDX.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\DDX.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\DDX.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\DDX.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\DDX.pdb" /debug /machine:I386 /out:"$(OUTDIR)\DDX.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\DDX.obj" \
	"$(INTDIR)\DDXDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\DDX.res" \
	"$(INTDIR)\MyButtonProxy.obj" \
	"$(INTDIR)\MyEditProxy.obj" \
	"$(INTDIR)\MyListBoxProxy.obj"

"$(OUTDIR)\DDX.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("DDX.dep")
!INCLUDE "DDX.dep"
!ELSE 
!MESSAGE Warning: cannot find "DDX.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "DDX - Win32 Release" || "$(CFG)" == "DDX - Win32 Debug"
SOURCE=.\DDX.cpp

"$(INTDIR)\DDX.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\DDX.pch"


SOURCE=.\DDX.rc

"$(INTDIR)\DDX.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\DDXDlg.cpp

"$(INTDIR)\DDXDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\DDX.pch"


SOURCE=.\MyButtonProxy.cpp

"$(INTDIR)\MyButtonProxy.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\DDX.pch"


SOURCE=.\MyEditProxy.cpp

"$(INTDIR)\MyEditProxy.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\DDX.pch"


SOURCE=.\MyListBoxProxy.cpp

"$(INTDIR)\MyListBoxProxy.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\DDX.pch"


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "DDX - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\DDX.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\DDX.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "DDX - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\DDX.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\DDX.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

