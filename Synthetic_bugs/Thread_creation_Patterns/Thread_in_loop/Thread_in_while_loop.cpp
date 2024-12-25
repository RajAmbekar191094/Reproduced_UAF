#include <iostream>
#include <thread>
#include <vector>
using namespace std;
void func1(int *y)
{
    *y=*y+1;
    cout<<"Incremented data"<<*y<<endl;
}
int main()
{
    vector<thread>v;
    int i=0;
    while(i<=5)
    {
        i++;
        int j=10;
        if(i==3)
        {
            v.emplace_back(thread(func1,&i,i+1));
        }
        else {
        {
              v.emplace_back(thread(func1,&j,i+1));

        }
        }
    }

    return 0;

}