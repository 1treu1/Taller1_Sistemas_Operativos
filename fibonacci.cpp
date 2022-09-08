#include <iostream>
#include <string>
using namespace std;

int fibonacci(int n){
    int pas = -1;
    int ant = 0;
    int act = 1;
    int c;
    
    for(int i=0;i<=n;i++){//1
        c = pas+ant+act;
        pas = ant;
        ant = act;
        act = c;
        
    }
    return c;
}

int main(int argc, char** argv){
    //cout<<"Numero de parametros"<<endl;
    //cout<<"Hola Mundo a "<<argv[1]<<endl;
    
    int n = stoi(argv[1]);
    cout<<fibonacci(n)<<endl;//31
    return 0;
}

