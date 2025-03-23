#include <iostream>
#include <pthread.h>
#include <unistd.h>

class A {
    virtual void m1() {
        std::cout << "A m1";
    }
    void m2() {
        std::cout << "A m2";
    }
};

class A1 : public A {
    void m1() {
        std::cout << "A1 m1" << std::endl;
    }
};

class A2 : public A {
    void m2() {
        std::cout << "A2 m2" << std::endl;
    }
};

pthread_t t1;

void* threadFunction(void* arg) {
    sleep(5);
    A2* a2 = static_cast<A2*>(arg);
    A1* a1 = dynamic_cast<A1*>(a2);
    
    if (a1) {
        a1->m1();
    }
    return nullptr;
}  

void createThread() {   
    A2 a2;
    pthread_create(&t1, nullptr, threadFunction, &a2);
}  

int main() {
    createThread();
    pthread_join(t1, nullptr);
    std::cout << "Main thread finishes.\n";
    return 0;
}
