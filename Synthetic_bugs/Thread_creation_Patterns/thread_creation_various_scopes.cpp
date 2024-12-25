/*Description: A function createThread is called in main with sharedVar passed as ref
which internally creates thread to run threadTask function*/
#include <iostream>
#include <thread>
#include <functional>  // for std::ref
using namespace std;
int a;
void runGlobalThread()
{


}
void runLocalThread()
{


}
thread global_t(runGlobalThread,&a);

int main()
{
    int x=10;
    thread local_t(runLocalThread,&x);

    if(x==1)
    {
        thread if_thread(runLocalThread,&x);
        x=11;

    }
    else {
        thread else_thread(runLocalThread,&x);
        x=12;
    
    }

    {
          thread scope_1(runLocalThread,&x);

        {
             thread scope_2(runLocalThread,&x);
            {
                  thread scope_3(runLocalThread,&x);
                {
                    {
                         thread scope_n(runLocalThread,&x);

                    }
                   

                }
            }
        }
    }
    return 0;
}
