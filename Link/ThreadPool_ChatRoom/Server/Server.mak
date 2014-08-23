# Microsoft Developer Studio Generated NMAKE File, Based on Server.dsp
!IF "$(CFG)" == ""
CFG=Server - Win32 Debug
!MESSAGE No configuration specified. Defaulting to Server - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Server - Win32 Release" && "$(CFG)" != "Server - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Server.mak" CFG="Server - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Server - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "Server - Win32 Debug" (based on "Win32 (x86) Application")
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

!IF  "$(CFG)" == "Server - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\Server.exe"


CLEAN :
	-@erase "$(INTDIR)\AcceptWorkItem.obj"
	-@erase "$(INTDIR)\IWorkItemBase.obj"
	-@erase "$(INTDIR)\MyPacket.obj"
	-@erase "$(INTDIR)\MySocket.obj"
	-@erase "$(INTDIR)\MyThreadPool.obj"
	-@erase "$(INTDIR)\RecvWorkItem.obj"
	-@erase "$(INTDIR)\Server.obj"
	-@erase "$(INTDIR)\Server.pch"
	-@erase "$(INTDIR)\Server.res"
	-@erase "$(INTDIR)\ServerDlg.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\Server.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\Server.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\Server.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Server.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\Server.pdb" /machine:I386 /out:"$(OUTDIR)\Server.exe" 
LINK32_OBJS= \
	"$(INTDIR)\MyPacket.obj" \
	"$(INTDIR)\MySocket.obj" \
	"$(INTDIR)\Server.obj" \
	"$(INTDIR)\ServerDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\Server.res" \
	"$(INTDIR)\IWorkItemBase.obj" \
	"$(INTDIR)\MyThreadPool.obj" \
	"$(INTDIR)\AcceptWorkItem.obj" \
	"$(INTDIR)\RecvWorkItem.obj"

"$(OUTDIR)\Server.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Server - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\Server.exe"


CLEAN :
	-@erase "$(INTDIR)\AcceptWorkItem.obj"
	-@erase "$(INTDIR)\IWorkItemBase.obj"
	-@erase "$(INTDIR)\MyPacket.obj"
	-@erase "$(INTDIR)\MySocket.obj"
	-@erase "$(INTDIR)\MyThreadPool.obj"
	-@erase "$(INTDIR)\RecvWorkItem.obj"
	-@erase "$(INTDIR)\Server.obj"
	-@erase "$(INTDIR)\Server.pch"
	-@erase "$(INTDIR)\Server.res"
	-@erase "$(INTDIR)\ServerDlg.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\Server.exe"
	-@erase "$(OUTDIR)\Server.ilk"
	-@erase "$(OUTDIR)\Server.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_AFXDLL" /Fp"$(INTDIR)\Server.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\Server.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Server.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\Server.pdb" /debug /machine:I386 /out:"$(OUTDIR)\Server.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\MyPacket.obj" \
	"$(INTDIR)\MySocket.obj" \
	"$(INTDIR)\Server.obj" \
	"$(INTDIR)\ServerDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\Server.res" \
	"$(INTDIR)\IWorkItemBase.obj" \
	"$(INTDIR)\MyThreadPool.obj" \
	"$(INTDIR)\AcceptWorkItem.obj" \
	"$(INTDIR)\RecvWorkItem.obj"

"$(OUTDIR)\Server.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("Server.dep")
!INCLUDE "Server.dep"
!ELSE 
!MESSAGE Warning: cannot find "Server.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "Server - Win32 Release" || "$(CFG)" == "Server - Win32 Debug"
SOURCE=.\AcceptWorkItem.cpp

"$(INTDIR)\AcceptWorkItem.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Server.pch"


SOURCE=..\ThreadPool\IWorkItemBase.cpp

"$(INTDIR)\IWorkItemBase.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Server.pch"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\MyPacket.cpp

"$(INTDIR)\MyPacket.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Server.pch"


SOURCE=.\MySocket.cpp

"$(INTDIR)\MySocket.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Server.pch"


SOURCE=..\ThreadPool\MyThreadPool.cpp

"$(INTDIR)\MyThreadPool.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Server.pch"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\RecvWorkItem.cpp

"$(INTDIR)\RecvWorkItem.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Server.pch"


SOURCE=.\Server.cpp

"$(INTDIR)\Server.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Server.pch"


SOURCE=.\Server.rc

"$(INTDIR)\Server.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\ServerDlg.cpp

"$(INTDIR)\ServerDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Server.pch"


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "Server - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\Server.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\Server.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "Server - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_AFXDLL" /Fp"$(INTDIR)\Server.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\Server.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

