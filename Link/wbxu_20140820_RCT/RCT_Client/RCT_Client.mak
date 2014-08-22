# Microsoft Developer Studio Generated NMAKE File, Based on RCT_Client.dsp
!IF "$(CFG)" == ""
CFG=RCT_Client - Win32 Debug
!MESSAGE No configuration specified. Defaulting to RCT_Client - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "RCT_Client - Win32 Release" && "$(CFG)" != "RCT_Client - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "RCT_Client.mak" CFG="RCT_Client - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "RCT_Client - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "RCT_Client - Win32 Debug" (based on "Win32 (x86) Application")
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

!IF  "$(CFG)" == "RCT_Client - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\RCT_Client.exe"


CLEAN :
	-@erase "$(INTDIR)\MainFrm.obj"
	-@erase "$(INTDIR)\MySocket.obj"
	-@erase "$(INTDIR)\RCT_Client.obj"
	-@erase "$(INTDIR)\RCT_Client.pch"
	-@erase "$(INTDIR)\RCT_Client.res"
	-@erase "$(INTDIR)\RCT_ClientDoc.obj"
	-@erase "$(INTDIR)\RCT_ClientView.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\RCT_Client.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\RCT_Client.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\RCT_Client.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\RCT_Client.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\RCT_Client.pdb" /machine:I386 /out:"$(OUTDIR)\RCT_Client.exe" 
LINK32_OBJS= \
	"$(INTDIR)\MainFrm.obj" \
	"$(INTDIR)\RCT_Client.obj" \
	"$(INTDIR)\RCT_ClientDoc.obj" \
	"$(INTDIR)\RCT_ClientView.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\RCT_Client.res" \
	"$(INTDIR)\MySocket.obj"

"$(OUTDIR)\RCT_Client.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "RCT_Client - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\RCT_Client.exe"


CLEAN :
	-@erase "$(INTDIR)\MainFrm.obj"
	-@erase "$(INTDIR)\MySocket.obj"
	-@erase "$(INTDIR)\RCT_Client.obj"
	-@erase "$(INTDIR)\RCT_Client.pch"
	-@erase "$(INTDIR)\RCT_Client.res"
	-@erase "$(INTDIR)\RCT_ClientDoc.obj"
	-@erase "$(INTDIR)\RCT_ClientView.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\RCT_Client.exe"
	-@erase "$(OUTDIR)\RCT_Client.ilk"
	-@erase "$(OUTDIR)\RCT_Client.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\RCT_Client.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\RCT_Client.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\RCT_Client.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\RCT_Client.pdb" /debug /machine:I386 /out:"$(OUTDIR)\RCT_Client.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\MainFrm.obj" \
	"$(INTDIR)\RCT_Client.obj" \
	"$(INTDIR)\RCT_ClientDoc.obj" \
	"$(INTDIR)\RCT_ClientView.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\RCT_Client.res" \
	"$(INTDIR)\MySocket.obj"

"$(OUTDIR)\RCT_Client.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("RCT_Client.dep")
!INCLUDE "RCT_Client.dep"
!ELSE 
!MESSAGE Warning: cannot find "RCT_Client.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "RCT_Client - Win32 Release" || "$(CFG)" == "RCT_Client - Win32 Debug"
SOURCE=.\MainFrm.cpp

"$(INTDIR)\MainFrm.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\RCT_Client.pch"


SOURCE=..\RCT_Server\MySocket.cpp

"$(INTDIR)\MySocket.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\RCT_Client.pch"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\RCT_Client.cpp

"$(INTDIR)\RCT_Client.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\RCT_Client.pch"


SOURCE=.\RCT_Client.rc

"$(INTDIR)\RCT_Client.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\RCT_ClientDoc.cpp

"$(INTDIR)\RCT_ClientDoc.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\RCT_Client.pch"


SOURCE=.\RCT_ClientView.cpp

"$(INTDIR)\RCT_ClientView.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\RCT_Client.pch"


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "RCT_Client - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\RCT_Client.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\RCT_Client.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "RCT_Client - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\RCT_Client.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\RCT_Client.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

