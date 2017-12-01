
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
      1a:	0f 8e 5f 01 00 00    	jle    17f <main+0x17f>
    exit();
  }
  printf(1,"asd%d\n",strcmp(argv[3],".."));
      20:	83 ec 08             	sub    $0x8,%esp
      23:	68 86 17 00 00       	push   $0x1786
      28:	ff 73 0c             	pushl  0xc(%ebx)
      2b:	e8 30 10 00 00       	call   1060 <strcmp>
      30:	83 c4 0c             	add    $0xc,%esp
      33:	50                   	push   %eax
      34:	68 89 17 00 00       	push   $0x1789
      39:	6a 01                	push   $0x1
      3b:	e8 80 13 00 00       	call   13c0 <printf>
  if(strcmp(argv[3],"..")==0){
      40:	58                   	pop    %eax
      41:	5a                   	pop    %edx
      42:	68 86 17 00 00       	push   $0x1786
      47:	ff 73 0c             	pushl  0xc(%ebx)
      4a:	e8 11 10 00 00       	call   1060 <strcmp>
      4f:	83 c4 10             	add    $0x10,%esp
      52:	85 c0                	test   %eax,%eax
      54:	0f 84 ab 02 00 00    	je     305 <main+0x305>
    temp++;
    *temp='\0';
    strcpy(argv[3],buf);
    printf(1,"faw%s\n",argv[3]);
  }
  if(strcmp(argv[1],"-R")==0){
      5a:	83 ec 08             	sub    $0x8,%esp
      5d:	68 97 17 00 00       	push   $0x1797
      62:	ff 73 04             	pushl  0x4(%ebx)
      65:	e8 f6 0f 00 00       	call   1060 <strcmp>
      6a:	83 c4 10             	add    $0x10,%esp
      6d:	85 c0                	test   %eax,%eax
      6f:	0f 84 c0 01 00 00    	je     235 <main+0x235>
    if(*argv[3]!='/') strcat(tempb,buf);
    strcat(tempb,argv[3]);
    printf(1,"%s %s %s\n",buf,tempa,tempb);
    cpR(tempa,tempb);
  }
  if(strcmp(argv[1],"*")==0){
      75:	83 ec 08             	sub    $0x8,%esp
      78:	68 a4 17 00 00       	push   $0x17a4
      7d:	ff 73 04             	pushl  0x4(%ebx)
      80:	e8 db 0f 00 00       	call   1060 <strcmp>
      85:	83 c4 10             	add    $0x10,%esp
      88:	85 c0                	test   %eax,%eax
      8a:	0f 85 f4 00 00 00    	jne    184 <main+0x184>
    int key=open(".yuhuu",O_CREATE | O_RDWR);
      90:	56                   	push   %esi
      91:	56                   	push   %esi
      92:	68 02 02 00 00       	push   $0x202
      97:	68 e1 16 00 00       	push   $0x16e1
      9c:	e8 11 12 00 00       	call   12b2 <open>
    char *buf=malloc(100);
      a1:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
    strcat(tempb,argv[3]);
    printf(1,"%s %s %s\n",buf,tempa,tempb);
    cpR(tempa,tempb);
  }
  if(strcmp(argv[1],"*")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
      a8:	89 c7                	mov    %eax,%edi
    char *buf=malloc(100);
      aa:	e8 41 15 00 00       	call   15f0 <malloc>
    memset (buf,0,sizeof buf);
      af:	83 c4 0c             	add    $0xc,%esp
    printf(1,"%s %s %s\n",buf,tempa,tempb);
    cpR(tempa,tempb);
  }
  if(strcmp(argv[1],"*")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
    char *buf=malloc(100);
      b2:	89 c6                	mov    %eax,%esi
    memset (buf,0,sizeof buf);
      b4:	6a 04                	push   $0x4
      b6:	6a 00                	push   $0x0
      b8:	50                   	push   %eax
      b9:	e8 22 10 00 00       	call   10e0 <memset>
    read(key, buf, sizeof(buf));
      be:	83 c4 0c             	add    $0xc,%esp
      c1:	6a 04                	push   $0x4
      c3:	56                   	push   %esi
      c4:	57                   	push   %edi
      c5:	e8 c0 11 00 00       	call   128a <read>
    char *tempa=malloc(100);
      ca:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
      d1:	e8 1a 15 00 00       	call   15f0 <malloc>
    memset (tempa,0,sizeof tempa);
      d6:	83 c4 0c             	add    $0xc,%esp
      d9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
      dc:	6a 04                	push   $0x4
      de:	6a 00                	push   $0x0
      e0:	50                   	push   %eax
      e1:	e8 fa 0f 00 00       	call   10e0 <memset>
    if(*argv[2]!='/') strcat(tempa,buf);
      e6:	8b 7b 08             	mov    0x8(%ebx),%edi
      e9:	83 c4 10             	add    $0x10,%esp
      ec:	8b 55 e4             	mov    -0x1c(%ebp),%edx
      ef:	0f b6 0f             	movzbl (%edi),%ecx
      f2:	80 f9 2f             	cmp    $0x2f,%cl
      f5:	0f 84 9b 00 00 00    	je     196 <main+0x196>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
      fb:	80 3a 00             	cmpb   $0x0,(%edx)
      fe:	89 d0                	mov    %edx,%eax
     100:	74 0e                	je     110 <main+0x110>
     102:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     108:	83 c0 01             	add    $0x1,%eax
     10b:	80 38 00             	cmpb   $0x0,(%eax)
     10e:	75 f8                	jne    108 <main+0x108>
  while (*s2) *s1++ = *s2++;
     110:	0f b6 0e             	movzbl (%esi),%ecx
     113:	84 c9                	test   %cl,%cl
     115:	74 19                	je     130 <main+0x130>
     117:	89 f7                	mov    %esi,%edi
     119:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     120:	83 c0 01             	add    $0x1,%eax
     123:	83 c7 01             	add    $0x1,%edi
     126:	88 48 ff             	mov    %cl,-0x1(%eax)
     129:	0f b6 0f             	movzbl (%edi),%ecx
     12c:	84 c9                	test   %cl,%cl
     12e:	75 f0                	jne    120 <main+0x120>
  *s1 = 0;
     130:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     133:	80 3a 00             	cmpb   $0x0,(%edx)
    memset (buf,0,sizeof buf);
    read(key, buf, sizeof(buf));
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
     136:	8b 7b 08             	mov    0x8(%ebx),%edi

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     139:	0f 84 33 03 00 00    	je     472 <main+0x472>
  if(strcmp(argv[1],"*")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
    char *buf=malloc(100);
    memset (buf,0,sizeof buf);
    read(key, buf, sizeof(buf));
    char *tempa=malloc(100);
     13f:	89 d0                	mov    %edx,%eax
     141:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     148:	83 c0 01             	add    $0x1,%eax
     14b:	80 38 00             	cmpb   $0x0,(%eax)
     14e:	75 f8                	jne    148 <main+0x148>
     150:	eb 57                	jmp    1a9 <main+0x1a9>
     152:	80 3f 00             	cmpb   $0x0,(%edi)
     155:	89 fb                	mov    %edi,%ebx
     157:	0f 85 c2 00 00 00    	jne    21f <main+0x21f>
     15d:	8d 76 00             	lea    0x0(%esi),%esi
  while (*s2) *s1++ = *s2++;
     160:	83 c3 01             	add    $0x1,%ebx
     163:	83 c1 01             	add    $0x1,%ecx
     166:	88 43 ff             	mov    %al,-0x1(%ebx)
     169:	0f b6 01             	movzbl (%ecx),%eax
     16c:	84 c0                	test   %al,%al
     16e:	75 f0                	jne    160 <main+0x160>
  *s1 = 0;
     170:	c6 03 00             	movb   $0x0,(%ebx)
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
    memset (tempb,0,sizeof tempb);
    if(*argv[3]!='/') strcat(tempb,buf);
    strcat(tempb,argv[3]);
    cpb(tempa,tempb);
     173:	51                   	push   %ecx
     174:	51                   	push   %ecx
     175:	57                   	push   %edi
     176:	52                   	push   %edx
     177:	e8 34 0b 00 00       	call   cb0 <cpb>
     17c:	83 c4 10             	add    $0x10,%esp
}

int main(int argc, char *argv[])
{
  if(argc < 2){
    exit();
     17f:	e8 ee 10 00 00       	call   1272 <exit>
    strcat(tempb,argv[3]);
    cpb(tempa,tempb);

  }
  else{
    cp(argv[2],argv[3]);
     184:	50                   	push   %eax
     185:	50                   	push   %eax
     186:	ff 73 0c             	pushl  0xc(%ebx)
     189:	ff 73 08             	pushl  0x8(%ebx)
     18c:	e8 8f 06 00 00       	call   820 <cp>
     191:	83 c4 10             	add    $0x10,%esp
     194:	eb e9                	jmp    17f <main+0x17f>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     196:	80 3a 00             	cmpb   $0x0,(%edx)
     199:	89 d0                	mov    %edx,%eax
     19b:	75 a2                	jne    13f <main+0x13f>
     19d:	8d 76 00             	lea    0x0(%esi),%esi
  while (*s2) *s1++ = *s2++;
     1a0:	83 c0 01             	add    $0x1,%eax
     1a3:	83 c7 01             	add    $0x1,%edi
     1a6:	88 48 ff             	mov    %cl,-0x1(%eax)
     1a9:	0f b6 0f             	movzbl (%edi),%ecx
     1ac:	84 c9                	test   %cl,%cl
     1ae:	75 f0                	jne    1a0 <main+0x1a0>
    read(key, buf, sizeof(buf));
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
     1b0:	83 ec 0c             	sub    $0xc,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     1b3:	c6 00 00             	movb   $0x0,(%eax)
     1b6:	89 55 e4             	mov    %edx,-0x1c(%ebp)
    read(key, buf, sizeof(buf));
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
     1b9:	6a 64                	push   $0x64
     1bb:	e8 30 14 00 00       	call   15f0 <malloc>
    memset (tempb,0,sizeof tempb);
     1c0:	83 c4 0c             	add    $0xc,%esp
    read(key, buf, sizeof(buf));
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
     1c3:	89 c7                	mov    %eax,%edi
    memset (tempb,0,sizeof tempb);
     1c5:	6a 04                	push   $0x4
     1c7:	6a 00                	push   $0x0
     1c9:	50                   	push   %eax
     1ca:	e8 11 0f 00 00       	call   10e0 <memset>
    if(*argv[3]!='/') strcat(tempb,buf);
     1cf:	8b 4b 0c             	mov    0xc(%ebx),%ecx
     1d2:	83 c4 10             	add    $0x10,%esp
     1d5:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     1d8:	0f b6 01             	movzbl (%ecx),%eax
     1db:	3c 2f                	cmp    $0x2f,%al
     1dd:	0f 84 6f ff ff ff    	je     152 <main+0x152>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     1e3:	80 3f 00             	cmpb   $0x0,(%edi)
     1e6:	89 f8                	mov    %edi,%eax
     1e8:	74 1f                	je     209 <main+0x209>
     1ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     1f0:	83 c0 01             	add    $0x1,%eax
     1f3:	80 38 00             	cmpb   $0x0,(%eax)
     1f6:	75 f8                	jne    1f0 <main+0x1f0>
     1f8:	eb 0f                	jmp    209 <main+0x209>
     1fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  while (*s2) *s1++ = *s2++;
     200:	83 c0 01             	add    $0x1,%eax
     203:	83 c6 01             	add    $0x1,%esi
     206:	88 48 ff             	mov    %cl,-0x1(%eax)
     209:	0f b6 0e             	movzbl (%esi),%ecx
     20c:	84 c9                	test   %cl,%cl
     20e:	75 f0                	jne    200 <main+0x200>
  *s1 = 0;
     210:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     213:	80 3f 00             	cmpb   $0x0,(%edi)
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
    memset (tempb,0,sizeof tempb);
    if(*argv[3]!='/') strcat(tempb,buf);
    strcat(tempb,argv[3]);
     216:	8b 4b 0c             	mov    0xc(%ebx),%ecx

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     219:	0f 84 4c 02 00 00    	je     46b <main+0x46b>
    read(key, buf, sizeof(buf));
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
     21f:	89 fb                	mov    %edi,%ebx
     221:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     228:	83 c3 01             	add    $0x1,%ebx
     22b:	80 3b 00             	cmpb   $0x0,(%ebx)
     22e:	75 f8                	jne    228 <main+0x228>
     230:	e9 34 ff ff ff       	jmp    169 <main+0x169>
    *temp='\0';
    strcpy(argv[3],buf);
    printf(1,"faw%s\n",argv[3]);
  }
  if(strcmp(argv[1],"-R")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
     235:	57                   	push   %edi
     236:	57                   	push   %edi
     237:	68 02 02 00 00       	push   $0x202
     23c:	68 e1 16 00 00       	push   $0x16e1
     241:	e8 6c 10 00 00       	call   12b2 <open>
    char *buf=malloc(100);
     246:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
    *temp='\0';
    strcpy(argv[3],buf);
    printf(1,"faw%s\n",argv[3]);
  }
  if(strcmp(argv[1],"-R")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
     24d:	89 c7                	mov    %eax,%edi
    char *buf=malloc(100);
     24f:	e8 9c 13 00 00       	call   15f0 <malloc>
    memset (buf,0,100);
     254:	83 c4 0c             	add    $0xc,%esp
    strcpy(argv[3],buf);
    printf(1,"faw%s\n",argv[3]);
  }
  if(strcmp(argv[1],"-R")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
    char *buf=malloc(100);
     257:	89 c6                	mov    %eax,%esi
    memset (buf,0,100);
     259:	6a 64                	push   $0x64
     25b:	6a 00                	push   $0x0
     25d:	50                   	push   %eax
     25e:	e8 7d 0e 00 00       	call   10e0 <memset>
    read(key, buf, 100);
     263:	83 c4 0c             	add    $0xc,%esp
     266:	6a 64                	push   $0x64
     268:	56                   	push   %esi
     269:	57                   	push   %edi
     26a:	e8 1b 10 00 00       	call   128a <read>
    printf(1,"%s\n",buf);
     26f:	83 c4 0c             	add    $0xc,%esp
     272:	56                   	push   %esi
     273:	68 14 17 00 00       	push   $0x1714
     278:	6a 01                	push   $0x1
     27a:	e8 41 11 00 00       	call   13c0 <printf>
    char *tempa=malloc(100);
     27f:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
     286:	e8 65 13 00 00       	call   15f0 <malloc>
    memset (tempa,0,sizeof tempa);
     28b:	83 c4 0c             	add    $0xc,%esp
    int key=open(".yuhuu",O_CREATE | O_RDWR);
    char *buf=malloc(100);
    memset (buf,0,100);
    read(key, buf, 100);
    printf(1,"%s\n",buf);
    char *tempa=malloc(100);
     28e:	89 c7                	mov    %eax,%edi
    memset (tempa,0,sizeof tempa);
     290:	6a 04                	push   $0x4
     292:	6a 00                	push   $0x0
     294:	50                   	push   %eax
     295:	e8 46 0e 00 00       	call   10e0 <memset>
    if(*argv[2]!='/') strcat(tempa,buf);
     29a:	8b 4b 08             	mov    0x8(%ebx),%ecx
     29d:	83 c4 10             	add    $0x10,%esp
     2a0:	0f b6 11             	movzbl (%ecx),%edx
     2a3:	80 fa 2f             	cmp    $0x2f,%dl
     2a6:	0f 84 dd 00 00 00    	je     389 <main+0x389>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     2ac:	80 3f 00             	cmpb   $0x0,(%edi)
     2af:	89 f8                	mov    %edi,%eax
     2b1:	74 0d                	je     2c0 <main+0x2c0>
     2b3:	90                   	nop
     2b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     2b8:	83 c0 01             	add    $0x1,%eax
     2bb:	80 38 00             	cmpb   $0x0,(%eax)
     2be:	75 f8                	jne    2b8 <main+0x2b8>
  while (*s2) *s1++ = *s2++;
     2c0:	0f b6 16             	movzbl (%esi),%edx
     2c3:	84 d2                	test   %dl,%dl
     2c5:	74 19                	je     2e0 <main+0x2e0>
     2c7:	89 f1                	mov    %esi,%ecx
     2c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     2d0:	83 c0 01             	add    $0x1,%eax
     2d3:	83 c1 01             	add    $0x1,%ecx
     2d6:	88 50 ff             	mov    %dl,-0x1(%eax)
     2d9:	0f b6 11             	movzbl (%ecx),%edx
     2dc:	84 d2                	test   %dl,%dl
     2de:	75 f0                	jne    2d0 <main+0x2d0>
  *s1 = 0;
     2e0:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     2e3:	80 3f 00             	cmpb   $0x0,(%edi)
    read(key, buf, 100);
    printf(1,"%s\n",buf);
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
     2e6:	8b 4b 08             	mov    0x8(%ebx),%ecx

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     2e9:	0f 84 8a 01 00 00    	je     479 <main+0x479>
    int key=open(".yuhuu",O_CREATE | O_RDWR);
    char *buf=malloc(100);
    memset (buf,0,100);
    read(key, buf, 100);
    printf(1,"%s\n",buf);
    char *tempa=malloc(100);
     2ef:	89 f8                	mov    %edi,%eax
     2f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     2f8:	83 c0 01             	add    $0x1,%eax
     2fb:	80 38 00             	cmpb   $0x0,(%eax)
     2fe:	75 f8                	jne    2f8 <main+0x2f8>
     300:	e9 9c 00 00 00       	jmp    3a1 <main+0x3a1>
  if(argc < 2){
    exit();
  }
  printf(1,"asd%d\n",strcmp(argv[3],".."));
  if(strcmp(argv[3],"..")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
     305:	50                   	push   %eax
     306:	50                   	push   %eax
     307:	68 02 02 00 00       	push   $0x202
     30c:	68 e1 16 00 00       	push   $0x16e1
     311:	e8 9c 0f 00 00       	call   12b2 <open>
    char *buf=malloc(100);
     316:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
  if(argc < 2){
    exit();
  }
  printf(1,"asd%d\n",strcmp(argv[3],".."));
  if(strcmp(argv[3],"..")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
     31d:	89 c7                	mov    %eax,%edi
    char *buf=malloc(100);
     31f:	e8 cc 12 00 00       	call   15f0 <malloc>
    memset (buf,0,sizeof buf);
     324:	83 c4 0c             	add    $0xc,%esp
    exit();
  }
  printf(1,"asd%d\n",strcmp(argv[3],".."));
  if(strcmp(argv[3],"..")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
    char *buf=malloc(100);
     327:	89 c6                	mov    %eax,%esi
    memset (buf,0,sizeof buf);
     329:	6a 04                	push   $0x4
     32b:	6a 00                	push   $0x0
     32d:	50                   	push   %eax
     32e:	e8 ad 0d 00 00       	call   10e0 <memset>
    read(key, buf, sizeof(buf));
     333:	83 c4 0c             	add    $0xc,%esp
     336:	6a 04                	push   $0x4
     338:	56                   	push   %esi
     339:	57                   	push   %edi
     33a:	e8 4b 0f 00 00       	call   128a <read>
    char *temp;
    temp=buf+strlen(buf)-1;
     33f:	89 34 24             	mov    %esi,(%esp)
     342:	e8 69 0d 00 00       	call   10b0 <strlen>
     347:	8d 44 06 ff          	lea    -0x1(%esi,%eax,1),%eax
    while(*temp!='/') temp--;
     34b:	83 c4 10             	add    $0x10,%esp
     34e:	80 38 2f             	cmpb   $0x2f,(%eax)
     351:	74 0d                	je     360 <main+0x360>
     353:	90                   	nop
     354:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     358:	83 e8 01             	sub    $0x1,%eax
     35b:	80 38 2f             	cmpb   $0x2f,(%eax)
     35e:	75 f8                	jne    358 <main+0x358>
    temp++;
    *temp='\0';
     360:	c6 40 01 00          	movb   $0x0,0x1(%eax)
    strcpy(argv[3],buf);
     364:	50                   	push   %eax
     365:	50                   	push   %eax
     366:	56                   	push   %esi
     367:	ff 73 0c             	pushl  0xc(%ebx)
     36a:	e8 c1 0c 00 00       	call   1030 <strcpy>
    printf(1,"faw%s\n",argv[3]);
     36f:	83 c4 0c             	add    $0xc,%esp
     372:	ff 73 0c             	pushl  0xc(%ebx)
     375:	68 90 17 00 00       	push   $0x1790
     37a:	6a 01                	push   $0x1
     37c:	e8 3f 10 00 00       	call   13c0 <printf>
     381:	83 c4 10             	add    $0x10,%esp
     384:	e9 d1 fc ff ff       	jmp    5a <main+0x5a>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     389:	80 3f 00             	cmpb   $0x0,(%edi)
     38c:	89 f8                	mov    %edi,%eax
     38e:	0f 85 5b ff ff ff    	jne    2ef <main+0x2ef>
     394:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while (*s2) *s1++ = *s2++;
     398:	83 c0 01             	add    $0x1,%eax
     39b:	83 c1 01             	add    $0x1,%ecx
     39e:	88 50 ff             	mov    %dl,-0x1(%eax)
     3a1:	0f b6 11             	movzbl (%ecx),%edx
     3a4:	84 d2                	test   %dl,%dl
     3a6:	75 f0                	jne    398 <main+0x398>
    printf(1,"%s\n",buf);
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
     3a8:	83 ec 0c             	sub    $0xc,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     3ab:	c6 00 00             	movb   $0x0,(%eax)
    printf(1,"%s\n",buf);
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
     3ae:	6a 64                	push   $0x64
     3b0:	e8 3b 12 00 00       	call   15f0 <malloc>
    memset (tempb,0,sizeof tempb);
     3b5:	83 c4 0c             	add    $0xc,%esp
     3b8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     3bb:	6a 04                	push   $0x4
     3bd:	6a 00                	push   $0x0
     3bf:	50                   	push   %eax
     3c0:	e8 1b 0d 00 00       	call   10e0 <memset>
    if(*argv[3]!='/') strcat(tempb,buf);
     3c5:	8b 4b 0c             	mov    0xc(%ebx),%ecx
     3c8:	83 c4 10             	add    $0x10,%esp

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     3cb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    memset (tempa,0,sizeof tempa);
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
    memset (tempb,0,sizeof tempb);
    if(*argv[3]!='/') strcat(tempb,buf);
     3ce:	0f b6 11             	movzbl (%ecx),%edx
     3d1:	80 fa 2f             	cmp    $0x2f,%dl
     3d4:	74 54                	je     42a <main+0x42a>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     3d6:	80 38 00             	cmpb   $0x0,(%eax)
     3d9:	0f 84 a6 00 00 00    	je     485 <main+0x485>
     3df:	90                   	nop
     3e0:	83 c0 01             	add    $0x1,%eax
     3e3:	80 38 00             	cmpb   $0x0,(%eax)
     3e6:	75 f8                	jne    3e0 <main+0x3e0>
  while (*s2) *s1++ = *s2++;
     3e8:	0f b6 16             	movzbl (%esi),%edx
     3eb:	84 d2                	test   %dl,%dl
     3ed:	74 19                	je     408 <main+0x408>
     3ef:	89 f1                	mov    %esi,%ecx
     3f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     3f8:	83 c0 01             	add    $0x1,%eax
     3fb:	83 c1 01             	add    $0x1,%ecx
     3fe:	88 50 ff             	mov    %dl,-0x1(%eax)
     401:	0f b6 11             	movzbl (%ecx),%edx
     404:	84 d2                	test   %dl,%dl
     406:	75 f0                	jne    3f8 <main+0x3f8>
  *s1 = 0;
     408:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     40b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
    memset (tempb,0,sizeof tempb);
    if(*argv[3]!='/') strcat(tempb,buf);
    strcat(tempb,argv[3]);
     40e:	8b 4b 0c             	mov    0xc(%ebx),%ecx

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     411:	80 38 00             	cmpb   $0x0,(%eax)
     414:	74 6a                	je     480 <main+0x480>
    printf(1,"%s\n",buf);
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
     416:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     419:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     420:	83 c0 01             	add    $0x1,%eax
     423:	80 38 00             	cmpb   $0x0,(%eax)
     426:	75 f8                	jne    420 <main+0x420>
     428:	eb 0f                	jmp    439 <main+0x439>
     42a:	80 38 00             	cmpb   $0x0,(%eax)
     42d:	75 e7                	jne    416 <main+0x416>
     42f:	90                   	nop
  while (*s2) *s1++ = *s2++;
     430:	83 c0 01             	add    $0x1,%eax
     433:	83 c1 01             	add    $0x1,%ecx
     436:	88 50 ff             	mov    %dl,-0x1(%eax)
     439:	0f b6 11             	movzbl (%ecx),%edx
     43c:	84 d2                	test   %dl,%dl
     43e:	75 f0                	jne    430 <main+0x430>
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
    memset (tempb,0,sizeof tempb);
    if(*argv[3]!='/') strcat(tempb,buf);
    strcat(tempb,argv[3]);
    printf(1,"%s %s %s\n",buf,tempa,tempb);
     440:	83 ec 0c             	sub    $0xc,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     443:	c6 00 00             	movb   $0x0,(%eax)
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
    memset (tempb,0,sizeof tempb);
    if(*argv[3]!='/') strcat(tempb,buf);
    strcat(tempb,argv[3]);
    printf(1,"%s %s %s\n",buf,tempa,tempb);
     446:	ff 75 e4             	pushl  -0x1c(%ebp)
     449:	57                   	push   %edi
     44a:	56                   	push   %esi
     44b:	68 9a 17 00 00       	push   $0x179a
     450:	6a 01                	push   $0x1
     452:	e8 69 0f 00 00       	call   13c0 <printf>
    cpR(tempa,tempb);
     457:	83 c4 18             	add    $0x18,%esp
     45a:	ff 75 e4             	pushl  -0x1c(%ebp)
     45d:	57                   	push   %edi
     45e:	e8 bd 04 00 00       	call   920 <cpR>
     463:	83 c4 10             	add    $0x10,%esp
     466:	e9 0a fc ff ff       	jmp    75 <main+0x75>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     46b:	89 fb                	mov    %edi,%ebx
     46d:	e9 f7 fc ff ff       	jmp    169 <main+0x169>
     472:	89 d0                	mov    %edx,%eax
     474:	e9 30 fd ff ff       	jmp    1a9 <main+0x1a9>
     479:	89 f8                	mov    %edi,%eax
     47b:	e9 21 ff ff ff       	jmp    3a1 <main+0x3a1>
     480:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     483:	eb b4                	jmp    439 <main+0x439>
     485:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     488:	e9 5b ff ff ff       	jmp    3e8 <main+0x3e8>
     48d:	66 90                	xchg   %ax,%ax
     48f:	90                   	nop

00000490 <strcat>:
#include "fcntl.h"
#include <assert.h>
#include <stdarg.h>

char* strcat(char* s1, const char* s2)
{
     490:	55                   	push   %ebp
     491:	89 e5                	mov    %esp,%ebp
     493:	53                   	push   %ebx
     494:	8b 45 08             	mov    0x8(%ebp),%eax
     497:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char* b = s1;

  while (*s1) ++s1;
     49a:	80 38 00             	cmpb   $0x0,(%eax)
     49d:	89 c2                	mov    %eax,%edx
     49f:	74 28                	je     4c9 <strcat+0x39>
     4a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     4a8:	83 c2 01             	add    $0x1,%edx
     4ab:	80 3a 00             	cmpb   $0x0,(%edx)
     4ae:	75 f8                	jne    4a8 <strcat+0x18>
  while (*s2) *s1++ = *s2++;
     4b0:	0f b6 0b             	movzbl (%ebx),%ecx
     4b3:	84 c9                	test   %cl,%cl
     4b5:	74 19                	je     4d0 <strcat+0x40>
     4b7:	89 f6                	mov    %esi,%esi
     4b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
     4c0:	83 c2 01             	add    $0x1,%edx
     4c3:	83 c3 01             	add    $0x1,%ebx
     4c6:	88 4a ff             	mov    %cl,-0x1(%edx)
     4c9:	0f b6 0b             	movzbl (%ebx),%ecx
     4cc:	84 c9                	test   %cl,%cl
     4ce:	75 f0                	jne    4c0 <strcat+0x30>
  *s1 = 0;
     4d0:	c6 02 00             	movb   $0x0,(%edx)

  return b;
}
     4d3:	5b                   	pop    %ebx
     4d4:	5d                   	pop    %ebp
     4d5:	c3                   	ret    
     4d6:	8d 76 00             	lea    0x0(%esi),%esi
     4d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004e0 <mkdire>:

void mkdire(char *path){
     4e0:	55                   	push   %ebp
     4e1:	89 e5                	mov    %esp,%ebp
     4e3:	57                   	push   %edi
     4e4:	56                   	push   %esi
     4e5:	53                   	push   %ebx
     4e6:	81 ec 28 02 00 00    	sub    $0x228,%esp
     4ec:	8b 75 08             	mov    0x8(%ebp),%esi
  if(mkdir(path) < 0){
     4ef:	56                   	push   %esi
     4f0:	e8 e5 0d 00 00       	call   12da <mkdir>
     4f5:	83 c4 10             	add    $0x10,%esp
     4f8:	85 c0                	test   %eax,%eax
     4fa:	0f 88 48 02 00 00    	js     748 <mkdire+0x268>
    printf(2, "mkdir: %s failed to create\n", path);
    return;
  }
  char *tem=malloc(100);
     500:	83 ec 0c             	sub    $0xc,%esp
     503:	6a 64                	push   $0x64
     505:	e8 e6 10 00 00       	call   15f0 <malloc>
  memset(tem,0,sizeof tem);
     50a:	83 c4 0c             	add    $0xc,%esp
void mkdire(char *path){
  if(mkdir(path) < 0){
    printf(2, "mkdir: %s failed to create\n", path);
    return;
  }
  char *tem=malloc(100);
     50d:	89 c3                	mov    %eax,%ebx
  memset(tem,0,sizeof tem);
     50f:	6a 04                	push   $0x4
     511:	6a 00                	push   $0x0
     513:	50                   	push   %eax
     514:	e8 c7 0b 00 00       	call   10e0 <memset>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     519:	83 c4 10             	add    $0x10,%esp
     51c:	80 3b 00             	cmpb   $0x0,(%ebx)
     51f:	89 d8                	mov    %ebx,%eax
     521:	74 0d                	je     530 <mkdire+0x50>
     523:	90                   	nop
     524:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     528:	83 c0 01             	add    $0x1,%eax
     52b:	80 38 00             	cmpb   $0x0,(%eax)
     52e:	75 f8                	jne    528 <mkdire+0x48>
  while (*s2) *s1++ = *s2++;
     530:	0f b6 16             	movzbl (%esi),%edx
     533:	84 d2                	test   %dl,%dl
     535:	74 19                	je     550 <mkdire+0x70>
     537:	89 f1                	mov    %esi,%ecx
     539:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     540:	83 c0 01             	add    $0x1,%eax
     543:	83 c1 01             	add    $0x1,%ecx
     546:	88 50 ff             	mov    %dl,-0x1(%eax)
     549:	0f b6 11             	movzbl (%ecx),%edx
     54c:	84 d2                	test   %dl,%dl
     54e:	75 f0                	jne    540 <mkdire+0x60>
  *s1 = 0;
     550:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     553:	80 3b 00             	cmpb   $0x0,(%ebx)
     556:	89 d8                	mov    %ebx,%eax
     558:	74 0e                	je     568 <mkdire+0x88>
     55a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     560:	83 c0 01             	add    $0x1,%eax
     563:	80 38 00             	cmpb   $0x0,(%eax)
     566:	75 f8                	jne    560 <mkdire+0x80>
     568:	b9 2f 00 00 00       	mov    $0x2f,%ecx
     56d:	ba e0 16 00 00       	mov    $0x16e0,%edx
     572:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  while (*s2) *s1++ = *s2++;
     578:	83 c0 01             	add    $0x1,%eax
     57b:	83 c2 01             	add    $0x1,%edx
     57e:	88 48 ff             	mov    %cl,-0x1(%eax)
     581:	0f b6 0a             	movzbl (%edx),%ecx
     584:	84 c9                	test   %cl,%cl
     586:	75 f0                	jne    578 <mkdire+0x98>
  }
  char *tem=malloc(100);
  memset(tem,0,sizeof tem);
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  int foutput=open(tem, O_CREATE | O_RDWR);
     588:	83 ec 08             	sub    $0x8,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     58b:	c6 00 00             	movb   $0x0,(%eax)
  }
  char *tem=malloc(100);
  memset(tem,0,sizeof tem);
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  int foutput=open(tem, O_CREATE | O_RDWR);
     58e:	68 02 02 00 00       	push   $0x202
     593:	53                   	push   %ebx
     594:	e8 19 0d 00 00       	call   12b2 <open>
  int finput,fd;
  if((finput = open(".yuhuu", O_RDWR)) < 0){
     599:	59                   	pop    %ecx
  }
  char *tem=malloc(100);
  memset(tem,0,sizeof tem);
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  int foutput=open(tem, O_CREATE | O_RDWR);
     59a:	89 c7                	mov    %eax,%edi
  int finput,fd;
  if((finput = open(".yuhuu", O_RDWR)) < 0){
     59c:	58                   	pop    %eax
     59d:	6a 02                	push   $0x2
     59f:	68 e1 16 00 00       	push   $0x16e1
     5a4:	e8 09 0d 00 00       	call   12b2 <open>
     5a9:	83 c4 10             	add    $0x10,%esp
     5ac:	85 c0                	test   %eax,%eax
     5ae:	89 85 e4 fd ff ff    	mov    %eax,-0x21c(%ebp)
     5b4:	0f 88 a9 01 00 00    	js     763 <mkdire+0x283>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     5ba:	80 3b 00             	cmpb   $0x0,(%ebx)
     5bd:	89 d8                	mov    %ebx,%eax
     5bf:	74 0f                	je     5d0 <mkdire+0xf0>
     5c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     5c8:	83 c0 01             	add    $0x1,%eax
     5cb:	80 38 00             	cmpb   $0x0,(%eax)
     5ce:	75 f8                	jne    5c8 <mkdire+0xe8>
  while (*s2) *s1++ = *s2++;
     5d0:	0f b6 16             	movzbl (%esi),%edx
     5d3:	84 d2                	test   %dl,%dl
     5d5:	74 19                	je     5f0 <mkdire+0x110>
     5d7:	89 f1                	mov    %esi,%ecx
     5d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     5e0:	83 c0 01             	add    $0x1,%eax
     5e3:	83 c1 01             	add    $0x1,%ecx
     5e6:	88 50 ff             	mov    %dl,-0x1(%eax)
     5e9:	0f b6 11             	movzbl (%ecx),%edx
     5ec:	84 d2                	test   %dl,%dl
     5ee:	75 f0                	jne    5e0 <mkdire+0x100>
  *s1 = 0;
     5f0:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     5f3:	80 3b 00             	cmpb   $0x0,(%ebx)
     5f6:	89 d8                	mov    %ebx,%eax
     5f8:	74 0e                	je     608 <mkdire+0x128>
     5fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     600:	83 c0 01             	add    $0x1,%eax
     603:	80 38 00             	cmpb   $0x0,(%eax)
     606:	75 f8                	jne    600 <mkdire+0x120>
     608:	b9 2f 00 00 00       	mov    $0x2f,%ecx
     60d:	ba e0 16 00 00       	mov    $0x16e0,%edx
     612:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  while (*s2) *s1++ = *s2++;
     618:	83 c0 01             	add    $0x1,%eax
     61b:	83 c2 01             	add    $0x1,%edx
     61e:	88 48 ff             	mov    %cl,-0x1(%eax)
     621:	0f b6 0a             	movzbl (%edx),%ecx
     624:	84 c9                	test   %cl,%cl
     626:	75 f0                	jne    618 <mkdire+0x138>
    printf(1, "cp: cannot open %s\n", path);
    exit();
  }
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  if((fd = open(tem, 0)) < 0){
     628:	83 ec 08             	sub    $0x8,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     62b:	c6 00 00             	movb   $0x0,(%eax)
    printf(1, "cp: cannot open %s\n", path);
    exit();
  }
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  if((fd = open(tem, 0)) < 0){
     62e:	6a 00                	push   $0x0
     630:	53                   	push   %ebx
     631:	e8 7c 0c 00 00       	call   12b2 <open>
     636:	83 c4 10             	add    $0x10,%esp
     639:	85 c0                	test   %eax,%eax
     63b:	89 85 e0 fd ff ff    	mov    %eax,-0x220(%ebp)
     641:	78 3d                	js     680 <mkdire+0x1a0>
    strcat(tem,"/");
    write(foutput,tem,strlen(tem));
    close(foutput);
  }
  else{
    printf(1, "cp: file %s already exist \n", path);
     643:	83 ec 04             	sub    $0x4,%esp
     646:	56                   	push   %esi
     647:	68 18 17 00 00       	push   $0x1718
     64c:	6a 01                	push   $0x1
     64e:	e8 6d 0d 00 00       	call   13c0 <printf>
     653:	83 c4 10             	add    $0x10,%esp
  }
  close(fd);
     656:	83 ec 0c             	sub    $0xc,%esp
     659:	ff b5 e0 fd ff ff    	pushl  -0x220(%ebp)
     65f:	e8 36 0c 00 00       	call   129a <close>
  close(finput);
     664:	58                   	pop    %eax
     665:	ff b5 e4 fd ff ff    	pushl  -0x21c(%ebp)
     66b:	e8 2a 0c 00 00       	call   129a <close>
     670:	83 c4 10             	add    $0x10,%esp
}
     673:	8d 65 f4             	lea    -0xc(%ebp),%esp
     676:	5b                   	pop    %ebx
     677:	5e                   	pop    %esi
     678:	5f                   	pop    %edi
     679:	5d                   	pop    %ebp
     67a:	c3                   	ret    
     67b:	90                   	nop
     67c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     680:	89 9d dc fd ff ff    	mov    %ebx,-0x224(%ebp)
     686:	8b 9d e4 fd ff ff    	mov    -0x21c(%ebp),%ebx
     68c:	eb 16                	jmp    6a4 <mkdire+0x1c4>
     68e:	66 90                	xchg   %ax,%ax
  strcat(tem,"/.yuhuu");
  if((fd = open(tem, 0)) < 0){
    int n;
    char buf[512];
    while((n = read(finput, buf, sizeof(buf))) > 0) {
      write(foutput,buf,n);
     690:	83 ec 04             	sub    $0x4,%esp
     693:	50                   	push   %eax
     694:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
     69a:	50                   	push   %eax
     69b:	57                   	push   %edi
     69c:	e8 f1 0b 00 00       	call   1292 <write>
     6a1:	83 c4 10             	add    $0x10,%esp
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  if((fd = open(tem, 0)) < 0){
    int n;
    char buf[512];
    while((n = read(finput, buf, sizeof(buf))) > 0) {
     6a4:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
     6aa:	83 ec 04             	sub    $0x4,%esp
     6ad:	68 00 02 00 00       	push   $0x200
     6b2:	50                   	push   %eax
     6b3:	53                   	push   %ebx
     6b4:	e8 d1 0b 00 00       	call   128a <read>
     6b9:	83 c4 10             	add    $0x10,%esp
     6bc:	85 c0                	test   %eax,%eax
     6be:	7f d0                	jg     690 <mkdire+0x1b0>
     6c0:	8b 9d dc fd ff ff    	mov    -0x224(%ebp),%ebx
      write(foutput,buf,n);
    }
    memset(tem,0,sizeof tem);
     6c6:	83 ec 04             	sub    $0x4,%esp
     6c9:	6a 04                	push   $0x4
     6cb:	6a 00                	push   $0x0
     6cd:	53                   	push   %ebx
     6ce:	e8 0d 0a 00 00       	call   10e0 <memset>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     6d3:	83 c4 10             	add    $0x10,%esp
     6d6:	80 3b 00             	cmpb   $0x0,(%ebx)
     6d9:	89 d8                	mov    %ebx,%eax
     6db:	74 1c                	je     6f9 <mkdire+0x219>
     6dd:	8d 76 00             	lea    0x0(%esi),%esi
     6e0:	83 c0 01             	add    $0x1,%eax
     6e3:	80 38 00             	cmpb   $0x0,(%eax)
     6e6:	75 f8                	jne    6e0 <mkdire+0x200>
  while (*s2) *s1++ = *s2++;
     6e8:	0f b6 16             	movzbl (%esi),%edx
     6eb:	84 d2                	test   %dl,%dl
     6ed:	74 11                	je     700 <mkdire+0x220>
     6ef:	90                   	nop
     6f0:	83 c0 01             	add    $0x1,%eax
     6f3:	83 c6 01             	add    $0x1,%esi
     6f6:	88 50 ff             	mov    %dl,-0x1(%eax)
     6f9:	0f b6 16             	movzbl (%esi),%edx
     6fc:	84 d2                	test   %dl,%dl
     6fe:	75 f0                	jne    6f0 <mkdire+0x210>
  *s1 = 0;
     700:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     703:	80 3b 00             	cmpb   $0x0,(%ebx)
     706:	89 d8                	mov    %ebx,%eax
     708:	74 0e                	je     718 <mkdire+0x238>
     70a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     710:	83 c0 01             	add    $0x1,%eax
     713:	80 38 00             	cmpb   $0x0,(%eax)
     716:	75 f8                	jne    710 <mkdire+0x230>
      write(foutput,buf,n);
    }
    memset(tem,0,sizeof tem);
    strcat(tem,path);
    strcat(tem,"/");
    write(foutput,tem,strlen(tem));
     718:	83 ec 0c             	sub    $0xc,%esp
char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
     71b:	c6 00 2f             	movb   $0x2f,(%eax)
  *s1 = 0;
     71e:	c6 40 01 00          	movb   $0x0,0x1(%eax)
      write(foutput,buf,n);
    }
    memset(tem,0,sizeof tem);
    strcat(tem,path);
    strcat(tem,"/");
    write(foutput,tem,strlen(tem));
     722:	53                   	push   %ebx
     723:	e8 88 09 00 00       	call   10b0 <strlen>
     728:	83 c4 0c             	add    $0xc,%esp
     72b:	50                   	push   %eax
     72c:	53                   	push   %ebx
     72d:	57                   	push   %edi
     72e:	e8 5f 0b 00 00       	call   1292 <write>
    close(foutput);
     733:	89 3c 24             	mov    %edi,(%esp)
     736:	e8 5f 0b 00 00       	call   129a <close>
     73b:	83 c4 10             	add    $0x10,%esp
     73e:	e9 13 ff ff ff       	jmp    656 <mkdire+0x176>
     743:	90                   	nop
     744:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return b;
}

void mkdire(char *path){
  if(mkdir(path) < 0){
    printf(2, "mkdir: %s failed to create\n", path);
     748:	83 ec 04             	sub    $0x4,%esp
     74b:	56                   	push   %esi
     74c:	68 e8 16 00 00       	push   $0x16e8
     751:	6a 02                	push   $0x2
     753:	e8 68 0c 00 00       	call   13c0 <printf>
    return;
     758:	83 c4 10             	add    $0x10,%esp
  else{
    printf(1, "cp: file %s already exist \n", path);
  }
  close(fd);
  close(finput);
}
     75b:	8d 65 f4             	lea    -0xc(%ebp),%esp
     75e:	5b                   	pop    %ebx
     75f:	5e                   	pop    %esi
     760:	5f                   	pop    %edi
     761:	5d                   	pop    %ebp
     762:	c3                   	ret    
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  int foutput=open(tem, O_CREATE | O_RDWR);
  int finput,fd;
  if((finput = open(".yuhuu", O_RDWR)) < 0){
    printf(1, "cp: cannot open %s\n", path);
     763:	52                   	push   %edx
     764:	56                   	push   %esi
     765:	68 04 17 00 00       	push   $0x1704
     76a:	6a 01                	push   $0x1
     76c:	e8 4f 0c 00 00       	call   13c0 <printf>
    exit();
     771:	e8 fc 0a 00 00       	call   1272 <exit>
     776:	8d 76 00             	lea    0x0(%esi),%esi
     779:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000780 <fmtname>:
  close(finput);
}

char*
fmtname(char *path)
{
     780:	55                   	push   %ebp
     781:	89 e5                	mov    %esp,%ebp
     783:	53                   	push   %ebx
     784:	83 ec 10             	sub    $0x10,%esp
     787:	8b 5d 08             	mov    0x8(%ebp),%ebx
  static char buf[DIRSIZ+1];
  char *p;

  // Find first character after last slash.
  for(p=path+strlen(path); p >= path && *p != '/'; p--)
     78a:	53                   	push   %ebx
     78b:	e8 20 09 00 00       	call   10b0 <strlen>
     790:	83 c4 10             	add    $0x10,%esp
     793:	01 d8                	add    %ebx,%eax
     795:	73 10                	jae    7a7 <fmtname+0x27>
     797:	eb 13                	jmp    7ac <fmtname+0x2c>
     799:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     7a0:	83 e8 01             	sub    $0x1,%eax
     7a3:	39 c3                	cmp    %eax,%ebx
     7a5:	77 05                	ja     7ac <fmtname+0x2c>
     7a7:	80 38 2f             	cmpb   $0x2f,(%eax)
     7aa:	75 f4                	jne    7a0 <fmtname+0x20>
    ;
  p++;
     7ac:	8d 58 01             	lea    0x1(%eax),%ebx

  // Return blank-padded name.
  if(strlen(p) >= DIRSIZ)
     7af:	83 ec 0c             	sub    $0xc,%esp
     7b2:	53                   	push   %ebx
     7b3:	e8 f8 08 00 00       	call   10b0 <strlen>
     7b8:	83 c4 10             	add    $0x10,%esp
     7bb:	83 f8 0d             	cmp    $0xd,%eax
     7be:	76 10                	jbe    7d0 <fmtname+0x50>
    return p;
  memmove(buf, p, strlen(p));
  strcat(buf,"\0");
  return p;
}
     7c0:	89 d8                	mov    %ebx,%eax
     7c2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     7c5:	c9                   	leave  
     7c6:	c3                   	ret    
     7c7:	89 f6                	mov    %esi,%esi
     7c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  p++;

  // Return blank-padded name.
  if(strlen(p) >= DIRSIZ)
    return p;
  memmove(buf, p, strlen(p));
     7d0:	83 ec 0c             	sub    $0xc,%esp
     7d3:	53                   	push   %ebx
     7d4:	e8 d7 08 00 00       	call   10b0 <strlen>
     7d9:	83 c4 0c             	add    $0xc,%esp
     7dc:	50                   	push   %eax
     7dd:	53                   	push   %ebx
     7de:	68 94 1b 00 00       	push   $0x1b94
     7e3:	e8 58 0a 00 00       	call   1240 <memmove>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     7e8:	83 c4 10             	add    $0x10,%esp
     7eb:	80 3d 94 1b 00 00 00 	cmpb   $0x0,0x1b94
     7f2:	b8 94 1b 00 00       	mov    $0x1b94,%eax
     7f7:	74 0f                	je     808 <fmtname+0x88>
     7f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     800:	83 c0 01             	add    $0x1,%eax
     803:	80 38 00             	cmpb   $0x0,(%eax)
     806:	75 f8                	jne    800 <fmtname+0x80>
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     808:	c6 00 00             	movb   $0x0,(%eax)
  if(strlen(p) >= DIRSIZ)
    return p;
  memmove(buf, p, strlen(p));
  strcat(buf,"\0");
  return p;
}
     80b:	89 d8                	mov    %ebx,%eax
     80d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     810:	c9                   	leave  
     811:	c3                   	ret    
     812:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     819:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000820 <cp>:

void cp(char *patha,char *pathb){
     820:	55                   	push   %ebp
     821:	89 e5                	mov    %esp,%ebp
     823:	57                   	push   %edi
     824:	56                   	push   %esi
     825:	53                   	push   %ebx
     826:	81 ec 44 04 00 00    	sub    $0x444,%esp
     82c:	8b 75 08             	mov    0x8(%ebp),%esi
  char buf[1024];
  int finput,foutput,fd;
  if((finput = open(patha, 0)) < 0){
     82f:	6a 00                	push   $0x0
     831:	56                   	push   %esi
     832:	e8 7b 0a 00 00       	call   12b2 <open>
     837:	83 c4 10             	add    $0x10,%esp
     83a:	85 c0                	test   %eax,%eax
     83c:	0f 88 c8 00 00 00    	js     90a <cp+0xea>
     842:	89 c3                	mov    %eax,%ebx
    printf(1, "cp: caaernnot open %s\n", patha);
    exit();
  }
  struct stat st;
  if(fstat(finput, &st) < 0) return;
     844:	8d 85 d4 fb ff ff    	lea    -0x42c(%ebp),%eax
     84a:	83 ec 08             	sub    $0x8,%esp
     84d:	50                   	push   %eax
     84e:	53                   	push   %ebx
     84f:	e8 76 0a 00 00       	call   12ca <fstat>
     854:	83 c4 10             	add    $0x10,%esp
     857:	85 c0                	test   %eax,%eax
     859:	78 52                	js     8ad <cp+0x8d>
  if(st.type==T_DIR) return;
     85b:	66 83 bd d4 fb ff ff 	cmpw   $0x1,-0x42c(%ebp)
     862:	01 
     863:	74 48                	je     8ad <cp+0x8d>

  if((fd = open(pathb, 0)) < 0){
     865:	83 ec 08             	sub    $0x8,%esp
     868:	6a 00                	push   $0x0
     86a:	ff 75 0c             	pushl  0xc(%ebp)
     86d:	e8 40 0a 00 00       	call   12b2 <open>
     872:	83 c4 10             	add    $0x10,%esp
     875:	85 c0                	test   %eax,%eax
     877:	89 85 c4 fb ff ff    	mov    %eax,-0x43c(%ebp)
     87d:	78 39                	js     8b8 <cp+0x98>
      write(foutput,buf,n);
    }
    close(foutput);
  }
  else{
    printf(1, "cp: file %s already exist \n", pathb);
     87f:	83 ec 04             	sub    $0x4,%esp
     882:	ff 75 0c             	pushl  0xc(%ebp)
     885:	68 18 17 00 00       	push   $0x1718
     88a:	6a 01                	push   $0x1
     88c:	e8 2f 0b 00 00       	call   13c0 <printf>
     891:	83 c4 10             	add    $0x10,%esp
  }
  close(fd);
     894:	83 ec 0c             	sub    $0xc,%esp
     897:	ff b5 c4 fb ff ff    	pushl  -0x43c(%ebp)
     89d:	e8 f8 09 00 00       	call   129a <close>
  close(finput);
     8a2:	89 1c 24             	mov    %ebx,(%esp)
     8a5:	e8 f0 09 00 00       	call   129a <close>
     8aa:	83 c4 10             	add    $0x10,%esp
}
     8ad:	8d 65 f4             	lea    -0xc(%ebp),%esp
     8b0:	5b                   	pop    %ebx
     8b1:	5e                   	pop    %esi
     8b2:	5f                   	pop    %edi
     8b3:	5d                   	pop    %ebp
     8b4:	c3                   	ret    
     8b5:	8d 76 00             	lea    0x0(%esi),%esi
  if(fstat(finput, &st) < 0) return;
  if(st.type==T_DIR) return;

  if((fd = open(pathb, 0)) < 0){
    int n;
    foutput = open(pathb, O_CREATE | O_RDWR);
     8b8:	83 ec 08             	sub    $0x8,%esp
     8bb:	8d b5 e8 fb ff ff    	lea    -0x418(%ebp),%esi
     8c1:	68 02 02 00 00       	push   $0x202
     8c6:	ff 75 0c             	pushl  0xc(%ebp)
     8c9:	e8 e4 09 00 00       	call   12b2 <open>
    while((n = read(finput, buf, sizeof(buf))) > 0) {
     8ce:	83 c4 10             	add    $0x10,%esp
  if(fstat(finput, &st) < 0) return;
  if(st.type==T_DIR) return;

  if((fd = open(pathb, 0)) < 0){
    int n;
    foutput = open(pathb, O_CREATE | O_RDWR);
     8d1:	89 c7                	mov    %eax,%edi
    while((n = read(finput, buf, sizeof(buf))) > 0) {
     8d3:	eb 11                	jmp    8e6 <cp+0xc6>
     8d5:	8d 76 00             	lea    0x0(%esi),%esi
      write(foutput,buf,n);
     8d8:	83 ec 04             	sub    $0x4,%esp
     8db:	50                   	push   %eax
     8dc:	56                   	push   %esi
     8dd:	57                   	push   %edi
     8de:	e8 af 09 00 00       	call   1292 <write>
     8e3:	83 c4 10             	add    $0x10,%esp
  if(st.type==T_DIR) return;

  if((fd = open(pathb, 0)) < 0){
    int n;
    foutput = open(pathb, O_CREATE | O_RDWR);
    while((n = read(finput, buf, sizeof(buf))) > 0) {
     8e6:	83 ec 04             	sub    $0x4,%esp
     8e9:	68 00 04 00 00       	push   $0x400
     8ee:	56                   	push   %esi
     8ef:	53                   	push   %ebx
     8f0:	e8 95 09 00 00       	call   128a <read>
     8f5:	83 c4 10             	add    $0x10,%esp
     8f8:	85 c0                	test   %eax,%eax
     8fa:	7f dc                	jg     8d8 <cp+0xb8>
      write(foutput,buf,n);
    }
    close(foutput);
     8fc:	83 ec 0c             	sub    $0xc,%esp
     8ff:	57                   	push   %edi
     900:	e8 95 09 00 00       	call   129a <close>
     905:	83 c4 10             	add    $0x10,%esp
     908:	eb 8a                	jmp    894 <cp+0x74>

void cp(char *patha,char *pathb){
  char buf[1024];
  int finput,foutput,fd;
  if((finput = open(patha, 0)) < 0){
    printf(1, "cp: caaernnot open %s\n", patha);
     90a:	50                   	push   %eax
     90b:	56                   	push   %esi
     90c:	68 34 17 00 00       	push   $0x1734
     911:	6a 01                	push   $0x1
     913:	e8 a8 0a 00 00       	call   13c0 <printf>
    exit();
     918:	e8 55 09 00 00       	call   1272 <exit>
     91d:	8d 76 00             	lea    0x0(%esi),%esi

00000920 <cpR>:
  close(finput);
}

void
cpR(char *patha,char *pathb)
{
     920:	55                   	push   %ebp
     921:	89 e5                	mov    %esp,%ebp
     923:	57                   	push   %edi
     924:	56                   	push   %esi
     925:	53                   	push   %ebx
     926:	81 ec 58 02 00 00    	sub    $0x258,%esp
  char buf[512], *p;
  char *tempa=malloc(100);
     92c:	6a 64                	push   $0x64
     92e:	e8 bd 0c 00 00       	call   15f0 <malloc>
  memset (tempa,0,sizeof tempa);
     933:	83 c4 0c             	add    $0xc,%esp

void
cpR(char *patha,char *pathb)
{
  char buf[512], *p;
  char *tempa=malloc(100);
     936:	89 c3                	mov    %eax,%ebx
  memset (tempa,0,sizeof tempa);
     938:	6a 04                	push   $0x4
     93a:	6a 00                	push   $0x0
     93c:	50                   	push   %eax
     93d:	e8 9e 07 00 00       	call   10e0 <memset>
  char *tempb=malloc(100);
     942:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
     949:	e8 a2 0c 00 00       	call   15f0 <malloc>
  memset (tempb,0,sizeof tempb);
     94e:	83 c4 0c             	add    $0xc,%esp
cpR(char *patha,char *pathb)
{
  char buf[512], *p;
  char *tempa=malloc(100);
  memset (tempa,0,sizeof tempa);
  char *tempb=malloc(100);
     951:	89 c6                	mov    %eax,%esi
  memset (tempb,0,sizeof tempb);
     953:	6a 04                	push   $0x4
     955:	6a 00                	push   $0x0
     957:	50                   	push   %eax
     958:	e8 83 07 00 00       	call   10e0 <memset>
  int fd;
  struct dirent de;
  struct stat st;

  if((fd = open(patha, 0)) < 0){
     95d:	5f                   	pop    %edi
     95e:	58                   	pop    %eax
     95f:	6a 00                	push   $0x0
     961:	ff 75 08             	pushl  0x8(%ebp)
     964:	e8 49 09 00 00       	call   12b2 <open>
     969:	83 c4 10             	add    $0x10,%esp
     96c:	85 c0                	test   %eax,%eax
     96e:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
     974:	0f 88 a6 02 00 00    	js     c20 <cpR+0x300>
    printf(2, "cp: cannot open %s\n", patha);
    return;
  }

  if(fstat(fd, &st) < 0){
     97a:	8d 85 d4 fd ff ff    	lea    -0x22c(%ebp),%eax
     980:	83 ec 08             	sub    $0x8,%esp
     983:	50                   	push   %eax
     984:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
     98a:	e8 3b 09 00 00       	call   12ca <fstat>
     98f:	83 c4 10             	add    $0x10,%esp
     992:	85 c0                	test   %eax,%eax
     994:	0f 88 c6 02 00 00    	js     c60 <cpR+0x340>
    printf(2, "cp: cannot stat %s\n", patha);
    close(fd);
    return;
  }

  switch(st.type){
     99a:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
     9a1:	66 83 f8 01          	cmp    $0x1,%ax
     9a5:	74 39                	je     9e0 <cpR+0xc0>
     9a7:	66 83 f8 02          	cmp    $0x2,%ax
     9ab:	75 11                	jne    9be <cpR+0x9e>
  case T_FILE:
    cp(patha,pathb);
     9ad:	83 ec 08             	sub    $0x8,%esp
     9b0:	ff 75 0c             	pushl  0xc(%ebp)
     9b3:	ff 75 08             	pushl  0x8(%ebp)
     9b6:	e8 65 fe ff ff       	call   820 <cp>
    break;
     9bb:	83 c4 10             	add    $0x10,%esp
      if(strcmp(fmtname(buf),"..")==0) continue;
      cpR(tempa,tempb);
    }
    break;
  }
  close(fd);
     9be:	83 ec 0c             	sub    $0xc,%esp
     9c1:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
     9c7:	e8 ce 08 00 00       	call   129a <close>
     9cc:	83 c4 10             	add    $0x10,%esp
}
     9cf:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9d2:	5b                   	pop    %ebx
     9d3:	5e                   	pop    %esi
     9d4:	5f                   	pop    %edi
     9d5:	5d                   	pop    %ebp
     9d6:	c3                   	ret    
     9d7:	89 f6                	mov    %esi,%esi
     9d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  case T_FILE:
    cp(patha,pathb);
    break;

  case T_DIR:
    if(strlen(patha) + 1 + DIRSIZ + 1 > sizeof buf){
     9e0:	83 ec 0c             	sub    $0xc,%esp
     9e3:	ff 75 08             	pushl  0x8(%ebp)
     9e6:	e8 c5 06 00 00       	call   10b0 <strlen>
     9eb:	83 c0 10             	add    $0x10,%eax
     9ee:	83 c4 10             	add    $0x10,%esp
     9f1:	3d 00 02 00 00       	cmp    $0x200,%eax
     9f6:	0f 87 44 02 00 00    	ja     c40 <cpR+0x320>
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, patha);
     9fc:	8d bd e8 fd ff ff    	lea    -0x218(%ebp),%edi
     a02:	83 ec 08             	sub    $0x8,%esp
     a05:	ff 75 08             	pushl  0x8(%ebp)
     a08:	57                   	push   %edi
     a09:	e8 22 06 00 00       	call   1030 <strcpy>
    p = buf+strlen(buf);
     a0e:	89 3c 24             	mov    %edi,(%esp)
     a11:	e8 9a 06 00 00       	call   10b0 <strlen>
     a16:	8d 0c 07             	lea    (%edi,%eax,1),%ecx
    *p++ = '/';
     a19:	8d 44 07 01          	lea    0x1(%edi,%eax,1),%eax
     a1d:	c6 01 2f             	movb   $0x2f,(%ecx)
    if(strlen(patha) + 1 + DIRSIZ + 1 > sizeof buf){
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, patha);
    p = buf+strlen(buf);
     a20:	89 8d b0 fd ff ff    	mov    %ecx,-0x250(%ebp)
    *p++ = '/';
    mkdire(pathb);
     a26:	59                   	pop    %ecx
     a27:	ff 75 0c             	pushl  0xc(%ebp)
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, patha);
    p = buf+strlen(buf);
    *p++ = '/';
     a2a:	89 85 ac fd ff ff    	mov    %eax,-0x254(%ebp)
    mkdire(pathb);
     a30:	e8 ab fa ff ff       	call   4e0 <mkdire>
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
     a35:	83 c4 10             	add    $0x10,%esp
     a38:	90                   	nop
     a39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     a40:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
     a46:	83 ec 04             	sub    $0x4,%esp
     a49:	6a 10                	push   $0x10
     a4b:	50                   	push   %eax
     a4c:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
     a52:	e8 33 08 00 00       	call   128a <read>
     a57:	83 c4 10             	add    $0x10,%esp
     a5a:	83 f8 10             	cmp    $0x10,%eax
     a5d:	0f 85 5b ff ff ff    	jne    9be <cpR+0x9e>
      if(de.inum == 0)
     a63:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
     a6a:	00 
     a6b:	74 d3                	je     a40 <cpR+0x120>
        continue;
      memmove(p, de.name, DIRSIZ);
     a6d:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
     a73:	83 ec 04             	sub    $0x4,%esp
     a76:	6a 0e                	push   $0xe
     a78:	50                   	push   %eax
     a79:	ff b5 ac fd ff ff    	pushl  -0x254(%ebp)
     a7f:	e8 bc 07 00 00       	call   1240 <memmove>
      p[DIRSIZ] = 0;
     a84:	8b 85 b0 fd ff ff    	mov    -0x250(%ebp),%eax
     a8a:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
      if(stat(buf, &st) < 0){
     a8e:	58                   	pop    %eax
     a8f:	8d 85 d4 fd ff ff    	lea    -0x22c(%ebp),%eax
     a95:	5a                   	pop    %edx
     a96:	50                   	push   %eax
     a97:	57                   	push   %edi
     a98:	e8 13 07 00 00       	call   11b0 <stat>
     a9d:	83 c4 10             	add    $0x10,%esp
     aa0:	85 c0                	test   %eax,%eax
     aa2:	0f 88 e8 01 00 00    	js     c90 <cpR+0x370>
        printf(1, "ls: cannot stat %s\n", buf);
        continue;
      }
      strcpy(tempa,patha);
     aa8:	83 ec 08             	sub    $0x8,%esp
     aab:	ff 75 08             	pushl  0x8(%ebp)
     aae:	53                   	push   %ebx
     aaf:	e8 7c 05 00 00       	call   1030 <strcpy>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     ab4:	83 c4 10             	add    $0x10,%esp
     ab7:	80 3b 00             	cmpb   $0x0,(%ebx)
     aba:	89 d8                	mov    %ebx,%eax
     abc:	74 0a                	je     ac8 <cpR+0x1a8>
     abe:	66 90                	xchg   %ax,%ax
     ac0:	83 c0 01             	add    $0x1,%eax
     ac3:	80 38 00             	cmpb   $0x0,(%eax)
     ac6:	75 f8                	jne    ac0 <cpR+0x1a0>
        printf(1, "ls: cannot stat %s\n", buf);
        continue;
      }
      strcpy(tempa,patha);
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
     ac8:	83 ec 0c             	sub    $0xc,%esp
char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
     acb:	c6 00 2f             	movb   $0x2f,(%eax)
  *s1 = 0;
     ace:	c6 40 01 00          	movb   $0x0,0x1(%eax)
        printf(1, "ls: cannot stat %s\n", buf);
        continue;
      }
      strcpy(tempa,patha);
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
     ad2:	57                   	push   %edi
     ad3:	e8 a8 fc ff ff       	call   780 <fmtname>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     ad8:	83 c4 10             	add    $0x10,%esp
     adb:	80 3b 00             	cmpb   $0x0,(%ebx)
     ade:	89 da                	mov    %ebx,%edx
     ae0:	74 1f                	je     b01 <cpR+0x1e1>
     ae2:	83 c2 01             	add    $0x1,%edx
     ae5:	80 3a 00             	cmpb   $0x0,(%edx)
     ae8:	75 f8                	jne    ae2 <cpR+0x1c2>
  while (*s2) *s1++ = *s2++;
     aea:	0f b6 08             	movzbl (%eax),%ecx
     aed:	84 c9                	test   %cl,%cl
     aef:	74 17                	je     b08 <cpR+0x1e8>
     af1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     af8:	83 c2 01             	add    $0x1,%edx
     afb:	83 c0 01             	add    $0x1,%eax
     afe:	88 4a ff             	mov    %cl,-0x1(%edx)
     b01:	0f b6 08             	movzbl (%eax),%ecx
     b04:	84 c9                	test   %cl,%cl
     b06:	75 f0                	jne    af8 <cpR+0x1d8>
  *s1 = 0;
     b08:	c6 02 00             	movb   $0x0,(%edx)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     b0b:	80 3b 00             	cmpb   $0x0,(%ebx)
     b0e:	89 d8                	mov    %ebx,%eax
     b10:	74 0e                	je     b20 <cpR+0x200>
     b12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     b18:	83 c0 01             	add    $0x1,%eax
     b1b:	80 38 00             	cmpb   $0x0,(%eax)
     b1e:	75 f8                	jne    b18 <cpR+0x1f8>
      }
      strcpy(tempa,patha);
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
     b20:	83 ec 08             	sub    $0x8,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     b23:	c6 00 00             	movb   $0x0,(%eax)
      }
      strcpy(tempa,patha);
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
     b26:	ff 75 0c             	pushl  0xc(%ebp)
     b29:	56                   	push   %esi
     b2a:	e8 01 05 00 00       	call   1030 <strcpy>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     b2f:	83 c4 10             	add    $0x10,%esp
     b32:	80 3e 00             	cmpb   $0x0,(%esi)
     b35:	89 f0                	mov    %esi,%eax
     b37:	74 0f                	je     b48 <cpR+0x228>
     b39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     b40:	83 c0 01             	add    $0x1,%eax
     b43:	80 38 00             	cmpb   $0x0,(%eax)
     b46:	75 f8                	jne    b40 <cpR+0x220>
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
      strcat(tempb,"/");
      strcat(tempb,fmtname(buf));
     b48:	83 ec 0c             	sub    $0xc,%esp
char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
     b4b:	c6 00 2f             	movb   $0x2f,(%eax)
  *s1 = 0;
     b4e:	c6 40 01 00          	movb   $0x0,0x1(%eax)
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
      strcat(tempb,"/");
      strcat(tempb,fmtname(buf));
     b52:	57                   	push   %edi
     b53:	e8 28 fc ff ff       	call   780 <fmtname>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     b58:	83 c4 10             	add    $0x10,%esp
     b5b:	80 3e 00             	cmpb   $0x0,(%esi)
     b5e:	89 f2                	mov    %esi,%edx
     b60:	74 1f                	je     b81 <cpR+0x261>
     b62:	83 c2 01             	add    $0x1,%edx
     b65:	80 3a 00             	cmpb   $0x0,(%edx)
     b68:	75 f8                	jne    b62 <cpR+0x242>
  while (*s2) *s1++ = *s2++;
     b6a:	0f b6 08             	movzbl (%eax),%ecx
     b6d:	84 c9                	test   %cl,%cl
     b6f:	74 17                	je     b88 <cpR+0x268>
     b71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     b78:	83 c2 01             	add    $0x1,%edx
     b7b:	83 c0 01             	add    $0x1,%eax
     b7e:	88 4a ff             	mov    %cl,-0x1(%edx)
     b81:	0f b6 08             	movzbl (%eax),%ecx
     b84:	84 c9                	test   %cl,%cl
     b86:	75 f0                	jne    b78 <cpR+0x258>
  *s1 = 0;
     b88:	c6 02 00             	movb   $0x0,(%edx)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     b8b:	80 3b 00             	cmpb   $0x0,(%ebx)
     b8e:	89 d8                	mov    %ebx,%eax
     b90:	74 0e                	je     ba0 <cpR+0x280>
     b92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     b98:	83 c0 01             	add    $0x1,%eax
     b9b:	80 38 00             	cmpb   $0x0,(%eax)
     b9e:	75 f8                	jne    b98 <cpR+0x278>
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
      strcat(tempb,"/");
      strcat(tempb,fmtname(buf));
      strcat(tempa,"\0");
      if(strcmp(fmtname(buf),".yuhuu")==0) continue;
     ba0:	83 ec 0c             	sub    $0xc,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     ba3:	c6 00 00             	movb   $0x0,(%eax)
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
      strcat(tempb,"/");
      strcat(tempb,fmtname(buf));
      strcat(tempa,"\0");
      if(strcmp(fmtname(buf),".yuhuu")==0) continue;
     ba6:	57                   	push   %edi
     ba7:	e8 d4 fb ff ff       	call   780 <fmtname>
     bac:	5a                   	pop    %edx
     bad:	59                   	pop    %ecx
     bae:	68 e1 16 00 00       	push   $0x16e1
     bb3:	50                   	push   %eax
     bb4:	e8 a7 04 00 00       	call   1060 <strcmp>
     bb9:	83 c4 10             	add    $0x10,%esp
     bbc:	85 c0                	test   %eax,%eax
     bbe:	0f 84 7c fe ff ff    	je     a40 <cpR+0x120>
      if(strcmp(fmtname(buf),".")==0) continue;
     bc4:	83 ec 0c             	sub    $0xc,%esp
     bc7:	57                   	push   %edi
     bc8:	e8 b3 fb ff ff       	call   780 <fmtname>
     bcd:	5a                   	pop    %edx
     bce:	59                   	pop    %ecx
     bcf:	68 87 17 00 00       	push   $0x1787
     bd4:	50                   	push   %eax
     bd5:	e8 86 04 00 00       	call   1060 <strcmp>
     bda:	83 c4 10             	add    $0x10,%esp
     bdd:	85 c0                	test   %eax,%eax
     bdf:	0f 84 5b fe ff ff    	je     a40 <cpR+0x120>
      if(strcmp(fmtname(buf),"..")==0) continue;
     be5:	83 ec 0c             	sub    $0xc,%esp
     be8:	57                   	push   %edi
     be9:	e8 92 fb ff ff       	call   780 <fmtname>
     bee:	5a                   	pop    %edx
     bef:	59                   	pop    %ecx
     bf0:	68 86 17 00 00       	push   $0x1786
     bf5:	50                   	push   %eax
     bf6:	e8 65 04 00 00       	call   1060 <strcmp>
     bfb:	83 c4 10             	add    $0x10,%esp
     bfe:	85 c0                	test   %eax,%eax
     c00:	0f 84 3a fe ff ff    	je     a40 <cpR+0x120>
      cpR(tempa,tempb);
     c06:	83 ec 08             	sub    $0x8,%esp
     c09:	56                   	push   %esi
     c0a:	53                   	push   %ebx
     c0b:	e8 10 fd ff ff       	call   920 <cpR>
     c10:	83 c4 10             	add    $0x10,%esp
     c13:	e9 28 fe ff ff       	jmp    a40 <cpR+0x120>
     c18:	90                   	nop
     c19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  struct dirent de;
  struct stat st;

  if((fd = open(patha, 0)) < 0){
    printf(2, "cp: cannot open %s\n", patha);
     c20:	83 ec 04             	sub    $0x4,%esp
     c23:	ff 75 08             	pushl  0x8(%ebp)
     c26:	68 04 17 00 00       	push   $0x1704
     c2b:	6a 02                	push   $0x2
     c2d:	e8 8e 07 00 00       	call   13c0 <printf>
    return;
     c32:	83 c4 10             	add    $0x10,%esp
      cpR(tempa,tempb);
    }
    break;
  }
  close(fd);
}
     c35:	8d 65 f4             	lea    -0xc(%ebp),%esp
     c38:	5b                   	pop    %ebx
     c39:	5e                   	pop    %esi
     c3a:	5f                   	pop    %edi
     c3b:	5d                   	pop    %ebp
     c3c:	c3                   	ret    
     c3d:	8d 76 00             	lea    0x0(%esi),%esi
    cp(patha,pathb);
    break;

  case T_DIR:
    if(strlen(patha) + 1 + DIRSIZ + 1 > sizeof buf){
      printf(1, "ls: path too long\n");
     c40:	83 ec 08             	sub    $0x8,%esp
     c43:	68 5f 17 00 00       	push   $0x175f
     c48:	6a 01                	push   $0x1
     c4a:	e8 71 07 00 00       	call   13c0 <printf>
      break;
     c4f:	83 c4 10             	add    $0x10,%esp
     c52:	e9 67 fd ff ff       	jmp    9be <cpR+0x9e>
     c57:	89 f6                	mov    %esi,%esi
     c59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    printf(2, "cp: cannot open %s\n", patha);
    return;
  }

  if(fstat(fd, &st) < 0){
    printf(2, "cp: cannot stat %s\n", patha);
     c60:	83 ec 04             	sub    $0x4,%esp
     c63:	ff 75 08             	pushl  0x8(%ebp)
     c66:	68 4b 17 00 00       	push   $0x174b
     c6b:	6a 02                	push   $0x2
     c6d:	e8 4e 07 00 00       	call   13c0 <printf>
    close(fd);
     c72:	5b                   	pop    %ebx
     c73:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
     c79:	e8 1c 06 00 00       	call   129a <close>
    return;
     c7e:	83 c4 10             	add    $0x10,%esp
     c81:	e9 49 fd ff ff       	jmp    9cf <cpR+0xaf>
     c86:	8d 76 00             	lea    0x0(%esi),%esi
     c89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      if(de.inum == 0)
        continue;
      memmove(p, de.name, DIRSIZ);
      p[DIRSIZ] = 0;
      if(stat(buf, &st) < 0){
        printf(1, "ls: cannot stat %s\n", buf);
     c90:	83 ec 04             	sub    $0x4,%esp
     c93:	57                   	push   %edi
     c94:	68 72 17 00 00       	push   $0x1772
     c99:	6a 01                	push   $0x1
     c9b:	e8 20 07 00 00       	call   13c0 <printf>
        continue;
     ca0:	83 c4 10             	add    $0x10,%esp
     ca3:	e9 98 fd ff ff       	jmp    a40 <cpR+0x120>
     ca8:	90                   	nop
     ca9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000cb0 <cpb>:
  close(fd);
}

void
cpb(char *patha,char *pathb)
{
     cb0:	55                   	push   %ebp
     cb1:	89 e5                	mov    %esp,%ebp
     cb3:	57                   	push   %edi
     cb4:	56                   	push   %esi
     cb5:	53                   	push   %ebx
     cb6:	81 ec 58 02 00 00    	sub    $0x258,%esp
  char buf[512], *p;
  char *tempa=malloc(100);
     cbc:	6a 64                	push   $0x64
     cbe:	e8 2d 09 00 00       	call   15f0 <malloc>
  memset (tempa,0,sizeof tempa);
     cc3:	83 c4 0c             	add    $0xc,%esp

void
cpb(char *patha,char *pathb)
{
  char buf[512], *p;
  char *tempa=malloc(100);
     cc6:	89 c3                	mov    %eax,%ebx
  memset (tempa,0,sizeof tempa);
     cc8:	6a 04                	push   $0x4
     cca:	6a 00                	push   $0x0
     ccc:	50                   	push   %eax
     ccd:	e8 0e 04 00 00       	call   10e0 <memset>
  char *tempb=malloc(100);
     cd2:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
     cd9:	e8 12 09 00 00       	call   15f0 <malloc>
  memset (tempb,0,sizeof tempb);
     cde:	83 c4 0c             	add    $0xc,%esp
cpb(char *patha,char *pathb)
{
  char buf[512], *p;
  char *tempa=malloc(100);
  memset (tempa,0,sizeof tempa);
  char *tempb=malloc(100);
     ce1:	89 c6                	mov    %eax,%esi
  memset (tempb,0,sizeof tempb);
     ce3:	6a 04                	push   $0x4
     ce5:	6a 00                	push   $0x0
     ce7:	50                   	push   %eax
     ce8:	e8 f3 03 00 00       	call   10e0 <memset>
  int fd;
  struct dirent de;
  struct stat st;

  if((fd = open(patha, 0)) < 0){
     ced:	5f                   	pop    %edi
     cee:	58                   	pop    %eax
     cef:	6a 00                	push   $0x0
     cf1:	ff 75 08             	pushl  0x8(%ebp)
     cf4:	e8 b9 05 00 00       	call   12b2 <open>
     cf9:	83 c4 10             	add    $0x10,%esp
     cfc:	85 c0                	test   %eax,%eax
     cfe:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
     d04:	0f 88 96 02 00 00    	js     fa0 <cpb+0x2f0>
    printf(2, "cp: cannot open %s\n", patha);
    return;
  }

  if(fstat(fd, &st) < 0){
     d0a:	8d 85 d4 fd ff ff    	lea    -0x22c(%ebp),%eax
     d10:	83 ec 08             	sub    $0x8,%esp
     d13:	50                   	push   %eax
     d14:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
     d1a:	e8 ab 05 00 00       	call   12ca <fstat>
     d1f:	83 c4 10             	add    $0x10,%esp
     d22:	85 c0                	test   %eax,%eax
     d24:	0f 88 b6 02 00 00    	js     fe0 <cpb+0x330>
    printf(2, "cp: cannot stat %s\n", patha);
    close(fd);
    return;
  }

  switch(st.type){
     d2a:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
     d31:	66 83 f8 01          	cmp    $0x1,%ax
     d35:	74 29                	je     d60 <cpb+0xb0>
     d37:	66 83 f8 02          	cmp    $0x2,%ax
     d3b:	74 11                	je     d4e <cpb+0x9e>
      if(strcmp(fmtname(buf),"..")==0) continue;
      cp(tempa,tempb);
    }
    break;
  }
  close(fd);
     d3d:	83 ec 0c             	sub    $0xc,%esp
     d40:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
     d46:	e8 4f 05 00 00       	call   129a <close>
     d4b:	83 c4 10             	add    $0x10,%esp
}
     d4e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     d51:	5b                   	pop    %ebx
     d52:	5e                   	pop    %esi
     d53:	5f                   	pop    %edi
     d54:	5d                   	pop    %ebp
     d55:	c3                   	ret    
     d56:	8d 76 00             	lea    0x0(%esi),%esi
     d59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  switch(st.type){
  case T_FILE:
    return;

  case T_DIR:
    if(strlen(patha) + 1 + DIRSIZ + 1 > sizeof buf){
     d60:	83 ec 0c             	sub    $0xc,%esp
     d63:	ff 75 08             	pushl  0x8(%ebp)
     d66:	e8 45 03 00 00       	call   10b0 <strlen>
     d6b:	83 c0 10             	add    $0x10,%eax
     d6e:	83 c4 10             	add    $0x10,%esp
     d71:	3d 00 02 00 00       	cmp    $0x200,%eax
     d76:	0f 87 44 02 00 00    	ja     fc0 <cpb+0x310>
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, patha);
     d7c:	8d bd e8 fd ff ff    	lea    -0x218(%ebp),%edi
     d82:	83 ec 08             	sub    $0x8,%esp
     d85:	ff 75 08             	pushl  0x8(%ebp)
     d88:	57                   	push   %edi
     d89:	e8 a2 02 00 00       	call   1030 <strcpy>
    p = buf+strlen(buf);
     d8e:	89 3c 24             	mov    %edi,(%esp)
     d91:	e8 1a 03 00 00       	call   10b0 <strlen>
     d96:	8d 0c 07             	lea    (%edi,%eax,1),%ecx
    *p++ = '/';
     d99:	8d 44 07 01          	lea    0x1(%edi,%eax,1),%eax
     d9d:	c6 01 2f             	movb   $0x2f,(%ecx)
    if(strlen(patha) + 1 + DIRSIZ + 1 > sizeof buf){
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, patha);
    p = buf+strlen(buf);
     da0:	89 8d b0 fd ff ff    	mov    %ecx,-0x250(%ebp)
    *p++ = '/';
    mkdire(pathb);
     da6:	59                   	pop    %ecx
     da7:	ff 75 0c             	pushl  0xc(%ebp)
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, patha);
    p = buf+strlen(buf);
    *p++ = '/';
     daa:	89 85 ac fd ff ff    	mov    %eax,-0x254(%ebp)
    mkdire(pathb);
     db0:	e8 2b f7 ff ff       	call   4e0 <mkdire>
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
     db5:	83 c4 10             	add    $0x10,%esp
     db8:	90                   	nop
     db9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     dc0:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
     dc6:	83 ec 04             	sub    $0x4,%esp
     dc9:	6a 10                	push   $0x10
     dcb:	50                   	push   %eax
     dcc:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
     dd2:	e8 b3 04 00 00       	call   128a <read>
     dd7:	83 c4 10             	add    $0x10,%esp
     dda:	83 f8 10             	cmp    $0x10,%eax
     ddd:	0f 85 5a ff ff ff    	jne    d3d <cpb+0x8d>
      if(de.inum == 0)
     de3:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
     dea:	00 
     deb:	74 d3                	je     dc0 <cpb+0x110>
        continue;
      memmove(p, de.name, DIRSIZ);
     ded:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
     df3:	83 ec 04             	sub    $0x4,%esp
     df6:	6a 0e                	push   $0xe
     df8:	50                   	push   %eax
     df9:	ff b5 ac fd ff ff    	pushl  -0x254(%ebp)
     dff:	e8 3c 04 00 00       	call   1240 <memmove>
      p[DIRSIZ] = 0;
     e04:	8b 85 b0 fd ff ff    	mov    -0x250(%ebp),%eax
     e0a:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
      if(stat(buf, &st) < 0){
     e0e:	58                   	pop    %eax
     e0f:	8d 85 d4 fd ff ff    	lea    -0x22c(%ebp),%eax
     e15:	5a                   	pop    %edx
     e16:	50                   	push   %eax
     e17:	57                   	push   %edi
     e18:	e8 93 03 00 00       	call   11b0 <stat>
     e1d:	83 c4 10             	add    $0x10,%esp
     e20:	85 c0                	test   %eax,%eax
     e22:	0f 88 e8 01 00 00    	js     1010 <cpb+0x360>
        printf(1, "ls: cannot stat %s\n", buf);
        continue;
      }
      strcpy(tempa,patha);
     e28:	83 ec 08             	sub    $0x8,%esp
     e2b:	ff 75 08             	pushl  0x8(%ebp)
     e2e:	53                   	push   %ebx
     e2f:	e8 fc 01 00 00       	call   1030 <strcpy>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     e34:	83 c4 10             	add    $0x10,%esp
     e37:	80 3b 00             	cmpb   $0x0,(%ebx)
     e3a:	89 d8                	mov    %ebx,%eax
     e3c:	74 0a                	je     e48 <cpb+0x198>
     e3e:	66 90                	xchg   %ax,%ax
     e40:	83 c0 01             	add    $0x1,%eax
     e43:	80 38 00             	cmpb   $0x0,(%eax)
     e46:	75 f8                	jne    e40 <cpb+0x190>
        printf(1, "ls: cannot stat %s\n", buf);
        continue;
      }
      strcpy(tempa,patha);
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
     e48:	83 ec 0c             	sub    $0xc,%esp
char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
     e4b:	c6 00 2f             	movb   $0x2f,(%eax)
  *s1 = 0;
     e4e:	c6 40 01 00          	movb   $0x0,0x1(%eax)
        printf(1, "ls: cannot stat %s\n", buf);
        continue;
      }
      strcpy(tempa,patha);
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
     e52:	57                   	push   %edi
     e53:	e8 28 f9 ff ff       	call   780 <fmtname>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     e58:	83 c4 10             	add    $0x10,%esp
     e5b:	80 3b 00             	cmpb   $0x0,(%ebx)
     e5e:	89 da                	mov    %ebx,%edx
     e60:	74 1f                	je     e81 <cpb+0x1d1>
     e62:	83 c2 01             	add    $0x1,%edx
     e65:	80 3a 00             	cmpb   $0x0,(%edx)
     e68:	75 f8                	jne    e62 <cpb+0x1b2>
  while (*s2) *s1++ = *s2++;
     e6a:	0f b6 08             	movzbl (%eax),%ecx
     e6d:	84 c9                	test   %cl,%cl
     e6f:	74 17                	je     e88 <cpb+0x1d8>
     e71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     e78:	83 c2 01             	add    $0x1,%edx
     e7b:	83 c0 01             	add    $0x1,%eax
     e7e:	88 4a ff             	mov    %cl,-0x1(%edx)
     e81:	0f b6 08             	movzbl (%eax),%ecx
     e84:	84 c9                	test   %cl,%cl
     e86:	75 f0                	jne    e78 <cpb+0x1c8>
  *s1 = 0;
     e88:	c6 02 00             	movb   $0x0,(%edx)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     e8b:	80 3b 00             	cmpb   $0x0,(%ebx)
     e8e:	89 d8                	mov    %ebx,%eax
     e90:	74 0e                	je     ea0 <cpb+0x1f0>
     e92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     e98:	83 c0 01             	add    $0x1,%eax
     e9b:	80 38 00             	cmpb   $0x0,(%eax)
     e9e:	75 f8                	jne    e98 <cpb+0x1e8>
      }
      strcpy(tempa,patha);
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
     ea0:	83 ec 08             	sub    $0x8,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     ea3:	c6 00 00             	movb   $0x0,(%eax)
      }
      strcpy(tempa,patha);
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
     ea6:	ff 75 0c             	pushl  0xc(%ebp)
     ea9:	56                   	push   %esi
     eaa:	e8 81 01 00 00       	call   1030 <strcpy>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     eaf:	83 c4 10             	add    $0x10,%esp
     eb2:	80 3e 00             	cmpb   $0x0,(%esi)
     eb5:	89 f0                	mov    %esi,%eax
     eb7:	74 0f                	je     ec8 <cpb+0x218>
     eb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     ec0:	83 c0 01             	add    $0x1,%eax
     ec3:	80 38 00             	cmpb   $0x0,(%eax)
     ec6:	75 f8                	jne    ec0 <cpb+0x210>
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
      strcat(tempb,"/");
      strcat(tempb,fmtname(buf));
     ec8:	83 ec 0c             	sub    $0xc,%esp
char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
     ecb:	c6 00 2f             	movb   $0x2f,(%eax)
  *s1 = 0;
     ece:	c6 40 01 00          	movb   $0x0,0x1(%eax)
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
      strcat(tempb,"/");
      strcat(tempb,fmtname(buf));
     ed2:	57                   	push   %edi
     ed3:	e8 a8 f8 ff ff       	call   780 <fmtname>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     ed8:	83 c4 10             	add    $0x10,%esp
     edb:	80 3e 00             	cmpb   $0x0,(%esi)
     ede:	89 f2                	mov    %esi,%edx
     ee0:	74 1f                	je     f01 <cpb+0x251>
     ee2:	83 c2 01             	add    $0x1,%edx
     ee5:	80 3a 00             	cmpb   $0x0,(%edx)
     ee8:	75 f8                	jne    ee2 <cpb+0x232>
  while (*s2) *s1++ = *s2++;
     eea:	0f b6 08             	movzbl (%eax),%ecx
     eed:	84 c9                	test   %cl,%cl
     eef:	74 17                	je     f08 <cpb+0x258>
     ef1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     ef8:	83 c2 01             	add    $0x1,%edx
     efb:	83 c0 01             	add    $0x1,%eax
     efe:	88 4a ff             	mov    %cl,-0x1(%edx)
     f01:	0f b6 08             	movzbl (%eax),%ecx
     f04:	84 c9                	test   %cl,%cl
     f06:	75 f0                	jne    ef8 <cpb+0x248>
  *s1 = 0;
     f08:	c6 02 00             	movb   $0x0,(%edx)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     f0b:	80 3b 00             	cmpb   $0x0,(%ebx)
     f0e:	89 d8                	mov    %ebx,%eax
     f10:	74 0e                	je     f20 <cpb+0x270>
     f12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     f18:	83 c0 01             	add    $0x1,%eax
     f1b:	80 38 00             	cmpb   $0x0,(%eax)
     f1e:	75 f8                	jne    f18 <cpb+0x268>
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
      strcat(tempb,"/");
      strcat(tempb,fmtname(buf));
      strcat(tempa,"\0");
      if(strcmp(fmtname(buf),".yuhuu")==0) continue;
     f20:	83 ec 0c             	sub    $0xc,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     f23:	c6 00 00             	movb   $0x0,(%eax)
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
      strcat(tempb,"/");
      strcat(tempb,fmtname(buf));
      strcat(tempa,"\0");
      if(strcmp(fmtname(buf),".yuhuu")==0) continue;
     f26:	57                   	push   %edi
     f27:	e8 54 f8 ff ff       	call   780 <fmtname>
     f2c:	5a                   	pop    %edx
     f2d:	59                   	pop    %ecx
     f2e:	68 e1 16 00 00       	push   $0x16e1
     f33:	50                   	push   %eax
     f34:	e8 27 01 00 00       	call   1060 <strcmp>
     f39:	83 c4 10             	add    $0x10,%esp
     f3c:	85 c0                	test   %eax,%eax
     f3e:	0f 84 7c fe ff ff    	je     dc0 <cpb+0x110>
      if(strcmp(fmtname(buf),".")==0) continue;
     f44:	83 ec 0c             	sub    $0xc,%esp
     f47:	57                   	push   %edi
     f48:	e8 33 f8 ff ff       	call   780 <fmtname>
     f4d:	5a                   	pop    %edx
     f4e:	59                   	pop    %ecx
     f4f:	68 87 17 00 00       	push   $0x1787
     f54:	50                   	push   %eax
     f55:	e8 06 01 00 00       	call   1060 <strcmp>
     f5a:	83 c4 10             	add    $0x10,%esp
     f5d:	85 c0                	test   %eax,%eax
     f5f:	0f 84 5b fe ff ff    	je     dc0 <cpb+0x110>
      if(strcmp(fmtname(buf),"..")==0) continue;
     f65:	83 ec 0c             	sub    $0xc,%esp
     f68:	57                   	push   %edi
     f69:	e8 12 f8 ff ff       	call   780 <fmtname>
     f6e:	5a                   	pop    %edx
     f6f:	59                   	pop    %ecx
     f70:	68 86 17 00 00       	push   $0x1786
     f75:	50                   	push   %eax
     f76:	e8 e5 00 00 00       	call   1060 <strcmp>
     f7b:	83 c4 10             	add    $0x10,%esp
     f7e:	85 c0                	test   %eax,%eax
     f80:	0f 84 3a fe ff ff    	je     dc0 <cpb+0x110>
      cp(tempa,tempb);
     f86:	83 ec 08             	sub    $0x8,%esp
     f89:	56                   	push   %esi
     f8a:	53                   	push   %ebx
     f8b:	e8 90 f8 ff ff       	call   820 <cp>
     f90:	83 c4 10             	add    $0x10,%esp
     f93:	e9 28 fe ff ff       	jmp    dc0 <cpb+0x110>
     f98:	90                   	nop
     f99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  struct dirent de;
  struct stat st;

  if((fd = open(patha, 0)) < 0){
    printf(2, "cp: cannot open %s\n", patha);
     fa0:	83 ec 04             	sub    $0x4,%esp
     fa3:	ff 75 08             	pushl  0x8(%ebp)
     fa6:	68 04 17 00 00       	push   $0x1704
     fab:	6a 02                	push   $0x2
     fad:	e8 0e 04 00 00       	call   13c0 <printf>
    return;
     fb2:	83 c4 10             	add    $0x10,%esp
      cp(tempa,tempb);
    }
    break;
  }
  close(fd);
}
     fb5:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fb8:	5b                   	pop    %ebx
     fb9:	5e                   	pop    %esi
     fba:	5f                   	pop    %edi
     fbb:	5d                   	pop    %ebp
     fbc:	c3                   	ret    
     fbd:	8d 76 00             	lea    0x0(%esi),%esi
  case T_FILE:
    return;

  case T_DIR:
    if(strlen(patha) + 1 + DIRSIZ + 1 > sizeof buf){
      printf(1, "ls: path too long\n");
     fc0:	83 ec 08             	sub    $0x8,%esp
     fc3:	68 5f 17 00 00       	push   $0x175f
     fc8:	6a 01                	push   $0x1
     fca:	e8 f1 03 00 00       	call   13c0 <printf>
      break;
     fcf:	83 c4 10             	add    $0x10,%esp
     fd2:	e9 66 fd ff ff       	jmp    d3d <cpb+0x8d>
     fd7:	89 f6                	mov    %esi,%esi
     fd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    printf(2, "cp: cannot open %s\n", patha);
    return;
  }

  if(fstat(fd, &st) < 0){
    printf(2, "cp: cannot stat %s\n", patha);
     fe0:	83 ec 04             	sub    $0x4,%esp
     fe3:	ff 75 08             	pushl  0x8(%ebp)
     fe6:	68 4b 17 00 00       	push   $0x174b
     feb:	6a 02                	push   $0x2
     fed:	e8 ce 03 00 00       	call   13c0 <printf>
    close(fd);
     ff2:	5b                   	pop    %ebx
     ff3:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
     ff9:	e8 9c 02 00 00       	call   129a <close>
    return;
     ffe:	83 c4 10             	add    $0x10,%esp
    1001:	e9 48 fd ff ff       	jmp    d4e <cpb+0x9e>
    1006:	8d 76 00             	lea    0x0(%esi),%esi
    1009:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      if(de.inum == 0)
        continue;
      memmove(p, de.name, DIRSIZ);
      p[DIRSIZ] = 0;
      if(stat(buf, &st) < 0){
        printf(1, "ls: cannot stat %s\n", buf);
    1010:	83 ec 04             	sub    $0x4,%esp
    1013:	57                   	push   %edi
    1014:	68 72 17 00 00       	push   $0x1772
    1019:	6a 01                	push   $0x1
    101b:	e8 a0 03 00 00       	call   13c0 <printf>
        continue;
    1020:	83 c4 10             	add    $0x10,%esp
    1023:	e9 98 fd ff ff       	jmp    dc0 <cpb+0x110>
    1028:	66 90                	xchg   %ax,%ax
    102a:	66 90                	xchg   %ax,%ax
    102c:	66 90                	xchg   %ax,%ax
    102e:	66 90                	xchg   %ax,%ax

00001030 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    1030:	55                   	push   %ebp
    1031:	89 e5                	mov    %esp,%ebp
    1033:	53                   	push   %ebx
    1034:	8b 45 08             	mov    0x8(%ebp),%eax
    1037:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    103a:	89 c2                	mov    %eax,%edx
    103c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1040:	83 c1 01             	add    $0x1,%ecx
    1043:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    1047:	83 c2 01             	add    $0x1,%edx
    104a:	84 db                	test   %bl,%bl
    104c:	88 5a ff             	mov    %bl,-0x1(%edx)
    104f:	75 ef                	jne    1040 <strcpy+0x10>
    ;
  return os;
}
    1051:	5b                   	pop    %ebx
    1052:	5d                   	pop    %ebp
    1053:	c3                   	ret    
    1054:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    105a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001060 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1060:	55                   	push   %ebp
    1061:	89 e5                	mov    %esp,%ebp
    1063:	56                   	push   %esi
    1064:	53                   	push   %ebx
    1065:	8b 55 08             	mov    0x8(%ebp),%edx
    1068:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    106b:	0f b6 02             	movzbl (%edx),%eax
    106e:	0f b6 19             	movzbl (%ecx),%ebx
    1071:	84 c0                	test   %al,%al
    1073:	75 1e                	jne    1093 <strcmp+0x33>
    1075:	eb 29                	jmp    10a0 <strcmp+0x40>
    1077:	89 f6                	mov    %esi,%esi
    1079:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    1080:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    1083:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    1086:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    1089:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    108d:	84 c0                	test   %al,%al
    108f:	74 0f                	je     10a0 <strcmp+0x40>
    1091:	89 f1                	mov    %esi,%ecx
    1093:	38 d8                	cmp    %bl,%al
    1095:	74 e9                	je     1080 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
    1097:	29 d8                	sub    %ebx,%eax
}
    1099:	5b                   	pop    %ebx
    109a:	5e                   	pop    %esi
    109b:	5d                   	pop    %ebp
    109c:	c3                   	ret    
    109d:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    10a0:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
    10a2:	29 d8                	sub    %ebx,%eax
}
    10a4:	5b                   	pop    %ebx
    10a5:	5e                   	pop    %esi
    10a6:	5d                   	pop    %ebp
    10a7:	c3                   	ret    
    10a8:	90                   	nop
    10a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000010b0 <strlen>:

uint
strlen(char *s)
{
    10b0:	55                   	push   %ebp
    10b1:	89 e5                	mov    %esp,%ebp
    10b3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    10b6:	80 39 00             	cmpb   $0x0,(%ecx)
    10b9:	74 12                	je     10cd <strlen+0x1d>
    10bb:	31 d2                	xor    %edx,%edx
    10bd:	8d 76 00             	lea    0x0(%esi),%esi
    10c0:	83 c2 01             	add    $0x1,%edx
    10c3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    10c7:	89 d0                	mov    %edx,%eax
    10c9:	75 f5                	jne    10c0 <strlen+0x10>
    ;
  return n;
}
    10cb:	5d                   	pop    %ebp
    10cc:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
    10cd:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
    10cf:	5d                   	pop    %ebp
    10d0:	c3                   	ret    
    10d1:	eb 0d                	jmp    10e0 <memset>
    10d3:	90                   	nop
    10d4:	90                   	nop
    10d5:	90                   	nop
    10d6:	90                   	nop
    10d7:	90                   	nop
    10d8:	90                   	nop
    10d9:	90                   	nop
    10da:	90                   	nop
    10db:	90                   	nop
    10dc:	90                   	nop
    10dd:	90                   	nop
    10de:	90                   	nop
    10df:	90                   	nop

000010e0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    10e0:	55                   	push   %ebp
    10e1:	89 e5                	mov    %esp,%ebp
    10e3:	57                   	push   %edi
    10e4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    10e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    10ea:	8b 45 0c             	mov    0xc(%ebp),%eax
    10ed:	89 d7                	mov    %edx,%edi
    10ef:	fc                   	cld    
    10f0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    10f2:	89 d0                	mov    %edx,%eax
    10f4:	5f                   	pop    %edi
    10f5:	5d                   	pop    %ebp
    10f6:	c3                   	ret    
    10f7:	89 f6                	mov    %esi,%esi
    10f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001100 <strchr>:

char*
strchr(const char *s, char c)
{
    1100:	55                   	push   %ebp
    1101:	89 e5                	mov    %esp,%ebp
    1103:	53                   	push   %ebx
    1104:	8b 45 08             	mov    0x8(%ebp),%eax
    1107:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    110a:	0f b6 10             	movzbl (%eax),%edx
    110d:	84 d2                	test   %dl,%dl
    110f:	74 1d                	je     112e <strchr+0x2e>
    if(*s == c)
    1111:	38 d3                	cmp    %dl,%bl
    1113:	89 d9                	mov    %ebx,%ecx
    1115:	75 0d                	jne    1124 <strchr+0x24>
    1117:	eb 17                	jmp    1130 <strchr+0x30>
    1119:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1120:	38 ca                	cmp    %cl,%dl
    1122:	74 0c                	je     1130 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
    1124:	83 c0 01             	add    $0x1,%eax
    1127:	0f b6 10             	movzbl (%eax),%edx
    112a:	84 d2                	test   %dl,%dl
    112c:	75 f2                	jne    1120 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
    112e:	31 c0                	xor    %eax,%eax
}
    1130:	5b                   	pop    %ebx
    1131:	5d                   	pop    %ebp
    1132:	c3                   	ret    
    1133:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1139:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001140 <gets>:

char*
gets(char *buf, int max)
{
    1140:	55                   	push   %ebp
    1141:	89 e5                	mov    %esp,%ebp
    1143:	57                   	push   %edi
    1144:	56                   	push   %esi
    1145:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1146:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
    1148:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
    114b:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    114e:	eb 29                	jmp    1179 <gets+0x39>
    cc = read(0, &c, 1);
    1150:	83 ec 04             	sub    $0x4,%esp
    1153:	6a 01                	push   $0x1
    1155:	57                   	push   %edi
    1156:	6a 00                	push   $0x0
    1158:	e8 2d 01 00 00       	call   128a <read>
    if(cc < 1)
    115d:	83 c4 10             	add    $0x10,%esp
    1160:	85 c0                	test   %eax,%eax
    1162:	7e 1d                	jle    1181 <gets+0x41>
      break;
    buf[i++] = c;
    1164:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    1168:	8b 55 08             	mov    0x8(%ebp),%edx
    116b:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
    116d:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
    116f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    1173:	74 1b                	je     1190 <gets+0x50>
    1175:	3c 0d                	cmp    $0xd,%al
    1177:	74 17                	je     1190 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1179:	8d 5e 01             	lea    0x1(%esi),%ebx
    117c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    117f:	7c cf                	jl     1150 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    1181:	8b 45 08             	mov    0x8(%ebp),%eax
    1184:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    1188:	8d 65 f4             	lea    -0xc(%ebp),%esp
    118b:	5b                   	pop    %ebx
    118c:	5e                   	pop    %esi
    118d:	5f                   	pop    %edi
    118e:	5d                   	pop    %ebp
    118f:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    1190:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1193:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    1195:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    1199:	8d 65 f4             	lea    -0xc(%ebp),%esp
    119c:	5b                   	pop    %ebx
    119d:	5e                   	pop    %esi
    119e:	5f                   	pop    %edi
    119f:	5d                   	pop    %ebp
    11a0:	c3                   	ret    
    11a1:	eb 0d                	jmp    11b0 <stat>
    11a3:	90                   	nop
    11a4:	90                   	nop
    11a5:	90                   	nop
    11a6:	90                   	nop
    11a7:	90                   	nop
    11a8:	90                   	nop
    11a9:	90                   	nop
    11aa:	90                   	nop
    11ab:	90                   	nop
    11ac:	90                   	nop
    11ad:	90                   	nop
    11ae:	90                   	nop
    11af:	90                   	nop

000011b0 <stat>:

int
stat(char *n, struct stat *st)
{
    11b0:	55                   	push   %ebp
    11b1:	89 e5                	mov    %esp,%ebp
    11b3:	56                   	push   %esi
    11b4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    11b5:	83 ec 08             	sub    $0x8,%esp
    11b8:	6a 00                	push   $0x0
    11ba:	ff 75 08             	pushl  0x8(%ebp)
    11bd:	e8 f0 00 00 00       	call   12b2 <open>
  if(fd < 0)
    11c2:	83 c4 10             	add    $0x10,%esp
    11c5:	85 c0                	test   %eax,%eax
    11c7:	78 27                	js     11f0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    11c9:	83 ec 08             	sub    $0x8,%esp
    11cc:	ff 75 0c             	pushl  0xc(%ebp)
    11cf:	89 c3                	mov    %eax,%ebx
    11d1:	50                   	push   %eax
    11d2:	e8 f3 00 00 00       	call   12ca <fstat>
    11d7:	89 c6                	mov    %eax,%esi
  close(fd);
    11d9:	89 1c 24             	mov    %ebx,(%esp)
    11dc:	e8 b9 00 00 00       	call   129a <close>
  return r;
    11e1:	83 c4 10             	add    $0x10,%esp
    11e4:	89 f0                	mov    %esi,%eax
}
    11e6:	8d 65 f8             	lea    -0x8(%ebp),%esp
    11e9:	5b                   	pop    %ebx
    11ea:	5e                   	pop    %esi
    11eb:	5d                   	pop    %ebp
    11ec:	c3                   	ret    
    11ed:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
    11f0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    11f5:	eb ef                	jmp    11e6 <stat+0x36>
    11f7:	89 f6                	mov    %esi,%esi
    11f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001200 <atoi>:
  return r;
}

int
atoi(const char *s)
{
    1200:	55                   	push   %ebp
    1201:	89 e5                	mov    %esp,%ebp
    1203:	53                   	push   %ebx
    1204:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    1207:	0f be 11             	movsbl (%ecx),%edx
    120a:	8d 42 d0             	lea    -0x30(%edx),%eax
    120d:	3c 09                	cmp    $0x9,%al
    120f:	b8 00 00 00 00       	mov    $0x0,%eax
    1214:	77 1f                	ja     1235 <atoi+0x35>
    1216:	8d 76 00             	lea    0x0(%esi),%esi
    1219:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    1220:	8d 04 80             	lea    (%eax,%eax,4),%eax
    1223:	83 c1 01             	add    $0x1,%ecx
    1226:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    122a:	0f be 11             	movsbl (%ecx),%edx
    122d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    1230:	80 fb 09             	cmp    $0x9,%bl
    1233:	76 eb                	jbe    1220 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
    1235:	5b                   	pop    %ebx
    1236:	5d                   	pop    %ebp
    1237:	c3                   	ret    
    1238:	90                   	nop
    1239:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001240 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    1240:	55                   	push   %ebp
    1241:	89 e5                	mov    %esp,%ebp
    1243:	56                   	push   %esi
    1244:	53                   	push   %ebx
    1245:	8b 5d 10             	mov    0x10(%ebp),%ebx
    1248:	8b 45 08             	mov    0x8(%ebp),%eax
    124b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    124e:	85 db                	test   %ebx,%ebx
    1250:	7e 14                	jle    1266 <memmove+0x26>
    1252:	31 d2                	xor    %edx,%edx
    1254:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    1258:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    125c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    125f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    1262:	39 da                	cmp    %ebx,%edx
    1264:	75 f2                	jne    1258 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
    1266:	5b                   	pop    %ebx
    1267:	5e                   	pop    %esi
    1268:	5d                   	pop    %ebp
    1269:	c3                   	ret    

0000126a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    126a:	b8 01 00 00 00       	mov    $0x1,%eax
    126f:	cd 40                	int    $0x40
    1271:	c3                   	ret    

00001272 <exit>:
SYSCALL(exit)
    1272:	b8 02 00 00 00       	mov    $0x2,%eax
    1277:	cd 40                	int    $0x40
    1279:	c3                   	ret    

0000127a <wait>:
SYSCALL(wait)
    127a:	b8 03 00 00 00       	mov    $0x3,%eax
    127f:	cd 40                	int    $0x40
    1281:	c3                   	ret    

00001282 <pipe>:
SYSCALL(pipe)
    1282:	b8 04 00 00 00       	mov    $0x4,%eax
    1287:	cd 40                	int    $0x40
    1289:	c3                   	ret    

0000128a <read>:
SYSCALL(read)
    128a:	b8 05 00 00 00       	mov    $0x5,%eax
    128f:	cd 40                	int    $0x40
    1291:	c3                   	ret    

00001292 <write>:
SYSCALL(write)
    1292:	b8 10 00 00 00       	mov    $0x10,%eax
    1297:	cd 40                	int    $0x40
    1299:	c3                   	ret    

0000129a <close>:
SYSCALL(close)
    129a:	b8 15 00 00 00       	mov    $0x15,%eax
    129f:	cd 40                	int    $0x40
    12a1:	c3                   	ret    

000012a2 <kill>:
SYSCALL(kill)
    12a2:	b8 06 00 00 00       	mov    $0x6,%eax
    12a7:	cd 40                	int    $0x40
    12a9:	c3                   	ret    

000012aa <exec>:
SYSCALL(exec)
    12aa:	b8 07 00 00 00       	mov    $0x7,%eax
    12af:	cd 40                	int    $0x40
    12b1:	c3                   	ret    

000012b2 <open>:
SYSCALL(open)
    12b2:	b8 0f 00 00 00       	mov    $0xf,%eax
    12b7:	cd 40                	int    $0x40
    12b9:	c3                   	ret    

000012ba <mknod>:
SYSCALL(mknod)
    12ba:	b8 11 00 00 00       	mov    $0x11,%eax
    12bf:	cd 40                	int    $0x40
    12c1:	c3                   	ret    

000012c2 <unlink>:
SYSCALL(unlink)
    12c2:	b8 12 00 00 00       	mov    $0x12,%eax
    12c7:	cd 40                	int    $0x40
    12c9:	c3                   	ret    

000012ca <fstat>:
SYSCALL(fstat)
    12ca:	b8 08 00 00 00       	mov    $0x8,%eax
    12cf:	cd 40                	int    $0x40
    12d1:	c3                   	ret    

000012d2 <link>:
SYSCALL(link)
    12d2:	b8 13 00 00 00       	mov    $0x13,%eax
    12d7:	cd 40                	int    $0x40
    12d9:	c3                   	ret    

000012da <mkdir>:
SYSCALL(mkdir)
    12da:	b8 14 00 00 00       	mov    $0x14,%eax
    12df:	cd 40                	int    $0x40
    12e1:	c3                   	ret    

000012e2 <chdir>:
SYSCALL(chdir)
    12e2:	b8 09 00 00 00       	mov    $0x9,%eax
    12e7:	cd 40                	int    $0x40
    12e9:	c3                   	ret    

000012ea <dup>:
SYSCALL(dup)
    12ea:	b8 0a 00 00 00       	mov    $0xa,%eax
    12ef:	cd 40                	int    $0x40
    12f1:	c3                   	ret    

000012f2 <getpid>:
SYSCALL(getpid)
    12f2:	b8 0b 00 00 00       	mov    $0xb,%eax
    12f7:	cd 40                	int    $0x40
    12f9:	c3                   	ret    

000012fa <sbrk>:
SYSCALL(sbrk)
    12fa:	b8 0c 00 00 00       	mov    $0xc,%eax
    12ff:	cd 40                	int    $0x40
    1301:	c3                   	ret    

00001302 <sleep>:
SYSCALL(sleep)
    1302:	b8 0d 00 00 00       	mov    $0xd,%eax
    1307:	cd 40                	int    $0x40
    1309:	c3                   	ret    

0000130a <uptime>:
SYSCALL(uptime)
    130a:	b8 0e 00 00 00       	mov    $0xe,%eax
    130f:	cd 40                	int    $0x40
    1311:	c3                   	ret    

00001312 <getcwd>:
SYSCALL(getcwd)
    1312:	b8 16 00 00 00       	mov    $0x16,%eax
    1317:	cd 40                	int    $0x40
    1319:	c3                   	ret    
    131a:	66 90                	xchg   %ax,%ax
    131c:	66 90                	xchg   %ax,%ax
    131e:	66 90                	xchg   %ax,%ax

00001320 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1320:	55                   	push   %ebp
    1321:	89 e5                	mov    %esp,%ebp
    1323:	57                   	push   %edi
    1324:	56                   	push   %esi
    1325:	53                   	push   %ebx
    1326:	89 c6                	mov    %eax,%esi
    1328:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    132b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    132e:	85 db                	test   %ebx,%ebx
    1330:	74 7e                	je     13b0 <printint+0x90>
    1332:	89 d0                	mov    %edx,%eax
    1334:	c1 e8 1f             	shr    $0x1f,%eax
    1337:	84 c0                	test   %al,%al
    1339:	74 75                	je     13b0 <printint+0x90>
    neg = 1;
    x = -xx;
    133b:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    133d:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
    1344:	f7 d8                	neg    %eax
    1346:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    1349:	31 ff                	xor    %edi,%edi
    134b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    134e:	89 ce                	mov    %ecx,%esi
    1350:	eb 08                	jmp    135a <printint+0x3a>
    1352:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    1358:	89 cf                	mov    %ecx,%edi
    135a:	31 d2                	xor    %edx,%edx
    135c:	8d 4f 01             	lea    0x1(%edi),%ecx
    135f:	f7 f6                	div    %esi
    1361:	0f b6 92 b0 17 00 00 	movzbl 0x17b0(%edx),%edx
  }while((x /= base) != 0);
    1368:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
    136a:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
    136d:	75 e9                	jne    1358 <printint+0x38>
  if(neg)
    136f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    1372:	8b 75 c0             	mov    -0x40(%ebp),%esi
    1375:	85 c0                	test   %eax,%eax
    1377:	74 08                	je     1381 <printint+0x61>
    buf[i++] = '-';
    1379:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
    137e:	8d 4f 02             	lea    0x2(%edi),%ecx
    1381:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
    1385:	8d 76 00             	lea    0x0(%esi),%esi
    1388:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    138b:	83 ec 04             	sub    $0x4,%esp
    138e:	83 ef 01             	sub    $0x1,%edi
    1391:	6a 01                	push   $0x1
    1393:	53                   	push   %ebx
    1394:	56                   	push   %esi
    1395:	88 45 d7             	mov    %al,-0x29(%ebp)
    1398:	e8 f5 fe ff ff       	call   1292 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
    139d:	83 c4 10             	add    $0x10,%esp
    13a0:	39 df                	cmp    %ebx,%edi
    13a2:	75 e4                	jne    1388 <printint+0x68>
    putc(fd, buf[i]);
}
    13a4:	8d 65 f4             	lea    -0xc(%ebp),%esp
    13a7:	5b                   	pop    %ebx
    13a8:	5e                   	pop    %esi
    13a9:	5f                   	pop    %edi
    13aa:	5d                   	pop    %ebp
    13ab:	c3                   	ret    
    13ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    13b0:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
    13b2:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    13b9:	eb 8b                	jmp    1346 <printint+0x26>
    13bb:	90                   	nop
    13bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000013c0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    13c0:	55                   	push   %ebp
    13c1:	89 e5                	mov    %esp,%ebp
    13c3:	57                   	push   %edi
    13c4:	56                   	push   %esi
    13c5:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    13c6:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    13c9:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    13cc:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    13cf:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    13d2:	89 45 d0             	mov    %eax,-0x30(%ebp)
    13d5:	0f b6 1e             	movzbl (%esi),%ebx
    13d8:	83 c6 01             	add    $0x1,%esi
    13db:	84 db                	test   %bl,%bl
    13dd:	0f 84 b0 00 00 00    	je     1493 <printf+0xd3>
    13e3:	31 d2                	xor    %edx,%edx
    13e5:	eb 39                	jmp    1420 <printf+0x60>
    13e7:	89 f6                	mov    %esi,%esi
    13e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    13f0:	83 f8 25             	cmp    $0x25,%eax
    13f3:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
    13f6:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    13fb:	74 18                	je     1415 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    13fd:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    1400:	83 ec 04             	sub    $0x4,%esp
    1403:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    1406:	6a 01                	push   $0x1
    1408:	50                   	push   %eax
    1409:	57                   	push   %edi
    140a:	e8 83 fe ff ff       	call   1292 <write>
    140f:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    1412:	83 c4 10             	add    $0x10,%esp
    1415:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1418:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    141c:	84 db                	test   %bl,%bl
    141e:	74 73                	je     1493 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
    1420:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    1422:	0f be cb             	movsbl %bl,%ecx
    1425:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    1428:	74 c6                	je     13f0 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    142a:	83 fa 25             	cmp    $0x25,%edx
    142d:	75 e6                	jne    1415 <printf+0x55>
      if(c == 'd'){
    142f:	83 f8 64             	cmp    $0x64,%eax
    1432:	0f 84 f8 00 00 00    	je     1530 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    1438:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    143e:	83 f9 70             	cmp    $0x70,%ecx
    1441:	74 5d                	je     14a0 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1443:	83 f8 73             	cmp    $0x73,%eax
    1446:	0f 84 84 00 00 00    	je     14d0 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    144c:	83 f8 63             	cmp    $0x63,%eax
    144f:	0f 84 ea 00 00 00    	je     153f <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1455:	83 f8 25             	cmp    $0x25,%eax
    1458:	0f 84 c2 00 00 00    	je     1520 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    145e:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1461:	83 ec 04             	sub    $0x4,%esp
    1464:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    1468:	6a 01                	push   $0x1
    146a:	50                   	push   %eax
    146b:	57                   	push   %edi
    146c:	e8 21 fe ff ff       	call   1292 <write>
    1471:	83 c4 0c             	add    $0xc,%esp
    1474:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    1477:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    147a:	6a 01                	push   $0x1
    147c:	50                   	push   %eax
    147d:	57                   	push   %edi
    147e:	83 c6 01             	add    $0x1,%esi
    1481:	e8 0c fe ff ff       	call   1292 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1486:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    148a:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    148d:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    148f:	84 db                	test   %bl,%bl
    1491:	75 8d                	jne    1420 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    1493:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1496:	5b                   	pop    %ebx
    1497:	5e                   	pop    %esi
    1498:	5f                   	pop    %edi
    1499:	5d                   	pop    %ebp
    149a:	c3                   	ret    
    149b:	90                   	nop
    149c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    14a0:	83 ec 0c             	sub    $0xc,%esp
    14a3:	b9 10 00 00 00       	mov    $0x10,%ecx
    14a8:	6a 00                	push   $0x0
    14aa:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    14ad:	89 f8                	mov    %edi,%eax
    14af:	8b 13                	mov    (%ebx),%edx
    14b1:	e8 6a fe ff ff       	call   1320 <printint>
        ap++;
    14b6:	89 d8                	mov    %ebx,%eax
    14b8:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    14bb:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
    14bd:	83 c0 04             	add    $0x4,%eax
    14c0:	89 45 d0             	mov    %eax,-0x30(%ebp)
    14c3:	e9 4d ff ff ff       	jmp    1415 <printf+0x55>
    14c8:	90                   	nop
    14c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
    14d0:	8b 45 d0             	mov    -0x30(%ebp),%eax
    14d3:	8b 18                	mov    (%eax),%ebx
        ap++;
    14d5:	83 c0 04             	add    $0x4,%eax
    14d8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
    14db:	b8 a6 17 00 00       	mov    $0x17a6,%eax
    14e0:	85 db                	test   %ebx,%ebx
    14e2:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
    14e5:	0f b6 03             	movzbl (%ebx),%eax
    14e8:	84 c0                	test   %al,%al
    14ea:	74 23                	je     150f <printf+0x14f>
    14ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    14f0:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    14f3:	8d 45 e3             	lea    -0x1d(%ebp),%eax
    14f6:	83 ec 04             	sub    $0x4,%esp
    14f9:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
    14fb:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    14fe:	50                   	push   %eax
    14ff:	57                   	push   %edi
    1500:	e8 8d fd ff ff       	call   1292 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
    1505:	0f b6 03             	movzbl (%ebx),%eax
    1508:	83 c4 10             	add    $0x10,%esp
    150b:	84 c0                	test   %al,%al
    150d:	75 e1                	jne    14f0 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    150f:	31 d2                	xor    %edx,%edx
    1511:	e9 ff fe ff ff       	jmp    1415 <printf+0x55>
    1516:	8d 76 00             	lea    0x0(%esi),%esi
    1519:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1520:	83 ec 04             	sub    $0x4,%esp
    1523:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    1526:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1529:	6a 01                	push   $0x1
    152b:	e9 4c ff ff ff       	jmp    147c <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    1530:	83 ec 0c             	sub    $0xc,%esp
    1533:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1538:	6a 01                	push   $0x1
    153a:	e9 6b ff ff ff       	jmp    14aa <printf+0xea>
    153f:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1542:	83 ec 04             	sub    $0x4,%esp
    1545:	8b 03                	mov    (%ebx),%eax
    1547:	6a 01                	push   $0x1
    1549:	88 45 e4             	mov    %al,-0x1c(%ebp)
    154c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    154f:	50                   	push   %eax
    1550:	57                   	push   %edi
    1551:	e8 3c fd ff ff       	call   1292 <write>
    1556:	e9 5b ff ff ff       	jmp    14b6 <printf+0xf6>
    155b:	66 90                	xchg   %ax,%ax
    155d:	66 90                	xchg   %ax,%ax
    155f:	90                   	nop

00001560 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1560:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1561:	a1 a4 1b 00 00       	mov    0x1ba4,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
    1566:	89 e5                	mov    %esp,%ebp
    1568:	57                   	push   %edi
    1569:	56                   	push   %esi
    156a:	53                   	push   %ebx
    156b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    156e:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
    1570:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1573:	39 c8                	cmp    %ecx,%eax
    1575:	73 19                	jae    1590 <free+0x30>
    1577:	89 f6                	mov    %esi,%esi
    1579:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    1580:	39 d1                	cmp    %edx,%ecx
    1582:	72 1c                	jb     15a0 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1584:	39 d0                	cmp    %edx,%eax
    1586:	73 18                	jae    15a0 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
    1588:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    158a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    158c:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    158e:	72 f0                	jb     1580 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1590:	39 d0                	cmp    %edx,%eax
    1592:	72 f4                	jb     1588 <free+0x28>
    1594:	39 d1                	cmp    %edx,%ecx
    1596:	73 f0                	jae    1588 <free+0x28>
    1598:	90                   	nop
    1599:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
    15a0:	8b 73 fc             	mov    -0x4(%ebx),%esi
    15a3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    15a6:	39 d7                	cmp    %edx,%edi
    15a8:	74 19                	je     15c3 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    15aa:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    15ad:	8b 50 04             	mov    0x4(%eax),%edx
    15b0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    15b3:	39 f1                	cmp    %esi,%ecx
    15b5:	74 23                	je     15da <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    15b7:	89 08                	mov    %ecx,(%eax)
  freep = p;
    15b9:	a3 a4 1b 00 00       	mov    %eax,0x1ba4
}
    15be:	5b                   	pop    %ebx
    15bf:	5e                   	pop    %esi
    15c0:	5f                   	pop    %edi
    15c1:	5d                   	pop    %ebp
    15c2:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
    15c3:	03 72 04             	add    0x4(%edx),%esi
    15c6:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    15c9:	8b 10                	mov    (%eax),%edx
    15cb:	8b 12                	mov    (%edx),%edx
    15cd:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    15d0:	8b 50 04             	mov    0x4(%eax),%edx
    15d3:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    15d6:	39 f1                	cmp    %esi,%ecx
    15d8:	75 dd                	jne    15b7 <free+0x57>
    p->s.size += bp->s.size;
    15da:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
    15dd:	a3 a4 1b 00 00       	mov    %eax,0x1ba4
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
    15e2:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    15e5:	8b 53 f8             	mov    -0x8(%ebx),%edx
    15e8:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
    15ea:	5b                   	pop    %ebx
    15eb:	5e                   	pop    %esi
    15ec:	5f                   	pop    %edi
    15ed:	5d                   	pop    %ebp
    15ee:	c3                   	ret    
    15ef:	90                   	nop

000015f0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    15f0:	55                   	push   %ebp
    15f1:	89 e5                	mov    %esp,%ebp
    15f3:	57                   	push   %edi
    15f4:	56                   	push   %esi
    15f5:	53                   	push   %ebx
    15f6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    15f9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    15fc:	8b 15 a4 1b 00 00    	mov    0x1ba4,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1602:	8d 78 07             	lea    0x7(%eax),%edi
    1605:	c1 ef 03             	shr    $0x3,%edi
    1608:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    160b:	85 d2                	test   %edx,%edx
    160d:	0f 84 a3 00 00 00    	je     16b6 <malloc+0xc6>
    1613:	8b 02                	mov    (%edx),%eax
    1615:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1618:	39 cf                	cmp    %ecx,%edi
    161a:	76 74                	jbe    1690 <malloc+0xa0>
    161c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    1622:	be 00 10 00 00       	mov    $0x1000,%esi
    1627:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
    162e:	0f 43 f7             	cmovae %edi,%esi
    1631:	ba 00 80 00 00       	mov    $0x8000,%edx
    1636:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
    163c:	0f 46 da             	cmovbe %edx,%ebx
    163f:	eb 10                	jmp    1651 <malloc+0x61>
    1641:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1648:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    164a:	8b 48 04             	mov    0x4(%eax),%ecx
    164d:	39 cf                	cmp    %ecx,%edi
    164f:	76 3f                	jbe    1690 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1651:	39 05 a4 1b 00 00    	cmp    %eax,0x1ba4
    1657:	89 c2                	mov    %eax,%edx
    1659:	75 ed                	jne    1648 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
    165b:	83 ec 0c             	sub    $0xc,%esp
    165e:	53                   	push   %ebx
    165f:	e8 96 fc ff ff       	call   12fa <sbrk>
  if(p == (char*)-1)
    1664:	83 c4 10             	add    $0x10,%esp
    1667:	83 f8 ff             	cmp    $0xffffffff,%eax
    166a:	74 1c                	je     1688 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
    166c:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
    166f:	83 ec 0c             	sub    $0xc,%esp
    1672:	83 c0 08             	add    $0x8,%eax
    1675:	50                   	push   %eax
    1676:	e8 e5 fe ff ff       	call   1560 <free>
  return freep;
    167b:	8b 15 a4 1b 00 00    	mov    0x1ba4,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
    1681:	83 c4 10             	add    $0x10,%esp
    1684:	85 d2                	test   %edx,%edx
    1686:	75 c0                	jne    1648 <malloc+0x58>
        return 0;
    1688:	31 c0                	xor    %eax,%eax
    168a:	eb 1c                	jmp    16a8 <malloc+0xb8>
    168c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
    1690:	39 cf                	cmp    %ecx,%edi
    1692:	74 1c                	je     16b0 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
    1694:	29 f9                	sub    %edi,%ecx
    1696:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    1699:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    169c:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
    169f:	89 15 a4 1b 00 00    	mov    %edx,0x1ba4
      return (void*)(p + 1);
    16a5:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
    16a8:	8d 65 f4             	lea    -0xc(%ebp),%esp
    16ab:	5b                   	pop    %ebx
    16ac:	5e                   	pop    %esi
    16ad:	5f                   	pop    %edi
    16ae:	5d                   	pop    %ebp
    16af:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
    16b0:	8b 08                	mov    (%eax),%ecx
    16b2:	89 0a                	mov    %ecx,(%edx)
    16b4:	eb e9                	jmp    169f <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    16b6:	c7 05 a4 1b 00 00 a8 	movl   $0x1ba8,0x1ba4
    16bd:	1b 00 00 
    16c0:	c7 05 a8 1b 00 00 a8 	movl   $0x1ba8,0x1ba8
    16c7:	1b 00 00 
    base.s.size = 0;
    16ca:	b8 a8 1b 00 00       	mov    $0x1ba8,%eax
    16cf:	c7 05 ac 1b 00 00 00 	movl   $0x0,0x1bac
    16d6:	00 00 00 
    16d9:	e9 3e ff ff ff       	jmp    161c <malloc+0x2c>
