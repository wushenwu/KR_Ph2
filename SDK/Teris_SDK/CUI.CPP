#include "cui.h"

//////////////////////////////////////////////////////////////////////////
CUI::CUI(HINSTANCE hInst, HWND hWnd)
{
    m_pGame = new CGame;
    if (NULL == m_pGame)
    {
        return;
    }

    m_hIcon = LoadIcon(hInst, (LPCTSTR)IDI_ICON2);
    m_hWnd = hWnd;

    StartGame();
}

CUI::~CUI()
{
    if (m_pGame != NULL)
    {
        delete m_pGame;
        m_pGame = NULL;
    }
}

void
CUI::StartGame(void)
{
    //ResetBackGround(); //已经在m_Game的构造中自动完成

    DrawBackGround(); 
    
    m_pGame->CreateBrick();

    //可以设置定时器, 不设置回调，让主窗口WM_TIMER消息处理
    SetTimer(m_hWnd, ID_TIMER1, 500, NULL);
}

void
CUI::DrawBackGround(void)
{
    PAINTSTRUCT ps;
    HDC hDC = BeginPaint(m_hWnd, &ps);

    int i, j;    
    for (i = 0; i < GAME_ROWS; i++)
    {
        for (j = 0; j < GAME_COLS; j++)
        {
            if (GAME_WALL == m_pGame->m_BKG[i][j] - '0' )
            {
                DrawIcon(hDC, j * ICON_SIZE, i * ICON_SIZE, m_hIcon);
            }//wall
            else
            {
                
            }//not wall
        }
    }

    DrawBrick(hDC, m_pGame->GetCurShape());

    DisplayScore(hDC);

    EndPaint(m_hWnd, &ps);
}

void
CUI::DrawBrick(HDC hDC, const CShape *pShape)
{
    if (NULL == pShape)
    {
        return;
    }

    int i, j;    
    for (i = 0; i < BRICK_ROWS; i++)
    {
        for (j = 0; j < BRICK_COLS; j++)
        {
            if (GAME_WALL == pShape->m_Data[i][j] - '0' )
            {
                DrawIcon(hDC, (m_pGame->m_X + j) * ICON_SIZE,
                              (m_pGame->m_Y + i) * ICON_SIZE, 
                              m_hIcon
                              );
            }//wall
            else
            {
                
            }//not wall
        }
    }
}

void
CUI::DisplayScore(HDC hDC)
{
    RECT rt;
    rt.top = 0;
    rt.left = (GAME_COLS) * ICON_SIZE;
    rt.bottom = 10 * ICON_SIZE;
    rt.right  = rt.left + 10 * ICON_SIZE;

    TCHAR szText[MAXBYTE];
    wsprintf(szText, "Score: %d", m_pGame->m_nScore);

    DrawText(hDC, szText, _tcslen(szText), &rt, DT_CENTER);
}

void
CUI::SetInvalid(int x,      //移动后的坐标
                int y, 
                int nWidth, //变化区域的长、宽
                int nHeight)
{
    RECT rc;

    //注意是像素
    rc.top = y * ICON_SIZE;
    rc.left = x * ICON_SIZE;
    rc.bottom = rc.top + nHeight * ICON_SIZE;
    rc.right = rc.left + nWidth * ICON_SIZE;

    InvalidateRect(m_hWnd, &rc, TRUE);
    UpdateWindow(m_hWnd);
}

void
CUI::GetInput(char ch)
{
    ch = toupper(ch);

    if (m_pGame->m_IsOver)
    {
        KillTimer(m_hWnd, ID_TIMER1);
        MessageBox(NULL, TEXT("Game Over"), TEXT("Alert"), MB_OK); 
        
        if (IDYES == MessageBox(NULL, TEXT("Continue ?"), TEXT("Alert"), MB_YESNO))
        {
            delete m_pGame;

            m_pGame = new CGame;
            StartGame();
        }
        else
        {
            exit(-1);
        }

        return;
    }
    
    if (m_pGame->m_IsPaused
        && (ch != 'R'))
    {
        return;
    }
   
    switch (ch)
    {
    case 'W':           //变形  
        {
            if (m_pGame->MoveUp())
            {
                SetInvalid(m_pGame->m_X,      //x
                           m_pGame->m_Y,      //y
                           BRICK_COLS,      //width
                           BRICK_ROWS);     //height
            }

            break;
        }
        
    case 'S':
        {
        #if 0  //快速移动
            m_pGame->MoveFix();

            //这里已经完成了消行，可以对整个内部区域进行重绘
            SetInvalid(1,
                        0,
                        GAME_COLS - 2,
                        GAME_ROWS - 1
                           );

            //也需要对分数区域进行重绘
            SetInvalid(GAME_COLS,
                        0,
                        10,
                        10);

        #else 

            if (m_pGame->MoveDown())
            {
                SetInvalid(m_pGame->m_X,
                            m_pGame->m_Y - 1,
                            BRICK_COLS,
                            BRICK_ROWS + 1);
            }
            else
            {
                //这里已经完成了消行，可以对整个内部区域进行重绘
                SetInvalid(1,
                           0,
                           GAME_COLS - 2,
                           GAME_ROWS - 1
                           );

                //也需要对分数区域进行重绘
                SetInvalid(GAME_COLS,
                           0,
                           10,
                           10);
            }
        #endif
            break;
        }
        
    case 'A':
        {
            if (m_pGame->MoveLeft())
            {
                SetInvalid(m_pGame->m_X,  //移动后的坐标
                           m_pGame->m_Y,
                           BRICK_COLS + 1,
                           BRICK_ROWS);
            }
            
            break;
        }
        
    case 'D':
        {
            if (m_pGame->MoveRight())
            {
                SetInvalid(m_pGame->m_X - 1,
                           m_pGame->m_Y,
                           BRICK_COLS + 1,
                           BRICK_ROWS);
            }
            
            break;
        }
        
    case 'P':
        {
            m_pGame->m_IsPaused = TRUE;
            break;
        }
        
    case 'R':
        {                    
            m_pGame->m_IsPaused = FALSE;            
            break;
        }
    }//end for switch  
    
    //这样将全部客户区设为无效区域，会出现明显的闪烁问题。
    //InvalidateRect(m_hWnd, NULL, TRUE);
    //可由各部分自主的划分尽可能小的无效区域
}