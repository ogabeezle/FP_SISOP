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
char*
fmtname(char *path)
{
  static char buf[DIRSIZ+1];
  char *p;

  // Find first character after last slash.
  for(p=path+strlen(path); p >= path && *p != '/'; p--)
    ;
  p++;

  // Return blank-padded name.
  if(strlen(p) >= DIRSIZ)
    return p;
  memmove(buf, p, strlen(p));
  strcat(buf,"\0");
  return p;
}

void
rf(char *patha)
{
  char buf[512], *p;
  char *tempa=malloc(100);
  memset (tempa,0,sizeof tempa);
  int fd;
  struct dirent de;
  struct stat st;

  if((fd = open(patha, 0)) < 0){
    //printf(2, "cp: cannot open %s\n", patha);
    return;
  }

  if(fstat(fd, &st) < 0){
    //printf(2, "cp: cannot stat %s\n", patha);
    close(fd);
    return;
  }

  switch(st.type){
  case T_FILE:
    //unlink(patha);
    break;

  case T_DIR:
    if(strlen(patha) + 1 + DIRSIZ + 1 > sizeof buf){
      //printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, patha);
    p = buf+strlen(buf);
    *p++ = '/';
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
      if(de.inum == 0)
        continue;
      memmove(p, de.name, DIRSIZ);
      p[DIRSIZ] = 0;
      if(stat(buf, &st) < 0){
        //printf(1, "ls: cannot stat %s\n", buf);
        continue;
      }
      strcpy(tempa,patha);
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      if(strcmp(fmtname(buf),".")==0) continue;
      if(strcmp(fmtname(buf),"..")==0) continue;
      rf(tempa);
    }
    break;
  }
  close(fd);
  unlink(patha);
}

int
main(int argc, char *argv[])
{
  int i;

  if(argc < 2){
    printf(2, "Usage: rm files...\n");
    exit();
  }

  if(!strcmp(argv[1],"-rf")){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
    char *buf=malloc(100);
    memset (buf,0,100);
    read(key, buf, 100);
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
    rf(tempa);exit();
  }

  for(i = 1; i < argc; i++){
    if(unlink(argv[i]) < 0){
      printf(2, "rm: %s failed to delete\n", argv[i]);
      break;
    }
  }

  exit();
}
