#ifndef CUI_H_ADB2D571_A541_46dc_B301_461B8808994D

#define CUI_H_ADB2D571_A541_46dc_B301_461B8808994D

#include <windows.h>
#include "CGame.h"
#include "resource.h"

#define ICON_SIZE   32

#define ID_TIMER1   1

class CUI
{
public:
    CUI(HINSTANCE hInst, HWND hWnd);

    virtual ~CUI();

public:
    void StartGame(void);
    void GetInput(char ch);
    virtual void DrawBackGround(void);
    virtual void DrawBrick(HDC hDC, const CShape *pShape);
    virtual void DisplayScore(HDC hDC);
    virtual void SetInvalid(int x, int y, int nWidth, int nHeight);
    
protected:
    CGame *m_pGame;
    HWND  m_hWnd;
    HICON m_hIcon;
};

#endif