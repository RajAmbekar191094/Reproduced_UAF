#include<thread>
#include <atomic>
#include<vector>
#include<iostream>
#include <pthread.h>
int main()
{
int *q ;
int b=10;

if(1==1)
{
    int a=10;
    q=&a;
    // int *a=new int(10);
	// q=a;
}
if( 2==3)
{
q=&b;
}

int x=0;
int * p =&x;

if( 3==4)
{
	int y =0;
 	p   = &y;
}
else
{
	int z=0;
	// p= &z;
	if( 1==1)
	{
		p=q;

	}
	std::cout<<*p+1<<"\n";
}


}
