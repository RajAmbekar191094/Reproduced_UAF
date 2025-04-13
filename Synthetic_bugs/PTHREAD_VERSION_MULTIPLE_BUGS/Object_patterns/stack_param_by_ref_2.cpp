/* Description: Object x is created on stack (local var) and then passed as reference to thread function thread_func */

#include <iostream>
#include <pthread.h>
#include <bits/stdc++.h>
#include <unistd.h>
using namespace std;

pthread_t t1,t2;

void* thread_func1(void *arg) {
    int *y = static_cast<int*>(arg);
    sleep(2);
    //   cout<<"Mem loc:"<<y<<endl;
    std::cout << "Value of data received is:" << *y << "\n";
    return nullptr;
}
void* thread_func2(void *arg) {
    int *y = static_cast<int*>(arg);
    sleep(2);
    //   cout<<"Mem loc:"<<y<<endl;
    std::cout << "Value of data received is:" << *y << "\n";
    return nullptr;
}
int main() {
    int a;
    // std::cin >> a;
    a=10;
    
    if (a == 10) {
        int x = 10;
        // cout<<"Mem loc:"<<&x<<endl;
        pthread_create(&t1, nullptr, thread_func1, static_cast<void*>(&x));
    }
    pthread_create(&t2, nullptr, thread_func2, static_cast<void*>(&a));
    pthread_join(t2, nullptr);
    std::cout << "Scope over" << std::endl;
    
    pthread_join(t1, nullptr);
}
