#include <iostream>
#include <queue>
using namespace std;



int
main(void)
{
    queue<int> theQueue;

    theQueue.push(1);
    theQueue.push(2);
    theQueue.push(3);

    while (theQueue.size())
    {
        cout << theQueue.front() << " ";
        theQueue.pop();
    }

    return 0;
}