/* Description: Thread creation inside a one of the branches of if loop
In a furnace control system,If the temperature is within the range, the system might create threads to log the temperature, 
update the status display, or perform periodic checks.
If the temperature exceeds a certain threshold, the system might spawn threads to handle more critical tasks such as turning off 
heating elements, activating cooling systems, or sending alerts to maintenance staff. */
#include<thread>
#include <atomic>
#include<vector>
#include<iostream>
#include <pthread.h>

std::thread t1;
std::thread t2;
void func2(int *yy)
{
     *yy = *yy +1;
     std::cout<<"the value of y is "<<*yy<<"  \n";

}

bool signal()
{
    return false;
}

void func1(int *current)
{

    if(signal())
    {
        *current = *current +1;
        std::cout<<"the value of current is "<<*current<<"  \n";
        t1 = std::thread(func1, current);
    }
    else
    {

        int newval=30;
        t1 = std::thread(func2, &newval);
        // std::this_thread::sleep_for(std::chrono::milliseconds(3));
    }
    // t1.join();

}

int main()
{

int  x=1;
t2 = std::thread(func1, &x);

t1.join();
t2.join();
return 0;

}