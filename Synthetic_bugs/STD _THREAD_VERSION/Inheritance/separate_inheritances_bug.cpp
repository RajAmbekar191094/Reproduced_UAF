#include <iostream>
#include <thread>
#include <unistd.h>

using namespace std;
thread t1;

// Base1 with non-virtual function
class Base1 {
public:
    void display() { // Non-virtual function
        cout << "Base1 display\n";
    }
};

// Base2 with virtual function
class Base2 {
public:
    virtual void display() { // Virtual function
        cout << "Base2 display\n";
    }
};

// Derived1 inherits from Base1 (non-virtual)
class Derived1 : public Base1 {
public:
    void display() {
        cout << "Derived1 display\n";
    }
};

// Derived2 inherits from Base2 (virtual)
class Derived2 : public Base2 {
public:
    void display() override {
        cout << "Derived2 display\n";
    }
};

// Pointer to Derived2 (after typecasting)
Derived2* derived2Ptr;

// Thread function
void threadFunction(Derived2 *derivedRef) {
    sleep(5);
    derivedRef->display(); // Calls display() on Derived2 pointer
}

// Create thread function
void createThread() {
    Derived1 derived1Obj;
    Derived2 derived2Obj;

    // Typecasting Derived1* to Derived2* (Unsafe!)
    derived2Ptr = reinterpret_cast<Derived2*>(&derived1Obj);

    t1 = thread(threadFunction, derived2Ptr);
}

int main() {
    createThread();
    t1.join();
    cout << "Main thread finishes.\n";
    return 0;
}
