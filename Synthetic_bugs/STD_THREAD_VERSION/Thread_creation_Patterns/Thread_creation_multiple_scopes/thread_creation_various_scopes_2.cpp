/*Description: A function createThread is called in main with sharedVar passed as ref
which internally creates thread to run threadTask function
In general air borne vehicles have multiple control actuation systems like ADC (Aerodynamic Control) RCS (Reaction Control
System) and TVC (Thrust Vectoring Control). Depending on the flight path, configuration, air density and energy available */
#include <iostream>
#include <thread>
#include <functional>  d spawn threads for more complex tasks, such as initiating cooling actions, generating alarms, or switching between system modes.*/
#include <iostream>
#include <thread>// for std::ref
using namespace std;


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
// thread global_t(runGlobalThread,&a);
// thread local_t;
// thread if_thread;
// thread else_thread;
thread scope_1;
thread scope_2;
thread scope_3;
thread scope_n;




int main()
{
    

    {
        int s1_var=1;
          scope_1=thread(runLocalThread1,&s1_var);


            int s2_var=2;
              scope_2=thread(runLocalThread2,&s2_var);
            {
                    int s3_var=3;
                   scope_3=thread(runLocalThread3,&s3_var);
                {
                    {
                        int sn_var=4;
                        scope_n=thread(runLocalThread4,&sn_var);
                        // scope_1.join();
                        // scope_2.join();
                        // scope_3.join();
                        // scope_n.join();
                         
                       
                        //  scope_1.join();


                    }
                     
                   

                }
            }

        }
    scope_1.join();
    scope_2.join();
    scope_3.join();
    scope_n.join();
    
    return 0;
    }
    

