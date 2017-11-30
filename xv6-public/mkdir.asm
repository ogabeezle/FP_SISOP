
_mkdir:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return b;
}

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	81 ec 28 02 00 00    	sub    $0x228,%esp
  17:	8b 01                	mov    (%ecx),%eax
  19:	8b 59 04             	mov    0x4(%ecx),%ebx
  int i;

  if(argc < 2){
  1c:	c7 85 e4 fd ff ff 01 	movl   $0x1,-0x21c(%ebp)
  23:	00 00 00 
  26:	83 f8 01             	cmp    $0x1,%eax
  return b;
}

int
main(int argc, char *argv[])
{
  29:	89 85 d8 fd ff ff    	mov    %eax,-0x228(%ebp)
  2f:	89 9d d0 fd ff ff    	mov    %ebx,-0x230(%ebp)
  35:	8d 7b 04             	lea    0x4(%ebx),%edi
  int i;

  if(argc < 2){
  38:	0f 8e a9 02 00 00    	jle    2e7 <main+0x2e7>
  3e:	66 90                	xchg   %ax,%ax
    printf(2, "Usage: mkdir files...\n");
    exit();
  }

  for(i = 1; i < argc; i++){
    if(mkdir(argv[i]) < 0){
  40:	83 ec 0c             	sub    $0xc,%esp
  43:	ff 37                	pushl  (%edi)
  45:	e8 b0 05 00 00       	call   5fa <mkdir>
  4a:	83 c4 10             	add    $0x10,%esp
  4d:	85 c0                	test   %eax,%eax
  4f:	0f 88 60 02 00 00    	js     2b5 <main+0x2b5>
      printf(2, "mkdir: %s failed to create\n", argv[i]);
      break;
    }
    char *tem=malloc(100);
  55:	83 ec 0c             	sub    $0xc,%esp
  58:	6a 64                	push   $0x64
  5a:	e8 b1 08 00 00       	call   910 <malloc>
    memset(tem,0,sizeof tem);
  5f:	83 c4 0c             	add    $0xc,%esp
  for(i = 1; i < argc; i++){
    if(mkdir(argv[i]) < 0){
      printf(2, "mkdir: %s failed to create\n", argv[i]);
      break;
    }
    char *tem=malloc(100);
  62:	89 c6                	mov    %eax,%esi
    memset(tem,0,sizeof tem);
  64:	6a 04                	push   $0x4
  66:	6a 00                	push   $0x0
  68:	50                   	push   %eax
  69:	e8 92 03 00 00       	call   400 <memset>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
  6e:	83 c4 10             	add    $0x10,%esp
  71:	80 3e 00             	cmpb   $0x0,(%esi)
      printf(2, "mkdir: %s failed to create\n", argv[i]);
      break;
    }
    char *tem=malloc(100);
    memset(tem,0,sizeof tem);
    strcat(tem,argv[i]);
  74:	8b 0f                	mov    (%edi),%ecx

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
  76:	89 f0                	mov    %esi,%eax
  78:	74 1f                	je     99 <main+0x99>
  7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  80:	83 c0 01             	add    $0x1,%eax
  83:	80 38 00             	cmpb   $0x0,(%eax)
  86:	75 f8                	jne    80 <main+0x80>
  while (*s2) *s1++ = *s2++;
  88:	0f b6 11             	movzbl (%ecx),%edx
  8b:	84 d2                	test   %dl,%dl
  8d:	74 11                	je     a0 <main+0xa0>
  8f:	90                   	nop
  90:	83 c0 01             	add    $0x1,%eax
  93:	83 c1 01             	add    $0x1,%ecx
  96:	88 50 ff             	mov    %dl,-0x1(%eax)
  99:	0f b6 11             	movzbl (%ecx),%edx
  9c:	84 d2                	test   %dl,%dl
  9e:	75 f0                	jne    90 <main+0x90>
  *s1 = 0;
  a0:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
  a3:	80 3e 00             	cmpb   $0x0,(%esi)
  a6:	89 f0                	mov    %esi,%eax
  a8:	74 0e                	je     b8 <main+0xb8>
  aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  b0:	83 c0 01             	add    $0x1,%eax
  b3:	80 38 00             	cmpb   $0x0,(%eax)
  b6:	75 f8                	jne    b0 <main+0xb0>
  b8:	b9 2f 00 00 00       	mov    $0x2f,%ecx
  bd:	ba 00 0a 00 00       	mov    $0xa00,%edx
  c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  while (*s2) *s1++ = *s2++;
  c8:	83 c0 01             	add    $0x1,%eax
  cb:	83 c2 01             	add    $0x1,%edx
  ce:	88 48 ff             	mov    %cl,-0x1(%eax)
  d1:	0f b6 0a             	movzbl (%edx),%ecx
  d4:	84 c9                	test   %cl,%cl
  d6:	75 f0                	jne    c8 <main+0xc8>
    }
    char *tem=malloc(100);
    memset(tem,0,sizeof tem);
    strcat(tem,argv[i]);
    strcat(tem,"/yuhuu");
    int foutput=open(tem, O_CREATE | O_RDWR);
  d8:	83 ec 08             	sub    $0x8,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
  db:	c6 00 00             	movb   $0x0,(%eax)
    }
    char *tem=malloc(100);
    memset(tem,0,sizeof tem);
    strcat(tem,argv[i]);
    strcat(tem,"/yuhuu");
    int foutput=open(tem, O_CREATE | O_RDWR);
  de:	68 02 02 00 00       	push   $0x202
  e3:	56                   	push   %esi
  e4:	e8 e9 04 00 00       	call   5d2 <open>
    int finput,fd;
    if((finput = open("yuhuu", O_RDWR)) < 0){
  e9:	59                   	pop    %ecx
    }
    char *tem=malloc(100);
    memset(tem,0,sizeof tem);
    strcat(tem,argv[i]);
    strcat(tem,"/yuhuu");
    int foutput=open(tem, O_CREATE | O_RDWR);
  ea:	89 c3                	mov    %eax,%ebx
    int finput,fd;
    if((finput = open("yuhuu", O_RDWR)) < 0){
  ec:	58                   	pop    %eax
  ed:	6a 02                	push   $0x2
  ef:	68 01 0a 00 00       	push   $0xa01
  f4:	e8 d9 04 00 00       	call   5d2 <open>
  f9:	83 c4 10             	add    $0x10,%esp
  fc:	85 c0                	test   %eax,%eax
  fe:	89 85 e0 fd ff ff    	mov    %eax,-0x220(%ebp)
 104:	0f 88 c2 01 00 00    	js     2cc <main+0x2cc>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
 10a:	80 3e 00             	cmpb   $0x0,(%esi)
    int finput,fd;
    if((finput = open("yuhuu", O_RDWR)) < 0){
      printf(1, "cp: cannot open %s\n", argv[2]);
      exit();
    }
    strcat(tem,argv[i]);
 10d:	8b 0f                	mov    (%edi),%ecx

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
 10f:	89 f0                	mov    %esi,%eax
 111:	74 26                	je     139 <main+0x139>
 113:	90                   	nop
 114:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 118:	83 c0 01             	add    $0x1,%eax
 11b:	80 38 00             	cmpb   $0x0,(%eax)
 11e:	75 f8                	jne    118 <main+0x118>
  while (*s2) *s1++ = *s2++;
 120:	0f b6 11             	movzbl (%ecx),%edx
 123:	84 d2                	test   %dl,%dl
 125:	74 19                	je     140 <main+0x140>
 127:	89 f6                	mov    %esi,%esi
 129:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 130:	83 c0 01             	add    $0x1,%eax
 133:	83 c1 01             	add    $0x1,%ecx
 136:	88 50 ff             	mov    %dl,-0x1(%eax)
 139:	0f b6 11             	movzbl (%ecx),%edx
 13c:	84 d2                	test   %dl,%dl
 13e:	75 f0                	jne    130 <main+0x130>
  *s1 = 0;
 140:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
 143:	80 3e 00             	cmpb   $0x0,(%esi)
 146:	89 f0                	mov    %esi,%eax
 148:	74 0e                	je     158 <main+0x158>
 14a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 150:	83 c0 01             	add    $0x1,%eax
 153:	80 38 00             	cmpb   $0x0,(%eax)
 156:	75 f8                	jne    150 <main+0x150>
 158:	b9 2f 00 00 00       	mov    $0x2f,%ecx
 15d:	ba 00 0a 00 00       	mov    $0xa00,%edx
 162:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  while (*s2) *s1++ = *s2++;
 168:	83 c0 01             	add    $0x1,%eax
 16b:	83 c2 01             	add    $0x1,%edx
 16e:	88 48 ff             	mov    %cl,-0x1(%eax)
 171:	0f b6 0a             	movzbl (%edx),%ecx
 174:	84 c9                	test   %cl,%cl
 176:	75 f0                	jne    168 <main+0x168>
      printf(1, "cp: cannot open %s\n", argv[2]);
      exit();
    }
    strcat(tem,argv[i]);
    strcat(tem,"/yuhuu");
    if((fd = open(tem, 0)) < 0){
 178:	83 ec 08             	sub    $0x8,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
 17b:	c6 00 00             	movb   $0x0,(%eax)
      printf(1, "cp: cannot open %s\n", argv[2]);
      exit();
    }
    strcat(tem,argv[i]);
    strcat(tem,"/yuhuu");
    if((fd = open(tem, 0)) < 0){
 17e:	6a 00                	push   $0x0
 180:	56                   	push   %esi
 181:	e8 4c 04 00 00       	call   5d2 <open>
 186:	83 c4 10             	add    $0x10,%esp
 189:	85 c0                	test   %eax,%eax
 18b:	89 85 dc fd ff ff    	mov    %eax,-0x224(%ebp)
 191:	78 5d                	js     1f0 <main+0x1f0>
      strcat(tem,"/");
      write(foutput,argv[i],strlen(argv[i]));
      close(foutput);
    }
    else{
      printf(1, "cp: file %s already exist \n", argv[2]);
 193:	8b 85 d0 fd ff ff    	mov    -0x230(%ebp),%eax
 199:	83 ec 04             	sub    $0x4,%esp
 19c:	ff 70 08             	pushl  0x8(%eax)
 19f:	68 4e 0a 00 00       	push   $0xa4e
 1a4:	6a 01                	push   $0x1
 1a6:	e8 35 05 00 00       	call   6e0 <printf>
 1ab:	83 c4 10             	add    $0x10,%esp
 1ae:	66 90                	xchg   %ax,%ax
    }
    close(fd);
 1b0:	83 ec 0c             	sub    $0xc,%esp
 1b3:	ff b5 dc fd ff ff    	pushl  -0x224(%ebp)
 1b9:	83 c7 04             	add    $0x4,%edi
 1bc:	e8 f9 03 00 00       	call   5ba <close>
    close(finput);
 1c1:	58                   	pop    %eax
 1c2:	ff b5 e0 fd ff ff    	pushl  -0x220(%ebp)
 1c8:	e8 ed 03 00 00       	call   5ba <close>
  if(argc < 2){
    printf(2, "Usage: mkdir files...\n");
    exit();
  }

  for(i = 1; i < argc; i++){
 1cd:	83 85 e4 fd ff ff 01 	addl   $0x1,-0x21c(%ebp)
 1d4:	83 c4 10             	add    $0x10,%esp
 1d7:	8b 85 e4 fd ff ff    	mov    -0x21c(%ebp),%eax
 1dd:	39 85 d8 fd ff ff    	cmp    %eax,-0x228(%ebp)
 1e3:	0f 85 57 fe ff ff    	jne    40 <main+0x40>
    }
    close(fd);
    close(finput);
  }

  exit();
 1e9:	e8 a4 03 00 00       	call   592 <exit>
 1ee:	66 90                	xchg   %ax,%ax
 1f0:	89 b5 d4 fd ff ff    	mov    %esi,-0x22c(%ebp)
 1f6:	8b b5 e0 fd ff ff    	mov    -0x220(%ebp),%esi
 1fc:	eb 16                	jmp    214 <main+0x214>
 1fe:	66 90                	xchg   %ax,%ax
    strcat(tem,"/yuhuu");
    if((fd = open(tem, 0)) < 0){
      int n;
      char buf[512];
      while((n = read(finput, buf, sizeof(buf))) > 0) {
        write(foutput,buf,n);
 200:	83 ec 04             	sub    $0x4,%esp
 203:	50                   	push   %eax
 204:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 20a:	50                   	push   %eax
 20b:	53                   	push   %ebx
 20c:	e8 a1 03 00 00       	call   5b2 <write>
 211:	83 c4 10             	add    $0x10,%esp
    strcat(tem,argv[i]);
    strcat(tem,"/yuhuu");
    if((fd = open(tem, 0)) < 0){
      int n;
      char buf[512];
      while((n = read(finput, buf, sizeof(buf))) > 0) {
 214:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 21a:	83 ec 04             	sub    $0x4,%esp
 21d:	68 00 02 00 00       	push   $0x200
 222:	50                   	push   %eax
 223:	56                   	push   %esi
 224:	e8 81 03 00 00       	call   5aa <read>
 229:	83 c4 10             	add    $0x10,%esp
 22c:	85 c0                	test   %eax,%eax
 22e:	7f d0                	jg     200 <main+0x200>
 230:	8b b5 d4 fd ff ff    	mov    -0x22c(%ebp),%esi
        write(foutput,buf,n);
      }
      memset(tem,0,sizeof tem);
 236:	83 ec 04             	sub    $0x4,%esp
 239:	6a 04                	push   $0x4
 23b:	6a 00                	push   $0x0
 23d:	56                   	push   %esi
 23e:	e8 bd 01 00 00       	call   400 <memset>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
 243:	83 c4 10             	add    $0x10,%esp
 246:	80 3e 00             	cmpb   $0x0,(%esi)
      char buf[512];
      while((n = read(finput, buf, sizeof(buf))) > 0) {
        write(foutput,buf,n);
      }
      memset(tem,0,sizeof tem);
      strcat(tem,argv[i]);
 249:	8b 0f                	mov    (%edi),%ecx

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
 24b:	89 f0                	mov    %esi,%eax
 24d:	74 1a                	je     269 <main+0x269>
 24f:	90                   	nop
 250:	83 c0 01             	add    $0x1,%eax
 253:	80 38 00             	cmpb   $0x0,(%eax)
 256:	75 f8                	jne    250 <main+0x250>
  while (*s2) *s1++ = *s2++;
 258:	0f b6 11             	movzbl (%ecx),%edx
 25b:	84 d2                	test   %dl,%dl
 25d:	74 11                	je     270 <main+0x270>
 25f:	90                   	nop
 260:	83 c0 01             	add    $0x1,%eax
 263:	83 c1 01             	add    $0x1,%ecx
 266:	88 50 ff             	mov    %dl,-0x1(%eax)
 269:	0f b6 11             	movzbl (%ecx),%edx
 26c:	84 d2                	test   %dl,%dl
 26e:	75 f0                	jne    260 <main+0x260>
  *s1 = 0;
 270:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
 273:	80 3e 00             	cmpb   $0x0,(%esi)
 276:	74 10                	je     288 <main+0x288>
 278:	90                   	nop
 279:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 280:	83 c6 01             	add    $0x1,%esi
 283:	80 3e 00             	cmpb   $0x0,(%esi)
 286:	75 f8                	jne    280 <main+0x280>
        write(foutput,buf,n);
      }
      memset(tem,0,sizeof tem);
      strcat(tem,argv[i]);
      strcat(tem,"/");
      write(foutput,argv[i],strlen(argv[i]));
 288:	83 ec 0c             	sub    $0xc,%esp
char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
 28b:	c6 06 2f             	movb   $0x2f,(%esi)
  *s1 = 0;
 28e:	c6 46 01 00          	movb   $0x0,0x1(%esi)
        write(foutput,buf,n);
      }
      memset(tem,0,sizeof tem);
      strcat(tem,argv[i]);
      strcat(tem,"/");
      write(foutput,argv[i],strlen(argv[i]));
 292:	ff 37                	pushl  (%edi)
 294:	e8 37 01 00 00       	call   3d0 <strlen>
 299:	83 c4 0c             	add    $0xc,%esp
 29c:	50                   	push   %eax
 29d:	ff 37                	pushl  (%edi)
 29f:	53                   	push   %ebx
 2a0:	e8 0d 03 00 00       	call   5b2 <write>
      close(foutput);
 2a5:	89 1c 24             	mov    %ebx,(%esp)
 2a8:	e8 0d 03 00 00       	call   5ba <close>
 2ad:	83 c4 10             	add    $0x10,%esp
 2b0:	e9 fb fe ff ff       	jmp    1b0 <main+0x1b0>
    exit();
  }

  for(i = 1; i < argc; i++){
    if(mkdir(argv[i]) < 0){
      printf(2, "mkdir: %s failed to create\n", argv[i]);
 2b5:	50                   	push   %eax
 2b6:	ff 37                	pushl  (%edi)
 2b8:	68 1e 0a 00 00       	push   $0xa1e
 2bd:	6a 02                	push   $0x2
 2bf:	e8 1c 04 00 00       	call   6e0 <printf>
      break;
 2c4:	83 c4 10             	add    $0x10,%esp
 2c7:	e9 1d ff ff ff       	jmp    1e9 <main+0x1e9>
    strcat(tem,argv[i]);
    strcat(tem,"/yuhuu");
    int foutput=open(tem, O_CREATE | O_RDWR);
    int finput,fd;
    if((finput = open("yuhuu", O_RDWR)) < 0){
      printf(1, "cp: cannot open %s\n", argv[2]);
 2cc:	8b 85 d0 fd ff ff    	mov    -0x230(%ebp),%eax
 2d2:	52                   	push   %edx
 2d3:	ff 70 08             	pushl  0x8(%eax)
 2d6:	68 3a 0a 00 00       	push   $0xa3a
 2db:	6a 01                	push   $0x1
 2dd:	e8 fe 03 00 00       	call   6e0 <printf>
      exit();
 2e2:	e8 ab 02 00 00       	call   592 <exit>
main(int argc, char *argv[])
{
  int i;

  if(argc < 2){
    printf(2, "Usage: mkdir files...\n");
 2e7:	50                   	push   %eax
 2e8:	50                   	push   %eax
 2e9:	68 07 0a 00 00       	push   $0xa07
 2ee:	6a 02                	push   $0x2
 2f0:	e8 eb 03 00 00       	call   6e0 <printf>
    exit();
 2f5:	e8 98 02 00 00       	call   592 <exit>
 2fa:	66 90                	xchg   %ax,%ax
 2fc:	66 90                	xchg   %ax,%ax
 2fe:	66 90                	xchg   %ax,%ax

00000300 <strcat>:
#include "fcntl.h"
#include <assert.h>
#include <stdarg.h>

char* strcat(char* s1, const char* s2)
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	53                   	push   %ebx
 304:	8b 45 08             	mov    0x8(%ebp),%eax
 307:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char* b = s1;

  while (*s1) ++s1;
 30a:	80 38 00             	cmpb   $0x0,(%eax)
 30d:	89 c2                	mov    %eax,%edx
 30f:	74 28                	je     339 <strcat+0x39>
 311:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 318:	83 c2 01             	add    $0x1,%edx
 31b:	80 3a 00             	cmpb   $0x0,(%edx)
 31e:	75 f8                	jne    318 <strcat+0x18>
  while (*s2) *s1++ = *s2++;
 320:	0f b6 0b             	movzbl (%ebx),%ecx
 323:	84 c9                	test   %cl,%cl
 325:	74 19                	je     340 <strcat+0x40>
 327:	89 f6                	mov    %esi,%esi
 329:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 330:	83 c2 01             	add    $0x1,%edx
 333:	83 c3 01             	add    $0x1,%ebx
 336:	88 4a ff             	mov    %cl,-0x1(%edx)
 339:	0f b6 0b             	movzbl (%ebx),%ecx
 33c:	84 c9                	test   %cl,%cl
 33e:	75 f0                	jne    330 <strcat+0x30>
  *s1 = 0;
 340:	c6 02 00             	movb   $0x0,(%edx)

  return b;
}
 343:	5b                   	pop    %ebx
 344:	5d                   	pop    %ebp
 345:	c3                   	ret    
 346:	66 90                	xchg   %ax,%ax
 348:	66 90                	xchg   %ax,%ax
 34a:	66 90                	xchg   %ax,%ax
 34c:	66 90                	xchg   %ax,%ax
 34e:	66 90                	xchg   %ax,%ax

00000350 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	53                   	push   %ebx
 354:	8b 45 08             	mov    0x8(%ebp),%eax
 357:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 35a:	89 c2                	mov    %eax,%edx
 35c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 360:	83 c1 01             	add    $0x1,%ecx
 363:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 367:	83 c2 01             	add    $0x1,%edx
 36a:	84 db                	test   %bl,%bl
 36c:	88 5a ff             	mov    %bl,-0x1(%edx)
 36f:	75 ef                	jne    360 <strcpy+0x10>
    ;
  return os;
}
 371:	5b                   	pop    %ebx
 372:	5d                   	pop    %ebp
 373:	c3                   	ret    
 374:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 37a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000380 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 380:	55                   	push   %ebp
 381:	89 e5                	mov    %esp,%ebp
 383:	56                   	push   %esi
 384:	53                   	push   %ebx
 385:	8b 55 08             	mov    0x8(%ebp),%edx
 388:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 38b:	0f b6 02             	movzbl (%edx),%eax
 38e:	0f b6 19             	movzbl (%ecx),%ebx
 391:	84 c0                	test   %al,%al
 393:	75 1e                	jne    3b3 <strcmp+0x33>
 395:	eb 29                	jmp    3c0 <strcmp+0x40>
 397:	89 f6                	mov    %esi,%esi
 399:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 3a0:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 3a3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 3a6:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 3a9:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 3ad:	84 c0                	test   %al,%al
 3af:	74 0f                	je     3c0 <strcmp+0x40>
 3b1:	89 f1                	mov    %esi,%ecx
 3b3:	38 d8                	cmp    %bl,%al
 3b5:	74 e9                	je     3a0 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
 3b7:	29 d8                	sub    %ebx,%eax
}
 3b9:	5b                   	pop    %ebx
 3ba:	5e                   	pop    %esi
 3bb:	5d                   	pop    %ebp
 3bc:	c3                   	ret    
 3bd:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 3c0:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 3c2:	29 d8                	sub    %ebx,%eax
}
 3c4:	5b                   	pop    %ebx
 3c5:	5e                   	pop    %esi
 3c6:	5d                   	pop    %ebp
 3c7:	c3                   	ret    
 3c8:	90                   	nop
 3c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003d0 <strlen>:

uint
strlen(char *s)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 3d6:	80 39 00             	cmpb   $0x0,(%ecx)
 3d9:	74 12                	je     3ed <strlen+0x1d>
 3db:	31 d2                	xor    %edx,%edx
 3dd:	8d 76 00             	lea    0x0(%esi),%esi
 3e0:	83 c2 01             	add    $0x1,%edx
 3e3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 3e7:	89 d0                	mov    %edx,%eax
 3e9:	75 f5                	jne    3e0 <strlen+0x10>
    ;
  return n;
}
 3eb:	5d                   	pop    %ebp
 3ec:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 3ed:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 3ef:	5d                   	pop    %ebp
 3f0:	c3                   	ret    
 3f1:	eb 0d                	jmp    400 <memset>
 3f3:	90                   	nop
 3f4:	90                   	nop
 3f5:	90                   	nop
 3f6:	90                   	nop
 3f7:	90                   	nop
 3f8:	90                   	nop
 3f9:	90                   	nop
 3fa:	90                   	nop
 3fb:	90                   	nop
 3fc:	90                   	nop
 3fd:	90                   	nop
 3fe:	90                   	nop
 3ff:	90                   	nop

00000400 <memset>:

void*
memset(void *dst, int c, uint n)
{
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	57                   	push   %edi
 404:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 407:	8b 4d 10             	mov    0x10(%ebp),%ecx
 40a:	8b 45 0c             	mov    0xc(%ebp),%eax
 40d:	89 d7                	mov    %edx,%edi
 40f:	fc                   	cld    
 410:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 412:	89 d0                	mov    %edx,%eax
 414:	5f                   	pop    %edi
 415:	5d                   	pop    %ebp
 416:	c3                   	ret    
 417:	89 f6                	mov    %esi,%esi
 419:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000420 <strchr>:

char*
strchr(const char *s, char c)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	53                   	push   %ebx
 424:	8b 45 08             	mov    0x8(%ebp),%eax
 427:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 42a:	0f b6 10             	movzbl (%eax),%edx
 42d:	84 d2                	test   %dl,%dl
 42f:	74 1d                	je     44e <strchr+0x2e>
    if(*s == c)
 431:	38 d3                	cmp    %dl,%bl
 433:	89 d9                	mov    %ebx,%ecx
 435:	75 0d                	jne    444 <strchr+0x24>
 437:	eb 17                	jmp    450 <strchr+0x30>
 439:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 440:	38 ca                	cmp    %cl,%dl
 442:	74 0c                	je     450 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 444:	83 c0 01             	add    $0x1,%eax
 447:	0f b6 10             	movzbl (%eax),%edx
 44a:	84 d2                	test   %dl,%dl
 44c:	75 f2                	jne    440 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 44e:	31 c0                	xor    %eax,%eax
}
 450:	5b                   	pop    %ebx
 451:	5d                   	pop    %ebp
 452:	c3                   	ret    
 453:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 459:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000460 <gets>:

char*
gets(char *buf, int max)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	57                   	push   %edi
 464:	56                   	push   %esi
 465:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 466:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
 468:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
 46b:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 46e:	eb 29                	jmp    499 <gets+0x39>
    cc = read(0, &c, 1);
 470:	83 ec 04             	sub    $0x4,%esp
 473:	6a 01                	push   $0x1
 475:	57                   	push   %edi
 476:	6a 00                	push   $0x0
 478:	e8 2d 01 00 00       	call   5aa <read>
    if(cc < 1)
 47d:	83 c4 10             	add    $0x10,%esp
 480:	85 c0                	test   %eax,%eax
 482:	7e 1d                	jle    4a1 <gets+0x41>
      break;
    buf[i++] = c;
 484:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 488:	8b 55 08             	mov    0x8(%ebp),%edx
 48b:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
 48d:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 48f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 493:	74 1b                	je     4b0 <gets+0x50>
 495:	3c 0d                	cmp    $0xd,%al
 497:	74 17                	je     4b0 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 499:	8d 5e 01             	lea    0x1(%esi),%ebx
 49c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 49f:	7c cf                	jl     470 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 4a1:	8b 45 08             	mov    0x8(%ebp),%eax
 4a4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 4a8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4ab:	5b                   	pop    %ebx
 4ac:	5e                   	pop    %esi
 4ad:	5f                   	pop    %edi
 4ae:	5d                   	pop    %ebp
 4af:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 4b0:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 4b3:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 4b5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 4b9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4bc:	5b                   	pop    %ebx
 4bd:	5e                   	pop    %esi
 4be:	5f                   	pop    %edi
 4bf:	5d                   	pop    %ebp
 4c0:	c3                   	ret    
 4c1:	eb 0d                	jmp    4d0 <stat>
 4c3:	90                   	nop
 4c4:	90                   	nop
 4c5:	90                   	nop
 4c6:	90                   	nop
 4c7:	90                   	nop
 4c8:	90                   	nop
 4c9:	90                   	nop
 4ca:	90                   	nop
 4cb:	90                   	nop
 4cc:	90                   	nop
 4cd:	90                   	nop
 4ce:	90                   	nop
 4cf:	90                   	nop

000004d0 <stat>:

int
stat(char *n, struct stat *st)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	56                   	push   %esi
 4d4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 4d5:	83 ec 08             	sub    $0x8,%esp
 4d8:	6a 00                	push   $0x0
 4da:	ff 75 08             	pushl  0x8(%ebp)
 4dd:	e8 f0 00 00 00       	call   5d2 <open>
  if(fd < 0)
 4e2:	83 c4 10             	add    $0x10,%esp
 4e5:	85 c0                	test   %eax,%eax
 4e7:	78 27                	js     510 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 4e9:	83 ec 08             	sub    $0x8,%esp
 4ec:	ff 75 0c             	pushl  0xc(%ebp)
 4ef:	89 c3                	mov    %eax,%ebx
 4f1:	50                   	push   %eax
 4f2:	e8 f3 00 00 00       	call   5ea <fstat>
 4f7:	89 c6                	mov    %eax,%esi
  close(fd);
 4f9:	89 1c 24             	mov    %ebx,(%esp)
 4fc:	e8 b9 00 00 00       	call   5ba <close>
  return r;
 501:	83 c4 10             	add    $0x10,%esp
 504:	89 f0                	mov    %esi,%eax
}
 506:	8d 65 f8             	lea    -0x8(%ebp),%esp
 509:	5b                   	pop    %ebx
 50a:	5e                   	pop    %esi
 50b:	5d                   	pop    %ebp
 50c:	c3                   	ret    
 50d:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 510:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 515:	eb ef                	jmp    506 <stat+0x36>
 517:	89 f6                	mov    %esi,%esi
 519:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000520 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	53                   	push   %ebx
 524:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 527:	0f be 11             	movsbl (%ecx),%edx
 52a:	8d 42 d0             	lea    -0x30(%edx),%eax
 52d:	3c 09                	cmp    $0x9,%al
 52f:	b8 00 00 00 00       	mov    $0x0,%eax
 534:	77 1f                	ja     555 <atoi+0x35>
 536:	8d 76 00             	lea    0x0(%esi),%esi
 539:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 540:	8d 04 80             	lea    (%eax,%eax,4),%eax
 543:	83 c1 01             	add    $0x1,%ecx
 546:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 54a:	0f be 11             	movsbl (%ecx),%edx
 54d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 550:	80 fb 09             	cmp    $0x9,%bl
 553:	76 eb                	jbe    540 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
 555:	5b                   	pop    %ebx
 556:	5d                   	pop    %ebp
 557:	c3                   	ret    
 558:	90                   	nop
 559:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000560 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	56                   	push   %esi
 564:	53                   	push   %ebx
 565:	8b 5d 10             	mov    0x10(%ebp),%ebx
 568:	8b 45 08             	mov    0x8(%ebp),%eax
 56b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 56e:	85 db                	test   %ebx,%ebx
 570:	7e 14                	jle    586 <memmove+0x26>
 572:	31 d2                	xor    %edx,%edx
 574:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 578:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 57c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 57f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 582:	39 da                	cmp    %ebx,%edx
 584:	75 f2                	jne    578 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 586:	5b                   	pop    %ebx
 587:	5e                   	pop    %esi
 588:	5d                   	pop    %ebp
 589:	c3                   	ret    

0000058a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 58a:	b8 01 00 00 00       	mov    $0x1,%eax
 58f:	cd 40                	int    $0x40
 591:	c3                   	ret    

00000592 <exit>:
SYSCALL(exit)
 592:	b8 02 00 00 00       	mov    $0x2,%eax
 597:	cd 40                	int    $0x40
 599:	c3                   	ret    

0000059a <wait>:
SYSCALL(wait)
 59a:	b8 03 00 00 00       	mov    $0x3,%eax
 59f:	cd 40                	int    $0x40
 5a1:	c3                   	ret    

000005a2 <pipe>:
SYSCALL(pipe)
 5a2:	b8 04 00 00 00       	mov    $0x4,%eax
 5a7:	cd 40                	int    $0x40
 5a9:	c3                   	ret    

000005aa <read>:
SYSCALL(read)
 5aa:	b8 05 00 00 00       	mov    $0x5,%eax
 5af:	cd 40                	int    $0x40
 5b1:	c3                   	ret    

000005b2 <write>:
SYSCALL(write)
 5b2:	b8 10 00 00 00       	mov    $0x10,%eax
 5b7:	cd 40                	int    $0x40
 5b9:	c3                   	ret    

000005ba <close>:
SYSCALL(close)
 5ba:	b8 15 00 00 00       	mov    $0x15,%eax
 5bf:	cd 40                	int    $0x40
 5c1:	c3                   	ret    

000005c2 <kill>:
SYSCALL(kill)
 5c2:	b8 06 00 00 00       	mov    $0x6,%eax
 5c7:	cd 40                	int    $0x40
 5c9:	c3                   	ret    

000005ca <exec>:
SYSCALL(exec)
 5ca:	b8 07 00 00 00       	mov    $0x7,%eax
 5cf:	cd 40                	int    $0x40
 5d1:	c3                   	ret    

000005d2 <open>:
SYSCALL(open)
 5d2:	b8 0f 00 00 00       	mov    $0xf,%eax
 5d7:	cd 40                	int    $0x40
 5d9:	c3                   	ret    

000005da <mknod>:
SYSCALL(mknod)
 5da:	b8 11 00 00 00       	mov    $0x11,%eax
 5df:	cd 40                	int    $0x40
 5e1:	c3                   	ret    

000005e2 <unlink>:
SYSCALL(unlink)
 5e2:	b8 12 00 00 00       	mov    $0x12,%eax
 5e7:	cd 40                	int    $0x40
 5e9:	c3                   	ret    

000005ea <fstat>:
SYSCALL(fstat)
 5ea:	b8 08 00 00 00       	mov    $0x8,%eax
 5ef:	cd 40                	int    $0x40
 5f1:	c3                   	ret    

000005f2 <link>:
SYSCALL(link)
 5f2:	b8 13 00 00 00       	mov    $0x13,%eax
 5f7:	cd 40                	int    $0x40
 5f9:	c3                   	ret    

000005fa <mkdir>:
SYSCALL(mkdir)
 5fa:	b8 14 00 00 00       	mov    $0x14,%eax
 5ff:	cd 40                	int    $0x40
 601:	c3                   	ret    

00000602 <chdir>:
SYSCALL(chdir)
 602:	b8 09 00 00 00       	mov    $0x9,%eax
 607:	cd 40                	int    $0x40
 609:	c3                   	ret    

0000060a <dup>:
SYSCALL(dup)
 60a:	b8 0a 00 00 00       	mov    $0xa,%eax
 60f:	cd 40                	int    $0x40
 611:	c3                   	ret    

00000612 <getpid>:
SYSCALL(getpid)
 612:	b8 0b 00 00 00       	mov    $0xb,%eax
 617:	cd 40                	int    $0x40
 619:	c3                   	ret    

0000061a <sbrk>:
SYSCALL(sbrk)
 61a:	b8 0c 00 00 00       	mov    $0xc,%eax
 61f:	cd 40                	int    $0x40
 621:	c3                   	ret    

00000622 <sleep>:
SYSCALL(sleep)
 622:	b8 0d 00 00 00       	mov    $0xd,%eax
 627:	cd 40                	int    $0x40
 629:	c3                   	ret    

0000062a <uptime>:
SYSCALL(uptime)
 62a:	b8 0e 00 00 00       	mov    $0xe,%eax
 62f:	cd 40                	int    $0x40
 631:	c3                   	ret    

00000632 <getcwd>:
SYSCALL(getcwd)
 632:	b8 16 00 00 00       	mov    $0x16,%eax
 637:	cd 40                	int    $0x40
 639:	c3                   	ret    
 63a:	66 90                	xchg   %ax,%ax
 63c:	66 90                	xchg   %ax,%ax
 63e:	66 90                	xchg   %ax,%ax

00000640 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 640:	55                   	push   %ebp
 641:	89 e5                	mov    %esp,%ebp
 643:	57                   	push   %edi
 644:	56                   	push   %esi
 645:	53                   	push   %ebx
 646:	89 c6                	mov    %eax,%esi
 648:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 64b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 64e:	85 db                	test   %ebx,%ebx
 650:	74 7e                	je     6d0 <printint+0x90>
 652:	89 d0                	mov    %edx,%eax
 654:	c1 e8 1f             	shr    $0x1f,%eax
 657:	84 c0                	test   %al,%al
 659:	74 75                	je     6d0 <printint+0x90>
    neg = 1;
    x = -xx;
 65b:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 65d:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
 664:	f7 d8                	neg    %eax
 666:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 669:	31 ff                	xor    %edi,%edi
 66b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 66e:	89 ce                	mov    %ecx,%esi
 670:	eb 08                	jmp    67a <printint+0x3a>
 672:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 678:	89 cf                	mov    %ecx,%edi
 67a:	31 d2                	xor    %edx,%edx
 67c:	8d 4f 01             	lea    0x1(%edi),%ecx
 67f:	f7 f6                	div    %esi
 681:	0f b6 92 74 0a 00 00 	movzbl 0xa74(%edx),%edx
  }while((x /= base) != 0);
 688:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 68a:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 68d:	75 e9                	jne    678 <printint+0x38>
  if(neg)
 68f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 692:	8b 75 c0             	mov    -0x40(%ebp),%esi
 695:	85 c0                	test   %eax,%eax
 697:	74 08                	je     6a1 <printint+0x61>
    buf[i++] = '-';
 699:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
 69e:	8d 4f 02             	lea    0x2(%edi),%ecx
 6a1:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
 6a5:	8d 76 00             	lea    0x0(%esi),%esi
 6a8:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6ab:	83 ec 04             	sub    $0x4,%esp
 6ae:	83 ef 01             	sub    $0x1,%edi
 6b1:	6a 01                	push   $0x1
 6b3:	53                   	push   %ebx
 6b4:	56                   	push   %esi
 6b5:	88 45 d7             	mov    %al,-0x29(%ebp)
 6b8:	e8 f5 fe ff ff       	call   5b2 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 6bd:	83 c4 10             	add    $0x10,%esp
 6c0:	39 df                	cmp    %ebx,%edi
 6c2:	75 e4                	jne    6a8 <printint+0x68>
    putc(fd, buf[i]);
}
 6c4:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6c7:	5b                   	pop    %ebx
 6c8:	5e                   	pop    %esi
 6c9:	5f                   	pop    %edi
 6ca:	5d                   	pop    %ebp
 6cb:	c3                   	ret    
 6cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 6d0:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 6d2:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 6d9:	eb 8b                	jmp    666 <printint+0x26>
 6db:	90                   	nop
 6dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000006e0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 6e0:	55                   	push   %ebp
 6e1:	89 e5                	mov    %esp,%ebp
 6e3:	57                   	push   %edi
 6e4:	56                   	push   %esi
 6e5:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6e6:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 6e9:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6ec:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 6ef:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6f2:	89 45 d0             	mov    %eax,-0x30(%ebp)
 6f5:	0f b6 1e             	movzbl (%esi),%ebx
 6f8:	83 c6 01             	add    $0x1,%esi
 6fb:	84 db                	test   %bl,%bl
 6fd:	0f 84 b0 00 00 00    	je     7b3 <printf+0xd3>
 703:	31 d2                	xor    %edx,%edx
 705:	eb 39                	jmp    740 <printf+0x60>
 707:	89 f6                	mov    %esi,%esi
 709:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 710:	83 f8 25             	cmp    $0x25,%eax
 713:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
 716:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 71b:	74 18                	je     735 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 71d:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 720:	83 ec 04             	sub    $0x4,%esp
 723:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 726:	6a 01                	push   $0x1
 728:	50                   	push   %eax
 729:	57                   	push   %edi
 72a:	e8 83 fe ff ff       	call   5b2 <write>
 72f:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 732:	83 c4 10             	add    $0x10,%esp
 735:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 738:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 73c:	84 db                	test   %bl,%bl
 73e:	74 73                	je     7b3 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
 740:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 742:	0f be cb             	movsbl %bl,%ecx
 745:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 748:	74 c6                	je     710 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 74a:	83 fa 25             	cmp    $0x25,%edx
 74d:	75 e6                	jne    735 <printf+0x55>
      if(c == 'd'){
 74f:	83 f8 64             	cmp    $0x64,%eax
 752:	0f 84 f8 00 00 00    	je     850 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 758:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 75e:	83 f9 70             	cmp    $0x70,%ecx
 761:	74 5d                	je     7c0 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 763:	83 f8 73             	cmp    $0x73,%eax
 766:	0f 84 84 00 00 00    	je     7f0 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 76c:	83 f8 63             	cmp    $0x63,%eax
 76f:	0f 84 ea 00 00 00    	je     85f <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 775:	83 f8 25             	cmp    $0x25,%eax
 778:	0f 84 c2 00 00 00    	je     840 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 77e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 781:	83 ec 04             	sub    $0x4,%esp
 784:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 788:	6a 01                	push   $0x1
 78a:	50                   	push   %eax
 78b:	57                   	push   %edi
 78c:	e8 21 fe ff ff       	call   5b2 <write>
 791:	83 c4 0c             	add    $0xc,%esp
 794:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 797:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 79a:	6a 01                	push   $0x1
 79c:	50                   	push   %eax
 79d:	57                   	push   %edi
 79e:	83 c6 01             	add    $0x1,%esi
 7a1:	e8 0c fe ff ff       	call   5b2 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 7a6:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 7aa:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 7ad:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 7af:	84 db                	test   %bl,%bl
 7b1:	75 8d                	jne    740 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 7b3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7b6:	5b                   	pop    %ebx
 7b7:	5e                   	pop    %esi
 7b8:	5f                   	pop    %edi
 7b9:	5d                   	pop    %ebp
 7ba:	c3                   	ret    
 7bb:	90                   	nop
 7bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 7c0:	83 ec 0c             	sub    $0xc,%esp
 7c3:	b9 10 00 00 00       	mov    $0x10,%ecx
 7c8:	6a 00                	push   $0x0
 7ca:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 7cd:	89 f8                	mov    %edi,%eax
 7cf:	8b 13                	mov    (%ebx),%edx
 7d1:	e8 6a fe ff ff       	call   640 <printint>
        ap++;
 7d6:	89 d8                	mov    %ebx,%eax
 7d8:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 7db:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
 7dd:	83 c0 04             	add    $0x4,%eax
 7e0:	89 45 d0             	mov    %eax,-0x30(%ebp)
 7e3:	e9 4d ff ff ff       	jmp    735 <printf+0x55>
 7e8:	90                   	nop
 7e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 7f0:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7f3:	8b 18                	mov    (%eax),%ebx
        ap++;
 7f5:	83 c0 04             	add    $0x4,%eax
 7f8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
 7fb:	b8 6a 0a 00 00       	mov    $0xa6a,%eax
 800:	85 db                	test   %ebx,%ebx
 802:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
 805:	0f b6 03             	movzbl (%ebx),%eax
 808:	84 c0                	test   %al,%al
 80a:	74 23                	je     82f <printf+0x14f>
 80c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 810:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 813:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 816:	83 ec 04             	sub    $0x4,%esp
 819:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 81b:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 81e:	50                   	push   %eax
 81f:	57                   	push   %edi
 820:	e8 8d fd ff ff       	call   5b2 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 825:	0f b6 03             	movzbl (%ebx),%eax
 828:	83 c4 10             	add    $0x10,%esp
 82b:	84 c0                	test   %al,%al
 82d:	75 e1                	jne    810 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 82f:	31 d2                	xor    %edx,%edx
 831:	e9 ff fe ff ff       	jmp    735 <printf+0x55>
 836:	8d 76 00             	lea    0x0(%esi),%esi
 839:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 840:	83 ec 04             	sub    $0x4,%esp
 843:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 846:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 849:	6a 01                	push   $0x1
 84b:	e9 4c ff ff ff       	jmp    79c <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 850:	83 ec 0c             	sub    $0xc,%esp
 853:	b9 0a 00 00 00       	mov    $0xa,%ecx
 858:	6a 01                	push   $0x1
 85a:	e9 6b ff ff ff       	jmp    7ca <printf+0xea>
 85f:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 862:	83 ec 04             	sub    $0x4,%esp
 865:	8b 03                	mov    (%ebx),%eax
 867:	6a 01                	push   $0x1
 869:	88 45 e4             	mov    %al,-0x1c(%ebp)
 86c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 86f:	50                   	push   %eax
 870:	57                   	push   %edi
 871:	e8 3c fd ff ff       	call   5b2 <write>
 876:	e9 5b ff ff ff       	jmp    7d6 <printf+0xf6>
 87b:	66 90                	xchg   %ax,%ax
 87d:	66 90                	xchg   %ax,%ax
 87f:	90                   	nop

00000880 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 880:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 881:	a1 3c 0d 00 00       	mov    0xd3c,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 886:	89 e5                	mov    %esp,%ebp
 888:	57                   	push   %edi
 889:	56                   	push   %esi
 88a:	53                   	push   %ebx
 88b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 88e:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 890:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 893:	39 c8                	cmp    %ecx,%eax
 895:	73 19                	jae    8b0 <free+0x30>
 897:	89 f6                	mov    %esi,%esi
 899:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8a0:	39 d1                	cmp    %edx,%ecx
 8a2:	72 1c                	jb     8c0 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8a4:	39 d0                	cmp    %edx,%eax
 8a6:	73 18                	jae    8c0 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
 8a8:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8aa:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8ac:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8ae:	72 f0                	jb     8a0 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8b0:	39 d0                	cmp    %edx,%eax
 8b2:	72 f4                	jb     8a8 <free+0x28>
 8b4:	39 d1                	cmp    %edx,%ecx
 8b6:	73 f0                	jae    8a8 <free+0x28>
 8b8:	90                   	nop
 8b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
 8c0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8c3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8c6:	39 d7                	cmp    %edx,%edi
 8c8:	74 19                	je     8e3 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 8ca:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 8cd:	8b 50 04             	mov    0x4(%eax),%edx
 8d0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 8d3:	39 f1                	cmp    %esi,%ecx
 8d5:	74 23                	je     8fa <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 8d7:	89 08                	mov    %ecx,(%eax)
  freep = p;
 8d9:	a3 3c 0d 00 00       	mov    %eax,0xd3c
}
 8de:	5b                   	pop    %ebx
 8df:	5e                   	pop    %esi
 8e0:	5f                   	pop    %edi
 8e1:	5d                   	pop    %ebp
 8e2:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 8e3:	03 72 04             	add    0x4(%edx),%esi
 8e6:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 8e9:	8b 10                	mov    (%eax),%edx
 8eb:	8b 12                	mov    (%edx),%edx
 8ed:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 8f0:	8b 50 04             	mov    0x4(%eax),%edx
 8f3:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 8f6:	39 f1                	cmp    %esi,%ecx
 8f8:	75 dd                	jne    8d7 <free+0x57>
    p->s.size += bp->s.size;
 8fa:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 8fd:	a3 3c 0d 00 00       	mov    %eax,0xd3c
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 902:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 905:	8b 53 f8             	mov    -0x8(%ebx),%edx
 908:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 90a:	5b                   	pop    %ebx
 90b:	5e                   	pop    %esi
 90c:	5f                   	pop    %edi
 90d:	5d                   	pop    %ebp
 90e:	c3                   	ret    
 90f:	90                   	nop

00000910 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 910:	55                   	push   %ebp
 911:	89 e5                	mov    %esp,%ebp
 913:	57                   	push   %edi
 914:	56                   	push   %esi
 915:	53                   	push   %ebx
 916:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 919:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 91c:	8b 15 3c 0d 00 00    	mov    0xd3c,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 922:	8d 78 07             	lea    0x7(%eax),%edi
 925:	c1 ef 03             	shr    $0x3,%edi
 928:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 92b:	85 d2                	test   %edx,%edx
 92d:	0f 84 a3 00 00 00    	je     9d6 <malloc+0xc6>
 933:	8b 02                	mov    (%edx),%eax
 935:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 938:	39 cf                	cmp    %ecx,%edi
 93a:	76 74                	jbe    9b0 <malloc+0xa0>
 93c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 942:	be 00 10 00 00       	mov    $0x1000,%esi
 947:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 94e:	0f 43 f7             	cmovae %edi,%esi
 951:	ba 00 80 00 00       	mov    $0x8000,%edx
 956:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 95c:	0f 46 da             	cmovbe %edx,%ebx
 95f:	eb 10                	jmp    971 <malloc+0x61>
 961:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 968:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 96a:	8b 48 04             	mov    0x4(%eax),%ecx
 96d:	39 cf                	cmp    %ecx,%edi
 96f:	76 3f                	jbe    9b0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 971:	39 05 3c 0d 00 00    	cmp    %eax,0xd3c
 977:	89 c2                	mov    %eax,%edx
 979:	75 ed                	jne    968 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 97b:	83 ec 0c             	sub    $0xc,%esp
 97e:	53                   	push   %ebx
 97f:	e8 96 fc ff ff       	call   61a <sbrk>
  if(p == (char*)-1)
 984:	83 c4 10             	add    $0x10,%esp
 987:	83 f8 ff             	cmp    $0xffffffff,%eax
 98a:	74 1c                	je     9a8 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 98c:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
 98f:	83 ec 0c             	sub    $0xc,%esp
 992:	83 c0 08             	add    $0x8,%eax
 995:	50                   	push   %eax
 996:	e8 e5 fe ff ff       	call   880 <free>
  return freep;
 99b:	8b 15 3c 0d 00 00    	mov    0xd3c,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 9a1:	83 c4 10             	add    $0x10,%esp
 9a4:	85 d2                	test   %edx,%edx
 9a6:	75 c0                	jne    968 <malloc+0x58>
        return 0;
 9a8:	31 c0                	xor    %eax,%eax
 9aa:	eb 1c                	jmp    9c8 <malloc+0xb8>
 9ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
 9b0:	39 cf                	cmp    %ecx,%edi
 9b2:	74 1c                	je     9d0 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 9b4:	29 f9                	sub    %edi,%ecx
 9b6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 9b9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 9bc:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
 9bf:	89 15 3c 0d 00 00    	mov    %edx,0xd3c
      return (void*)(p + 1);
 9c5:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 9c8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 9cb:	5b                   	pop    %ebx
 9cc:	5e                   	pop    %esi
 9cd:	5f                   	pop    %edi
 9ce:	5d                   	pop    %ebp
 9cf:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 9d0:	8b 08                	mov    (%eax),%ecx
 9d2:	89 0a                	mov    %ecx,(%edx)
 9d4:	eb e9                	jmp    9bf <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 9d6:	c7 05 3c 0d 00 00 40 	movl   $0xd40,0xd3c
 9dd:	0d 00 00 
 9e0:	c7 05 40 0d 00 00 40 	movl   $0xd40,0xd40
 9e7:	0d 00 00 
    base.s.size = 0;
 9ea:	b8 40 0d 00 00       	mov    $0xd40,%eax
 9ef:	c7 05 44 0d 00 00 00 	movl   $0x0,0xd44
 9f6:	00 00 00 
 9f9:	e9 3e ff ff ff       	jmp    93c <malloc+0x2c>
