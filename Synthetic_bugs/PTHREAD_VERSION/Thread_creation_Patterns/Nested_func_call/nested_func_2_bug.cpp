/* Description: In this program a function call chain is created like main->a()->b()->c()->runThread.
   A data object x is passed as reference from one function to another starting from function a(). 
   In function c local variable is passed to final function in the chain runThread where it is Used. 
   Thread t1 is joined in main function instead of c that results in  Use After Scope */

#include <iostream>
#include <pthread.h>
using namespace std;

pthread_t t1;

void* runThread(void *arg) {
    int *t = static_cast<int*>(arg);
    cout << "Value passed from func a:" << *t << endl;
    return nullptr;
}

void c(int *z) {
    int r = 1;
    if (r == 10) {
        // Do nothing
    } else {
        pthread_create(&t1, nullptr, runThread, static_cast<void*>(z));
        // pthread_join(t1, nullptr); // Thread join should be done inside c to avoid Use After Scope
    }
}

void b(int *y) {
    *y = 30;
    c(y);
}

void a() {
    int x = 10;
    b(&x);
}

int main() {
    a();
    pthread_join(t1, nullptr); // Join the thread in main
}