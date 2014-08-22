#include <iostream>
#include <stack>
using namespace std;

int
main(void)
{
    stack<int> theStack;

    theStack.push(1);
    theStack.push(2);
    theStack.push(3);

    while (theStack.size())
    {
        cout << theStack.top() << " ";
        theStack.pop();
    }

    return 0;
}