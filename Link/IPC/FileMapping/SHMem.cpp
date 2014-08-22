/*
Using Shared Memory in a Dynamic-Link Library
This section shows how the DLL entry-point function can use a file-mapping object 
    to set up memory that can be shared by processes that load the DLL.
    The shared DLL memory persists only as long as the DLL is loaded. 

The example uses file mapping to map a block of named shared memory into 
    the virtual address space of each process that loads the DLL. 
    To do this, the entry-point function must: 

    1)Call the CreateFileMapping function to get a handle to a file-mapping object. The first process that loads the DLL creates the file-mapping object. Subsequent processes open a handle to the existing object. For more information, see Creating a File-Mapping Object. 
    2)Call the MapViewOfFile function to map a view into the virtual address space. This enables the process to access the shared memory. For more information, see Creating a File View. 


// The DLL entry-point function sets up shared memory using 
// a named file-mapping object. 

Note that the shared memory can be mapped to a different address in each process. For this reason, each process has its own instance of the lpvMem parameter, which is declared as a global variable so that it is available to all DLL functions. The example assumes that the DLL global data is not shared, so each process that loads the DLL has its own instance of lpvMem. 
  
In this example, the shared memory is released when the last handle to the file-mapping object is closed. To create persistent shared memory, a DLL can create a detached process (see CreateProcess) when the DLL is first loaded. If this detached process uses the DLL and does not terminate, it has a handle to the file-mapping object that prevents the shared memory from being released.

*/

#include <windows.h> 
#include <memory.h> 
 
#define SHMEMSIZE 4096 
 
static LPVOID lpvMem = NULL; // pointer to shared memory
 
BOOL DllMain(HINSTANCE hinstDLL,  // DLL module handle
    DWORD fdwReason,              // reason called 
    LPVOID lpvReserved)           // reserved 
{ 
    HANDLE hMapObject = NULL;  // handle to file mapping
    BOOL fInit, fIgnore; 
 
    switch (fdwReason) 
    { 
        // The DLL is loading due to process 
        // initialization or a call to LoadLibrary. 
 
          case DLL_PROCESS_ATTACH: 
 
            // Create a named file mapping object.
 
            hMapObject = CreateFileMapping( 
                INVALID_HANDLE_VALUE, // use paging file
                NULL,                 // no security attributes
                PAGE_READWRITE,       // read/write access
                0,                    // size: high 32-bits
                SHMEMSIZE,            // size: low 32-bits
                "dllmemfilemap");     // name of map object
            if (hMapObject == NULL) 
                return FALSE; 
 
            // The first process to attach initializes memory.
 
            fInit = (GetLastError() != ERROR_ALREADY_EXISTS); 
 
            // Get a pointer to the file-mapped shared memory.
 
            lpvMem = MapViewOfFile( 
                hMapObject,     // object to map view of
                FILE_MAP_WRITE, // read/write access
                0,              // high offset:  map from
                0,              // low offset:   beginning
                0);             // default: map entire file
            if (lpvMem == NULL) 
                return FALSE; 
 
            // Initialize memory if this is the first process.
 
            if (fInit) 
                memset(lpvMem, '\0', SHMEMSIZE); 
 
            break; 
 
        // The attached process creates a new thread. 
 
        case DLL_THREAD_ATTACH: 
            break; 
 
        // The thread of the attached process terminates.
 
        case DLL_THREAD_DETACH: 
            break; 
 
        // The DLL is unloading from a process due to 
        // process termination or a call to FreeLibrary. 
 
        case DLL_PROCESS_DETACH: 
 
            // Unmap shared memory from the process's address space.
 
            fIgnore = UnmapViewOfFile(lpvMem); 
 
            // Close the process's handle to the file-mapping object.
 
            fIgnore = CloseHandle(hMapObject); 
 
            break; 
 
        default: 
          break; 
     } 
 
    return TRUE; 
    UNREFERENCED_PARAMETER(hinstDLL); 
    UNREFERENCED_PARAMETER(lpvReserved); 
} 
 
// SetSharedMem sets the contents of shared memory. 
 
VOID SetSharedMem(LPTSTR lpszBuf) 
{ 
    LPTSTR lpszTmp; 
 
    // Get the address of the shared memory block.
 
    lpszTmp = (LPTSTR) lpvMem; 
 
    // Copy the null-terminated string into shared memory.
 
    while (*lpszBuf) 
        *lpszTmp++ = *lpszBuf++; 
    *lpszTmp = '\0'; 
} 
 
// GetSharedMem gets the contents of shared memory. 
 
VOID GetSharedMem(LPTSTR lpszBuf, DWORD cchSize) 
{ 
    LPTSTR lpszTmp; 
 
    // Get the address of the shared memory block.
 
    lpszTmp = (LPTSTR) lpvMem; 
 
    // Copy from shared memory into the caller's buffer.
 
    while (*lpszTmp && --cchSize) 
        *lpszBuf++ = *lpszTmp++; 
    *lpszBuf = '\0'; 
} 
