# Microsoft Developer Studio Generated NMAKE File, Based on COM.dsp
!IF "$(CFG)" == ""
CFG=COM - Win32 Debug
!MESSAGE No configuration specified. Defaulting to COM - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "COM - Win32 Release" && "$(CFG)" != "COM - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "COM.mak" CFG="COM - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "COM - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "COM - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
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

!IF  "$(CFG)" == "COM - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\COM.dll"


CLEAN :
	-@erase "$(INTDIR)\DllMain.obj"
	-@erase "$(INTDIR)\FastString.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\COM.dll"
	-@erase "$(OUTDIR)\COM.exp"
	-@erase "$(OUTDIR)\COM.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "COM_EXPORTS" /Fp"$(INTDIR)\COM.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\COM.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:no /pdb:"$(OUTDIR)\COM.pdb" /machine:I386 /def:".\FastString.def" /out:"$(OUTDIR)\COM.dll" /implib:"$(OUTDIR)\COM.lib" 
DEF_FILE= \
	".\FastString.def"
LINK32_OBJS= \
	"$(INTDIR)\DllMain.obj" \
	"$(INTDIR)\FastString.obj"

"$(OUTDIR)\COM.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "COM - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "..\VCCall\FastString.dll"


CLEAN :
	-@erase "$(INTDIR)\DllMain.obj"
	-@erase "$(INTDIR)\FastString.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\FastString.exp"
	-@erase "$(OUTDIR)\FastString.lib"
	-@erase "$(OUTDIR)\FastString.pdb"
	-@erase "..\VCCall\FastString.dll"
	-@erase "..\VCCall\FastString.ilk"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "COM_EXPORTS" /Fp"$(INTDIR)\COM.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\COM.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:yes /pdb:"$(OUTDIR)\FastString.pdb" /debug /machine:I386 /def:".\FastString.def" /out:"../VCCall/FastString.dll" /implib:"$(OUTDIR)\FastString.lib" /pdbtype:sept 
DEF_FILE= \
	".\FastString.def"
LINK32_OBJS= \
	"$(INTDIR)\DllMain.obj" \
	"$(INTDIR)\FastString.obj"

"..\VCCall\FastString.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("COM.dep")
!INCLUDE "COM.dep"
!ELSE 
!MESSAGE Warning: cannot find "COM.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "COM - Win32 Release" || "$(CFG)" == "COM - Win32 Debug"
SOURCE=.\DllMain.cpp

"$(INTDIR)\DllMain.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\FastString.cpp

"$(INTDIR)\FastString.obj" : $(SOURCE) "$(INTDIR)"



!ENDIF 

