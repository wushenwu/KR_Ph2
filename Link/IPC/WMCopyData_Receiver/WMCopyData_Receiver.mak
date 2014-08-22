# Microsoft Developer Studio Generated NMAKE File, Based on WMCopyData_Receiver.dsp
!IF "$(CFG)" == ""
CFG=WMCopyData_Receiver - Win32 Debug
!MESSAGE No configuration specified. Defaulting to WMCopyData_Receiver - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "WMCopyData_Receiver - Win32 Release" && "$(CFG)" != "WMCopyData_Receiver - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "WMCopyData_Receiver.mak" CFG="WMCopyData_Receiver - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "WMCopyData_Receiver - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "WMCopyData_Receiver - Win32 Debug" (based on "Win32 (x86) Application")
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

!IF  "$(CFG)" == "WMCopyData_Receiver - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\WMCopyData_Receiver.exe"


CLEAN :
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\WMCopyData_Receiver.obj"
	-@erase "$(INTDIR)\WMCopyData_Receiver.pch"
	-@erase "$(INTDIR)\WMCopyData_Receiver.res"
	-@erase "$(INTDIR)\WMCopyData_ReceiverDlg.obj"
	-@erase "$(OUTDIR)\WMCopyData_Receiver.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\WMCopyData_Receiver.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\WMCopyData_Receiver.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\WMCopyData_Receiver.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\WMCopyData_Receiver.pdb" /machine:I386 /out:"$(OUTDIR)\WMCopyData_Receiver.exe" 
LINK32_OBJS= \
	"$(INTDIR)\WMCopyData_Receiver.obj" \
	"$(INTDIR)\WMCopyData_ReceiverDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\WMCopyData_Receiver.res"

"$(OUTDIR)\WMCopyData_Receiver.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "WMCopyData_Receiver - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\WMCopyData_Receiver.exe"


CLEAN :
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\WMCopyData_Receiver.obj"
	-@erase "$(INTDIR)\WMCopyData_Receiver.pch"
	-@erase "$(INTDIR)\WMCopyData_Receiver.res"
	-@erase "$(INTDIR)\WMCopyData_ReceiverDlg.obj"
	-@erase "$(OUTDIR)\WMCopyData_Receiver.exe"
	-@erase "$(OUTDIR)\WMCopyData_Receiver.ilk"
	-@erase "$(OUTDIR)\WMCopyData_Receiver.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\WMCopyData_Receiver.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ   /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\WMCopyData_Receiver.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\WMCopyData_Receiver.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\WMCopyData_Receiver.pdb" /debug /machine:I386 /out:"$(OUTDIR)\WMCopyData_Receiver.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\WMCopyData_Receiver.obj" \
	"$(INTDIR)\WMCopyData_ReceiverDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\WMCopyData_Receiver.res"

"$(OUTDIR)\WMCopyData_Receiver.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("WMCopyData_Receiver.dep")
!INCLUDE "WMCopyData_Receiver.dep"
!ELSE 
!MESSAGE Warning: cannot find "WMCopyData_Receiver.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "WMCopyData_Receiver - Win32 Release" || "$(CFG)" == "WMCopyData_Receiver - Win32 Debug"
SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "WMCopyData_Receiver - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\WMCopyData_Receiver.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\WMCopyData_Receiver.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "WMCopyData_Receiver - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\WMCopyData_Receiver.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ   /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\WMCopyData_Receiver.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 

SOURCE=.\WMCopyData_Receiver.cpp

"$(INTDIR)\WMCopyData_Receiver.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\WMCopyData_Receiver.pch"


SOURCE=.\WMCopyData_Receiver.rc

"$(INTDIR)\WMCopyData_Receiver.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\WMCopyData_ReceiverDlg.cpp

"$(INTDIR)\WMCopyData_ReceiverDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\WMCopyData_Receiver.pch"



!ENDIF 

