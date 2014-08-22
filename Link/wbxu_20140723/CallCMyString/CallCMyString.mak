# Microsoft Developer Studio Generated NMAKE File, Based on CallCMyString.dsp
!IF "$(CFG)" == ""
CFG=CallCMyString - Win32 Debug
!MESSAGE No configuration specified. Defaulting to CallCMyString - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "CallCMyString - Win32 Release" && "$(CFG)" != "CallCMyString - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "CallCMyString.mak" CFG="CallCMyString - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "CallCMyString - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "CallCMyString - Win32 Debug" (based on "Win32 (x86) Console Application")
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

!IF  "$(CFG)" == "CallCMyString - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\CallCMyString.exe"


CLEAN :
	-@erase "$(INTDIR)\CallCMyString.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\CallCMyString.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /Fp"$(INTDIR)\CallCMyString.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\CallCMyString.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib  kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:no /pdb:"$(OUTDIR)\CallCMyString.pdb" /machine:I386 /out:"$(OUTDIR)\CallCMyString.exe" 
LINK32_OBJS= \
	"$(INTDIR)\CallCMyString.obj"

"$(OUTDIR)\CallCMyString.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "CallCMyString - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "..\Bin\Debug\CallCMyString.exe"


CLEAN :
	-@erase "$(INTDIR)\CallCMyString.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\CallCMyString.pdb"
	-@erase "..\Bin\Debug\CallCMyString.exe"
	-@erase "..\Bin\Debug\CallCMyString.ilk"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MLd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /Fp"$(INTDIR)\CallCMyString.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ  /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\CallCMyString.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib  kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:yes /pdb:"$(OUTDIR)\CallCMyString.pdb" /debug /machine:I386 /out:"../Bin/Debug/CallCMyString.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\CallCMyString.obj"

"..\Bin\Debug\CallCMyString.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("CallCMyString.dep")
!INCLUDE "CallCMyString.dep"
!ELSE 
!MESSAGE Warning: cannot find "CallCMyString.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "CallCMyString - Win32 Release" || "$(CFG)" == "CallCMyString - Win32 Debug"
SOURCE=.\CallCMyString.cpp

"$(INTDIR)\CallCMyString.obj" : $(SOURCE) "$(INTDIR)"



!ENDIF 

