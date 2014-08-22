#include <time.h>
#include "CShape.h"

/////////////////////// CShape相关 ///////////////////////////////////////////
CShape::CShape()
{

}

CShape::CShape(int nIndex, const char *szData)
{
    m_nIndex = nIndex;
    memmove(m_Data, szData, sizeof(m_Data));
}

CShape::~CShape()
{
        
}

#ifdef USE_SMARTPTR

CSmartPtr4Shape<CShape>
CShape::BasicType[TOTAL_SHAPE] = {
    new CShape(0, "1111"
                  "0000"
                  "0000"
                  "0000"),  //
    new CShape(1, "0100"
                  "0100"
                  "0100"
                  "0100"),
    new CShape(2, "0000"
                  "0110"
                  "0110"
                  "0000")
                  //,  //
//     new CShape(3, "0111"
//                   "0010"
//                   "0010"
//                   "0000"),  //
//     new CShape(4, "0001"
//                   "0111"
//                   "0001"
//                   "0000"),
//     new CShape(5, "0010"
//                   "0010"
//                   "0111"
//                   "0000"),
//     new CShape(6, "0100"
//                   "0111"
//                   "0100"
//                   "0000")

};

#else   //USE_SMARTPTR  

CShape*
CShape::BasicType[TOTAL_SHAPE] = {
    new CShape(0, "1111"
                  "0000"
                  "0000"
                  "0000"),  //
    new CShape(1, "0100"
                  "0100"
                  "0100"
                  "0100"),
    new CShape(2, "0000"
                  "0110"
                  "0110"
                  "0000")
                  //,  //
//     new CShape(3, "0111"
//                   "0010"
//                   "0010"
//                   "0000"),  //
//     new CShape(4, "0001"
//                   "0111"
//                   "0001"
//                   "0000"),
//     new CShape(5, "0010"
//                   "0010"
//                   "0111"
//                   "0000"),
//     new CShape(6, "0100"
//                   "0111"
//                   "0100"
//                   "0000")
};

#endif

int 
CShape::Rotated[TOTAL_SHAPE] = {1, 0, //0, 1
                                2,    //2
                                //4, 5, 6, 3    // 3, 4, 5, 6
                    };

CShape *
CShape::GetRandom()
{
    return BasicType[rand() % TOTAL_SHAPE];
}

///////////////////// CRelease 相关 /////////////////////////////////////////
CRelease::CRelease()
{
#ifndef USE_SMARTPTR
    srand((unsigned)time(NULL));
#endif
}
CRelease::~CRelease()
{
    for (int i = 0; i < TOTAL_SHAPE; i++)
    {
    #ifndef USE_SMARTPTR
        delete CShape::BasicType[i];
    #endif
    }
}