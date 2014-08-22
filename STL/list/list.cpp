#include <iostream>
#include <list>
using namespace std;

void
Walk(list<int> &theList)
{
    size_t size = theList.size();
    if (size)
    {
        cout << "\r\nsize: " << theList.size() << endl;
        cout << "Capacity: " << theList.max_size() << endl;
        cout << "front: " << theList.front() << endl;
        cout << "back : " << theList.back() << endl;
    }
    
    cout << "iterating...." << endl;
    list<int>::iterator it;
    for (it = theList.begin(); it != theList.end(); it++)
    {
        cout << *it << " ";
    }
    
    cout << "\r\nreverse iterating..." << endl;
    list<int>::reverse_iterator rit;
    for (rit = theList.rbegin(); rit != theList.rend(); rit++)
    {
        cout << *rit << " ";
    }
    
    cout << endl;
}

int
main(void)
{
    list<int> theList;
    
    theList.push_back(0);
    theList.push_back(1);
    Walk(theList);
    
    theList.push_front(2);
    theList.push_front(3);
    Walk(theList);

    //theList.assign(10, 1);
    //Walk(theList);

    theList.insert(theList.begin(), 3, 2);  //����3��2
    Walk(theList);

    //theList.remove(2);  //ɾ������2
    //Walk(theList);

    theList.sort();     //�����Ա��Ƴ�������ȵ�Ԫ��
    Walk(theList);

    theList.unique();   //����ɾ��������ȵ�Ԫ��
    Walk(theList);

    //splice

    //merge

    //



    return 0;
}
