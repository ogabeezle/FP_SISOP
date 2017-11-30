#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

int main(int argc,char* argv[]){
    for(int i=1;i<argc;i++){
        int finput;
        finput=open(argv[i], O_CREATE | O_RDWR);
        close(finput);
    }
    exit();
}