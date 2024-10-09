#include <iostream>
#include <thread>
#include <vector>
#include<unistd.h>
class A{
    public:
    int x;
    int *y;
    void print_me(){
        std::cout<<"Value of y:"<<*y<<"\n";

    }

    
};
void test(A g){
    g.print_me();
    
}
std::thread t1;
void runProgram(){
    static A a;
     static int b=10;
    a.y=&b;
    t1=std::thread(test,a);
    // t1.join();

}
int main(){
    runProgram();
    // sleep(10000);
    // t1.join();
    

}