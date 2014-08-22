#ifndef CGAME_H_F1A3358B_6B36_4f8e_941F_59F7950F2412

#define CGAME_H_F1A3358B_6B36_4f8e_941F_59F7950F2412

#include "CShape.h"

//BackGround
#define GAME_ROWS       20
#define GAME_COLS       12

#define GAME_WALL       1
#define GAME_NOT_WALL   0

class CGame
{
    friend class CUI;
public:
    CGame();
    
    virtual ~CGame();

public:
    void ResetBackGround(void);
    void CreateBrick(void);

    /*
    Function: change background according to brick, set specific position as wall
    */
    void ChangeBackGround(int wall);
    virtual const CShape *GetCurShape();
    virtual const CShape *GetNextShape();

    /*
    Function: whether the brick can be moved

    Return  : 0 cannot be moved, 1 can
    */
    virtual BOOL IsMovable(int x, int y);

    //是否可以移动，
    virtual BOOL MoveDown(void);
    virtual void MoveFix(void); //快速的下落

    virtual BOOL MoveLeft(void);

    virtual BOOL MoveRight(void);

    virtual BOOL MoveUp(void);  //Rotate  

    /*
    Function: fix the brick if can, else fix it.
    */
    virtual void FixBrick(void);

    /*
    Function: release those line already filled with bricks

    Return  : how many lines released.
    */
    virtual int ReleaseLine(void);

    virtual BOOL IsEmpty(int row);

    virtual BOOL IsReleasable(int row);

    virtual void MoveLines(int row);

    virtual void SetScore(int released);

    virtual BOOL IsGameOver(void);

protected:
    char m_BKG[GAME_ROWS][GAME_COLS];
    CShape *m_pCurShape;
    CShape *m_pNextShape;

    int m_X;    //当前图形的坐标
    int m_Y;

    BOOL m_IsFixed;
    BOOL m_IsPaused;
    BOOL m_IsOver;
    int m_nScore;

};

#endif