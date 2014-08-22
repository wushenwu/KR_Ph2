#ifndef CMYSTRING_H_A5D8D5F8_B1DC_46d7_9E79_C4E8EAF111A7

#define CMYSTRING_H_A5D8D5F8_B1DC_46d7_9E79_C4E8EAF111A7

//����CMyString�ĵ��ýӿ�, ������Ա���������˵���

#ifdef _USRDLL
    #define EXPORT_IMPORT   __declspec(dllexport)
#else
    #define EXPORT_IMPORT   __declspec(dllimport)
#endif

#define REFCOUNT

class EXPORT_IMPORT CMyString
{
public:
    CMyString();
    CMyString(const char *psz);
    CMyString(const CMyString &str);

    virtual ~CMyString();

public:
    //�����ַ���
    virtual void SetString(const char *psz);
    virtual void SetString(const CMyString &str);

    virtual inline const char *GetString(void) const;   //
    
    virtual inline size_t GetLen(void)  const;

    virtual const char *StringCopy(const char *psz);
    virtual const char *StringCopy(const CMyString &str);

    virtual const char *StringCat(const char *psz);
    virtual const char *StringCat(const CMyString &str);

    /*
    Function: �ַ����Ƚ�
    Return : true ���ַ�����psz���  false �����
    */
    virtual bool StringCompare(const char *psz) const;
    virtual bool StringCompare(const CMyString &str) const;

    /*
    Function: ����һ���ַ�
    Return : ������ڣ��򷵻�ָ���λ�õ�ָ�룬���򷵻�NULL��
             ����StringChr���ص��ǵ�һ�γ��ֵ�λ�ã���StringRchr���ص������һ�γ��ֵ�λ��
    */
    virtual const char *StringChr(int ch) const;
    virtual const char *StringRchr(int ch) const;

    /*
    Function: �����κμ����ַ�, �����κ�һ���ַ���1�����ַ����г��ֵ�λ��
    Return: ����һ��ָ���һ��ƥ��group���κ�һ���ַ���λ�ã� ���δ�ҵ����򷵻�NULL
    */
    virtual const char *StringPbrk(const char *pszgroup) const;
    virtual const char *StringPbrk(const CMyString &str) const;


    /*
    Function: �����Ӵ�
    Return: �ڸ��ַ����в���psz��һ�γ��ֵ���ʼλ�ã�������һ��ָ���λ�õ�ָ�롣
            ���û���ҵ����򷵻�NULL
    */
    virtual const char *StringStr(const char *psz) const;
    virtual const char *StringStr(const CMyString &str) const;

    //���ַ������д�Сдת��
    virtual void StringToUpper(void);
    virtual void StringToLower(void);


private:
    void StringInit(void);

#ifdef REFCOUNT
    //���ü������
    void AddRef(void);
    void Release(void);
#endif

private:
    char *m_psz;        //�ַ����洢��ַ
    size_t m_nlen;      //�ַ���ʵ��ռ�ó���
    size_t m_nspace;    //������ռ���ܳ���

#ifdef REFCOUNT
    int *m_prefcount;   //���ü���
#endif
};

#endif