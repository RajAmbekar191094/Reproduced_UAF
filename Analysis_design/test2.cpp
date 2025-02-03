#include <iostream>
#include <pthread.h>
#include <unistd.h>

using namespace std;

pthread_t t1, t2, t3;  // Global thread handles

void* thread3(void* arg) {
    int* p = static_cast<int*>(arg);
    (*p)++;
    cout << "Value: " << *p << endl;
    return nullptr;
}

void* thread2(void* arg) {
    pthread_create(&t3, nullptr, thread3, arg);
    // pthread_join(t3, nullptr);
    return nullptr;
}

void* thread1(void* arg) {
    pthread_create(&t2, nullptr, thread2, arg);
    // pthread_join(t2, nullptr);
    return nullptr;
}

void thread0() {
    int a = 100;
    pthread_create(&t1, nullptr, thread1, &a);
     pthread_join(t1, nullptr);
      pthread_join(t2, nullptr);
    pthread_join(t3, nullptr);
}

int main() {
    thread0();
    return 0;
}
