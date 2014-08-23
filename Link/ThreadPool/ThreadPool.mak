# Microsoft Developer Studio Generated NMAKE File, Based on ThreadPool.dsp
!IF "$(CFG)" == ""
CFG=ThreadPool - Win32 Debug
!MESSAGE No configuration specified. Defaulting to ThreadPool - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "ThreadPool - Win32 Release" && "$(CFG)" != "ThreadPool - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ThreadPool.mak" CFG="ThreadPool - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ThreadPool - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "ThreadPool - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "ThreadPool - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\ThreadPool.exe"


CLEAN :
	-@erase "$(INTDIR)\IWorkItemBase.obj"
	-@erase "$(INTDIR)\MyThreadPool.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\ThreadPool.obj"
	-@erase "$(INTDIR)\ThreadPool.pch"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\ThreadPool.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /Fp"$(INTDIR)\ThreadPool.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ThreadPool.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:no /pdb:"$(OUTDIR)\ThreadPool.pdb" /machine:I386 /out:"$(OUTDIR)\ThreadPool.exe" 
LINK32_OBJS= \
	"$(INTDIR)\IWorkItemBase.obj" \
	"$(INTDIR)\MyThreadPool.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\ThreadPool.obj"

"$(OUTDIR)\ThreadPool.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ThreadPool - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\ThreadPool.exe" "$(OUTDIR)\ThreadPool.bsc"


CLEAN :
	-@erase "$(INTDIR)\IWorkItemBase.obj"
	-@erase "$(INTDIR)\IWorkItemBase.sbr"
	-@erase "$(INTDIR)\MyThreadPool.obj"
	-@erase "$(INTDIR)\MyThreadPool.sbr"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\StdAfx.sbr"
	-@erase "$(INTDIR)\ThreadPool.obj"
	-@erase "$(INTDIR)\ThreadPool.pch"
	-@erase "$(INTDIR)\ThreadPool.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\ThreadPool.bsc"
	-@erase "$(OUTDIR)\ThreadPool.exe"
	-@erase "$(OUTDIR)\ThreadPool.ilk"
	-@erase "$(OUTDIR)\ThreadPool.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\ThreadPool.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ThreadPool.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\IWorkItemBase.sbr" \
	"$(INTDIR)\MyThreadPool.sbr" \
	"$(INTDIR)\StdAfx.sbr" \
	"$(INTDIR)\ThreadPool.sbr"

"$(OUTDIR)\ThreadPool.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:yes /pdb:"$(OUTDIR)\ThreadPool.pdb" /debug /machine:I386 /out:"$(OUTDIR)\ThreadPool.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\IWorkItemBase.obj" \
	"$(INTDIR)\MyThreadPool.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\ThreadPool.obj"

"$(OUTDIR)\ThreadPool.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("ThreadPool.dep")
!INCLUDE "ThreadPool.dep"
!ELSE 
!MESSAGE Warning: cannot find "ThreadPool.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "ThreadPool - Win32 Release" || "$(CFG)" == "ThreadPool - Win32 Debug"
SOURCE=.\IWorkItemBase.cpp

!IF  "$(CFG)" == "ThreadPool - Win32 Release"


"$(INTDIR)\IWorkItemBase.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ThreadPool.pch"


!ELSEIF  "$(CFG)" == "ThreadPool - Win32 Debug"


"$(INTDIR)\IWorkItemBase.obj"	"$(INTDIR)\IWorkItemBase.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ThreadPool.pch"


!ENDIF 

SOURCE=.\MyThreadPool.cpp

!IF  "$(CFG)" == "ThreadPool - Win32 Release"


"$(INTDIR)\MyThreadPool.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ThreadPool.pch"


!ELSEIF  "$(CFG)" == "ThreadPool - Win32 Debug"


"$(INTDIR)\MyThreadPool.obj"	"$(INTDIR)\MyThreadPool.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ThreadPool.pch"


!ENDIF 

SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "ThreadPool - Win32 Release"

CPP_SWITCHES=/nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /Fp"$(INTDIR)\ThreadPool.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\ThreadPool.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "ThreadPool - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\ThreadPool.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\StdAfx.sbr"	"$(INTDIR)\ThreadPool.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 

SOURCE=.\ThreadPool.cpp

!IF  "$(CFG)" == "ThreadPool - Win32 Release"


"$(INTDIR)\ThreadPool.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ThreadPool.pch"


!ELSEIF  "$(CFG)" == "ThreadPool - Win32 Debug"


"$(INTDIR)\ThreadPool.obj"	"$(INTDIR)\ThreadPool.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\ThreadPool.pch"


!ENDIF 


!ENDIF 

