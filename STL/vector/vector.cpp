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

    fruit.insert(fruit.begin(), "1st"); //��ǰ�����
    Walk(fruit);

    fruit.insert(fruit.end(), "last"); //
    Walk(fruit);

    fruit.insert(fruit.end(), 10, "repeat");    //�ظ�����
    Walk(fruit);


    //ɾ���ض���Ԫ��
    fruit.erase(fruit.begin());
    Walk(fruit);

    //ɾ���ض���Ԫ��
    fruit.erase(fruit.end() - 1);
    Walk(fruit);

    //ɾ���ռ�
    fruit.erase(fruit.begin(), fruit.end());
    Walk(fruit);

    fruit.clear();
    Walk(fruit);
}

int
main(void)
{
    vector<int> ary(10);    //����һ����ʼ��С��������10��Ԫ��, ����ʼΪ0

    Walk(ary);

    ary[0] = 0;         //[] �����кϷ��Լ��
    ary[1] = 1;
    ary[9] = 9; 
    ary.at(2) = 2;      //at ���кϷ��Լ��
    //ary.at(10) = 10;  //�׳��쳣
    Walk(ary);

    ary.push_back(10);
    ary.push_back(11);
    Walk(ary);

    ary.pop_back();
    Walk(ary);

    //ary.assign(10, 1);  //�������¸�ֵ
    //Walk(ary);

    ary.reserve(10);    //��Ԥ���ռ䣬����ı�size(), �п��ܻ�ı�capacity()
    Walk(ary);

    ary.resize(9, 1);  //��ı�size(), �п��ܸı�capacity
    Walk(ary);

    //ary.swap()

    test_insert();

    return 0;
}