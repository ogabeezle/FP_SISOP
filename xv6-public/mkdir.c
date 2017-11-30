#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"
#include "fcntl.h"
#include <assert.h>
#include <stdarg.h>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;

  return b;
}

int
main(int argc, char *argv[])
{
  int i;

  if(argc < 2){
    printf(2, "Usage: mkdir files...\n");
    exit();
  }

  for(i = 1; i < argc; i++){
    if(mkdir(argv[i]) < 0){
      printf(2, "mkdir: %s failed to create\n", argv[i]);
      break;
    }
    char *tem=malloc(100);
    memset(tem,0,sizeof tem);
    strcat(tem,argv[i]);
    strcat(tem,"/yuhuu");
    int foutput=open(tem, O_CREATE | O_RDWR);
    int finput,fd;
    if((finput = open("yuhuu", O_RDWR)) < 0){
      printf(1, "cp: cannot open %s\n", argv[2]);
      exit();
    }
    strcat(tem,argv[i]);
    strcat(tem,"/yuhuu");
    if((fd = open(tem, 0)) < 0){
      int n;
      char buf[512];
      while((n = read(finput, buf, sizeof(buf))) > 0) {
        write(foutput,buf,n);
      }
      memset(tem,0,sizeof tem);
      strcat(tem,argv[i]);
      strcat(tem,"/");
      write(foutput,argv[i],strlen(argv[i]));
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
