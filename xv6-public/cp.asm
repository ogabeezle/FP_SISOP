
_cp:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  }
  close(fd);
}

int main(int argc, char *argv[])
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
      11:	83 ec 18             	sub    $0x18,%esp
  if(argc < 2){
      14:	83 39 01             	cmpl   $0x1,(%ecx)
  }
  close(fd);
}

int main(int argc, char *argv[])
{
      17:	8b 59 04             	mov    0x4(%ecx),%ebx
  if(argc < 2){
      1a:	7e 51                	jle    6d <main+0x6d>
    exit();
  }
  printf(1,"%d\n",strcmp(argv[1],"-R"));
      1c:	83 ec 08             	sub    $0x8,%esp
      1f:	68 01 12 00 00       	push   $0x1201
      24:	ff 73 04             	pushl  0x4(%ebx)
      27:	e8 94 0a 00 00       	call   ac0 <strcmp>
      2c:	83 c4 0c             	add    $0xc,%esp
      2f:	50                   	push   %eax
      30:	68 04 12 00 00       	push   $0x1204
      35:	6a 01                	push   $0x1
      37:	e8 e4 0d 00 00       	call   e20 <printf>
  if(strcmp(argv[1],"-R")==0){
      3c:	5e                   	pop    %esi
      3d:	5f                   	pop    %edi
      3e:	68 01 12 00 00       	push   $0x1201
      43:	ff 73 04             	pushl  0x4(%ebx)
      46:	e8 75 0a 00 00       	call   ac0 <strcmp>
      4b:	83 c4 10             	add    $0x10,%esp
      4e:	85 c0                	test   %eax,%eax
      50:	74 20                	je     72 <main+0x72>
    memset (tempb,0,sizeof tempb);
    strcat(tempb,buf);
    strcat(tempb,argv[3]);
    cpR(tempa,tempb);
  }
  if(strcmp(argv[1],"*")){
      52:	83 ec 08             	sub    $0x8,%esp
      55:	68 08 12 00 00       	push   $0x1208
      5a:	ff 73 04             	pushl  0x4(%ebx)
      5d:	e8 5e 0a 00 00       	call   ac0 <strcmp>
      62:	83 c4 10             	add    $0x10,%esp
      65:	85 c0                	test   %eax,%eax
      67:	0f 84 29 01 00 00    	je     196 <main+0x196>
}

int main(int argc, char *argv[])
{
  if(argc < 2){
    exit();
      6d:	e8 60 0c 00 00       	call   cd2 <exit>
  }
  printf(1,"%d\n",strcmp(argv[1],"-R"));
  if(strcmp(argv[1],"-R")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
      72:	51                   	push   %ecx
      73:	51                   	push   %ecx
      74:	68 02 02 00 00       	push   $0x202
      79:	68 41 11 00 00       	push   $0x1141
      7e:	e8 8f 0c 00 00       	call   d12 <open>
    char *buf=malloc(100);
      83:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
  if(argc < 2){
    exit();
  }
  printf(1,"%d\n",strcmp(argv[1],"-R"));
  if(strcmp(argv[1],"-R")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
      8a:	89 c6                	mov    %eax,%esi
    char *buf=malloc(100);
      8c:	e8 bf 0f 00 00       	call   1050 <malloc>
    memset (buf,0,sizeof buf);
      91:	83 c4 0c             	add    $0xc,%esp
    exit();
  }
  printf(1,"%d\n",strcmp(argv[1],"-R"));
  if(strcmp(argv[1],"-R")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
    char *buf=malloc(100);
      94:	89 c7                	mov    %eax,%edi
    memset (buf,0,sizeof buf);
      96:	6a 04                	push   $0x4
      98:	6a 00                	push   $0x0
      9a:	50                   	push   %eax
      9b:	e8 a0 0a 00 00       	call   b40 <memset>
    read(key, buf, sizeof(buf));
      a0:	83 c4 0c             	add    $0xc,%esp
      a3:	6a 04                	push   $0x4
      a5:	57                   	push   %edi
      a6:	56                   	push   %esi
      a7:	e8 3e 0c 00 00       	call   cea <read>
    char *tempa=malloc(100);
      ac:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
      b3:	e8 98 0f 00 00       	call   1050 <malloc>
    memset (tempa,0,sizeof tempa);
      b8:	83 c4 0c             	add    $0xc,%esp
      bb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
      be:	6a 04                	push   $0x4
      c0:	6a 00                	push   $0x0
      c2:	50                   	push   %eax
      c3:	e8 78 0a 00 00       	call   b40 <memset>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
      c8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
      cb:	83 c4 10             	add    $0x10,%esp
    memset (buf,0,sizeof buf);
    read(key, buf, sizeof(buf));
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    //strcat(tempa,buf);
    strcat(tempa,argv[2]);
      ce:	8b 73 08             	mov    0x8(%ebx),%esi

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
      d1:	80 38 00             	cmpb   $0x0,(%eax)
      d4:	0f 84 d1 00 00 00    	je     1ab <main+0x1ab>
      da:	83 c0 01             	add    $0x1,%eax
      dd:	80 38 00             	cmpb   $0x0,(%eax)
      e0:	74 17                	je     f9 <main+0xf9>
      e2:	83 c0 01             	add    $0x1,%eax
      e5:	80 38 00             	cmpb   $0x0,(%eax)
      e8:	75 f0                	jne    da <main+0xda>
      ea:	eb 0d                	jmp    f9 <main+0xf9>
      ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while (*s2) *s1++ = *s2++;
      f0:	83 c0 01             	add    $0x1,%eax
      f3:	83 c6 01             	add    $0x1,%esi
      f6:	88 48 ff             	mov    %cl,-0x1(%eax)
      f9:	0f b6 0e             	movzbl (%esi),%ecx
      fc:	84 c9                	test   %cl,%cl
      fe:	75 f0                	jne    f0 <main+0xf0>
    read(key, buf, sizeof(buf));
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    //strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
     100:	83 ec 0c             	sub    $0xc,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     103:	c6 00 00             	movb   $0x0,(%eax)
    read(key, buf, sizeof(buf));
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    //strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
     106:	6a 64                	push   $0x64
     108:	e8 43 0f 00 00       	call   1050 <malloc>
    memset (tempb,0,sizeof tempb);
     10d:	83 c4 0c             	add    $0xc,%esp
    read(key, buf, sizeof(buf));
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    //strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
     110:	89 c6                	mov    %eax,%esi
    memset (tempb,0,sizeof tempb);
     112:	6a 04                	push   $0x4
     114:	6a 00                	push   $0x0
     116:	50                   	push   %eax
     117:	e8 24 0a 00 00       	call   b40 <memset>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     11c:	83 c4 10             	add    $0x10,%esp
     11f:	80 3e 00             	cmpb   $0x0,(%esi)
     122:	89 f0                	mov    %esi,%eax
     124:	74 23                	je     149 <main+0x149>
     126:	83 c0 01             	add    $0x1,%eax
     129:	80 38 00             	cmpb   $0x0,(%eax)
     12c:	74 1b                	je     149 <main+0x149>
     12e:	83 c0 01             	add    $0x1,%eax
     131:	80 38 00             	cmpb   $0x0,(%eax)
     134:	75 f0                	jne    126 <main+0x126>
     136:	eb 11                	jmp    149 <main+0x149>
     138:	90                   	nop
     139:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  while (*s2) *s1++ = *s2++;
     140:	83 c0 01             	add    $0x1,%eax
     143:	83 c7 01             	add    $0x1,%edi
     146:	88 48 ff             	mov    %cl,-0x1(%eax)
     149:	0f b6 0f             	movzbl (%edi),%ecx
     14c:	84 c9                	test   %cl,%cl
     14e:	75 f0                	jne    140 <main+0x140>
  *s1 = 0;
     150:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     153:	80 3e 00             	cmpb   $0x0,(%esi)
     156:	89 f0                	mov    %esi,%eax
    //strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
    memset (tempb,0,sizeof tempb);
    strcat(tempb,buf);
    strcat(tempb,argv[3]);
     158:	8b 4b 0c             	mov    0xc(%ebx),%ecx

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     15b:	74 1c                	je     179 <main+0x179>
     15d:	83 c0 01             	add    $0x1,%eax
     160:	80 38 00             	cmpb   $0x0,(%eax)
     163:	74 14                	je     179 <main+0x179>
     165:	83 c0 01             	add    $0x1,%eax
     168:	80 38 00             	cmpb   $0x0,(%eax)
     16b:	75 f0                	jne    15d <main+0x15d>
     16d:	eb 0a                	jmp    179 <main+0x179>
     16f:	90                   	nop
  while (*s2) *s1++ = *s2++;
     170:	83 c0 01             	add    $0x1,%eax
     173:	83 c1 01             	add    $0x1,%ecx
     176:	88 50 ff             	mov    %dl,-0x1(%eax)
     179:	0f b6 11             	movzbl (%ecx),%edx
     17c:	84 d2                	test   %dl,%dl
     17e:	75 f0                	jne    170 <main+0x170>
  *s1 = 0;
     180:	c6 00 00             	movb   $0x0,(%eax)
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
    memset (tempb,0,sizeof tempb);
    strcat(tempb,buf);
    strcat(tempb,argv[3]);
    cpR(tempa,tempb);
     183:	52                   	push   %edx
     184:	52                   	push   %edx
     185:	56                   	push   %esi
     186:	ff 75 e4             	pushl  -0x1c(%ebp)
     189:	e8 b2 04 00 00       	call   640 <cpR>
     18e:	83 c4 10             	add    $0x10,%esp
     191:	e9 bc fe ff ff       	jmp    52 <main+0x52>
  }
  if(strcmp(argv[1],"*")){

  }
  else{
    cp(argv[2],argv[3]);
     196:	50                   	push   %eax
     197:	50                   	push   %eax
     198:	ff 73 0c             	pushl  0xc(%ebx)
     19b:	ff 73 08             	pushl  0x8(%ebx)
     19e:	e8 ad 03 00 00       	call   550 <cp>
     1a3:	83 c4 10             	add    $0x10,%esp
     1a6:	e9 c2 fe ff ff       	jmp    6d <main+0x6d>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     1ab:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     1ae:	e9 46 ff ff ff       	jmp    f9 <main+0xf9>
     1b3:	66 90                	xchg   %ax,%ax
     1b5:	66 90                	xchg   %ax,%ax
     1b7:	66 90                	xchg   %ax,%ax
     1b9:	66 90                	xchg   %ax,%ax
     1bb:	66 90                	xchg   %ax,%ax
     1bd:	66 90                	xchg   %ax,%ax
     1bf:	90                   	nop

000001c0 <strcat>:
#include "fcntl.h"
#include <assert.h>
#include <stdarg.h>

char* strcat(char* s1, const char* s2)
{
     1c0:	55                   	push   %ebp
     1c1:	89 e5                	mov    %esp,%ebp
     1c3:	53                   	push   %ebx
     1c4:	8b 45 08             	mov    0x8(%ebp),%eax
     1c7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char* b = s1;

  while (*s1) ++s1;
     1ca:	80 38 00             	cmpb   $0x0,(%eax)
     1cd:	89 c2                	mov    %eax,%edx
     1cf:	74 28                	je     1f9 <strcat+0x39>
     1d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     1d8:	83 c2 01             	add    $0x1,%edx
     1db:	80 3a 00             	cmpb   $0x0,(%edx)
     1de:	75 f8                	jne    1d8 <strcat+0x18>
  while (*s2) *s1++ = *s2++;
     1e0:	0f b6 0b             	movzbl (%ebx),%ecx
     1e3:	84 c9                	test   %cl,%cl
     1e5:	74 19                	je     200 <strcat+0x40>
     1e7:	89 f6                	mov    %esi,%esi
     1e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
     1f0:	83 c2 01             	add    $0x1,%edx
     1f3:	83 c3 01             	add    $0x1,%ebx
     1f6:	88 4a ff             	mov    %cl,-0x1(%edx)
     1f9:	0f b6 0b             	movzbl (%ebx),%ecx
     1fc:	84 c9                	test   %cl,%cl
     1fe:	75 f0                	jne    1f0 <strcat+0x30>
  *s1 = 0;
     200:	c6 02 00             	movb   $0x0,(%edx)

  return b;
}
     203:	5b                   	pop    %ebx
     204:	5d                   	pop    %ebp
     205:	c3                   	ret    
     206:	8d 76 00             	lea    0x0(%esi),%esi
     209:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000210 <mkdire>:

void mkdire(char *path){
     210:	55                   	push   %ebp
     211:	89 e5                	mov    %esp,%ebp
     213:	57                   	push   %edi
     214:	56                   	push   %esi
     215:	53                   	push   %ebx
     216:	81 ec 28 02 00 00    	sub    $0x228,%esp
     21c:	8b 75 08             	mov    0x8(%ebp),%esi
  if(mkdir(path) < 0){
     21f:	56                   	push   %esi
     220:	e8 15 0b 00 00       	call   d3a <mkdir>
     225:	83 c4 10             	add    $0x10,%esp
     228:	85 c0                	test   %eax,%eax
     22a:	0f 88 48 02 00 00    	js     478 <mkdire+0x268>
    printf(2, "mkdir: %s failed to create\n", path);
    return;
  }
  char *tem=malloc(100);
     230:	83 ec 0c             	sub    $0xc,%esp
     233:	6a 64                	push   $0x64
     235:	e8 16 0e 00 00       	call   1050 <malloc>
  memset(tem,0,sizeof tem);
     23a:	83 c4 0c             	add    $0xc,%esp
void mkdire(char *path){
  if(mkdir(path) < 0){
    printf(2, "mkdir: %s failed to create\n", path);
    return;
  }
  char *tem=malloc(100);
     23d:	89 c3                	mov    %eax,%ebx
  memset(tem,0,sizeof tem);
     23f:	6a 04                	push   $0x4
     241:	6a 00                	push   $0x0
     243:	50                   	push   %eax
     244:	e8 f7 08 00 00       	call   b40 <memset>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     249:	83 c4 10             	add    $0x10,%esp
     24c:	80 3b 00             	cmpb   $0x0,(%ebx)
     24f:	89 d8                	mov    %ebx,%eax
     251:	74 0d                	je     260 <mkdire+0x50>
     253:	90                   	nop
     254:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     258:	83 c0 01             	add    $0x1,%eax
     25b:	80 38 00             	cmpb   $0x0,(%eax)
     25e:	75 f8                	jne    258 <mkdire+0x48>
  while (*s2) *s1++ = *s2++;
     260:	0f b6 16             	movzbl (%esi),%edx
     263:	84 d2                	test   %dl,%dl
     265:	74 19                	je     280 <mkdire+0x70>
     267:	89 f1                	mov    %esi,%ecx
     269:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     270:	83 c0 01             	add    $0x1,%eax
     273:	83 c1 01             	add    $0x1,%ecx
     276:	88 50 ff             	mov    %dl,-0x1(%eax)
     279:	0f b6 11             	movzbl (%ecx),%edx
     27c:	84 d2                	test   %dl,%dl
     27e:	75 f0                	jne    270 <mkdire+0x60>
  *s1 = 0;
     280:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     283:	80 3b 00             	cmpb   $0x0,(%ebx)
     286:	89 d8                	mov    %ebx,%eax
     288:	74 0e                	je     298 <mkdire+0x88>
     28a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     290:	83 c0 01             	add    $0x1,%eax
     293:	80 38 00             	cmpb   $0x0,(%eax)
     296:	75 f8                	jne    290 <mkdire+0x80>
     298:	b9 2f 00 00 00       	mov    $0x2f,%ecx
     29d:	ba 40 11 00 00       	mov    $0x1140,%edx
     2a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  while (*s2) *s1++ = *s2++;
     2a8:	83 c0 01             	add    $0x1,%eax
     2ab:	83 c2 01             	add    $0x1,%edx
     2ae:	88 48 ff             	mov    %cl,-0x1(%eax)
     2b1:	0f b6 0a             	movzbl (%edx),%ecx
     2b4:	84 c9                	test   %cl,%cl
     2b6:	75 f0                	jne    2a8 <mkdire+0x98>
  }
  char *tem=malloc(100);
  memset(tem,0,sizeof tem);
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  int foutput=open(tem, O_CREATE | O_RDWR);
     2b8:	83 ec 08             	sub    $0x8,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     2bb:	c6 00 00             	movb   $0x0,(%eax)
  }
  char *tem=malloc(100);
  memset(tem,0,sizeof tem);
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  int foutput=open(tem, O_CREATE | O_RDWR);
     2be:	68 02 02 00 00       	push   $0x202
     2c3:	53                   	push   %ebx
     2c4:	e8 49 0a 00 00       	call   d12 <open>
  int finput,fd;
  if((finput = open(".yuhuu", O_RDWR)) < 0){
     2c9:	59                   	pop    %ecx
  }
  char *tem=malloc(100);
  memset(tem,0,sizeof tem);
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  int foutput=open(tem, O_CREATE | O_RDWR);
     2ca:	89 c7                	mov    %eax,%edi
  int finput,fd;
  if((finput = open(".yuhuu", O_RDWR)) < 0){
     2cc:	58                   	pop    %eax
     2cd:	6a 02                	push   $0x2
     2cf:	68 41 11 00 00       	push   $0x1141
     2d4:	e8 39 0a 00 00       	call   d12 <open>
     2d9:	83 c4 10             	add    $0x10,%esp
     2dc:	85 c0                	test   %eax,%eax
     2de:	89 85 e4 fd ff ff    	mov    %eax,-0x21c(%ebp)
     2e4:	0f 88 a9 01 00 00    	js     493 <mkdire+0x283>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     2ea:	80 3b 00             	cmpb   $0x0,(%ebx)
     2ed:	89 d8                	mov    %ebx,%eax
     2ef:	74 0f                	je     300 <mkdire+0xf0>
     2f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     2f8:	83 c0 01             	add    $0x1,%eax
     2fb:	80 38 00             	cmpb   $0x0,(%eax)
     2fe:	75 f8                	jne    2f8 <mkdire+0xe8>
  while (*s2) *s1++ = *s2++;
     300:	0f b6 16             	movzbl (%esi),%edx
     303:	84 d2                	test   %dl,%dl
     305:	74 19                	je     320 <mkdire+0x110>
     307:	89 f1                	mov    %esi,%ecx
     309:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     310:	83 c0 01             	add    $0x1,%eax
     313:	83 c1 01             	add    $0x1,%ecx
     316:	88 50 ff             	mov    %dl,-0x1(%eax)
     319:	0f b6 11             	movzbl (%ecx),%edx
     31c:	84 d2                	test   %dl,%dl
     31e:	75 f0                	jne    310 <mkdire+0x100>
  *s1 = 0;
     320:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     323:	80 3b 00             	cmpb   $0x0,(%ebx)
     326:	89 d8                	mov    %ebx,%eax
     328:	74 0e                	je     338 <mkdire+0x128>
     32a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     330:	83 c0 01             	add    $0x1,%eax
     333:	80 38 00             	cmpb   $0x0,(%eax)
     336:	75 f8                	jne    330 <mkdire+0x120>
     338:	b9 2f 00 00 00       	mov    $0x2f,%ecx
     33d:	ba 40 11 00 00       	mov    $0x1140,%edx
     342:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  while (*s2) *s1++ = *s2++;
     348:	83 c0 01             	add    $0x1,%eax
     34b:	83 c2 01             	add    $0x1,%edx
     34e:	88 48 ff             	mov    %cl,-0x1(%eax)
     351:	0f b6 0a             	movzbl (%edx),%ecx
     354:	84 c9                	test   %cl,%cl
     356:	75 f0                	jne    348 <mkdire+0x138>
    printf(1, "cp: cannot open %s\n", path);
    exit();
  }
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  if((fd = open(tem, 0)) < 0){
     358:	83 ec 08             	sub    $0x8,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     35b:	c6 00 00             	movb   $0x0,(%eax)
    printf(1, "cp: cannot open %s\n", path);
    exit();
  }
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  if((fd = open(tem, 0)) < 0){
     35e:	6a 00                	push   $0x0
     360:	53                   	push   %ebx
     361:	e8 ac 09 00 00       	call   d12 <open>
     366:	83 c4 10             	add    $0x10,%esp
     369:	85 c0                	test   %eax,%eax
     36b:	89 85 e0 fd ff ff    	mov    %eax,-0x220(%ebp)
     371:	78 3d                	js     3b0 <mkdire+0x1a0>
    strcat(tem,"/");
    write(foutput,tem,strlen(tem));
    close(foutput);
  }
  else{
    printf(1, "cp: file %s already exist \n", path);
     373:	83 ec 04             	sub    $0x4,%esp
     376:	56                   	push   %esi
     377:	68 78 11 00 00       	push   $0x1178
     37c:	6a 01                	push   $0x1
     37e:	e8 9d 0a 00 00       	call   e20 <printf>
     383:	83 c4 10             	add    $0x10,%esp
  }
  close(fd);
     386:	83 ec 0c             	sub    $0xc,%esp
     389:	ff b5 e0 fd ff ff    	pushl  -0x220(%ebp)
     38f:	e8 66 09 00 00       	call   cfa <close>
  close(finput);
     394:	58                   	pop    %eax
     395:	ff b5 e4 fd ff ff    	pushl  -0x21c(%ebp)
     39b:	e8 5a 09 00 00       	call   cfa <close>
     3a0:	83 c4 10             	add    $0x10,%esp
}
     3a3:	8d 65 f4             	lea    -0xc(%ebp),%esp
     3a6:	5b                   	pop    %ebx
     3a7:	5e                   	pop    %esi
     3a8:	5f                   	pop    %edi
     3a9:	5d                   	pop    %ebp
     3aa:	c3                   	ret    
     3ab:	90                   	nop
     3ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     3b0:	89 9d dc fd ff ff    	mov    %ebx,-0x224(%ebp)
     3b6:	8b 9d e4 fd ff ff    	mov    -0x21c(%ebp),%ebx
     3bc:	eb 16                	jmp    3d4 <mkdire+0x1c4>
     3be:	66 90                	xchg   %ax,%ax
  strcat(tem,"/.yuhuu");
  if((fd = open(tem, 0)) < 0){
    int n;
    char buf[512];
    while((n = read(finput, buf, sizeof(buf))) > 0) {
      write(foutput,buf,n);
     3c0:	83 ec 04             	sub    $0x4,%esp
     3c3:	50                   	push   %eax
     3c4:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
     3ca:	50                   	push   %eax
     3cb:	57                   	push   %edi
     3cc:	e8 21 09 00 00       	call   cf2 <write>
     3d1:	83 c4 10             	add    $0x10,%esp
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  if((fd = open(tem, 0)) < 0){
    int n;
    char buf[512];
    while((n = read(finput, buf, sizeof(buf))) > 0) {
     3d4:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
     3da:	83 ec 04             	sub    $0x4,%esp
     3dd:	68 00 02 00 00       	push   $0x200
     3e2:	50                   	push   %eax
     3e3:	53                   	push   %ebx
     3e4:	e8 01 09 00 00       	call   cea <read>
     3e9:	83 c4 10             	add    $0x10,%esp
     3ec:	85 c0                	test   %eax,%eax
     3ee:	7f d0                	jg     3c0 <mkdire+0x1b0>
     3f0:	8b 9d dc fd ff ff    	mov    -0x224(%ebp),%ebx
      write(foutput,buf,n);
    }
    memset(tem,0,sizeof tem);
     3f6:	83 ec 04             	sub    $0x4,%esp
     3f9:	6a 04                	push   $0x4
     3fb:	6a 00                	push   $0x0
     3fd:	53                   	push   %ebx
     3fe:	e8 3d 07 00 00       	call   b40 <memset>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     403:	83 c4 10             	add    $0x10,%esp
     406:	80 3b 00             	cmpb   $0x0,(%ebx)
     409:	89 d8                	mov    %ebx,%eax
     40b:	74 1c                	je     429 <mkdire+0x219>
     40d:	8d 76 00             	lea    0x0(%esi),%esi
     410:	83 c0 01             	add    $0x1,%eax
     413:	80 38 00             	cmpb   $0x0,(%eax)
     416:	75 f8                	jne    410 <mkdire+0x200>
  while (*s2) *s1++ = *s2++;
     418:	0f b6 16             	movzbl (%esi),%edx
     41b:	84 d2                	test   %dl,%dl
     41d:	74 11                	je     430 <mkdire+0x220>
     41f:	90                   	nop
     420:	83 c0 01             	add    $0x1,%eax
     423:	83 c6 01             	add    $0x1,%esi
     426:	88 50 ff             	mov    %dl,-0x1(%eax)
     429:	0f b6 16             	movzbl (%esi),%edx
     42c:	84 d2                	test   %dl,%dl
     42e:	75 f0                	jne    420 <mkdire+0x210>
  *s1 = 0;
     430:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     433:	80 3b 00             	cmpb   $0x0,(%ebx)
     436:	89 d8                	mov    %ebx,%eax
     438:	74 0e                	je     448 <mkdire+0x238>
     43a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     440:	83 c0 01             	add    $0x1,%eax
     443:	80 38 00             	cmpb   $0x0,(%eax)
     446:	75 f8                	jne    440 <mkdire+0x230>
      write(foutput,buf,n);
    }
    memset(tem,0,sizeof tem);
    strcat(tem,path);
    strcat(tem,"/");
    write(foutput,tem,strlen(tem));
     448:	83 ec 0c             	sub    $0xc,%esp
char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
     44b:	c6 00 2f             	movb   $0x2f,(%eax)
  *s1 = 0;
     44e:	c6 40 01 00          	movb   $0x0,0x1(%eax)
      write(foutput,buf,n);
    }
    memset(tem,0,sizeof tem);
    strcat(tem,path);
    strcat(tem,"/");
    write(foutput,tem,strlen(tem));
     452:	53                   	push   %ebx
     453:	e8 b8 06 00 00       	call   b10 <strlen>
     458:	83 c4 0c             	add    $0xc,%esp
     45b:	50                   	push   %eax
     45c:	53                   	push   %ebx
     45d:	57                   	push   %edi
     45e:	e8 8f 08 00 00       	call   cf2 <write>
    close(foutput);
     463:	89 3c 24             	mov    %edi,(%esp)
     466:	e8 8f 08 00 00       	call   cfa <close>
     46b:	83 c4 10             	add    $0x10,%esp
     46e:	e9 13 ff ff ff       	jmp    386 <mkdire+0x176>
     473:	90                   	nop
     474:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return b;
}

void mkdire(char *path){
  if(mkdir(path) < 0){
    printf(2, "mkdir: %s failed to create\n", path);
     478:	83 ec 04             	sub    $0x4,%esp
     47b:	56                   	push   %esi
     47c:	68 48 11 00 00       	push   $0x1148
     481:	6a 02                	push   $0x2
     483:	e8 98 09 00 00       	call   e20 <printf>
    return;
     488:	83 c4 10             	add    $0x10,%esp
  else{
    printf(1, "cp: file %s already exist \n", path);
  }
  close(fd);
  close(finput);
}
     48b:	8d 65 f4             	lea    -0xc(%ebp),%esp
     48e:	5b                   	pop    %ebx
     48f:	5e                   	pop    %esi
     490:	5f                   	pop    %edi
     491:	5d                   	pop    %ebp
     492:	c3                   	ret    
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  int foutput=open(tem, O_CREATE | O_RDWR);
  int finput,fd;
  if((finput = open(".yuhuu", O_RDWR)) < 0){
    printf(1, "cp: cannot open %s\n", path);
     493:	52                   	push   %edx
     494:	56                   	push   %esi
     495:	68 64 11 00 00       	push   $0x1164
     49a:	6a 01                	push   $0x1
     49c:	e8 7f 09 00 00       	call   e20 <printf>
    exit();
     4a1:	e8 2c 08 00 00       	call   cd2 <exit>
     4a6:	8d 76 00             	lea    0x0(%esi),%esi
     4a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004b0 <fmtname>:
  close(finput);
}

char*
fmtname(char *path)
{
     4b0:	55                   	push   %ebp
     4b1:	89 e5                	mov    %esp,%ebp
     4b3:	53                   	push   %ebx
     4b4:	83 ec 10             	sub    $0x10,%esp
     4b7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  static char buf[DIRSIZ+1];
  char *p;

  // Find first character after last slash.
  for(p=path+strlen(path); p >= path && *p != '/'; p--)
     4ba:	53                   	push   %ebx
     4bb:	e8 50 06 00 00       	call   b10 <strlen>
     4c0:	83 c4 10             	add    $0x10,%esp
     4c3:	01 d8                	add    %ebx,%eax
     4c5:	73 10                	jae    4d7 <fmtname+0x27>
     4c7:	eb 13                	jmp    4dc <fmtname+0x2c>
     4c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     4d0:	83 e8 01             	sub    $0x1,%eax
     4d3:	39 c3                	cmp    %eax,%ebx
     4d5:	77 05                	ja     4dc <fmtname+0x2c>
     4d7:	80 38 2f             	cmpb   $0x2f,(%eax)
     4da:	75 f4                	jne    4d0 <fmtname+0x20>
    ;
  p++;
     4dc:	8d 58 01             	lea    0x1(%eax),%ebx

  // Return blank-padded name.
  if(strlen(p) >= DIRSIZ)
     4df:	83 ec 0c             	sub    $0xc,%esp
     4e2:	53                   	push   %ebx
     4e3:	e8 28 06 00 00       	call   b10 <strlen>
     4e8:	83 c4 10             	add    $0x10,%esp
     4eb:	83 f8 0d             	cmp    $0xd,%eax
     4ee:	76 10                	jbe    500 <fmtname+0x50>
    return p;
  memmove(buf, p, strlen(p));
  strcat(buf,"\0");
  return p;
}
     4f0:	89 d8                	mov    %ebx,%eax
     4f2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     4f5:	c9                   	leave  
     4f6:	c3                   	ret    
     4f7:	89 f6                	mov    %esi,%esi
     4f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  p++;

  // Return blank-padded name.
  if(strlen(p) >= DIRSIZ)
    return p;
  memmove(buf, p, strlen(p));
     500:	83 ec 0c             	sub    $0xc,%esp
     503:	53                   	push   %ebx
     504:	e8 07 06 00 00       	call   b10 <strlen>
     509:	83 c4 0c             	add    $0xc,%esp
     50c:	50                   	push   %eax
     50d:	53                   	push   %ebx
     50e:	68 b8 15 00 00       	push   $0x15b8
     513:	e8 88 07 00 00       	call   ca0 <memmove>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     518:	83 c4 10             	add    $0x10,%esp
     51b:	80 3d b8 15 00 00 00 	cmpb   $0x0,0x15b8
     522:	b8 b8 15 00 00       	mov    $0x15b8,%eax
     527:	74 0f                	je     538 <fmtname+0x88>
     529:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     530:	83 c0 01             	add    $0x1,%eax
     533:	80 38 00             	cmpb   $0x0,(%eax)
     536:	75 f8                	jne    530 <fmtname+0x80>
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     538:	c6 00 00             	movb   $0x0,(%eax)
  if(strlen(p) >= DIRSIZ)
    return p;
  memmove(buf, p, strlen(p));
  strcat(buf,"\0");
  return p;
}
     53b:	89 d8                	mov    %ebx,%eax
     53d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     540:	c9                   	leave  
     541:	c3                   	ret    
     542:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     549:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000550 <cp>:

void cp(char *patha,char *pathb){
     550:	55                   	push   %ebp
     551:	89 e5                	mov    %esp,%ebp
     553:	57                   	push   %edi
     554:	56                   	push   %esi
     555:	53                   	push   %ebx
     556:	81 ec 20 04 00 00    	sub    $0x420,%esp
     55c:	8b 7d 08             	mov    0x8(%ebp),%edi
     55f:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char buf[1024];
  int finput,foutput,fd;
  printf(1,"%s\n",patha);
     562:	57                   	push   %edi
     563:	68 b2 11 00 00       	push   $0x11b2
     568:	6a 01                	push   $0x1
     56a:	e8 b1 08 00 00       	call   e20 <printf>
  if((finput = open(patha, 0)) < 0){
     56f:	5a                   	pop    %edx
     570:	59                   	pop    %ecx
     571:	6a 00                	push   $0x0
     573:	57                   	push   %edi
     574:	e8 99 07 00 00       	call   d12 <open>
     579:	83 c4 10             	add    $0x10,%esp
     57c:	85 c0                	test   %eax,%eax
     57e:	0f 88 a6 00 00 00    	js     62a <cp+0xda>
    printf(1, "cp: caaernnot open %s\n", patha);
    exit();
  }
  if((fd = open(pathb, 0)) < 0){
     584:	83 ec 08             	sub    $0x8,%esp
     587:	89 c6                	mov    %eax,%esi
     589:	6a 00                	push   $0x0
     58b:	53                   	push   %ebx
     58c:	e8 81 07 00 00       	call   d12 <open>
     591:	83 c4 10             	add    $0x10,%esp
     594:	85 c0                	test   %eax,%eax
     596:	89 85 e4 fb ff ff    	mov    %eax,-0x41c(%ebp)
     59c:	78 3a                	js     5d8 <cp+0x88>
      write(foutput,buf,n);
    }
    close(foutput);
  }
  else{
    printf(1, "cp: file %s already exist \n", pathb);
     59e:	83 ec 04             	sub    $0x4,%esp
     5a1:	53                   	push   %ebx
     5a2:	68 78 11 00 00       	push   $0x1178
     5a7:	6a 01                	push   $0x1
     5a9:	e8 72 08 00 00       	call   e20 <printf>
     5ae:	83 c4 10             	add    $0x10,%esp
  }
  close(fd);
     5b1:	83 ec 0c             	sub    $0xc,%esp
     5b4:	ff b5 e4 fb ff ff    	pushl  -0x41c(%ebp)
     5ba:	e8 3b 07 00 00       	call   cfa <close>
  close(finput);
     5bf:	89 34 24             	mov    %esi,(%esp)
     5c2:	e8 33 07 00 00       	call   cfa <close>
}
     5c7:	83 c4 10             	add    $0x10,%esp
     5ca:	8d 65 f4             	lea    -0xc(%ebp),%esp
     5cd:	5b                   	pop    %ebx
     5ce:	5e                   	pop    %esi
     5cf:	5f                   	pop    %edi
     5d0:	5d                   	pop    %ebp
     5d1:	c3                   	ret    
     5d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1, "cp: caaernnot open %s\n", patha);
    exit();
  }
  if((fd = open(pathb, 0)) < 0){
    int n;
    foutput = open(pathb, O_CREATE | O_RDWR);
     5d8:	83 ec 08             	sub    $0x8,%esp
     5db:	68 02 02 00 00       	push   $0x202
     5e0:	53                   	push   %ebx
     5e1:	8d 9d e8 fb ff ff    	lea    -0x418(%ebp),%ebx
     5e7:	e8 26 07 00 00       	call   d12 <open>
    while((n = read(finput, buf, sizeof(buf))) > 0) {
     5ec:	83 c4 10             	add    $0x10,%esp
    printf(1, "cp: caaernnot open %s\n", patha);
    exit();
  }
  if((fd = open(pathb, 0)) < 0){
    int n;
    foutput = open(pathb, O_CREATE | O_RDWR);
     5ef:	89 c7                	mov    %eax,%edi
    while((n = read(finput, buf, sizeof(buf))) > 0) {
     5f1:	eb 13                	jmp    606 <cp+0xb6>
     5f3:	90                   	nop
     5f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      write(foutput,buf,n);
     5f8:	83 ec 04             	sub    $0x4,%esp
     5fb:	50                   	push   %eax
     5fc:	53                   	push   %ebx
     5fd:	57                   	push   %edi
     5fe:	e8 ef 06 00 00       	call   cf2 <write>
     603:	83 c4 10             	add    $0x10,%esp
    exit();
  }
  if((fd = open(pathb, 0)) < 0){
    int n;
    foutput = open(pathb, O_CREATE | O_RDWR);
    while((n = read(finput, buf, sizeof(buf))) > 0) {
     606:	83 ec 04             	sub    $0x4,%esp
     609:	68 00 04 00 00       	push   $0x400
     60e:	53                   	push   %ebx
     60f:	56                   	push   %esi
     610:	e8 d5 06 00 00       	call   cea <read>
     615:	83 c4 10             	add    $0x10,%esp
     618:	85 c0                	test   %eax,%eax
     61a:	7f dc                	jg     5f8 <cp+0xa8>
      write(foutput,buf,n);
    }
    close(foutput);
     61c:	83 ec 0c             	sub    $0xc,%esp
     61f:	57                   	push   %edi
     620:	e8 d5 06 00 00       	call   cfa <close>
     625:	83 c4 10             	add    $0x10,%esp
     628:	eb 87                	jmp    5b1 <cp+0x61>
void cp(char *patha,char *pathb){
  char buf[1024];
  int finput,foutput,fd;
  printf(1,"%s\n",patha);
  if((finput = open(patha, 0)) < 0){
    printf(1, "cp: caaernnot open %s\n", patha);
     62a:	50                   	push   %eax
     62b:	57                   	push   %edi
     62c:	68 94 11 00 00       	push   $0x1194
     631:	6a 01                	push   $0x1
     633:	e8 e8 07 00 00       	call   e20 <printf>
    exit();
     638:	e8 95 06 00 00       	call   cd2 <exit>
     63d:	8d 76 00             	lea    0x0(%esi),%esi

00000640 <cpR>:
  close(finput);
}

void
cpR(char *patha,char *pathb)
{
     640:	55                   	push   %ebp
     641:	89 e5                	mov    %esp,%ebp
     643:	57                   	push   %edi
     644:	56                   	push   %esi
     645:	53                   	push   %ebx
     646:	81 ec 58 02 00 00    	sub    $0x258,%esp
  char buf[512], *p;
  char *tempa=malloc(100);
     64c:	6a 64                	push   $0x64
     64e:	e8 fd 09 00 00       	call   1050 <malloc>
  memset (tempa,0,sizeof tempa);
     653:	83 c4 0c             	add    $0xc,%esp

void
cpR(char *patha,char *pathb)
{
  char buf[512], *p;
  char *tempa=malloc(100);
     656:	89 c3                	mov    %eax,%ebx
  memset (tempa,0,sizeof tempa);
     658:	6a 04                	push   $0x4
     65a:	6a 00                	push   $0x0
     65c:	50                   	push   %eax
     65d:	e8 de 04 00 00       	call   b40 <memset>
  char *tempb=malloc(100);
     662:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
     669:	e8 e2 09 00 00       	call   1050 <malloc>
  memset (tempb,0,sizeof tempb);
     66e:	83 c4 0c             	add    $0xc,%esp
cpR(char *patha,char *pathb)
{
  char buf[512], *p;
  char *tempa=malloc(100);
  memset (tempa,0,sizeof tempa);
  char *tempb=malloc(100);
     671:	89 c6                	mov    %eax,%esi
  memset (tempb,0,sizeof tempb);
     673:	6a 04                	push   $0x4
     675:	6a 00                	push   $0x0
     677:	50                   	push   %eax
     678:	e8 c3 04 00 00       	call   b40 <memset>
  int fd;
  struct dirent de;
  struct stat st;
  printf(1,"inicpR %s\n",patha);
     67d:	83 c4 0c             	add    $0xc,%esp
     680:	ff 75 08             	pushl  0x8(%ebp)
     683:	68 ab 11 00 00       	push   $0x11ab
     688:	6a 01                	push   $0x1
     68a:	e8 91 07 00 00       	call   e20 <printf>

  if((fd = open(patha, 0)) < 0){
     68f:	58                   	pop    %eax
     690:	5a                   	pop    %edx
     691:	6a 00                	push   $0x0
     693:	ff 75 08             	pushl  0x8(%ebp)
     696:	e8 77 06 00 00       	call   d12 <open>
     69b:	83 c4 10             	add    $0x10,%esp
     69e:	85 c0                	test   %eax,%eax
     6a0:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
     6a6:	0f 88 54 03 00 00    	js     a00 <cpR+0x3c0>
    printf(2, "ls: canjyhagfnot open %s\n", patha);
    return;
  }

  if(fstat(fd, &st) < 0){
     6ac:	8d 85 d4 fd ff ff    	lea    -0x22c(%ebp),%eax
     6b2:	83 ec 08             	sub    $0x8,%esp
     6b5:	50                   	push   %eax
     6b6:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
     6bc:	e8 69 06 00 00       	call   d2a <fstat>
     6c1:	83 c4 10             	add    $0x10,%esp
     6c4:	85 c0                	test   %eax,%eax
     6c6:	0f 88 74 03 00 00    	js     a40 <cpR+0x400>
    printf(2, "ls: cannot stat %s\n", patha);
    close(fd);
    return;
  }

  switch(st.type){
     6cc:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
     6d3:	66 83 f8 01          	cmp    $0x1,%ax
     6d7:	74 47                	je     720 <cpR+0xe0>
     6d9:	66 83 f8 02          	cmp    $0x2,%ax
     6dd:	75 22                	jne    701 <cpR+0xc1>
  case T_FILE:
    printf(1,"%s\n",patha);
     6df:	83 ec 04             	sub    $0x4,%esp
     6e2:	ff 75 08             	pushl  0x8(%ebp)
     6e5:	68 b2 11 00 00       	push   $0x11b2
     6ea:	6a 01                	push   $0x1
     6ec:	e8 2f 07 00 00       	call   e20 <printf>
    cp(patha,pathb);
     6f1:	5b                   	pop    %ebx
     6f2:	5e                   	pop    %esi
     6f3:	ff 75 0c             	pushl  0xc(%ebp)
     6f6:	ff 75 08             	pushl  0x8(%ebp)
     6f9:	e8 52 fe ff ff       	call   550 <cp>
    break;
     6fe:	83 c4 10             	add    $0x10,%esp
      if(strcmp(fmtname(buf),"..")==0||strcmp(fmtname(buf),"..")==32) continue;
      cpR(tempa,tempb);
    }
    break;
  }
  close(fd);
     701:	83 ec 0c             	sub    $0xc,%esp
     704:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
     70a:	e8 eb 05 00 00       	call   cfa <close>
     70f:	83 c4 10             	add    $0x10,%esp
}
     712:	8d 65 f4             	lea    -0xc(%ebp),%esp
     715:	5b                   	pop    %ebx
     716:	5e                   	pop    %esi
     717:	5f                   	pop    %edi
     718:	5d                   	pop    %ebp
     719:	c3                   	ret    
     71a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1,"%s\n",patha);
    cp(patha,pathb);
    break;

  case T_DIR:
    if(strlen(patha) + 1 + DIRSIZ + 1 > sizeof buf){
     720:	83 ec 0c             	sub    $0xc,%esp
     723:	ff 75 08             	pushl  0x8(%ebp)
     726:	e8 e5 03 00 00       	call   b10 <strlen>
     72b:	83 c0 10             	add    $0x10,%eax
     72e:	83 c4 10             	add    $0x10,%esp
     731:	3d 00 02 00 00       	cmp    $0x200,%eax
     736:	0f 87 e4 02 00 00    	ja     a20 <cpR+0x3e0>
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, patha);
     73c:	8d bd e8 fd ff ff    	lea    -0x218(%ebp),%edi
     742:	83 ec 08             	sub    $0x8,%esp
     745:	ff 75 08             	pushl  0x8(%ebp)
     748:	57                   	push   %edi
     749:	e8 42 03 00 00       	call   a90 <strcpy>
    p = buf+strlen(buf);
     74e:	89 3c 24             	mov    %edi,(%esp)
     751:	e8 ba 03 00 00       	call   b10 <strlen>
     756:	8d 0c 07             	lea    (%edi,%eax,1),%ecx
    *p++ = '/';
     759:	8d 44 07 01          	lea    0x1(%edi,%eax,1),%eax
     75d:	c6 01 2f             	movb   $0x2f,(%ecx)
    if(strlen(patha) + 1 + DIRSIZ + 1 > sizeof buf){
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, patha);
    p = buf+strlen(buf);
     760:	89 8d b0 fd ff ff    	mov    %ecx,-0x250(%ebp)
    *p++ = '/';
    mkdire(pathb);
     766:	59                   	pop    %ecx
     767:	ff 75 0c             	pushl  0xc(%ebp)
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, patha);
    p = buf+strlen(buf);
    *p++ = '/';
     76a:	89 85 ac fd ff ff    	mov    %eax,-0x254(%ebp)
    mkdire(pathb);
     770:	e8 9b fa ff ff       	call   210 <mkdire>
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
     775:	83 c4 10             	add    $0x10,%esp
     778:	90                   	nop
     779:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     780:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
     786:	83 ec 04             	sub    $0x4,%esp
     789:	6a 10                	push   $0x10
     78b:	50                   	push   %eax
     78c:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
     792:	e8 53 05 00 00       	call   cea <read>
     797:	83 c4 10             	add    $0x10,%esp
     79a:	83 f8 10             	cmp    $0x10,%eax
     79d:	0f 85 5e ff ff ff    	jne    701 <cpR+0xc1>
      if(de.inum == 0)
     7a3:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
     7aa:	00 
     7ab:	74 d3                	je     780 <cpR+0x140>
        continue;
      memmove(p, de.name, DIRSIZ);
     7ad:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
     7b3:	83 ec 04             	sub    $0x4,%esp
     7b6:	6a 0e                	push   $0xe
     7b8:	50                   	push   %eax
     7b9:	ff b5 ac fd ff ff    	pushl  -0x254(%ebp)
     7bf:	e8 dc 04 00 00       	call   ca0 <memmove>
      p[DIRSIZ] = 0;
     7c4:	8b 85 b0 fd ff ff    	mov    -0x250(%ebp),%eax
     7ca:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
      if(stat(buf, &st) < 0){
     7ce:	58                   	pop    %eax
     7cf:	8d 85 d4 fd ff ff    	lea    -0x22c(%ebp),%eax
     7d5:	5a                   	pop    %edx
     7d6:	50                   	push   %eax
     7d7:	57                   	push   %edi
     7d8:	e8 33 04 00 00       	call   c10 <stat>
     7dd:	83 c4 10             	add    $0x10,%esp
     7e0:	85 c0                	test   %eax,%eax
     7e2:	0f 88 88 02 00 00    	js     a70 <cpR+0x430>
        printf(1, "ls: cannot stat %s\n", buf);
        continue;
      }
      strcpy(tempa,patha);
     7e8:	83 ec 08             	sub    $0x8,%esp
     7eb:	ff 75 08             	pushl  0x8(%ebp)
     7ee:	53                   	push   %ebx
     7ef:	e8 9c 02 00 00       	call   a90 <strcpy>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     7f4:	83 c4 10             	add    $0x10,%esp
     7f7:	80 3b 00             	cmpb   $0x0,(%ebx)
     7fa:	89 d8                	mov    %ebx,%eax
     7fc:	74 0a                	je     808 <cpR+0x1c8>
     7fe:	66 90                	xchg   %ax,%ax
     800:	83 c0 01             	add    $0x1,%eax
     803:	80 38 00             	cmpb   $0x0,(%eax)
     806:	75 f8                	jne    800 <cpR+0x1c0>
        printf(1, "ls: cannot stat %s\n", buf);
        continue;
      }
      strcpy(tempa,patha);
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
     808:	83 ec 0c             	sub    $0xc,%esp
char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
     80b:	c6 00 2f             	movb   $0x2f,(%eax)
  *s1 = 0;
     80e:	c6 40 01 00          	movb   $0x0,0x1(%eax)
        printf(1, "ls: cannot stat %s\n", buf);
        continue;
      }
      strcpy(tempa,patha);
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
     812:	57                   	push   %edi
     813:	e8 98 fc ff ff       	call   4b0 <fmtname>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     818:	83 c4 10             	add    $0x10,%esp
     81b:	80 3b 00             	cmpb   $0x0,(%ebx)
     81e:	89 da                	mov    %ebx,%edx
     820:	74 1f                	je     841 <cpR+0x201>
     822:	83 c2 01             	add    $0x1,%edx
     825:	80 3a 00             	cmpb   $0x0,(%edx)
     828:	75 f8                	jne    822 <cpR+0x1e2>
  while (*s2) *s1++ = *s2++;
     82a:	0f b6 08             	movzbl (%eax),%ecx
     82d:	84 c9                	test   %cl,%cl
     82f:	74 17                	je     848 <cpR+0x208>
     831:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     838:	83 c2 01             	add    $0x1,%edx
     83b:	83 c0 01             	add    $0x1,%eax
     83e:	88 4a ff             	mov    %cl,-0x1(%edx)
     841:	0f b6 08             	movzbl (%eax),%ecx
     844:	84 c9                	test   %cl,%cl
     846:	75 f0                	jne    838 <cpR+0x1f8>
  *s1 = 0;
     848:	c6 02 00             	movb   $0x0,(%edx)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     84b:	80 3b 00             	cmpb   $0x0,(%ebx)
     84e:	89 d8                	mov    %ebx,%eax
     850:	74 0e                	je     860 <cpR+0x220>
     852:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     858:	83 c0 01             	add    $0x1,%eax
     85b:	80 38 00             	cmpb   $0x0,(%eax)
     85e:	75 f8                	jne    858 <cpR+0x218>
      }
      strcpy(tempa,patha);
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
     860:	83 ec 08             	sub    $0x8,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     863:	c6 00 00             	movb   $0x0,(%eax)
      }
      strcpy(tempa,patha);
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
     866:	ff 75 0c             	pushl  0xc(%ebp)
     869:	56                   	push   %esi
     86a:	e8 21 02 00 00       	call   a90 <strcpy>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     86f:	83 c4 10             	add    $0x10,%esp
     872:	80 3e 00             	cmpb   $0x0,(%esi)
     875:	89 f0                	mov    %esi,%eax
     877:	74 0f                	je     888 <cpR+0x248>
     879:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     880:	83 c0 01             	add    $0x1,%eax
     883:	80 38 00             	cmpb   $0x0,(%eax)
     886:	75 f8                	jne    880 <cpR+0x240>
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
      strcat(tempb,"/");
      strcat(tempb,fmtname(buf));
     888:	83 ec 0c             	sub    $0xc,%esp
char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
     88b:	c6 00 2f             	movb   $0x2f,(%eax)
  *s1 = 0;
     88e:	c6 40 01 00          	movb   $0x0,0x1(%eax)
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
      strcat(tempb,"/");
      strcat(tempb,fmtname(buf));
     892:	57                   	push   %edi
     893:	e8 18 fc ff ff       	call   4b0 <fmtname>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     898:	83 c4 10             	add    $0x10,%esp
     89b:	80 3e 00             	cmpb   $0x0,(%esi)
     89e:	89 f2                	mov    %esi,%edx
     8a0:	74 1f                	je     8c1 <cpR+0x281>
     8a2:	83 c2 01             	add    $0x1,%edx
     8a5:	80 3a 00             	cmpb   $0x0,(%edx)
     8a8:	75 f8                	jne    8a2 <cpR+0x262>
  while (*s2) *s1++ = *s2++;
     8aa:	0f b6 08             	movzbl (%eax),%ecx
     8ad:	84 c9                	test   %cl,%cl
     8af:	74 17                	je     8c8 <cpR+0x288>
     8b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     8b8:	83 c2 01             	add    $0x1,%edx
     8bb:	83 c0 01             	add    $0x1,%eax
     8be:	88 4a ff             	mov    %cl,-0x1(%edx)
     8c1:	0f b6 08             	movzbl (%eax),%ecx
     8c4:	84 c9                	test   %cl,%cl
     8c6:	75 f0                	jne    8b8 <cpR+0x278>
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
      strcat(tempb,"/");
      strcat(tempb,fmtname(buf));
      printf(1,"%sdsa\n",fmtname(buf));
     8c8:	83 ec 0c             	sub    $0xc,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     8cb:	c6 02 00             	movb   $0x0,(%edx)
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
      strcat(tempb,"/");
      strcat(tempb,fmtname(buf));
      printf(1,"%sdsa\n",fmtname(buf));
     8ce:	57                   	push   %edi
     8cf:	e8 dc fb ff ff       	call   4b0 <fmtname>
     8d4:	83 c4 0c             	add    $0xc,%esp
     8d7:	50                   	push   %eax
     8d8:	68 f7 11 00 00       	push   $0x11f7
     8dd:	6a 01                	push   $0x1
     8df:	e8 3c 05 00 00       	call   e20 <printf>
      printf(1,"%s\n",tempa);
     8e4:	83 c4 0c             	add    $0xc,%esp
     8e7:	53                   	push   %ebx
     8e8:	68 b2 11 00 00       	push   $0x11b2
     8ed:	6a 01                	push   $0x1
     8ef:	e8 2c 05 00 00       	call   e20 <printf>
      printf(1,"%s\n",tempb);
     8f4:	83 c4 0c             	add    $0xc,%esp
     8f7:	56                   	push   %esi
     8f8:	68 b2 11 00 00       	push   $0x11b2
     8fd:	6a 01                	push   $0x1
     8ff:	e8 1c 05 00 00       	call   e20 <printf>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     904:	83 c4 10             	add    $0x10,%esp
     907:	80 3b 00             	cmpb   $0x0,(%ebx)
     90a:	89 d8                	mov    %ebx,%eax
     90c:	74 0a                	je     918 <cpR+0x2d8>
     90e:	66 90                	xchg   %ax,%ax
     910:	83 c0 01             	add    $0x1,%eax
     913:	80 38 00             	cmpb   $0x0,(%eax)
     916:	75 f8                	jne    910 <cpR+0x2d0>
      strcat(tempb,fmtname(buf));
      printf(1,"%sdsa\n",fmtname(buf));
      printf(1,"%s\n",tempa);
      printf(1,"%s\n",tempb);
      strcat(tempa,"\0");
      if(strcmp(fmtname(buf),".yuhuu")==0||strcmp(fmtname(buf),".yuhuu")==32) continue;
     918:	83 ec 0c             	sub    $0xc,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     91b:	c6 00 00             	movb   $0x0,(%eax)
      strcat(tempb,fmtname(buf));
      printf(1,"%sdsa\n",fmtname(buf));
      printf(1,"%s\n",tempa);
      printf(1,"%s\n",tempb);
      strcat(tempa,"\0");
      if(strcmp(fmtname(buf),".yuhuu")==0||strcmp(fmtname(buf),".yuhuu")==32) continue;
     91e:	57                   	push   %edi
     91f:	e8 8c fb ff ff       	call   4b0 <fmtname>
     924:	5a                   	pop    %edx
     925:	59                   	pop    %ecx
     926:	68 41 11 00 00       	push   $0x1141
     92b:	50                   	push   %eax
     92c:	e8 8f 01 00 00       	call   ac0 <strcmp>
     931:	83 c4 10             	add    $0x10,%esp
     934:	85 c0                	test   %eax,%eax
     936:	0f 84 44 fe ff ff    	je     780 <cpR+0x140>
     93c:	83 ec 0c             	sub    $0xc,%esp
     93f:	57                   	push   %edi
     940:	e8 6b fb ff ff       	call   4b0 <fmtname>
     945:	5a                   	pop    %edx
     946:	59                   	pop    %ecx
     947:	68 41 11 00 00       	push   $0x1141
     94c:	50                   	push   %eax
     94d:	e8 6e 01 00 00       	call   ac0 <strcmp>
     952:	83 c4 10             	add    $0x10,%esp
     955:	83 f8 20             	cmp    $0x20,%eax
     958:	0f 84 22 fe ff ff    	je     780 <cpR+0x140>
      if(strcmp(fmtname(buf),".")==0||strcmp(fmtname(buf),".")==32) continue;
     95e:	83 ec 0c             	sub    $0xc,%esp
     961:	57                   	push   %edi
     962:	e8 49 fb ff ff       	call   4b0 <fmtname>
     967:	5a                   	pop    %edx
     968:	59                   	pop    %ecx
     969:	68 ff 11 00 00       	push   $0x11ff
     96e:	50                   	push   %eax
     96f:	e8 4c 01 00 00       	call   ac0 <strcmp>
     974:	83 c4 10             	add    $0x10,%esp
     977:	85 c0                	test   %eax,%eax
     979:	0f 84 01 fe ff ff    	je     780 <cpR+0x140>
     97f:	83 ec 0c             	sub    $0xc,%esp
     982:	57                   	push   %edi
     983:	e8 28 fb ff ff       	call   4b0 <fmtname>
     988:	5a                   	pop    %edx
     989:	59                   	pop    %ecx
     98a:	68 ff 11 00 00       	push   $0x11ff
     98f:	50                   	push   %eax
     990:	e8 2b 01 00 00       	call   ac0 <strcmp>
     995:	83 c4 10             	add    $0x10,%esp
     998:	83 f8 20             	cmp    $0x20,%eax
     99b:	0f 84 df fd ff ff    	je     780 <cpR+0x140>
      if(strcmp(fmtname(buf),"..")==0||strcmp(fmtname(buf),"..")==32) continue;
     9a1:	83 ec 0c             	sub    $0xc,%esp
     9a4:	57                   	push   %edi
     9a5:	e8 06 fb ff ff       	call   4b0 <fmtname>
     9aa:	5a                   	pop    %edx
     9ab:	59                   	pop    %ecx
     9ac:	68 fe 11 00 00       	push   $0x11fe
     9b1:	50                   	push   %eax
     9b2:	e8 09 01 00 00       	call   ac0 <strcmp>
     9b7:	83 c4 10             	add    $0x10,%esp
     9ba:	85 c0                	test   %eax,%eax
     9bc:	0f 84 be fd ff ff    	je     780 <cpR+0x140>
     9c2:	83 ec 0c             	sub    $0xc,%esp
     9c5:	57                   	push   %edi
     9c6:	e8 e5 fa ff ff       	call   4b0 <fmtname>
     9cb:	5a                   	pop    %edx
     9cc:	59                   	pop    %ecx
     9cd:	68 fe 11 00 00       	push   $0x11fe
     9d2:	50                   	push   %eax
     9d3:	e8 e8 00 00 00       	call   ac0 <strcmp>
     9d8:	83 c4 10             	add    $0x10,%esp
     9db:	83 f8 20             	cmp    $0x20,%eax
     9de:	0f 84 9c fd ff ff    	je     780 <cpR+0x140>
      cpR(tempa,tempb);
     9e4:	83 ec 08             	sub    $0x8,%esp
     9e7:	56                   	push   %esi
     9e8:	53                   	push   %ebx
     9e9:	e8 52 fc ff ff       	call   640 <cpR>
     9ee:	83 c4 10             	add    $0x10,%esp
     9f1:	e9 8a fd ff ff       	jmp    780 <cpR+0x140>
     9f6:	8d 76 00             	lea    0x0(%esi),%esi
     9f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  struct dirent de;
  struct stat st;
  printf(1,"inicpR %s\n",patha);

  if((fd = open(patha, 0)) < 0){
    printf(2, "ls: canjyhagfnot open %s\n", patha);
     a00:	83 ec 04             	sub    $0x4,%esp
     a03:	ff 75 08             	pushl  0x8(%ebp)
     a06:	68 b6 11 00 00       	push   $0x11b6
     a0b:	6a 02                	push   $0x2
     a0d:	e8 0e 04 00 00       	call   e20 <printf>
    return;
     a12:	83 c4 10             	add    $0x10,%esp
      cpR(tempa,tempb);
    }
    break;
  }
  close(fd);
}
     a15:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a18:	5b                   	pop    %ebx
     a19:	5e                   	pop    %esi
     a1a:	5f                   	pop    %edi
     a1b:	5d                   	pop    %ebp
     a1c:	c3                   	ret    
     a1d:	8d 76 00             	lea    0x0(%esi),%esi
    cp(patha,pathb);
    break;

  case T_DIR:
    if(strlen(patha) + 1 + DIRSIZ + 1 > sizeof buf){
      printf(1, "ls: path too long\n");
     a20:	83 ec 08             	sub    $0x8,%esp
     a23:	68 e4 11 00 00       	push   $0x11e4
     a28:	6a 01                	push   $0x1
     a2a:	e8 f1 03 00 00       	call   e20 <printf>
      break;
     a2f:	83 c4 10             	add    $0x10,%esp
     a32:	e9 ca fc ff ff       	jmp    701 <cpR+0xc1>
     a37:	89 f6                	mov    %esi,%esi
     a39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    printf(2, "ls: canjyhagfnot open %s\n", patha);
    return;
  }

  if(fstat(fd, &st) < 0){
    printf(2, "ls: cannot stat %s\n", patha);
     a40:	83 ec 04             	sub    $0x4,%esp
     a43:	ff 75 08             	pushl  0x8(%ebp)
     a46:	68 d0 11 00 00       	push   $0x11d0
     a4b:	6a 02                	push   $0x2
     a4d:	e8 ce 03 00 00       	call   e20 <printf>
    close(fd);
     a52:	5f                   	pop    %edi
     a53:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
     a59:	e8 9c 02 00 00       	call   cfa <close>
    return;
     a5e:	83 c4 10             	add    $0x10,%esp
     a61:	e9 ac fc ff ff       	jmp    712 <cpR+0xd2>
     a66:	8d 76 00             	lea    0x0(%esi),%esi
     a69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      if(de.inum == 0)
        continue;
      memmove(p, de.name, DIRSIZ);
      p[DIRSIZ] = 0;
      if(stat(buf, &st) < 0){
        printf(1, "ls: cannot stat %s\n", buf);
     a70:	83 ec 04             	sub    $0x4,%esp
     a73:	57                   	push   %edi
     a74:	68 d0 11 00 00       	push   $0x11d0
     a79:	6a 01                	push   $0x1
     a7b:	e8 a0 03 00 00       	call   e20 <printf>
        continue;
     a80:	83 c4 10             	add    $0x10,%esp
     a83:	e9 f8 fc ff ff       	jmp    780 <cpR+0x140>
     a88:	66 90                	xchg   %ax,%ax
     a8a:	66 90                	xchg   %ax,%ax
     a8c:	66 90                	xchg   %ax,%ax
     a8e:	66 90                	xchg   %ax,%ax

00000a90 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
     a90:	55                   	push   %ebp
     a91:	89 e5                	mov    %esp,%ebp
     a93:	53                   	push   %ebx
     a94:	8b 45 08             	mov    0x8(%ebp),%eax
     a97:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     a9a:	89 c2                	mov    %eax,%edx
     a9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     aa0:	83 c1 01             	add    $0x1,%ecx
     aa3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
     aa7:	83 c2 01             	add    $0x1,%edx
     aaa:	84 db                	test   %bl,%bl
     aac:	88 5a ff             	mov    %bl,-0x1(%edx)
     aaf:	75 ef                	jne    aa0 <strcpy+0x10>
    ;
  return os;
}
     ab1:	5b                   	pop    %ebx
     ab2:	5d                   	pop    %ebp
     ab3:	c3                   	ret    
     ab4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     aba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000ac0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     ac0:	55                   	push   %ebp
     ac1:	89 e5                	mov    %esp,%ebp
     ac3:	56                   	push   %esi
     ac4:	53                   	push   %ebx
     ac5:	8b 55 08             	mov    0x8(%ebp),%edx
     ac8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     acb:	0f b6 02             	movzbl (%edx),%eax
     ace:	0f b6 19             	movzbl (%ecx),%ebx
     ad1:	84 c0                	test   %al,%al
     ad3:	75 1e                	jne    af3 <strcmp+0x33>
     ad5:	eb 29                	jmp    b00 <strcmp+0x40>
     ad7:	89 f6                	mov    %esi,%esi
     ad9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
     ae0:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     ae3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
     ae6:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     ae9:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
     aed:	84 c0                	test   %al,%al
     aef:	74 0f                	je     b00 <strcmp+0x40>
     af1:	89 f1                	mov    %esi,%ecx
     af3:	38 d8                	cmp    %bl,%al
     af5:	74 e9                	je     ae0 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
     af7:	29 d8                	sub    %ebx,%eax
}
     af9:	5b                   	pop    %ebx
     afa:	5e                   	pop    %esi
     afb:	5d                   	pop    %ebp
     afc:	c3                   	ret    
     afd:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     b00:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
     b02:	29 d8                	sub    %ebx,%eax
}
     b04:	5b                   	pop    %ebx
     b05:	5e                   	pop    %esi
     b06:	5d                   	pop    %ebp
     b07:	c3                   	ret    
     b08:	90                   	nop
     b09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000b10 <strlen>:

uint
strlen(char *s)
{
     b10:	55                   	push   %ebp
     b11:	89 e5                	mov    %esp,%ebp
     b13:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
     b16:	80 39 00             	cmpb   $0x0,(%ecx)
     b19:	74 12                	je     b2d <strlen+0x1d>
     b1b:	31 d2                	xor    %edx,%edx
     b1d:	8d 76 00             	lea    0x0(%esi),%esi
     b20:	83 c2 01             	add    $0x1,%edx
     b23:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
     b27:	89 d0                	mov    %edx,%eax
     b29:	75 f5                	jne    b20 <strlen+0x10>
    ;
  return n;
}
     b2b:	5d                   	pop    %ebp
     b2c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
     b2d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
     b2f:	5d                   	pop    %ebp
     b30:	c3                   	ret    
     b31:	eb 0d                	jmp    b40 <memset>
     b33:	90                   	nop
     b34:	90                   	nop
     b35:	90                   	nop
     b36:	90                   	nop
     b37:	90                   	nop
     b38:	90                   	nop
     b39:	90                   	nop
     b3a:	90                   	nop
     b3b:	90                   	nop
     b3c:	90                   	nop
     b3d:	90                   	nop
     b3e:	90                   	nop
     b3f:	90                   	nop

00000b40 <memset>:

void*
memset(void *dst, int c, uint n)
{
     b40:	55                   	push   %ebp
     b41:	89 e5                	mov    %esp,%ebp
     b43:	57                   	push   %edi
     b44:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     b47:	8b 4d 10             	mov    0x10(%ebp),%ecx
     b4a:	8b 45 0c             	mov    0xc(%ebp),%eax
     b4d:	89 d7                	mov    %edx,%edi
     b4f:	fc                   	cld    
     b50:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     b52:	89 d0                	mov    %edx,%eax
     b54:	5f                   	pop    %edi
     b55:	5d                   	pop    %ebp
     b56:	c3                   	ret    
     b57:	89 f6                	mov    %esi,%esi
     b59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000b60 <strchr>:

char*
strchr(const char *s, char c)
{
     b60:	55                   	push   %ebp
     b61:	89 e5                	mov    %esp,%ebp
     b63:	53                   	push   %ebx
     b64:	8b 45 08             	mov    0x8(%ebp),%eax
     b67:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
     b6a:	0f b6 10             	movzbl (%eax),%edx
     b6d:	84 d2                	test   %dl,%dl
     b6f:	74 1d                	je     b8e <strchr+0x2e>
    if(*s == c)
     b71:	38 d3                	cmp    %dl,%bl
     b73:	89 d9                	mov    %ebx,%ecx
     b75:	75 0d                	jne    b84 <strchr+0x24>
     b77:	eb 17                	jmp    b90 <strchr+0x30>
     b79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     b80:	38 ca                	cmp    %cl,%dl
     b82:	74 0c                	je     b90 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
     b84:	83 c0 01             	add    $0x1,%eax
     b87:	0f b6 10             	movzbl (%eax),%edx
     b8a:	84 d2                	test   %dl,%dl
     b8c:	75 f2                	jne    b80 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
     b8e:	31 c0                	xor    %eax,%eax
}
     b90:	5b                   	pop    %ebx
     b91:	5d                   	pop    %ebp
     b92:	c3                   	ret    
     b93:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     b99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000ba0 <gets>:

char*
gets(char *buf, int max)
{
     ba0:	55                   	push   %ebp
     ba1:	89 e5                	mov    %esp,%ebp
     ba3:	57                   	push   %edi
     ba4:	56                   	push   %esi
     ba5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     ba6:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
     ba8:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
     bab:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     bae:	eb 29                	jmp    bd9 <gets+0x39>
    cc = read(0, &c, 1);
     bb0:	83 ec 04             	sub    $0x4,%esp
     bb3:	6a 01                	push   $0x1
     bb5:	57                   	push   %edi
     bb6:	6a 00                	push   $0x0
     bb8:	e8 2d 01 00 00       	call   cea <read>
    if(cc < 1)
     bbd:	83 c4 10             	add    $0x10,%esp
     bc0:	85 c0                	test   %eax,%eax
     bc2:	7e 1d                	jle    be1 <gets+0x41>
      break;
    buf[i++] = c;
     bc4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     bc8:	8b 55 08             	mov    0x8(%ebp),%edx
     bcb:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
     bcd:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
     bcf:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
     bd3:	74 1b                	je     bf0 <gets+0x50>
     bd5:	3c 0d                	cmp    $0xd,%al
     bd7:	74 17                	je     bf0 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     bd9:	8d 5e 01             	lea    0x1(%esi),%ebx
     bdc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     bdf:	7c cf                	jl     bb0 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
     be1:	8b 45 08             	mov    0x8(%ebp),%eax
     be4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
     be8:	8d 65 f4             	lea    -0xc(%ebp),%esp
     beb:	5b                   	pop    %ebx
     bec:	5e                   	pop    %esi
     bed:	5f                   	pop    %edi
     bee:	5d                   	pop    %ebp
     bef:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
     bf0:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     bf3:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
     bf5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
     bf9:	8d 65 f4             	lea    -0xc(%ebp),%esp
     bfc:	5b                   	pop    %ebx
     bfd:	5e                   	pop    %esi
     bfe:	5f                   	pop    %edi
     bff:	5d                   	pop    %ebp
     c00:	c3                   	ret    
     c01:	eb 0d                	jmp    c10 <stat>
     c03:	90                   	nop
     c04:	90                   	nop
     c05:	90                   	nop
     c06:	90                   	nop
     c07:	90                   	nop
     c08:	90                   	nop
     c09:	90                   	nop
     c0a:	90                   	nop
     c0b:	90                   	nop
     c0c:	90                   	nop
     c0d:	90                   	nop
     c0e:	90                   	nop
     c0f:	90                   	nop

00000c10 <stat>:

int
stat(char *n, struct stat *st)
{
     c10:	55                   	push   %ebp
     c11:	89 e5                	mov    %esp,%ebp
     c13:	56                   	push   %esi
     c14:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     c15:	83 ec 08             	sub    $0x8,%esp
     c18:	6a 00                	push   $0x0
     c1a:	ff 75 08             	pushl  0x8(%ebp)
     c1d:	e8 f0 00 00 00       	call   d12 <open>
  if(fd < 0)
     c22:	83 c4 10             	add    $0x10,%esp
     c25:	85 c0                	test   %eax,%eax
     c27:	78 27                	js     c50 <stat+0x40>
    return -1;
  r = fstat(fd, st);
     c29:	83 ec 08             	sub    $0x8,%esp
     c2c:	ff 75 0c             	pushl  0xc(%ebp)
     c2f:	89 c3                	mov    %eax,%ebx
     c31:	50                   	push   %eax
     c32:	e8 f3 00 00 00       	call   d2a <fstat>
     c37:	89 c6                	mov    %eax,%esi
  close(fd);
     c39:	89 1c 24             	mov    %ebx,(%esp)
     c3c:	e8 b9 00 00 00       	call   cfa <close>
  return r;
     c41:	83 c4 10             	add    $0x10,%esp
     c44:	89 f0                	mov    %esi,%eax
}
     c46:	8d 65 f8             	lea    -0x8(%ebp),%esp
     c49:	5b                   	pop    %ebx
     c4a:	5e                   	pop    %esi
     c4b:	5d                   	pop    %ebp
     c4c:	c3                   	ret    
     c4d:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
     c50:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     c55:	eb ef                	jmp    c46 <stat+0x36>
     c57:	89 f6                	mov    %esi,%esi
     c59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000c60 <atoi>:
  return r;
}

int
atoi(const char *s)
{
     c60:	55                   	push   %ebp
     c61:	89 e5                	mov    %esp,%ebp
     c63:	53                   	push   %ebx
     c64:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     c67:	0f be 11             	movsbl (%ecx),%edx
     c6a:	8d 42 d0             	lea    -0x30(%edx),%eax
     c6d:	3c 09                	cmp    $0x9,%al
     c6f:	b8 00 00 00 00       	mov    $0x0,%eax
     c74:	77 1f                	ja     c95 <atoi+0x35>
     c76:	8d 76 00             	lea    0x0(%esi),%esi
     c79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
     c80:	8d 04 80             	lea    (%eax,%eax,4),%eax
     c83:	83 c1 01             	add    $0x1,%ecx
     c86:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     c8a:	0f be 11             	movsbl (%ecx),%edx
     c8d:	8d 5a d0             	lea    -0x30(%edx),%ebx
     c90:	80 fb 09             	cmp    $0x9,%bl
     c93:	76 eb                	jbe    c80 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
     c95:	5b                   	pop    %ebx
     c96:	5d                   	pop    %ebp
     c97:	c3                   	ret    
     c98:	90                   	nop
     c99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000ca0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
     ca0:	55                   	push   %ebp
     ca1:	89 e5                	mov    %esp,%ebp
     ca3:	56                   	push   %esi
     ca4:	53                   	push   %ebx
     ca5:	8b 5d 10             	mov    0x10(%ebp),%ebx
     ca8:	8b 45 08             	mov    0x8(%ebp),%eax
     cab:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     cae:	85 db                	test   %ebx,%ebx
     cb0:	7e 14                	jle    cc6 <memmove+0x26>
     cb2:	31 d2                	xor    %edx,%edx
     cb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
     cb8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
     cbc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
     cbf:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     cc2:	39 da                	cmp    %ebx,%edx
     cc4:	75 f2                	jne    cb8 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
     cc6:	5b                   	pop    %ebx
     cc7:	5e                   	pop    %esi
     cc8:	5d                   	pop    %ebp
     cc9:	c3                   	ret    

00000cca <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     cca:	b8 01 00 00 00       	mov    $0x1,%eax
     ccf:	cd 40                	int    $0x40
     cd1:	c3                   	ret    

00000cd2 <exit>:
SYSCALL(exit)
     cd2:	b8 02 00 00 00       	mov    $0x2,%eax
     cd7:	cd 40                	int    $0x40
     cd9:	c3                   	ret    

00000cda <wait>:
SYSCALL(wait)
     cda:	b8 03 00 00 00       	mov    $0x3,%eax
     cdf:	cd 40                	int    $0x40
     ce1:	c3                   	ret    

00000ce2 <pipe>:
SYSCALL(pipe)
     ce2:	b8 04 00 00 00       	mov    $0x4,%eax
     ce7:	cd 40                	int    $0x40
     ce9:	c3                   	ret    

00000cea <read>:
SYSCALL(read)
     cea:	b8 05 00 00 00       	mov    $0x5,%eax
     cef:	cd 40                	int    $0x40
     cf1:	c3                   	ret    

00000cf2 <write>:
SYSCALL(write)
     cf2:	b8 10 00 00 00       	mov    $0x10,%eax
     cf7:	cd 40                	int    $0x40
     cf9:	c3                   	ret    

00000cfa <close>:
SYSCALL(close)
     cfa:	b8 15 00 00 00       	mov    $0x15,%eax
     cff:	cd 40                	int    $0x40
     d01:	c3                   	ret    

00000d02 <kill>:
SYSCALL(kill)
     d02:	b8 06 00 00 00       	mov    $0x6,%eax
     d07:	cd 40                	int    $0x40
     d09:	c3                   	ret    

00000d0a <exec>:
SYSCALL(exec)
     d0a:	b8 07 00 00 00       	mov    $0x7,%eax
     d0f:	cd 40                	int    $0x40
     d11:	c3                   	ret    

00000d12 <open>:
SYSCALL(open)
     d12:	b8 0f 00 00 00       	mov    $0xf,%eax
     d17:	cd 40                	int    $0x40
     d19:	c3                   	ret    

00000d1a <mknod>:
SYSCALL(mknod)
     d1a:	b8 11 00 00 00       	mov    $0x11,%eax
     d1f:	cd 40                	int    $0x40
     d21:	c3                   	ret    

00000d22 <unlink>:
SYSCALL(unlink)
     d22:	b8 12 00 00 00       	mov    $0x12,%eax
     d27:	cd 40                	int    $0x40
     d29:	c3                   	ret    

00000d2a <fstat>:
SYSCALL(fstat)
     d2a:	b8 08 00 00 00       	mov    $0x8,%eax
     d2f:	cd 40                	int    $0x40
     d31:	c3                   	ret    

00000d32 <link>:
SYSCALL(link)
     d32:	b8 13 00 00 00       	mov    $0x13,%eax
     d37:	cd 40                	int    $0x40
     d39:	c3                   	ret    

00000d3a <mkdir>:
SYSCALL(mkdir)
     d3a:	b8 14 00 00 00       	mov    $0x14,%eax
     d3f:	cd 40                	int    $0x40
     d41:	c3                   	ret    

00000d42 <chdir>:
SYSCALL(chdir)
     d42:	b8 09 00 00 00       	mov    $0x9,%eax
     d47:	cd 40                	int    $0x40
     d49:	c3                   	ret    

00000d4a <dup>:
SYSCALL(dup)
     d4a:	b8 0a 00 00 00       	mov    $0xa,%eax
     d4f:	cd 40                	int    $0x40
     d51:	c3                   	ret    

00000d52 <getpid>:
SYSCALL(getpid)
     d52:	b8 0b 00 00 00       	mov    $0xb,%eax
     d57:	cd 40                	int    $0x40
     d59:	c3                   	ret    

00000d5a <sbrk>:
SYSCALL(sbrk)
     d5a:	b8 0c 00 00 00       	mov    $0xc,%eax
     d5f:	cd 40                	int    $0x40
     d61:	c3                   	ret    

00000d62 <sleep>:
SYSCALL(sleep)
     d62:	b8 0d 00 00 00       	mov    $0xd,%eax
     d67:	cd 40                	int    $0x40
     d69:	c3                   	ret    

00000d6a <uptime>:
SYSCALL(uptime)
     d6a:	b8 0e 00 00 00       	mov    $0xe,%eax
     d6f:	cd 40                	int    $0x40
     d71:	c3                   	ret    

00000d72 <getcwd>:
SYSCALL(getcwd)
     d72:	b8 16 00 00 00       	mov    $0x16,%eax
     d77:	cd 40                	int    $0x40
     d79:	c3                   	ret    
     d7a:	66 90                	xchg   %ax,%ax
     d7c:	66 90                	xchg   %ax,%ax
     d7e:	66 90                	xchg   %ax,%ax

00000d80 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
     d80:	55                   	push   %ebp
     d81:	89 e5                	mov    %esp,%ebp
     d83:	57                   	push   %edi
     d84:	56                   	push   %esi
     d85:	53                   	push   %ebx
     d86:	89 c6                	mov    %eax,%esi
     d88:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
     d8b:	8b 5d 08             	mov    0x8(%ebp),%ebx
     d8e:	85 db                	test   %ebx,%ebx
     d90:	74 7e                	je     e10 <printint+0x90>
     d92:	89 d0                	mov    %edx,%eax
     d94:	c1 e8 1f             	shr    $0x1f,%eax
     d97:	84 c0                	test   %al,%al
     d99:	74 75                	je     e10 <printint+0x90>
    neg = 1;
    x = -xx;
     d9b:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
     d9d:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
     da4:	f7 d8                	neg    %eax
     da6:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
     da9:	31 ff                	xor    %edi,%edi
     dab:	8d 5d d7             	lea    -0x29(%ebp),%ebx
     dae:	89 ce                	mov    %ecx,%esi
     db0:	eb 08                	jmp    dba <printint+0x3a>
     db2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
     db8:	89 cf                	mov    %ecx,%edi
     dba:	31 d2                	xor    %edx,%edx
     dbc:	8d 4f 01             	lea    0x1(%edi),%ecx
     dbf:	f7 f6                	div    %esi
     dc1:	0f b6 92 14 12 00 00 	movzbl 0x1214(%edx),%edx
  }while((x /= base) != 0);
     dc8:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
     dca:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
     dcd:	75 e9                	jne    db8 <printint+0x38>
  if(neg)
     dcf:	8b 45 c4             	mov    -0x3c(%ebp),%eax
     dd2:	8b 75 c0             	mov    -0x40(%ebp),%esi
     dd5:	85 c0                	test   %eax,%eax
     dd7:	74 08                	je     de1 <printint+0x61>
    buf[i++] = '-';
     dd9:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
     dde:	8d 4f 02             	lea    0x2(%edi),%ecx
     de1:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
     de5:	8d 76 00             	lea    0x0(%esi),%esi
     de8:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     deb:	83 ec 04             	sub    $0x4,%esp
     dee:	83 ef 01             	sub    $0x1,%edi
     df1:	6a 01                	push   $0x1
     df3:	53                   	push   %ebx
     df4:	56                   	push   %esi
     df5:	88 45 d7             	mov    %al,-0x29(%ebp)
     df8:	e8 f5 fe ff ff       	call   cf2 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
     dfd:	83 c4 10             	add    $0x10,%esp
     e00:	39 df                	cmp    %ebx,%edi
     e02:	75 e4                	jne    de8 <printint+0x68>
    putc(fd, buf[i]);
}
     e04:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e07:	5b                   	pop    %ebx
     e08:	5e                   	pop    %esi
     e09:	5f                   	pop    %edi
     e0a:	5d                   	pop    %ebp
     e0b:	c3                   	ret    
     e0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
     e10:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
     e12:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
     e19:	eb 8b                	jmp    da6 <printint+0x26>
     e1b:	90                   	nop
     e1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000e20 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
     e20:	55                   	push   %ebp
     e21:	89 e5                	mov    %esp,%ebp
     e23:	57                   	push   %edi
     e24:	56                   	push   %esi
     e25:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     e26:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
     e29:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     e2c:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
     e2f:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     e32:	89 45 d0             	mov    %eax,-0x30(%ebp)
     e35:	0f b6 1e             	movzbl (%esi),%ebx
     e38:	83 c6 01             	add    $0x1,%esi
     e3b:	84 db                	test   %bl,%bl
     e3d:	0f 84 b0 00 00 00    	je     ef3 <printf+0xd3>
     e43:	31 d2                	xor    %edx,%edx
     e45:	eb 39                	jmp    e80 <printf+0x60>
     e47:	89 f6                	mov    %esi,%esi
     e49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
     e50:	83 f8 25             	cmp    $0x25,%eax
     e53:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
     e56:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
     e5b:	74 18                	je     e75 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     e5d:	8d 45 e2             	lea    -0x1e(%ebp),%eax
     e60:	83 ec 04             	sub    $0x4,%esp
     e63:	88 5d e2             	mov    %bl,-0x1e(%ebp)
     e66:	6a 01                	push   $0x1
     e68:	50                   	push   %eax
     e69:	57                   	push   %edi
     e6a:	e8 83 fe ff ff       	call   cf2 <write>
     e6f:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     e72:	83 c4 10             	add    $0x10,%esp
     e75:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     e78:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
     e7c:	84 db                	test   %bl,%bl
     e7e:	74 73                	je     ef3 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
     e80:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
     e82:	0f be cb             	movsbl %bl,%ecx
     e85:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
     e88:	74 c6                	je     e50 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
     e8a:	83 fa 25             	cmp    $0x25,%edx
     e8d:	75 e6                	jne    e75 <printf+0x55>
      if(c == 'd'){
     e8f:	83 f8 64             	cmp    $0x64,%eax
     e92:	0f 84 f8 00 00 00    	je     f90 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
     e98:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
     e9e:	83 f9 70             	cmp    $0x70,%ecx
     ea1:	74 5d                	je     f00 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
     ea3:	83 f8 73             	cmp    $0x73,%eax
     ea6:	0f 84 84 00 00 00    	je     f30 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
     eac:	83 f8 63             	cmp    $0x63,%eax
     eaf:	0f 84 ea 00 00 00    	je     f9f <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
     eb5:	83 f8 25             	cmp    $0x25,%eax
     eb8:	0f 84 c2 00 00 00    	je     f80 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     ebe:	8d 45 e7             	lea    -0x19(%ebp),%eax
     ec1:	83 ec 04             	sub    $0x4,%esp
     ec4:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
     ec8:	6a 01                	push   $0x1
     eca:	50                   	push   %eax
     ecb:	57                   	push   %edi
     ecc:	e8 21 fe ff ff       	call   cf2 <write>
     ed1:	83 c4 0c             	add    $0xc,%esp
     ed4:	8d 45 e6             	lea    -0x1a(%ebp),%eax
     ed7:	88 5d e6             	mov    %bl,-0x1a(%ebp)
     eda:	6a 01                	push   $0x1
     edc:	50                   	push   %eax
     edd:	57                   	push   %edi
     ede:	83 c6 01             	add    $0x1,%esi
     ee1:	e8 0c fe ff ff       	call   cf2 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     ee6:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     eea:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
     eed:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     eef:	84 db                	test   %bl,%bl
     ef1:	75 8d                	jne    e80 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
     ef3:	8d 65 f4             	lea    -0xc(%ebp),%esp
     ef6:	5b                   	pop    %ebx
     ef7:	5e                   	pop    %esi
     ef8:	5f                   	pop    %edi
     ef9:	5d                   	pop    %ebp
     efa:	c3                   	ret    
     efb:	90                   	nop
     efc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
     f00:	83 ec 0c             	sub    $0xc,%esp
     f03:	b9 10 00 00 00       	mov    $0x10,%ecx
     f08:	6a 00                	push   $0x0
     f0a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
     f0d:	89 f8                	mov    %edi,%eax
     f0f:	8b 13                	mov    (%ebx),%edx
     f11:	e8 6a fe ff ff       	call   d80 <printint>
        ap++;
     f16:	89 d8                	mov    %ebx,%eax
     f18:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
     f1b:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
     f1d:	83 c0 04             	add    $0x4,%eax
     f20:	89 45 d0             	mov    %eax,-0x30(%ebp)
     f23:	e9 4d ff ff ff       	jmp    e75 <printf+0x55>
     f28:	90                   	nop
     f29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
     f30:	8b 45 d0             	mov    -0x30(%ebp),%eax
     f33:	8b 18                	mov    (%eax),%ebx
        ap++;
     f35:	83 c0 04             	add    $0x4,%eax
     f38:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
     f3b:	b8 0a 12 00 00       	mov    $0x120a,%eax
     f40:	85 db                	test   %ebx,%ebx
     f42:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
     f45:	0f b6 03             	movzbl (%ebx),%eax
     f48:	84 c0                	test   %al,%al
     f4a:	74 23                	je     f6f <printf+0x14f>
     f4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     f50:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     f53:	8d 45 e3             	lea    -0x1d(%ebp),%eax
     f56:	83 ec 04             	sub    $0x4,%esp
     f59:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
     f5b:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     f5e:	50                   	push   %eax
     f5f:	57                   	push   %edi
     f60:	e8 8d fd ff ff       	call   cf2 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
     f65:	0f b6 03             	movzbl (%ebx),%eax
     f68:	83 c4 10             	add    $0x10,%esp
     f6b:	84 c0                	test   %al,%al
     f6d:	75 e1                	jne    f50 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
     f6f:	31 d2                	xor    %edx,%edx
     f71:	e9 ff fe ff ff       	jmp    e75 <printf+0x55>
     f76:	8d 76 00             	lea    0x0(%esi),%esi
     f79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     f80:	83 ec 04             	sub    $0x4,%esp
     f83:	88 5d e5             	mov    %bl,-0x1b(%ebp)
     f86:	8d 45 e5             	lea    -0x1b(%ebp),%eax
     f89:	6a 01                	push   $0x1
     f8b:	e9 4c ff ff ff       	jmp    edc <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
     f90:	83 ec 0c             	sub    $0xc,%esp
     f93:	b9 0a 00 00 00       	mov    $0xa,%ecx
     f98:	6a 01                	push   $0x1
     f9a:	e9 6b ff ff ff       	jmp    f0a <printf+0xea>
     f9f:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     fa2:	83 ec 04             	sub    $0x4,%esp
     fa5:	8b 03                	mov    (%ebx),%eax
     fa7:	6a 01                	push   $0x1
     fa9:	88 45 e4             	mov    %al,-0x1c(%ebp)
     fac:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     faf:	50                   	push   %eax
     fb0:	57                   	push   %edi
     fb1:	e8 3c fd ff ff       	call   cf2 <write>
     fb6:	e9 5b ff ff ff       	jmp    f16 <printf+0xf6>
     fbb:	66 90                	xchg   %ax,%ax
     fbd:	66 90                	xchg   %ax,%ax
     fbf:	90                   	nop

00000fc0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
     fc0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
     fc1:	a1 c8 15 00 00       	mov    0x15c8,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
     fc6:	89 e5                	mov    %esp,%ebp
     fc8:	57                   	push   %edi
     fc9:	56                   	push   %esi
     fca:	53                   	push   %ebx
     fcb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
     fce:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
     fd0:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
     fd3:	39 c8                	cmp    %ecx,%eax
     fd5:	73 19                	jae    ff0 <free+0x30>
     fd7:	89 f6                	mov    %esi,%esi
     fd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
     fe0:	39 d1                	cmp    %edx,%ecx
     fe2:	72 1c                	jb     1000 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
     fe4:	39 d0                	cmp    %edx,%eax
     fe6:	73 18                	jae    1000 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
     fe8:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
     fea:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
     fec:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
     fee:	72 f0                	jb     fe0 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
     ff0:	39 d0                	cmp    %edx,%eax
     ff2:	72 f4                	jb     fe8 <free+0x28>
     ff4:	39 d1                	cmp    %edx,%ecx
     ff6:	73 f0                	jae    fe8 <free+0x28>
     ff8:	90                   	nop
     ff9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
    1000:	8b 73 fc             	mov    -0x4(%ebx),%esi
    1003:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    1006:	39 d7                	cmp    %edx,%edi
    1008:	74 19                	je     1023 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    100a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    100d:	8b 50 04             	mov    0x4(%eax),%edx
    1010:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1013:	39 f1                	cmp    %esi,%ecx
    1015:	74 23                	je     103a <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    1017:	89 08                	mov    %ecx,(%eax)
  freep = p;
    1019:	a3 c8 15 00 00       	mov    %eax,0x15c8
}
    101e:	5b                   	pop    %ebx
    101f:	5e                   	pop    %esi
    1020:	5f                   	pop    %edi
    1021:	5d                   	pop    %ebp
    1022:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
    1023:	03 72 04             	add    0x4(%edx),%esi
    1026:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1029:	8b 10                	mov    (%eax),%edx
    102b:	8b 12                	mov    (%edx),%edx
    102d:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    1030:	8b 50 04             	mov    0x4(%eax),%edx
    1033:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1036:	39 f1                	cmp    %esi,%ecx
    1038:	75 dd                	jne    1017 <free+0x57>
    p->s.size += bp->s.size;
    103a:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
    103d:	a3 c8 15 00 00       	mov    %eax,0x15c8
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
    1042:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1045:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1048:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
    104a:	5b                   	pop    %ebx
    104b:	5e                   	pop    %esi
    104c:	5f                   	pop    %edi
    104d:	5d                   	pop    %ebp
    104e:	c3                   	ret    
    104f:	90                   	nop

00001050 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1050:	55                   	push   %ebp
    1051:	89 e5                	mov    %esp,%ebp
    1053:	57                   	push   %edi
    1054:	56                   	push   %esi
    1055:	53                   	push   %ebx
    1056:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1059:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    105c:	8b 15 c8 15 00 00    	mov    0x15c8,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1062:	8d 78 07             	lea    0x7(%eax),%edi
    1065:	c1 ef 03             	shr    $0x3,%edi
    1068:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    106b:	85 d2                	test   %edx,%edx
    106d:	0f 84 a3 00 00 00    	je     1116 <malloc+0xc6>
    1073:	8b 02                	mov    (%edx),%eax
    1075:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1078:	39 cf                	cmp    %ecx,%edi
    107a:	76 74                	jbe    10f0 <malloc+0xa0>
    107c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    1082:	be 00 10 00 00       	mov    $0x1000,%esi
    1087:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
    108e:	0f 43 f7             	cmovae %edi,%esi
    1091:	ba 00 80 00 00       	mov    $0x8000,%edx
    1096:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
    109c:	0f 46 da             	cmovbe %edx,%ebx
    109f:	eb 10                	jmp    10b1 <malloc+0x61>
    10a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    10a8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    10aa:	8b 48 04             	mov    0x4(%eax),%ecx
    10ad:	39 cf                	cmp    %ecx,%edi
    10af:	76 3f                	jbe    10f0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    10b1:	39 05 c8 15 00 00    	cmp    %eax,0x15c8
    10b7:	89 c2                	mov    %eax,%edx
    10b9:	75 ed                	jne    10a8 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
    10bb:	83 ec 0c             	sub    $0xc,%esp
    10be:	53                   	push   %ebx
    10bf:	e8 96 fc ff ff       	call   d5a <sbrk>
  if(p == (char*)-1)
    10c4:	83 c4 10             	add    $0x10,%esp
    10c7:	83 f8 ff             	cmp    $0xffffffff,%eax
    10ca:	74 1c                	je     10e8 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
    10cc:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
    10cf:	83 ec 0c             	sub    $0xc,%esp
    10d2:	83 c0 08             	add    $0x8,%eax
    10d5:	50                   	push   %eax
    10d6:	e8 e5 fe ff ff       	call   fc0 <free>
  return freep;
    10db:	8b 15 c8 15 00 00    	mov    0x15c8,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
    10e1:	83 c4 10             	add    $0x10,%esp
    10e4:	85 d2                	test   %edx,%edx
    10e6:	75 c0                	jne    10a8 <malloc+0x58>
        return 0;
    10e8:	31 c0                	xor    %eax,%eax
    10ea:	eb 1c                	jmp    1108 <malloc+0xb8>
    10ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
    10f0:	39 cf                	cmp    %ecx,%edi
    10f2:	74 1c                	je     1110 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
    10f4:	29 f9                	sub    %edi,%ecx
    10f6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    10f9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    10fc:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
    10ff:	89 15 c8 15 00 00    	mov    %edx,0x15c8
      return (void*)(p + 1);
    1105:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
    1108:	8d 65 f4             	lea    -0xc(%ebp),%esp
    110b:	5b                   	pop    %ebx
    110c:	5e                   	pop    %esi
    110d:	5f                   	pop    %edi
    110e:	5d                   	pop    %ebp
    110f:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
    1110:	8b 08                	mov    (%eax),%ecx
    1112:	89 0a                	mov    %ecx,(%edx)
    1114:	eb e9                	jmp    10ff <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    1116:	c7 05 c8 15 00 00 cc 	movl   $0x15cc,0x15c8
    111d:	15 00 00 
    1120:	c7 05 cc 15 00 00 cc 	movl   $0x15cc,0x15cc
    1127:	15 00 00 
    base.s.size = 0;
    112a:	b8 cc 15 00 00       	mov    $0x15cc,%eax
    112f:	c7 05 d0 15 00 00 00 	movl   $0x0,0x15d0
    1136:	00 00 00 
    1139:	e9 3e ff ff ff       	jmp    107c <malloc+0x2c>
