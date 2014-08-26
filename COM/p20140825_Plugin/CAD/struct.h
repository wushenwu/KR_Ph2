#ifndef STRUCT_H_XX
#define STRUCT_H_XX

#include <afxwin.h>

struct tagPen
{
    tagPen(int nStyle = PS_SOLID, int nWidth = 1, int nColor = 0)
    {
        m_nStyle = nStyle;
        m_nWidth = nWidth;
        m_Color = nColor;
    }
    
    int m_nStyle;
    int m_nWidth;
    COLORREF m_Color;
};

struct tagBrush
{
    tagBrush(BOOL isSolid = FALSE, int nColor = 0)
    {
        m_IsSolid = isSolid;
        m_Color = nColor;
    }
    
    BOOL m_IsSolid;
    COLORREF m_Color;
};
#endif