#include "CGame.h"

//////////////////////////////////////////////////////////////////////////
CGame::CGame()
{
    m_pCurShape = NULL;
    m_pNextShape = NULL;
    
    m_X = GAME_COLS/ 2 - 2;    //当前图形的坐标
    m_Y = 0;

    m_IsFixed = FALSE;
    m_IsPaused = FALSE;
    m_IsOver = FALSE;
    m_nScore = 0;

    ResetBackGround();   
}

CGame::~CGame()
{
    
}

const CShape *
CGame::GetCurShape()
{
    return m_pCurShape;
}

const CShape *
CGame::GetNextShape()
{
    return m_pNextShape;
}

void
CGame::ResetBackGround(void)
{
    int i, j;
    
    for (i = 0; i < GAME_ROWS; i++)
    {
        for (j = 0; j < GAME_COLS; j++)
        {
            if ((0 == j)                    //1st colum
                || ((GAME_COLS - 1) == j)   //last colum
                || ((GAME_ROWS - 1) == i)   //last line
                )
            {
                m_BKG[i][j] = GAME_WALL + '0';
            }//wall
            else
            {
                m_BKG[i][j] = GAME_NOT_WALL + '0';
            }//not wall            
        }//end for cols
    }//end for rows
}

void
CGame::CreateBrick(void)
{
    //now use rand() to get a brick from g_Brick[][BRICK_COLUS]
    //brick is determined by (type, rotate)
    
    m_pCurShape = m_pNextShape ? m_pNextShape : CShape::GetRandom();
    m_X = GAME_COLS/ 2 - 2;    //当前图形的坐标
    m_Y = 0;
    m_IsFixed = FALSE;

    m_pNextShape = CShape::GetRandom(); 
    
    if (IsGameOver())
    {
       m_IsOver = TRUE; 
    }
}   

/*
Function: change background according to brick, set specific position as wall
*/
void
CGame::ChangeBackGround(int wall)
{
    int i, j;
    
    for (i = 0; i < BRICK_ROWS; i++)
    {
        for (j = 0; j < BRICK_COLS; j++)
        {
            if (GAME_WALL == m_pCurShape->m_Data[i][j] - '0')
            {
                //change g_BackGround
                m_BKG[m_Y + i][m_X + j] = wall + '0';
            }
        }
    }//end for change g_BackGround
}

BOOL
CGame::MoveDown(void)
{
    int x, y;
    x = 0;
    y = 1;
    
    if (IsMovable(x, y))
    {
        m_Y += 1;
        return TRUE;
    }
    else
    {
        FixBrick();
        return FALSE;
    }
}

void
CGame::MoveFix(void)
{
    int x, y;
    x = 0;
    y = 1;
    
    while (IsMovable(x, y))
    {
        m_Y += 1;
    }
    
    FixBrick();
}

BOOL
CGame::MoveLeft(void)
{
    int x, y;
    x = -1;
    y = 0;
    
    if (IsMovable(x, y))
    {
        m_X -= 1;
        return TRUE;
    } 
    
    return FALSE;
}

BOOL
CGame::MoveRight(void)
{
    int x, y;
    x = 1;
    y = 0;
    
    if (IsMovable(x, y))
    {
        m_X += 1;
        return TRUE;
    } 
    
    return FALSE;
}

BOOL
CGame::MoveUp(void)
{
    CShape *pOldShape = m_pCurShape;

    m_pCurShape = CShape::BasicType[CShape::Rotated[m_pCurShape->m_nIndex]];

    
    if (!IsMovable(0, 0))
    {
        m_pCurShape = pOldShape; 
        return FALSE;
    }

    return TRUE;
}


BOOL
CGame::IsMovable(int x, int y)
{
    int i, j;
    
    if (m_IsFixed)
    {
        return FALSE;
    }
    
    for (i = 0; i < BRICK_ROWS; i++)
    {
        for (j = 0; j < BRICK_COLS; j++)
        {
            if (GAME_WALL == m_pCurShape->m_Data[i][j] - '0')
            {
                if (GAME_WALL == m_BKG[m_Y + i + y][m_X + j + x] - '0')
                {
                    return FALSE;
                }
            }
        }
    }
    
    return TRUE;
}

/*
Function: fix the brick if can, else fix it.
*/
void
CGame::FixBrick(void)
{
    int released = 0;

    //cannot move anymore
    m_IsFixed = TRUE;

    ChangeBackGround(GAME_WALL);

    //now consider release line
    released = ReleaseLine();

    if (0 != released)
    {
        SetScore(released);
    }

    //now Create New Brick
    CreateBrick();
}

/*
Function: release those line already filled with bricks

Return  : how many lines released.
*/
int
CGame::ReleaseLine(void)
{
    int nreleased = 0;  //how many lines released
    
    for (int row = GAME_ROWS - 2; row > 0; row-- )
    {
        //if this row is empty, then there is no need to go on.
        if (IsEmpty(row))
        {
            break;
        }
        
        //whether this line can be released.
        if (IsReleasable(row))
        {
            nreleased += 1;
            
            MoveLines(row);
            
            //need to step back to judge again for this row
            row += 1;                      
        }        
    }

    return nreleased;
}

/*
Function: whether this row is empty
*/
BOOL
CGame::IsEmpty(int row)
{
    for (int j = 1; j < GAME_COLS - 1; j++)
    {
        //if there is wall existing
        if (GAME_WALL == m_BKG[row][j] - '0')
        {
            return FALSE;
        }
    }

    return TRUE;
}

/*
Function: whether this row can be released.
*/
BOOL     
CGame::IsReleasable(int row)
{
    for (int col = 1; col < GAME_COLS - 1; col++)
    {
        //if GAME_NOT_WALL exists within this line, then cannot be released
        if (GAME_NOT_WALL == m_BKG[row][col] - '0')
        {
            return FALSE;
        }
    }

    return TRUE;
}

/*
Function: move rows b4 this row down

*/
void
CGame::MoveLines(int row)
{
    int i, j;
    
    for (i = row; i > 0; i--)
    {
        if (IsEmpty(i))
        {
            break;
        }
        
        for (j = 1; j < GAME_COLS - 1; j++)
        {
            m_BKG[i][j] = m_BKG[i - 1][j];
            
            /*
            //can also be done like this
            //just move GAME_NOT_WALL, those GAME_WALL keeps unchanged
            if (GAME_NOT_WALL == g_BackGround[i - 1][j])
            {
            g_BackGround[i][j] = g_BackGround[i - 1][j];
            }
            */
        }
    }//end for row
}

void
CGame::SetScore(int released)
{
    m_nScore += (GAME_COLS - 2) * released;
}

BOOL
CGame::IsGameOver(void)
{
    int x, y;
    
    x = 0;
    y = 1;
    
    if (IsMovable(x, y))
    {
        
        return FALSE;
    }
    
    return TRUE;
}


