#include <stdio.h>
#include <string.h>

int main () {

   //char buff[1024];
   
   //memset( buff, '\0', sizeof( buff ));
   
   //fprintf(stdout, "Going to set full buffering on\n");
   //setvbuf(stdout, buff, _IOFBF, 1024);

   //fprintf(stdout, "This is tutorialspoint.com\n");
   //fprintf(stdout, "This output will go into buff\n");
   
    printf("\033[2J\033[1;1H\n");
   //fflush( stdout );

   //fprintf(stdout, "and this will appear when programm\n");
  // fprintf(stdout, "will come after sleeping 5 seconds\n");
   
   //sleep(5);
   
   return(0);
}