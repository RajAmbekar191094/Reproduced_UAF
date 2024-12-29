int abc(){
    int z=0;
    std::thread t1;
    if(z==1)
    {
        int x=8;
        {
            int y=100;
             t1(&y); 

        }
        // cout<<"y="<<y;

    }
    
    return z;
}
int main(){
    int a;
    a=abc();

}

// [t1,J1]=
// t1()
// t2()
// ....
// ....
// t100();
