/*Description: A function createThread is called in main with sharedVar passed as ref
which internally creates thread to run threadTask function*/
#include <iostream>
#include <thread>
#include <functional>  // for std::ref
using namespace std;
int a=10;
void runGlobalThread(int *a)
{
    cout<<"Value in global thread"<<*a<<endl;


}
void runLocalThread1(int *x)
{
    cout<<"Value in local thread 1:"<<*x<<endl;


}
void runLocalThread2(int *x)
{
    cout<<"Value in local thread 2:"<<*x<<endl;


}
void runLocalThread3(int *x)
{
    cout<<"Value in local thread 3:"<<*x<<endl;


}
void runLocalThread4(int *x)
{
    cout<<"Value in local thread 4:"<<*x<<endl;


}
void runLocalThread5(int *x)
{
    cout<<"Value in local thread 5:"<<*x<<endl;


}
void runLocalThread6(int *x)
{
    cout<<"Value in local thread 6:"<<*x<<endl;


}
void runLocalThread7(int *x)
{
    cout<<"Value in local thread 7:"<<*x<<endl;


}
thread global_t(runGlobalThread,&a);

int main()
{
    int x=10;
    thread local_t(runLocalThread1,&x);

    if(x==1)
    {
        thread if_thread(runLocalThread2,&x);
        x=11;
        if_thread.join();

    }
    else {
        thread else_thread(runLocalThread3,&x);
        x=12;
        else_thread.join();
    
    }

    {
          thread scope_1(runLocalThread4,&x);

        {
             thread scope_2(runLocalThread5,&x);
            {
                  thread scope_3(runLocalThread6,&x);
                {
                    {
                         thread scope_n(runLocalThread7,&x);
                         scope_1.join();
                         scope_2.join();
                         scope_3.join();
                         scope_n.join();
                        //  scope_1.join();


                    }
                   

                }
            }

        }
    }
    local_t.join();
    global_t.join();
    
    return 0;
}