#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"
#include "fcntl.h"
#include <assert.h>
#include <stdarg.h>
int main(int argc, char *argv[])
{
  if(argc < 2){
    exit();
  }
  else if(argc == 2){
    if(strcmp(argv[1],"-R")){}
    if(strcmp(argv[1],"*")){}

  }
  else{
    char buf[1024];
    int finput,foutput,fd;
    if((finput = open(argv[1], 0)) < 0){
      printf(1, "cp: cannot open %s\n", argv[2]);
      exit();
    }
    if((fd = open(argv[2], 0)) < 0){
      int n;
      foutput = open(argv[2], O_CREATE | O_RDWR);
      while((n = read(finput, buf, sizeof(buf))) > 0) {
        write(foutput,buf,n);
      }
      close(foutput);
    }
    else{
      printf(1, "cp: file %s already exist \n", argv[2]);
    }
    close(fd);
    close(finput);
  }
  exit();
}