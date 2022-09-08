#include <iostream>
#include <string>
using namespace std;

int res(int a, int b){
    int c;
    c = a-b;
    return c;
}
int main(int argc, char** argv){
    //cout<<"Numero de parametros"<<endl;
    //cout<<"Hola Mundo a "<<argv[1]<<endl;
    int a = stoi(argv[1]);
    int b = stoi(argv[2]);

    cout<<res(a,b)<<endl;

    return 0;
}
