#include <iostream>
#include <string>
using namespace std;

int division(int a, int b){
    int c;
    c = a/b;
    return c;
}

int main(int argc, char** argv){
    //cout<<"Numero de parametros"<<endl;
    //cout<<"Hola Mundo a "<<argv[1]<<endl;
    int a = stoi(argv[1]);
    int b = stoi(argv[2]);

    cout<<division(a,b)<<endl;

    return 0;
}
