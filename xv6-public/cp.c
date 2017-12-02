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

void mkdire(char *path){
  if(mkdir(path) < 0){
    printf(2, "mkdir: %s failed to create\n", path);
    return;
  }
  char *tem=malloc(100);
  memset(tem,0,sizeof tem);
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  int foutput=open(tem, O_CREATE | O_RDWR);
  int finput,fd;
  if((finput = open(".yuhuu", O_RDWR)) < 0){
    printf(1, "cp: cannot open %s\n", path);
    exit();
  }
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  if((fd = open(tem, 0)) < 0){
    int n;
    char buf[512];
    while((n = read(finput, buf, sizeof(buf))) > 0) {
      write(foutput,buf,n);
    }
    memset(tem,0,sizeof tem);
    strcat(tem,path);
    strcat(tem,"/");
    write(foutput,tem,strlen(tem));
    close(foutput);
  }
  else{
    printf(1, "cp: file %s already exist \n", path);
  }
  close(fd);
  close(finput);
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

void cp(char *patha,char *pathb){
  char buf[1024];
  int finput,foutput,fd;
  if((finput = open(patha, 0)) < 0){
    printf(1, "cp: caaernnot open %s\n", patha);
    exit();
  }
  struct stat st;
  if(fstat(finput, &st) < 0) return;
  if(st.type==T_DIR) return;

  if((fd = open(pathb, 0)) < 0){
    int n;
    foutput = open(pathb, O_CREATE | O_RDWR);
    while((n = read(finput, buf, sizeof(buf))) > 0) {
      write(foutput,buf,n);
    }
    close(foutput);
  }
  else{
    printf(1, "cp: file %s already exist \n", pathb);
  }
  close(fd);
  close(finput);
}

void
cpR(char *patha,char *pathb)
{
  char buf[512], *p;
  char *tempa=malloc(100);
  memset (tempa,0,sizeof tempa);
  char *tempb=malloc(100);
  memset (tempb,0,sizeof tempb);
  int fd;
  struct dirent de;
  struct stat st;

  if((fd = open(patha, 0)) < 0){
    printf(2, "cp: cannot open %s\n", patha);
    return;
  }

  if(fstat(fd, &st) < 0){
    printf(2, "cp: cannot stat %s\n", patha);
    close(fd);
    return;
  }

  switch(st.type){
  case T_FILE:
    cp(patha,pathb);
    break;

  case T_DIR:
    if(strlen(patha) + 1 + DIRSIZ + 1 > sizeof buf){
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, patha);
    p = buf+strlen(buf);
    *p++ = '/';
    mkdire(pathb);
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
      if(de.inum == 0)
        continue;
      memmove(p, de.name, DIRSIZ);
      p[DIRSIZ] = 0;
      if(stat(buf, &st) < 0){
        printf(1, "ls: cannot stat %s\n", buf);
        continue;
      }
      strcpy(tempa,patha);
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
      strcat(tempb,"/");
      strcat(tempb,fmtname(buf));
      strcat(tempa,"\0");
      if(strcmp(fmtname(buf),".yuhuu")==0) continue;
      if(strcmp(fmtname(buf),".")==0) continue;
      if(strcmp(fmtname(buf),"..")==0) continue;
      cpR(tempa,tempb);
    }
    break;
  }
  close(fd);
}

void
cpb(char *patha,char *pathb)
{
  char buf[512], *p;
  char *tempa=malloc(100);
  memset (tempa,0,sizeof tempa);
  char *tempb=malloc(100);
  memset (tempb,0,sizeof tempb);
  int fd;
  struct dirent de;
  struct stat st;

  if((fd = open(patha, 0)) < 0){
    printf(2, "cp: cannot open %s\n", patha);
    return;
  }

  if(fstat(fd, &st) < 0){
    printf(2, "cp: cannot stat %s\n", patha);
    close(fd);
    return;
  }

  switch(st.type){
  case T_FILE:
    return;

  case T_DIR:
    if(strlen(patha) + 1 + DIRSIZ + 1 > sizeof buf){
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, patha);
    p = buf+strlen(buf);
    *p++ = '/';
    mkdire(pathb);
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
      if(de.inum == 0)
        continue;
      memmove(p, de.name, DIRSIZ);
      p[DIRSIZ] = 0;
      if(stat(buf, &st) < 0){
        printf(1, "ls: cannot stat %s\n", buf);
        continue;
      }
      strcpy(tempa,patha);
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
      strcat(tempb,"/");
      strcat(tempb,fmtname(buf));
      strcat(tempa,"\0");
      if(strcmp(fmtname(buf),".yuhuu")==0) continue;
      if(strcmp(fmtname(buf),".")==0) continue;
      if(strcmp(fmtname(buf),"..")==0) continue;
      cp(tempa,tempb);
    }
    break;
  }
  close(fd);
}

int main(int argc, char *argv[])
{
  if(argc < 2){
    exit();
  }
  
  if(strcmp(argv[3],"..")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
    char *buf=malloc(100);
    memset (buf,0,sizeof buf);
    read(key, buf, sizeof(buf));
    char *temp;
    temp=buf+strlen(buf)-1;
    while(*temp!='/') temp--;
    temp++;
    *temp='\0';
    strcpy(argv[3],buf);
    printf(1,"faw%s\n",argv[3]);
  }
  if(strcmp(argv[1],"-R")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
    char *buf=malloc(100);
    memset (buf,0,100);
    read(key, buf, 100);
    printf(1,"%s\n",buf);
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
    memset (tempb,0,sizeof tempb);
    if(*argv[3]!='/') strcat(tempb,buf);
    strcat(tempb,argv[3]);
    printf(1,"%s %s %s\n",buf,tempa,tempb);
    cpR(tempa,tempb);
  }
  if(strcmp(argv[1],"*")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
    char *buf=malloc(100);
    memset (buf,0,sizeof buf);
    read(key, buf, sizeof(buf));
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
    memset (tempb,0,sizeof tempb);
    if(*argv[3]!='/') strcat(tempb,buf);
    strcat(tempb,argv[3]);
    cpb(tempa,tempb);

  }
  else{
    cp(argv[2],argv[3]);
  }
  exit();
}