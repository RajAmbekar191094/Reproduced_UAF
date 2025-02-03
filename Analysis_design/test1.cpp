// #include <iostream>
// #include <thread>
// #include <unistd.h>
// using namespace std;
// thread t1,t2,t3;
// void thread3(int *p)
// {
//      // (*p)++;
//      // cout<<"value:"<<*p<<endl;


// }
// void thread2(int *p)
// {
//       t3=thread(thread3,p);
//       sleep(6);
//      //    (*p)++;
//      //    cout<<"value:"<<*p<<endl;


// }

// void thread1(int *p)
// {
//      t2=thread(thread2,p);
   

// }
// void thread0()
// {
//     int a=100;
//     t1=thread(thread1,&a);
// //     sleep(5);
//      t3.join();
//     t2.join();
    
   

// }
// int main()
// {
//     thread0();
//     t1.join();
//      // t2.join();
    
    
//     // t3.join();
//     return 0;
// }

#include <iostream>
#include <pthread.h>
#include <unistd.h>

using namespace std;

pthread_t t1, t2, t3;

void* thread3(void* arg) {
    int* p = (int*)arg;
    (*p)++;
    cout << "value:" << *p << endl;
    return NULL;
}

void* thread2(void* arg) {
    int* p = (int*)arg;
    pthread_create(&t3, NULL, thread3, p);
    sleep(6);
    (*p)++;
    cout << "value:" << *p << endl;
  
    return NULL;
}

void* thread1(void* arg) {
    int* p = (int*)arg;
    pthread_create(&t2, NULL, thread2, p);
   
    return NULL;
}

void thread0() {
    int a = 100;
    pthread_create(&t1, NULL, thread1, &a);
      pthread_join(t3, NULL);
   
}

int main() {

    thread0();
     pthread_join(t2, NULL);
      pthread_join(t1, NULL);
    return 0;
}

