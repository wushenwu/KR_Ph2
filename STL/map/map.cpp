#pragma warning(disable: 4786)

#include <iostream>
#include <string>
#include <map>
using namespace std;

void
Walk(map<string, int> &theContainer)
{
    size_t size = theContainer.size();
    if (size)
    {
        cout << "\r\nsize: " << theContainer.size() << endl;
        cout << "Capacity: " << theContainer.max_size() << endl;
    }
    
    cout << "iterating...." << endl;
    map<string, int>::iterator it;
    for (it = theContainer.begin(); it != theContainer.end(); it++)
    {
        cout << "( " << it->first << ", " << it->second << " ) ";
    }
    
    cout << "\r\nreverse iterating..." << endl;
    map<string, int>::reverse_iterator rit;
    for (rit = theContainer.rbegin(); rit != theContainer.rend(); rit++)
    {
        cout << "( " << rit->first << ", " << rit->second << " ) ";
    }
    
    cout << endl;
}

void
readitems(map<string, int> &theContainer)
{
    string word;
    int nVal = 0;
    int nCount = 0;
    while (nCount++ != 5)
    {
        cin >> word >> nVal;
        theContainer[word] += nVal;
    }
}

void
test_insert(void)
{
    ///////////  Insert  /////////////////////////////////////////
    map<string, int> theMap;
    
    //1. []
    theMap["t1"] = 100;
    Walk(theMap);
    
    //  typedef pair<const Key, T> value_type
    //2.pair<iterator, bool> insert(const value_type &val);
    //����һ��value_type, make_pair Ҳ����
    pair<string, int> pData("t2", 200);     
    
    typedef pair<map<string, int>::iterator, bool> IterReturn;
    
    IterReturn iterRetrn = theMap.insert(pData);
    if (iterRetrn.second)   //����bool�ж�
    {
        //�������Ĳ�����
        cout << "insert into\r\n";
    }
    else
    {
        //ԭ�Ѵ��ڸ�Key
        cout << "already exist\r\n";
    }
    
    iterRetrn = theMap.insert(pData);
    if (iterRetrn.second)   //����bool�ж�
    {
        //�������Ĳ�����
        cout << "insert into\r\n";
    }
    else
    {
        //ԭ�Ѵ��ڸ�Key
        cout << "already exist\r\n";
    }
    
    Walk(theMap);


    //3.����[] ��insert�Ĺ�ϵ
    //[]��ֻ��insert()��һ�ַ��������ʽ,
    //m[k]�Ľ���ȼ���(*(m.insert(makepair(k,V())).first)).second
    theMap["t3"] = 300;
    Walk(theMap);
    //makepair(k, V()) �ǻ��value_type
    //m.insert(value_type &val) �����pair<iterator, bool)
    //��first ����iterator
    //*iterator.second ����iterator->second����value
    (*(theMap.insert(make_pair(string("t3"), 0))).first).second = 400;
    Walk(theMap);
    
}

int
main(void)
{
    string s1 = "hello world!";
    cout << s1.size() << endl;
    cout << s1.data() << endl;
    cout << sizeof(s1) << endl;
    cout << strlen(s1.data()) << endl;

    test_insert();


    map<string, int> theMap;

    //����map��key_type, mapped_type, value_type
    //pair<key, mapped_type>  ----> value_type

    theMap["1st"] = 1;  //Ϊ1st��������
    theMap["2nd"] = 2;
    theMap["3rd"] = 3;
    theMap["3rd"] = 4;  //�޸�

    Walk(theMap);

    map<string, int>::iterator iter = theMap.find("3rd");
    if (iter != theMap.end())
    {
        cout << iter->second << endl;

        theMap.erase("3rd");    //ɾ��ָ��key��Ԫ��
        Walk(theMap);
    }

    theMap.erase(theMap.begin());   //ɾ��ָ����Ԫ��
    Walk(theMap);


    //////////////////////////////////////////////////////////////////////////
    map<string, int> theBook;
    readitems(theBook);
    
    int nTotal = 0;
    map<string, int>::iterator it;

    for (it = theBook.begin(); it != theBook.end(); it++)
    {
        nTotal += it->second;
        cout << "( " << it->first << ", " << it->second << " ) ";
    }

    cout << "------------------\r\n";
    cout << "total " << nTotal << endl;


    return 0;
}