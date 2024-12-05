// C program to show thread functions 

#include <pthread.h> 
#include <stdio.h> 
#include <stdlib.h> 
#include<unistd.h>
#include<iostream>

using namespace std;
pthread_t ptid1,ptid2,ptid3,ptid4;
int f1 =0;
int f2=0;
int f3=1;
int * p1,*p2,*p3;



void* func1(void* arg) 
{ 
    // while(!f1 or !f2 or !f3);
    
    cout<<"the pointer valuep1  "<<*p1<<"\n";
    cout<<"the pointer value p2 "<<*p2<<"\n";
    cout<<"the pointer value p2 "<<*p3<<"\n";

// printf("Inside the thread A \n"); 
return nullptr;
    
} 

void* func2(void* arg) 
{ 
        f1=1;

    int a =22;
    p1=&a;

 int x=  pthread_join(ptid1, NULL); 
 	std::cout<<"the thread 2 ="<<x<<"\n";

printf("Inside the thread B \n"); 
 return nullptr;
} 

void* func3(void* arg) 
{ 
    
    f2=1;
    int b=33;
    p2=&b;
//   sleep(5);
//   pthread_join(ptid1, NULL); 

  return nullptr;

} 
void* func4(void* arg) 
{ 
    f3=1;
    int c =44;
    p3=&c;
    
//   pthread_join(ptid1, NULL); 

 
  return nullptr;

} 

int main() 
{ 
 	// Creating a new thread 
pthread_create(&ptid1, NULL, &func1, NULL); 

pthread_create(&ptid2, NULL, &func2, NULL); 
// 	std::cout<<"the thread 2 ="<<x<<"\n";
pthread_create(&ptid3, NULL, &func3, NULL);
// 	std::cout<<"the thread 3 ="<<x<<"\n";
pthread_create(&ptid4, NULL, &func4, NULL); 

pthread_join(ptid1, NULL); 

// sleep(6);
	return 0; 
} 
