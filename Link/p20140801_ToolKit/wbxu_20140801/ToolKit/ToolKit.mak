# Microsoft Developer Studio Generated NMAKE File, Based on ToolKit.dsp
!IF "$(CFG)" == ""
CFG=ToolKit - Win32 Debug
!MESSAGE No configuration specified. Defaulting to ToolKit - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "ToolKit - Win32 Release" && "$(CFG)" != "ToolKit - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ToolKit.mak" CFG="ToolKit - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ToolKit - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "ToolKit - Win32 Debug" (based on "Win32 (x86) Application")
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

!IF  "$(CFG)" == "ToolKit - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\ToolKit.exe"


CLEAN :
	-@erase "$(INTDIR)\InjectDlg.obj"
	-@erase "$(INTDIR)\mylistctrl.obj"
	-@erase "$(INTDIR)\ProcessDlg.obj"
	-@erase "$(INTDIR)\ProcessList.obj"
	-@erase "$(INTDIR)\ProcessMemoryDlg.obj"
	-@erase "$(INTDIR)\ProcessMemoryList.obj"
	-@erase "$(INTDIR)\ProcessModuleDlg.obj"
	-@erase "$(INTDIR)\ProcessModuleList.obj"
	-@erase "$(INTDIR)\ProcessThreadDlg.obj"
	-@erase "$(INTDIR)\ProcessThreadList.obj"
	-@erase "$(INTDIR)\ProcessWindowDlg.obj"
	-@erase "$(INTDIR)\ProcessWindowList.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\ToolKit.obj"
	-@erase "$(INTDIR)\ToolKit.pch"
	-@erase "$(INTDIR)\ToolKit.res"
	-@erase "$(INTDIR)\ToolKitDlg.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\ToolKit.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\ToolKit.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\ToolKit.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ToolKit.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\ToolKit.pdb" /machine:I386 /out:"$(OUTDIR)\ToolKit.exe" 
LINK32_OBJS= \
	"$(INTDIR)\mylistctrl.obj" \
	"$(INTDIR)\ProcessDlg.obj" \
	"$(INTDIR)\ProcessList.obj" \
	"$(INTDIR)\ProcessMemoryDlg.obj" \
	"$(INTDIR)\ProcessMemoryList.obj" \
	"$(INTDIR)\ProcessModuleDlg.obj" \
	"$(INTDIR)\ProcessModuleList.obj" \
	"$(INTDIR)\ProcessThreadDlg.obj" \
	"$(INTDIR)\ProcessThreadList.obj" \
	"$(INTDIR)\ProcessWindowDlg.obj" \
	"$(INTDIR)\ProcessWindowList.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\ToolKit.obj" \
	"$(INTDIR)\ToolKitDlg.obj" \
	"$(INTDIR)\ToolKit.res" \
	"$(INTDIR)\InjectDlg.obj"

"$(OUTDIR)\ToolKit.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ToolKit - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\ToolKit.exe" "$(OUTDIR)\ToolKit.bsc"


CLEAN :
	-@erase "$(INTDIR)\InjectDlg.obj"
	-@erase "$(INTDIR)\InjectDlg.sbr"
	-@erase "$(INTDIR)\mylistctrl.obj"
	-@erase "$(INTDIR)\mylistctrl.sbr"
	-@erase "$(INTDIR)\ProcessDlg.obj"
	-@erase "$(INTDIR)\ProcessDlg.sbr"
	-@erase "$(INTDIR)\ProcessList.obj"
	-@erase "$(INTDIR)\ProcessList.sbr"
	-@erase "$(INTDIR)\ProcessMemoryDlg.obj"
	-@erase "$(INTDIR)\ProcessMemoryDlg.sbr"
	-@erase "$(INTDIR)\ProcessMemoryList.obj"
	-@erase "$(INTDIR)\ProcessMemoryList.sbr"
	-@erase "$(INTDIR)\ProcessModuleDlg.obj"
	-@erase "$(INTDIR)\ProcessModuleDlg.sbr"
	-@erase "$(INTDIR)\ProcessModuleList.obj"
	-@erase "$(INTDIR)\ProcessModuleList.sbr"
	-@erase "$(INTDIR)\ProcessThreadDlg.obj"
	-@erase "$(INTDIR)\ProcessThreadDlg.sbr"
	-@erase "$(INTDIR)\ProcessThreadList.obj"
	-@erase "$(INTDIR)\ProcessThreadList.sbr"
	-@erase "$(INTDIR)\ProcessWindowDlg.obj"
	-@erase "$(INTDIR)\ProcessWindowDlg.sbr"
	-@erase "$(INTDIR)\ProcessWindowList.obj"
	-@erase "$(INTDIR)\ProcessWindowList.sbr"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\StdAfx.sbr"
	-@erase "$(INTDIR)\ToolKit.obj"
	-@erase "$(INTDIR)\ToolKit.pch"
	-@erase "$(INTDIR)\ToolKit.res"
	-@erase "$(INTDIR)\ToolKit.sbr"
	-@erase "$(INTDIR)\ToolKitDlg.obj"
	-@erase "$(INTDIR)\ToolKitDlg.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\ToolKit.bsc"
	-@erase "$(OUTDIR)\ToolKit.exe"
	-@erase "$(OUTDIR)\ToolKit.ilk"
	-@erase "$(OUTDIR)\ToolKit.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\ToolKit.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\ToolKit.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ToolKit.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\mylistctrl.sbr" \
	"$(INTDIR)\ProcessDlg.sbr" \
	"$(INTDIR)\ProcessList.sbr" \
	"$(INTDIR)\ProcessMemoryDlg.sbr" \
	"$(INTDIR)\ProcessMemoryList.sbr" \
	"$(INTDIR)\ProcessModuleDlg.sbr" \
	"$(INTDIR)\ProcessModuleList.sbr" \
	"$(INTDIR)\ProcessThreadDlg.sbr" \
	"$(INTDIR)\ProcessThreadList.sbr" \
	"$(INTDIR)\ProcessWindowDlg.sbr" \
	"$(INTDIR)\ProcessWindowList.sbr" \
	"$(INTDIR)\StdAfx.sbr" \
	"$(INTDIR)\ToolKit.sbr" \
	"$(INTDIR)\ToolKitDlg.sbr" \
	"$(INTDIR)\InjectDlg.sbr"

"$(OUTDIR)\ToolKit.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\ToolKit.pdb" /debug /machine:I386 /out:"$(OUTDIR)\ToolKit.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\mylistctrl.obj" \
	"$(INTDIR)\ProcessDlg.obj" \
	"$(INTDIR)\ProcessList.obj" \
	"$(INTDIR)\ProcessMemoryDlg.obj" \
	"$(INTDIR)\ProcessMemoryList.obj" \
	"$(INTDIR)\ProcessModuleDlg.obj" \
	"$(INTDIR)\ProcessModuleList.obj" \
	"$(INTDIR)\ProcessThreadDlg.obj" \
	"$(INTDIR)\ProcessThreadList.obj" \
	"$(INTDIR)\ProcessWindowDlg.obj" \
	"$(INTDIR)\ProcessWindowList.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\ToolKit.obj" \
	"$(INTDIR)\ToolKitDlg.obj" \
	"$(INTDIR)\ToolKit.res" \
	"$(INTDIR)\InjectDlg.obj"

"$(OUTDIR)\ToolKit.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("ToolKit.dep")
!INCLUDE "ToolKit.dep"
!ELSE 
!MESSAGE Warning: cannot find "ToolKit.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "ToolKit - Win32 Release" || "$(CFG)" == "ToolKit - Win32 Debug"
SOURCE=.\InjectDlg.cpp

!IF  "$(CFG)" == "ToolKit - Win32 Release"


"$(INTDIR)\InjectDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ELSEIF  "$(CFG)" == "ToolKit - Win32 Debug"


"$(INTDIR)\InjectDlg.obj"	"$(INTDIR)\InjectDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ENDIF 

SOURCE=.\mylistctrl.cpp

!IF  "$(CFG)" == "ToolKit - Win32 Release"


"$(INTDIR)\mylistctrl.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ELSEIF  "$(CFG)" == "ToolKit - Win32 Debug"


"$(INTDIR)\mylistctrl.obj"	"$(INTDIR)\mylistctrl.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ENDIF 

SOURCE=.\ProcessDlg.cpp

!IF  "$(CFG)" == "ToolKit - Win32 Release"


"$(INTDIR)\ProcessDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ELSEIF  "$(CFG)" == "ToolKit - Win32 Debug"


"$(INTDIR)\ProcessDlg.obj"	"$(INTDIR)\ProcessDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ENDIF 

SOURCE=.\ProcessList.cpp

!IF  "$(CFG)" == "ToolKit - Win32 Release"


"$(INTDIR)\ProcessList.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ELSEIF  "$(CFG)" == "ToolKit - Win32 Debug"


"$(INTDIR)\ProcessList.obj"	"$(INTDIR)\ProcessList.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ENDIF 

SOURCE=.\ProcessMemoryDlg.cpp

!IF  "$(CFG)" == "ToolKit - Win32 Release"


"$(INTDIR)\ProcessMemoryDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ELSEIF  "$(CFG)" == "ToolKit - Win32 Debug"


"$(INTDIR)\ProcessMemoryDlg.obj"	"$(INTDIR)\ProcessMemoryDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ENDIF 

SOURCE=.\ProcessMemoryList.cpp

!IF  "$(CFG)" == "ToolKit - Win32 Release"


"$(INTDIR)\ProcessMemoryList.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ELSEIF  "$(CFG)" == "ToolKit - Win32 Debug"


"$(INTDIR)\ProcessMemoryList.obj"	"$(INTDIR)\ProcessMemoryList.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ENDIF 

SOURCE=.\ProcessModuleDlg.cpp

!IF  "$(CFG)" == "ToolKit - Win32 Release"


"$(INTDIR)\ProcessModuleDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ELSEIF  "$(CFG)" == "ToolKit - Win32 Debug"


"$(INTDIR)\ProcessModuleDlg.obj"	"$(INTDIR)\ProcessModuleDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ENDIF 

SOURCE=.\ProcessModuleList.cpp

!IF  "$(CFG)" == "ToolKit - Win32 Release"


"$(INTDIR)\ProcessModuleList.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ELSEIF  "$(CFG)" == "ToolKit - Win32 Debug"


"$(INTDIR)\ProcessModuleList.obj"	"$(INTDIR)\ProcessModuleList.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ENDIF 

SOURCE=.\ProcessThreadDlg.cpp

!IF  "$(CFG)" == "ToolKit - Win32 Release"


"$(INTDIR)\ProcessThreadDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ELSEIF  "$(CFG)" == "ToolKit - Win32 Debug"


"$(INTDIR)\ProcessThreadDlg.obj"	"$(INTDIR)\ProcessThreadDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ENDIF 

SOURCE=.\ProcessThreadList.cpp

!IF  "$(CFG)" == "ToolKit - Win32 Release"


"$(INTDIR)\ProcessThreadList.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ELSEIF  "$(CFG)" == "ToolKit - Win32 Debug"


"$(INTDIR)\ProcessThreadList.obj"	"$(INTDIR)\ProcessThreadList.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ENDIF 

SOURCE=.\ProcessWindowDlg.cpp

!IF  "$(CFG)" == "ToolKit - Win32 Release"


"$(INTDIR)\ProcessWindowDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ELSEIF  "$(CFG)" == "ToolKit - Win32 Debug"


"$(INTDIR)\ProcessWindowDlg.obj"	"$(INTDIR)\ProcessWindowDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ENDIF 

SOURCE=.\ProcessWindowList.cpp

!IF  "$(CFG)" == "ToolKit - Win32 Release"


"$(INTDIR)\ProcessWindowList.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ELSEIF  "$(CFG)" == "ToolKit - Win32 Debug"


"$(INTDIR)\ProcessWindowList.obj"	"$(INTDIR)\ProcessWindowList.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ENDIF 

SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "ToolKit - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\ToolKit.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\ToolKit.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "ToolKit - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\ToolKit.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\StdAfx.sbr"	"$(INTDIR)\ToolKit.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 

SOURCE=.\ToolKit.cpp

!IF  "$(CFG)" == "ToolKit - Win32 Release"


"$(INTDIR)\ToolKit.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ELSEIF  "$(CFG)" == "ToolKit - Win32 Debug"


"$(INTDIR)\ToolKit.obj"	"$(INTDIR)\ToolKit.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ENDIF 

SOURCE=.\ToolKit.rc

"$(INTDIR)\ToolKit.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\ToolKitDlg.cpp

!IF  "$(CFG)" == "ToolKit - Win32 Release"


"$(INTDIR)\ToolKitDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ELSEIF  "$(CFG)" == "ToolKit - Win32 Debug"


"$(INTDIR)\ToolKitDlg.obj"	"$(INTDIR)\ToolKitDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ToolKit.pch"


!ENDIF 


!ENDIF 

