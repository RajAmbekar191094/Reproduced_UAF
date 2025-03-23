#include <iostream>
#include <functional>
#include <memory>
#include <thread>
#include <unistd.h>  
std::thread t;
void outerFunction() {
    class Base {
    public:
         void virtual show() {
            std::cout << "Base class" << std::endl;
        }
        
        ~Base(){
            std::cout << "Base class destroyed " << std::endl;
        }
      
    };



    auto lambda = []() {
        
        sleep(16);
    class Derived : public Base {
    public:
        void show()  {
            std::cout << "Derived class" << std::endl;
        }
    };
    
         Derived d;
        Base*  basePtr=&d;
      
        basePtr->show();
    };
   t=std::thread (lambda); 
    

}

int main() {
    outerFunction();
    t.join();

    return 0;
}