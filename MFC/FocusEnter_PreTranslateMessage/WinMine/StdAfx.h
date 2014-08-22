// stdafx.h : include file for standard system include files,
//  or project specific include files that are used frequently, but
//      are changed infrequently
//

#if !defined(AFX_STDAFX_H__28C814C7_B574_4979_AF1D_C3D76A238755__INCLUDED_)
#define AFX_STDAFX_H__28C814C7_B574_4979_AF1D_C3D76A238755__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#define VC_EXTRALEAN		// Exclude rarely-used stuff from Windows headers

#include <afxwin.h>         // MFC core and standard components
#include <afxext.h>         // MFC extensions
#include <afxdisp.h>        // MFC Automation classes
#include <afxdtctl.h>		// MFC support for Internet Explorer 4 Common Controls
#ifndef _AFX_NO_AFXCMN_SUPPORT
#include <afxcmn.h>			// MFC support for Windows Common Controls
#endif // _AFX_NO_AFXCMN_SUPPORT

//////////////////////////////////////////////////////////////////////////
#define ID_START 0xF000

#define CXICON          32
#define CYICON          32
#define BLOCK_WIDTH     CXICON  
#define BLOCK_HEIGHT    CYICON
#define COLS            20
#define ROWS            20

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_STDAFX_H__28C814C7_B574_4979_AF1D_C3D76A238755__INCLUDED_)
