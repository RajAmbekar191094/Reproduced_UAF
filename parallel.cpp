void f1(int *a)
{
    *a++; //Use
}
int main()
//S1 
{                  
    int a=1;
    if(a==10)
    //S2 
    {      
         std::thread t1(f1,&a);
         t1.join();

    }
}
