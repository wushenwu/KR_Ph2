#include <iostream>
#include <vector>
#include <string>
using namespace std;

#pragma warning(disable: 4786)

void
Walk(vector<string> &ary)
{
    size_t size = ary.size();
    if (size)
    {
        cout << "\r\nsize: " << ary.size() << endl;
        cout << "Capacity: " << ary.capacity() << endl;
        cout << "front: " << ary.front() << endl;
        cout << "back : " << ary.back() << endl;
    }
    
    cout << "iterating...." << endl;
    vector<string>::iterator it;
    for (it = ary.begin(); it != ary.end(); it++)
    {
        cout << *it << " ";
    }
    
    cout << "\r\nreverse iterating..." << endl;
    vector<string>::reverse_iterator rit;
    for (rit = ary.rbegin(); rit != ary.rend(); rit++)
    {
        cout << *rit << " ";
    }
    
    cout << endl;
}


void
Walk(vector<int> &ary)
{
    size_t size = ary.size();
    if (size)
    {
        cout << "\r\nsize: " << ary.size() << endl;
        cout << "Capacity: " << ary.capacity() << endl;
        cout << "front: " << ary.front() << endl;
        cout << "back : " << ary.back() << endl;
    }
    
    cout << "iterating...." << endl;
    vector<int>::iterator it;
    for (it = ary.begin(); it != ary.end(); it++)
    {
        cout << *it << " ";
    }

    cout << "\r\nreverse iterating..." << endl;
    vector<int>::reverse_iterator rit;
    for (rit = ary.rbegin(); rit != ary.rend(); rit++)
    {
        cout << *rit << " ";
    }

    cout << endl;
}

void
test_insert(void)
{
    vector<string> fruit;

    fruit.push_back("peach");
    fruit.push_back("apple");
    fruit.push_back("kiwifruit");
    fruit.push_back("pear");
    fruit.push_back("starfruit");
    fruit.push_back("grape");

    Walk(fruit);

    fruit.insert(fruit.begin(), "1st"); //在前面插入
    Walk(fruit);

    fruit.insert(fruit.end(), "last"); //
    Walk(fruit);

    fruit.insert(fruit.end(), 10, "repeat");    //重复插入
    Walk(fruit);


    //删除特定的元素
    fruit.erase(fruit.begin());
    Walk(fruit);

    //删除特定的元素
    fruit.erase(fruit.end() - 1);
    Walk(fruit);

    //删除空间
    fruit.erase(fruit.begin(), fruit.end());
    Walk(fruit);

    fruit.clear();
    Walk(fruit);
}

int
main(void)
{
    vector<int> ary(10);    //给出一个初始大小，可容纳10个元素, 并初始为0

    Walk(ary);

    ary[0] = 0;         //[] 不进行合法性检查
    ary[1] = 1;
    ary[9] = 9; 
    ary.at(2) = 2;      //at 进行合法性检查
    //ary.at(10) = 10;  //抛出异常
    Walk(ary);

    ary.push_back(10);
    ary.push_back(11);
    Walk(ary);

    ary.pop_back();
    Walk(ary);

    //ary.assign(10, 1);  //进行重新赋值
    //Walk(ary);

    ary.reserve(10);    //仅预留空间，不会改变size(), 有可能会改变capacity()
    Walk(ary);

    ary.resize(9, 1);  //会改变size(), 有可能改变capacity
    Walk(ary);

    //ary.swap()

    test_insert();

    return 0;
}