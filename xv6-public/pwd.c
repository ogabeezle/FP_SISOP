#include "types.h"
#include "user.h"
#define MAX_PATH 512

void
cat()
{
  int n;
  int fd = open(".yuhuu", 0);
    int buf[512];
  while((n = read(fd, buf, sizeof(buf))) > 0) {
    if (write(1, buf, n) != n) {
      printf(1, "cat: write error\n");
      exit();
    }
  }
  printf(1,"\n");
  close(fd);
  if(n < 0){
    printf(1, "cat: read error\n");
    exit();
  }
}

int
main(int argc, char *argv[])
{
    cat();
    
    exit();
}