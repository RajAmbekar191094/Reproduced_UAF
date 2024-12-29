/* Description: Thread creation inside one of the branches of the if loop */

#include <iostream>
#include <pthread.h>
#include <atomic>
#include <vector>

pthread_t t1;
pthread_t t2;

void* func2(void* yy)
{
    int* y = static_cast<int*>(yy);
    *y = *y + 1;
    std::cout << "The value of y is " << *y << "\n";
    return nullptr;
}

bool signal()
{
    return false;
}

void* func1(void* current)
{
    int* currentValue = static_cast<int*>(current);

    if (signal())
    {
        *currentValue = *currentValue + 1;
        std::cout << "The value of current is " << *currentValue << "\n";
        // Create a new thread inside the `if` block
        pthread_create(&t1, nullptr, func1, current);
    }
    else
    {
        int newval = 30;
        // Create a thread inside the `else` block
        pthread_create(&t1, nullptr, func2, &newval);
        // std::this_thread::sleep_for(std::chrono::milliseconds(3));
    }
    return nullptr;
}/* Description: Thread creation inside a one of the branches of if loop*/
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

int main()
{
    int x = 1;
    // Create the first thread in main
    pthread_create(&t2, nullptr, func1, &x);

    // Join both threads to ensure the main thread waits for them to finish
    pthread_join(t1, nullptr);
    pthread_join(t2, nullptr);

    return 0;
}
