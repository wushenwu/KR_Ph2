# Microsoft Developer Studio Generated NMAKE File, Based on Reflect.dsp
!IF "$(CFG)" == ""
CFG=Reflect - Win32 Debug
!MESSAGE No configuration specified. Defaulting to Reflect - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Reflect - Win32 Release" && "$(CFG)" != "Reflect - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Reflect.mak" CFG="Reflect - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Reflect - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "Reflect - Win32 Debug" (based on "Win32 (x86) Application")
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

!IF  "$(CFG)" == "Reflect - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\Reflect.exe"


CLEAN :
	-@erase "$(INTDIR)\MyBTN.obj"
	-@erase "$(INTDIR)\myedit.obj"
	-@erase "$(INTDIR)\Reflect.obj"
	-@erase "$(INTDIR)\Reflect.pch"
	-@erase "$(INTDIR)\Reflect.res"
	-@erase "$(INTDIR)\ReflectDlg.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\Reflect.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\Reflect.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\Reflect.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Reflect.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\Reflect.pdb" /machine:I386 /out:"$(OUTDIR)\Reflect.exe" 
LINK32_OBJS= \
	"$(INTDIR)\Reflect.obj" \
	"$(INTDIR)\ReflectDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\Reflect.res" \
	"$(INTDIR)\MyBTN.obj" \
	"$(INTDIR)\myedit.obj"

"$(OUTDIR)\Reflect.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Reflect - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\Reflect.exe"


CLEAN :
	-@erase "$(INTDIR)\MyBTN.obj"
	-@erase "$(INTDIR)\myedit.obj"
	-@erase "$(INTDIR)\Reflect.obj"
	-@erase "$(INTDIR)\Reflect.pch"
	-@erase "$(INTDIR)\Reflect.res"
	-@erase "$(INTDIR)\ReflectDlg.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\Reflect.exe"
	-@erase "$(OUTDIR)\Reflect.ilk"
	-@erase "$(OUTDIR)\Reflect.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\Reflect.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ   /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\Reflect.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Reflect.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\Reflect.pdb" /debug /machine:I386 /out:"$(OUTDIR)\Reflect.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\Reflect.obj" \
	"$(INTDIR)\ReflectDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\Reflect.res" \
	"$(INTDIR)\MyBTN.obj" \
	"$(INTDIR)\myedit.obj"

"$(OUTDIR)\Reflect.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("Reflect.dep")
!INCLUDE "Reflect.dep"
!ELSE 
!MESSAGE Warning: cannot find "Reflect.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "Reflect - Win32 Release" || "$(CFG)" == "Reflect - Win32 Debug"
SOURCE=.\MyBTN.cpp

"$(INTDIR)\MyBTN.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Reflect.pch"


SOURCE=.\myedit.cpp

"$(INTDIR)\myedit.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Reflect.pch"


SOURCE=.\Reflect.cpp

"$(INTDIR)\Reflect.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Reflect.pch"


SOURCE=.\Reflect.rc

"$(INTDIR)\Reflect.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\ReflectDlg.cpp

"$(INTDIR)\ReflectDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Reflect.pch"


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "Reflect - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\Reflect.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\Reflect.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "Reflect - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\Reflect.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ   /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\Reflect.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

