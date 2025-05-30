/* Description: The function UseOfData is called at 2 different locations in spawnThreads function by same thread handle t1 and same data x. Here the join 
is placed immediately after the thread spawn so there is no Use After Scope error */

#include <iostream>
#include <pthread.h>
using namespace std;

pthread_t t1;

void* UseOfData(void* arg)
{
    int* x = (int*)arg;
    cout << "Data sent:" << *x << endl;
    return nullptr;
}

void spawnThreads()
{
    int x;
    // cin >> x;
    x=10;
    // if (x == 10)
    // {
        // Create thread t1 and join it immediately to avoid Use After Scope
        pthread_create(&t1, nullptr, UseOfData, &x);
        // 
    // }
    // else
    // {
        x = 100;
        // Create thread t2 and join it immediately to avoid Use After Scope
        pthread_create(&t1, nullptr, UseOfData, &x);
        // pthread_join(t1, nullptr);
    // }
}

int main()
{
    spawnThreads();
    pthread_join(t1, nullptr);
    return 0;
}
