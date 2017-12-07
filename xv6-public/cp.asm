
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
      17:	8b 71 04             	mov    0x4(%ecx),%esi
  if(argc < 2){
      1a:	0f 8e 3f 01 00 00    	jle    15f <main+0x15f>
    exit();
  }
  
  if(strcmp(argv[3],"..")==0){
      20:	83 ec 08             	sub    $0x8,%esp
      23:	68 53 17 00 00       	push   $0x1753
      28:	ff 76 0c             	pushl  0xc(%esi)
      2b:	e8 30 10 00 00       	call   1060 <strcmp>
      30:	83 c4 10             	add    $0x10,%esp
      33:	85 c0                	test   %eax,%eax
      35:	0f 84 a2 02 00 00    	je     2dd <main+0x2dd>
    while(*temp!='/') temp--;
    temp++;
    *temp='\0';
    strcpy(argv[3],buf);
  }
  if(strcmp(argv[1],"-R")==0){
      3b:	83 ec 08             	sub    $0x8,%esp
      3e:	68 5d 17 00 00       	push   $0x175d
      43:	ff 76 04             	pushl  0x4(%esi)
      46:	e8 15 10 00 00       	call   1060 <strcmp>
      4b:	83 c4 10             	add    $0x10,%esp
      4e:	85 c0                	test   %eax,%eax
      50:	0f 84 bf 01 00 00    	je     215 <main+0x215>
    memset (tempb,0,sizeof tempb);
    if(*argv[3]!='/') strcat(tempb,buf);
    strcat(tempb,argv[3]);
    cpR(tempa,tempb);
  }
  if(strcmp(argv[1],"*")==0){
      56:	83 ec 08             	sub    $0x8,%esp
      59:	68 60 17 00 00       	push   $0x1760
      5e:	ff 76 04             	pushl  0x4(%esi)
      61:	e8 fa 0f 00 00       	call   1060 <strcmp>
      66:	83 c4 10             	add    $0x10,%esp
      69:	85 c0                	test   %eax,%eax
      6b:	0f 85 f3 00 00 00    	jne    164 <main+0x164>
    int key=open(".yuhuu",O_CREATE | O_RDWR);
      71:	53                   	push   %ebx
      72:	53                   	push   %ebx
      73:	68 02 02 00 00       	push   $0x202
      78:	68 e1 16 00 00       	push   $0x16e1
      7d:	e8 30 12 00 00       	call   12b2 <open>
    char *buf=malloc(100);
      82:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
    if(*argv[3]!='/') strcat(tempb,buf);
    strcat(tempb,argv[3]);
    cpR(tempa,tempb);
  }
  if(strcmp(argv[1],"*")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
      89:	89 c7                	mov    %eax,%edi
    char *buf=malloc(100);
      8b:	e8 60 15 00 00       	call   15f0 <malloc>
    memset (buf,0,sizeof buf);
      90:	83 c4 0c             	add    $0xc,%esp
    strcat(tempb,argv[3]);
    cpR(tempa,tempb);
  }
  if(strcmp(argv[1],"*")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
    char *buf=malloc(100);
      93:	89 c3                	mov    %eax,%ebx
    memset (buf,0,sizeof buf);
      95:	6a 04                	push   $0x4
      97:	6a 00                	push   $0x0
      99:	50                   	push   %eax
      9a:	e8 41 10 00 00       	call   10e0 <memset>
    read(key, buf, sizeof(buf));
      9f:	83 c4 0c             	add    $0xc,%esp
      a2:	6a 04                	push   $0x4
      a4:	53                   	push   %ebx
      a5:	57                   	push   %edi
      a6:	e8 df 11 00 00       	call   128a <read>
    char *tempa=malloc(100);
      ab:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
      b2:	e8 39 15 00 00       	call   15f0 <malloc>
    memset (tempa,0,sizeof tempa);
      b7:	83 c4 0c             	add    $0xc,%esp
      ba:	89 45 e4             	mov    %eax,-0x1c(%ebp)
      bd:	6a 04                	push   $0x4
      bf:	6a 00                	push   $0x0
      c1:	50                   	push   %eax
      c2:	e8 19 10 00 00       	call   10e0 <memset>
    if(*argv[2]!='/') strcat(tempa,buf);
      c7:	8b 7e 08             	mov    0x8(%esi),%edi
      ca:	83 c4 10             	add    $0x10,%esp
      cd:	8b 55 e4             	mov    -0x1c(%ebp),%edx
      d0:	0f b6 0f             	movzbl (%edi),%ecx
      d3:	80 f9 2f             	cmp    $0x2f,%cl
      d6:	0f 84 9a 00 00 00    	je     176 <main+0x176>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
      dc:	80 3a 00             	cmpb   $0x0,(%edx)
      df:	89 d0                	mov    %edx,%eax
      e1:	74 0d                	je     f0 <main+0xf0>
      e3:	90                   	nop
      e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      e8:	83 c0 01             	add    $0x1,%eax
      eb:	80 38 00             	cmpb   $0x0,(%eax)
      ee:	75 f8                	jne    e8 <main+0xe8>
  while (*s2) *s1++ = *s2++;
      f0:	0f b6 0b             	movzbl (%ebx),%ecx
      f3:	84 c9                	test   %cl,%cl
      f5:	74 19                	je     110 <main+0x110>
      f7:	89 df                	mov    %ebx,%edi
      f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     100:	83 c0 01             	add    $0x1,%eax
     103:	83 c7 01             	add    $0x1,%edi
     106:	88 48 ff             	mov    %cl,-0x1(%eax)
     109:	0f b6 0f             	movzbl (%edi),%ecx
     10c:	84 c9                	test   %cl,%cl
     10e:	75 f0                	jne    100 <main+0x100>
  *s1 = 0;
     110:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     113:	80 3a 00             	cmpb   $0x0,(%edx)
    memset (buf,0,sizeof buf);
    read(key, buf, sizeof(buf));
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
     116:	8b 7e 08             	mov    0x8(%esi),%edi

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     119:	0f 84 04 03 00 00    	je     423 <main+0x423>
  if(strcmp(argv[1],"*")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
    char *buf=malloc(100);
    memset (buf,0,sizeof buf);
    read(key, buf, sizeof(buf));
    char *tempa=malloc(100);
     11f:	89 d0                	mov    %edx,%eax
     121:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     128:	83 c0 01             	add    $0x1,%eax
     12b:	80 38 00             	cmpb   $0x0,(%eax)
     12e:	75 f8                	jne    128 <main+0x128>
     130:	eb 57                	jmp    189 <main+0x189>
     132:	80 3f 00             	cmpb   $0x0,(%edi)
     135:	89 fb                	mov    %edi,%ebx
     137:	0f 85 c2 00 00 00    	jne    1ff <main+0x1ff>
     13d:	8d 76 00             	lea    0x0(%esi),%esi
  while (*s2) *s1++ = *s2++;
     140:	83 c3 01             	add    $0x1,%ebx
     143:	83 c1 01             	add    $0x1,%ecx
     146:	88 43 ff             	mov    %al,-0x1(%ebx)
     149:	0f b6 01             	movzbl (%ecx),%eax
     14c:	84 c0                	test   %al,%al
     14e:	75 f0                	jne    140 <main+0x140>
  *s1 = 0;
     150:	c6 03 00             	movb   $0x0,(%ebx)
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
    memset (tempb,0,sizeof tempb);
    if(*argv[3]!='/') strcat(tempb,buf);
    strcat(tempb,argv[3]);
    cpb(tempa,tempb);
     153:	51                   	push   %ecx
     154:	51                   	push   %ecx
     155:	57                   	push   %edi
     156:	52                   	push   %edx
     157:	e8 54 0b 00 00       	call   cb0 <cpb>
     15c:	83 c4 10             	add    $0x10,%esp
}

int main(int argc, char *argv[])
{
  if(argc < 2){
    exit();
     15f:	e8 0e 11 00 00       	call   1272 <exit>
    strcat(tempb,argv[3]);
    cpb(tempa,tempb);

  }
  else{
    cp(argv[2],argv[3]);
     164:	50                   	push   %eax
     165:	50                   	push   %eax
     166:	ff 76 0c             	pushl  0xc(%esi)
     169:	ff 76 08             	pushl  0x8(%esi)
     16c:	e8 af 06 00 00       	call   820 <cp>
     171:	83 c4 10             	add    $0x10,%esp
     174:	eb e9                	jmp    15f <main+0x15f>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     176:	80 3a 00             	cmpb   $0x0,(%edx)
     179:	89 d0                	mov    %edx,%eax
     17b:	75 a2                	jne    11f <main+0x11f>
     17d:	8d 76 00             	lea    0x0(%esi),%esi
  while (*s2) *s1++ = *s2++;
     180:	83 c0 01             	add    $0x1,%eax
     183:	83 c7 01             	add    $0x1,%edi
     186:	88 48 ff             	mov    %cl,-0x1(%eax)
     189:	0f b6 0f             	movzbl (%edi),%ecx
     18c:	84 c9                	test   %cl,%cl
     18e:	75 f0                	jne    180 <main+0x180>
    read(key, buf, sizeof(buf));
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
     190:	83 ec 0c             	sub    $0xc,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     193:	c6 00 00             	movb   $0x0,(%eax)
     196:	89 55 e4             	mov    %edx,-0x1c(%ebp)
    read(key, buf, sizeof(buf));
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
     199:	6a 64                	push   $0x64
     19b:	e8 50 14 00 00       	call   15f0 <malloc>
    memset (tempb,0,sizeof tempb);
     1a0:	83 c4 0c             	add    $0xc,%esp
    read(key, buf, sizeof(buf));
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
     1a3:	89 c7                	mov    %eax,%edi
    memset (tempb,0,sizeof tempb);
     1a5:	6a 04                	push   $0x4
     1a7:	6a 00                	push   $0x0
     1a9:	50                   	push   %eax
     1aa:	e8 31 0f 00 00       	call   10e0 <memset>
    if(*argv[3]!='/') strcat(tempb,buf);
     1af:	8b 4e 0c             	mov    0xc(%esi),%ecx
     1b2:	83 c4 10             	add    $0x10,%esp
     1b5:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     1b8:	0f b6 01             	movzbl (%ecx),%eax
     1bb:	3c 2f                	cmp    $0x2f,%al
     1bd:	0f 84 6f ff ff ff    	je     132 <main+0x132>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     1c3:	80 3f 00             	cmpb   $0x0,(%edi)
     1c6:	89 f8                	mov    %edi,%eax
     1c8:	74 1f                	je     1e9 <main+0x1e9>
     1ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     1d0:	83 c0 01             	add    $0x1,%eax
     1d3:	80 38 00             	cmpb   $0x0,(%eax)
     1d6:	75 f8                	jne    1d0 <main+0x1d0>
     1d8:	eb 0f                	jmp    1e9 <main+0x1e9>
     1da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  while (*s2) *s1++ = *s2++;
     1e0:	83 c0 01             	add    $0x1,%eax
     1e3:	83 c3 01             	add    $0x1,%ebx
     1e6:	88 48 ff             	mov    %cl,-0x1(%eax)
     1e9:	0f b6 0b             	movzbl (%ebx),%ecx
     1ec:	84 c9                	test   %cl,%cl
     1ee:	75 f0                	jne    1e0 <main+0x1e0>
  *s1 = 0;
     1f0:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     1f3:	80 3f 00             	cmpb   $0x0,(%edi)
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
    memset (tempb,0,sizeof tempb);
    if(*argv[3]!='/') strcat(tempb,buf);
    strcat(tempb,argv[3]);
     1f6:	8b 4e 0c             	mov    0xc(%esi),%ecx

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     1f9:	0f 84 1d 02 00 00    	je     41c <main+0x41c>
    read(key, buf, sizeof(buf));
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
     1ff:	89 fb                	mov    %edi,%ebx
     201:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     208:	83 c3 01             	add    $0x1,%ebx
     20b:	80 3b 00             	cmpb   $0x0,(%ebx)
     20e:	75 f8                	jne    208 <main+0x208>
     210:	e9 34 ff ff ff       	jmp    149 <main+0x149>
    temp++;
    *temp='\0';
    strcpy(argv[3],buf);
  }
  if(strcmp(argv[1],"-R")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
     215:	50                   	push   %eax
     216:	50                   	push   %eax
     217:	68 02 02 00 00       	push   $0x202
     21c:	68 e1 16 00 00       	push   $0x16e1
     221:	e8 8c 10 00 00       	call   12b2 <open>
    char *buf=malloc(100);
     226:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
    temp++;
    *temp='\0';
    strcpy(argv[3],buf);
  }
  if(strcmp(argv[1],"-R")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
     22d:	89 c7                	mov    %eax,%edi
    char *buf=malloc(100);
     22f:	e8 bc 13 00 00       	call   15f0 <malloc>
    memset (buf,0,100);
     234:	83 c4 0c             	add    $0xc,%esp
    *temp='\0';
    strcpy(argv[3],buf);
  }
  if(strcmp(argv[1],"-R")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
    char *buf=malloc(100);
     237:	89 c3                	mov    %eax,%ebx
    memset (buf,0,100);
     239:	6a 64                	push   $0x64
     23b:	6a 00                	push   $0x0
     23d:	50                   	push   %eax
     23e:	e8 9d 0e 00 00       	call   10e0 <memset>
    read(key, buf, 100);
     243:	83 c4 0c             	add    $0xc,%esp
     246:	6a 64                	push   $0x64
     248:	53                   	push   %ebx
     249:	57                   	push   %edi
     24a:	e8 3b 10 00 00       	call   128a <read>
    char *tempa=malloc(100);
     24f:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
     256:	e8 95 13 00 00       	call   15f0 <malloc>
    memset (tempa,0,sizeof tempa);
     25b:	83 c4 0c             	add    $0xc,%esp
     25e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     261:	6a 04                	push   $0x4
     263:	6a 00                	push   $0x0
     265:	50                   	push   %eax
     266:	e8 75 0e 00 00       	call   10e0 <memset>
    if(*argv[2]!='/') strcat(tempa,buf);
     26b:	8b 7e 08             	mov    0x8(%esi),%edi
     26e:	83 c4 10             	add    $0x10,%esp
     271:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     274:	0f b6 0f             	movzbl (%edi),%ecx
     277:	80 f9 2f             	cmp    $0x2f,%cl
     27a:	0f 84 cf 00 00 00    	je     34f <main+0x34f>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     280:	80 3a 00             	cmpb   $0x0,(%edx)
     283:	89 d0                	mov    %edx,%eax
     285:	74 11                	je     298 <main+0x298>
     287:	89 f6                	mov    %esi,%esi
     289:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
     290:	83 c0 01             	add    $0x1,%eax
     293:	80 38 00             	cmpb   $0x0,(%eax)
     296:	75 f8                	jne    290 <main+0x290>
  while (*s2) *s1++ = *s2++;
     298:	0f b6 0b             	movzbl (%ebx),%ecx
     29b:	84 c9                	test   %cl,%cl
     29d:	74 19                	je     2b8 <main+0x2b8>
     29f:	89 df                	mov    %ebx,%edi
     2a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     2a8:	83 c0 01             	add    $0x1,%eax
     2ab:	83 c7 01             	add    $0x1,%edi
     2ae:	88 48 ff             	mov    %cl,-0x1(%eax)
     2b1:	0f b6 0f             	movzbl (%edi),%ecx
     2b4:	84 c9                	test   %cl,%cl
     2b6:	75 f0                	jne    2a8 <main+0x2a8>
  *s1 = 0;
     2b8:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     2bb:	80 3a 00             	cmpb   $0x0,(%edx)
    memset (buf,0,100);
    read(key, buf, 100);
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
     2be:	8b 7e 08             	mov    0x8(%esi),%edi

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     2c1:	0f 84 67 01 00 00    	je     42e <main+0x42e>
  if(strcmp(argv[1],"-R")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
    char *buf=malloc(100);
    memset (buf,0,100);
    read(key, buf, 100);
    char *tempa=malloc(100);
     2c7:	89 d0                	mov    %edx,%eax
     2c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     2d0:	83 c0 01             	add    $0x1,%eax
     2d3:	80 38 00             	cmpb   $0x0,(%eax)
     2d6:	75 f8                	jne    2d0 <main+0x2d0>
     2d8:	e9 8c 00 00 00       	jmp    369 <main+0x369>
  if(argc < 2){
    exit();
  }
  
  if(strcmp(argv[3],"..")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
     2dd:	50                   	push   %eax
     2de:	50                   	push   %eax
     2df:	68 02 02 00 00       	push   $0x202
     2e4:	68 e1 16 00 00       	push   $0x16e1
     2e9:	e8 c4 0f 00 00       	call   12b2 <open>
    char *buf=malloc(100);
     2ee:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
  if(argc < 2){
    exit();
  }
  
  if(strcmp(argv[3],"..")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
     2f5:	89 c7                	mov    %eax,%edi
    char *buf=malloc(100);
     2f7:	e8 f4 12 00 00       	call   15f0 <malloc>
    memset (buf,0,sizeof buf);
     2fc:	83 c4 0c             	add    $0xc,%esp
    exit();
  }
  
  if(strcmp(argv[3],"..")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
    char *buf=malloc(100);
     2ff:	89 c3                	mov    %eax,%ebx
    memset (buf,0,sizeof buf);
     301:	6a 04                	push   $0x4
     303:	6a 00                	push   $0x0
     305:	50                   	push   %eax
     306:	e8 d5 0d 00 00       	call   10e0 <memset>
    read(key, buf, sizeof(buf));
     30b:	83 c4 0c             	add    $0xc,%esp
     30e:	6a 04                	push   $0x4
     310:	53                   	push   %ebx
     311:	57                   	push   %edi
     312:	e8 73 0f 00 00       	call   128a <read>
    char *temp;
    temp=buf+strlen(buf)-1;
     317:	89 1c 24             	mov    %ebx,(%esp)
     31a:	e8 91 0d 00 00       	call   10b0 <strlen>
     31f:	8d 44 03 ff          	lea    -0x1(%ebx,%eax,1),%eax
    while(*temp!='/') temp--;
     323:	83 c4 10             	add    $0x10,%esp
     326:	80 38 2f             	cmpb   $0x2f,(%eax)
     329:	74 0d                	je     338 <main+0x338>
     32b:	90                   	nop
     32c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     330:	83 e8 01             	sub    $0x1,%eax
     333:	80 38 2f             	cmpb   $0x2f,(%eax)
     336:	75 f8                	jne    330 <main+0x330>
    temp++;
    *temp='\0';
     338:	c6 40 01 00          	movb   $0x0,0x1(%eax)
    strcpy(argv[3],buf);
     33c:	50                   	push   %eax
     33d:	50                   	push   %eax
     33e:	53                   	push   %ebx
     33f:	ff 76 0c             	pushl  0xc(%esi)
     342:	e8 e9 0c 00 00       	call   1030 <strcpy>
     347:	83 c4 10             	add    $0x10,%esp
     34a:	e9 ec fc ff ff       	jmp    3b <main+0x3b>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     34f:	80 3a 00             	cmpb   $0x0,(%edx)
     352:	89 d0                	mov    %edx,%eax
     354:	0f 85 6d ff ff ff    	jne    2c7 <main+0x2c7>
     35a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  while (*s2) *s1++ = *s2++;
     360:	83 c0 01             	add    $0x1,%eax
     363:	83 c7 01             	add    $0x1,%edi
     366:	88 48 ff             	mov    %cl,-0x1(%eax)
     369:	0f b6 0f             	movzbl (%edi),%ecx
     36c:	84 c9                	test   %cl,%cl
     36e:	75 f0                	jne    360 <main+0x360>
    read(key, buf, 100);
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
     370:	83 ec 0c             	sub    $0xc,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     373:	c6 00 00             	movb   $0x0,(%eax)
     376:	89 55 e4             	mov    %edx,-0x1c(%ebp)
    read(key, buf, 100);
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
     379:	6a 64                	push   $0x64
     37b:	e8 70 12 00 00       	call   15f0 <malloc>
    memset (tempb,0,sizeof tempb);
     380:	83 c4 0c             	add    $0xc,%esp
    read(key, buf, 100);
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
     383:	89 c7                	mov    %eax,%edi
    memset (tempb,0,sizeof tempb);
     385:	6a 04                	push   $0x4
     387:	6a 00                	push   $0x0
     389:	50                   	push   %eax
     38a:	e8 51 0d 00 00       	call   10e0 <memset>
    if(*argv[3]!='/') strcat(tempb,buf);
     38f:	8b 4e 0c             	mov    0xc(%esi),%ecx
     392:	83 c4 10             	add    $0x10,%esp
     395:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     398:	0f b6 01             	movzbl (%ecx),%eax
     39b:	3c 2f                	cmp    $0x2f,%al
     39d:	74 4b                	je     3ea <main+0x3ea>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     39f:	80 3f 00             	cmpb   $0x0,(%edi)
     3a2:	89 f8                	mov    %edi,%eax
     3a4:	74 23                	je     3c9 <main+0x3c9>
     3a6:	8d 76 00             	lea    0x0(%esi),%esi
     3a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
     3b0:	83 c0 01             	add    $0x1,%eax
     3b3:	80 38 00             	cmpb   $0x0,(%eax)
     3b6:	75 f8                	jne    3b0 <main+0x3b0>
     3b8:	eb 0f                	jmp    3c9 <main+0x3c9>
     3ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  while (*s2) *s1++ = *s2++;
     3c0:	83 c0 01             	add    $0x1,%eax
     3c3:	83 c3 01             	add    $0x1,%ebx
     3c6:	88 48 ff             	mov    %cl,-0x1(%eax)
     3c9:	0f b6 0b             	movzbl (%ebx),%ecx
     3cc:	84 c9                	test   %cl,%cl
     3ce:	75 f0                	jne    3c0 <main+0x3c0>
  *s1 = 0;
     3d0:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     3d3:	80 3f 00             	cmpb   $0x0,(%edi)
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
    memset (tempb,0,sizeof tempb);
    if(*argv[3]!='/') strcat(tempb,buf);
    strcat(tempb,argv[3]);
     3d6:	8b 4e 0c             	mov    0xc(%esi),%ecx

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     3d9:	74 4f                	je     42a <main+0x42a>
    read(key, buf, 100);
    char *tempa=malloc(100);
    memset (tempa,0,sizeof tempa);
    if(*argv[2]!='/') strcat(tempa,buf);
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
     3db:	89 fb                	mov    %edi,%ebx
     3dd:	8d 76 00             	lea    0x0(%esi),%esi

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     3e0:	83 c3 01             	add    $0x1,%ebx
     3e3:	80 3b 00             	cmpb   $0x0,(%ebx)
     3e6:	75 f8                	jne    3e0 <main+0x3e0>
     3e8:	eb 17                	jmp    401 <main+0x401>
     3ea:	80 3f 00             	cmpb   $0x0,(%edi)
     3ed:	89 fb                	mov    %edi,%ebx
     3ef:	75 ea                	jne    3db <main+0x3db>
     3f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  while (*s2) *s1++ = *s2++;
     3f8:	83 c3 01             	add    $0x1,%ebx
     3fb:	83 c1 01             	add    $0x1,%ecx
     3fe:	88 43 ff             	mov    %al,-0x1(%ebx)
     401:	0f b6 01             	movzbl (%ecx),%eax
     404:	84 c0                	test   %al,%al
     406:	75 f0                	jne    3f8 <main+0x3f8>
  *s1 = 0;
     408:	c6 03 00             	movb   $0x0,(%ebx)
    strcat(tempa,argv[2]);
    char *tempb=malloc(100);
    memset (tempb,0,sizeof tempb);
    if(*argv[3]!='/') strcat(tempb,buf);
    strcat(tempb,argv[3]);
    cpR(tempa,tempb);
     40b:	50                   	push   %eax
     40c:	50                   	push   %eax
     40d:	57                   	push   %edi
     40e:	52                   	push   %edx
     40f:	e8 0c 05 00 00       	call   920 <cpR>
     414:	83 c4 10             	add    $0x10,%esp
     417:	e9 3a fc ff ff       	jmp    56 <main+0x56>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     41c:	89 fb                	mov    %edi,%ebx
     41e:	e9 26 fd ff ff       	jmp    149 <main+0x149>
     423:	89 d0                	mov    %edx,%eax
     425:	e9 5f fd ff ff       	jmp    189 <main+0x189>
     42a:	89 fb                	mov    %edi,%ebx
     42c:	eb d3                	jmp    401 <main+0x401>
     42e:	89 d0                	mov    %edx,%eax
     430:	e9 34 ff ff ff       	jmp    369 <main+0x369>
     435:	66 90                	xchg   %ax,%ax
     437:	66 90                	xchg   %ax,%ax
     439:	66 90                	xchg   %ax,%ax
     43b:	66 90                	xchg   %ax,%ax
     43d:	66 90                	xchg   %ax,%ax
     43f:	90                   	nop

00000440 <strcat>:
#include "fcntl.h"
#include <assert.h>
#include <stdarg.h>

char* strcat(char* s1, const char* s2)
{
     440:	55                   	push   %ebp
     441:	89 e5                	mov    %esp,%ebp
     443:	53                   	push   %ebx
     444:	8b 45 08             	mov    0x8(%ebp),%eax
     447:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char* b = s1;

  while (*s1) ++s1;
     44a:	80 38 00             	cmpb   $0x0,(%eax)
     44d:	89 c2                	mov    %eax,%edx
     44f:	74 28                	je     479 <strcat+0x39>
     451:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     458:	83 c2 01             	add    $0x1,%edx
     45b:	80 3a 00             	cmpb   $0x0,(%edx)
     45e:	75 f8                	jne    458 <strcat+0x18>
  while (*s2) *s1++ = *s2++;
     460:	0f b6 0b             	movzbl (%ebx),%ecx
     463:	84 c9                	test   %cl,%cl
     465:	74 19                	je     480 <strcat+0x40>
     467:	89 f6                	mov    %esi,%esi
     469:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
     470:	83 c2 01             	add    $0x1,%edx
     473:	83 c3 01             	add    $0x1,%ebx
     476:	88 4a ff             	mov    %cl,-0x1(%edx)
     479:	0f b6 0b             	movzbl (%ebx),%ecx
     47c:	84 c9                	test   %cl,%cl
     47e:	75 f0                	jne    470 <strcat+0x30>
  *s1 = 0;
     480:	c6 02 00             	movb   $0x0,(%edx)

  return b;
}
     483:	5b                   	pop    %ebx
     484:	5d                   	pop    %ebp
     485:	c3                   	ret    
     486:	8d 76 00             	lea    0x0(%esi),%esi
     489:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000490 <fmtname>:
char*
fmtname(char *path)
{
     490:	55                   	push   %ebp
     491:	89 e5                	mov    %esp,%ebp
     493:	53                   	push   %ebx
     494:	83 ec 10             	sub    $0x10,%esp
     497:	8b 5d 08             	mov    0x8(%ebp),%ebx
  static char buf[DIRSIZ+1];
  char *p;

  // Find first character after last slash.
  for(p=path+strlen(path); p >= path && *p != '/'; p--)
     49a:	53                   	push   %ebx
     49b:	e8 10 0c 00 00       	call   10b0 <strlen>
     4a0:	83 c4 10             	add    $0x10,%esp
     4a3:	01 d8                	add    %ebx,%eax
     4a5:	73 10                	jae    4b7 <fmtname+0x27>
     4a7:	eb 13                	jmp    4bc <fmtname+0x2c>
     4a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     4b0:	83 e8 01             	sub    $0x1,%eax
     4b3:	39 c3                	cmp    %eax,%ebx
     4b5:	77 05                	ja     4bc <fmtname+0x2c>
     4b7:	80 38 2f             	cmpb   $0x2f,(%eax)
     4ba:	75 f4                	jne    4b0 <fmtname+0x20>
    ;
  p++;
     4bc:	8d 58 01             	lea    0x1(%eax),%ebx

  // Return blank-padded name.
  if(strlen(p) >= DIRSIZ)
     4bf:	83 ec 0c             	sub    $0xc,%esp
     4c2:	53                   	push   %ebx
     4c3:	e8 e8 0b 00 00       	call   10b0 <strlen>
     4c8:	83 c4 10             	add    $0x10,%esp
     4cb:	83 f8 0d             	cmp    $0xd,%eax
     4ce:	76 10                	jbe    4e0 <fmtname+0x50>
    return p;
  memmove(buf, p, strlen(p));
  strcat(buf,"\0");
  return p;
}
     4d0:	89 d8                	mov    %ebx,%eax
     4d2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     4d5:	c9                   	leave  
     4d6:	c3                   	ret    
     4d7:	89 f6                	mov    %esi,%esi
     4d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  p++;

  // Return blank-padded name.
  if(strlen(p) >= DIRSIZ)
    return p;
  memmove(buf, p, strlen(p));
     4e0:	83 ec 0c             	sub    $0xc,%esp
     4e3:	53                   	push   %ebx
     4e4:	e8 c7 0b 00 00       	call   10b0 <strlen>
     4e9:	83 c4 0c             	add    $0xc,%esp
     4ec:	50                   	push   %eax
     4ed:	53                   	push   %ebx
     4ee:	68 7c 1b 00 00       	push   $0x1b7c
     4f3:	e8 48 0d 00 00       	call   1240 <memmove>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     4f8:	83 c4 10             	add    $0x10,%esp
     4fb:	80 3d 7c 1b 00 00 00 	cmpb   $0x0,0x1b7c
     502:	b8 7c 1b 00 00       	mov    $0x1b7c,%eax
     507:	74 0f                	je     518 <fmtname+0x88>
     509:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     510:	83 c0 01             	add    $0x1,%eax
     513:	80 38 00             	cmpb   $0x0,(%eax)
     516:	75 f8                	jne    510 <fmtname+0x80>
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     518:	c6 00 00             	movb   $0x0,(%eax)
  if(strlen(p) >= DIRSIZ)
    return p;
  memmove(buf, p, strlen(p));
  strcat(buf,"\0");
  return p;
}
     51b:	89 d8                	mov    %ebx,%eax
     51d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     520:	c9                   	leave  
     521:	c3                   	ret    
     522:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     529:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000530 <mkdire.part.1>:

void mkdire(char *path){
     530:	55                   	push   %ebp
     531:	89 e5                	mov    %esp,%ebp
     533:	57                   	push   %edi
     534:	56                   	push   %esi
     535:	53                   	push   %ebx
     536:	81 ec 28 02 00 00    	sub    $0x228,%esp
     53c:	89 85 e4 fd ff ff    	mov    %eax,-0x21c(%ebp)
  if(mkdir(path) < 0){
    return;
  }
  char *tem=malloc(100);
     542:	6a 64                	push   $0x64
     544:	e8 a7 10 00 00       	call   15f0 <malloc>
  memset(tem,0,sizeof tem);
     549:	83 c4 0c             	add    $0xc,%esp

void mkdire(char *path){
  if(mkdir(path) < 0){
    return;
  }
  char *tem=malloc(100);
     54c:	89 c3                	mov    %eax,%ebx
  memset(tem,0,sizeof tem);
     54e:	6a 04                	push   $0x4
     550:	6a 00                	push   $0x0
     552:	50                   	push   %eax
     553:	e8 88 0b 00 00       	call   10e0 <memset>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     558:	83 c4 10             	add    $0x10,%esp
     55b:	80 3b 00             	cmpb   $0x0,(%ebx)
     55e:	89 d8                	mov    %ebx,%eax
     560:	74 0e                	je     570 <mkdire.part.1+0x40>
     562:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     568:	83 c0 01             	add    $0x1,%eax
     56b:	80 38 00             	cmpb   $0x0,(%eax)
     56e:	75 f8                	jne    568 <mkdire.part.1+0x38>
  while (*s2) *s1++ = *s2++;
     570:	8b bd e4 fd ff ff    	mov    -0x21c(%ebp),%edi
     576:	0f b6 17             	movzbl (%edi),%edx
     579:	84 d2                	test   %dl,%dl
     57b:	74 13                	je     590 <mkdire.part.1+0x60>
     57d:	89 f9                	mov    %edi,%ecx
     57f:	90                   	nop
     580:	83 c0 01             	add    $0x1,%eax
     583:	83 c1 01             	add    $0x1,%ecx
     586:	88 50 ff             	mov    %dl,-0x1(%eax)
     589:	0f b6 11             	movzbl (%ecx),%edx
     58c:	84 d2                	test   %dl,%dl
     58e:	75 f0                	jne    580 <mkdire.part.1+0x50>
  *s1 = 0;
     590:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     593:	80 3b 00             	cmpb   $0x0,(%ebx)
     596:	89 d8                	mov    %ebx,%eax
     598:	74 0e                	je     5a8 <mkdire.part.1+0x78>
     59a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     5a0:	83 c0 01             	add    $0x1,%eax
     5a3:	80 38 00             	cmpb   $0x0,(%eax)
     5a6:	75 f8                	jne    5a0 <mkdire.part.1+0x70>
     5a8:	b9 2f 00 00 00       	mov    $0x2f,%ecx
     5ad:	ba e0 16 00 00       	mov    $0x16e0,%edx
     5b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  while (*s2) *s1++ = *s2++;
     5b8:	83 c0 01             	add    $0x1,%eax
     5bb:	83 c2 01             	add    $0x1,%edx
     5be:	88 48 ff             	mov    %cl,-0x1(%eax)
     5c1:	0f b6 0a             	movzbl (%edx),%ecx
     5c4:	84 c9                	test   %cl,%cl
     5c6:	75 f0                	jne    5b8 <mkdire.part.1+0x88>
  }
  char *tem=malloc(100);
  memset(tem,0,sizeof tem);
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  int foutput=open(tem, O_CREATE | O_RDWR);
     5c8:	83 ec 08             	sub    $0x8,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     5cb:	c6 00 00             	movb   $0x0,(%eax)
  }
  char *tem=malloc(100);
  memset(tem,0,sizeof tem);
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  int foutput=open(tem, O_CREATE | O_RDWR);
     5ce:	68 02 02 00 00       	push   $0x202
     5d3:	53                   	push   %ebx
     5d4:	e8 d9 0c 00 00       	call   12b2 <open>
     5d9:	89 c6                	mov    %eax,%esi
  if(*path=='/'){
     5db:	8b 85 e4 fd ff ff    	mov    -0x21c(%ebp),%eax
     5e1:	83 c4 10             	add    $0x10,%esp
     5e4:	80 38 2f             	cmpb   $0x2f,(%eax)
     5e7:	0f 84 bb 01 00 00    	je     7a8 <mkdire.part.1+0x278>
    write(foutput,path,strlen(path));
    close(foutput);
    return;
  }
  int finput,fd;
  if((finput = open(".yuhuu", O_RDWR)) < 0){
     5ed:	83 ec 08             	sub    $0x8,%esp
     5f0:	6a 02                	push   $0x2
     5f2:	68 e1 16 00 00       	push   $0x16e1
     5f7:	e8 b6 0c 00 00       	call   12b2 <open>
     5fc:	83 c4 10             	add    $0x10,%esp
     5ff:	85 c0                	test   %eax,%eax
     601:	89 85 e0 fd ff ff    	mov    %eax,-0x220(%ebp)
     607:	0f 88 c4 01 00 00    	js     7d1 <mkdire.part.1+0x2a1>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     60d:	80 3b 00             	cmpb   $0x0,(%ebx)
     610:	89 d8                	mov    %ebx,%eax
     612:	74 0c                	je     620 <mkdire.part.1+0xf0>
     614:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     618:	83 c0 01             	add    $0x1,%eax
     61b:	80 38 00             	cmpb   $0x0,(%eax)
     61e:	75 f8                	jne    618 <mkdire.part.1+0xe8>
  while (*s2) *s1++ = *s2++;
     620:	8b bd e4 fd ff ff    	mov    -0x21c(%ebp),%edi
     626:	0f b6 17             	movzbl (%edi),%edx
     629:	84 d2                	test   %dl,%dl
     62b:	74 13                	je     640 <mkdire.part.1+0x110>
     62d:	89 f9                	mov    %edi,%ecx
     62f:	90                   	nop
     630:	83 c0 01             	add    $0x1,%eax
     633:	83 c1 01             	add    $0x1,%ecx
     636:	88 50 ff             	mov    %dl,-0x1(%eax)
     639:	0f b6 11             	movzbl (%ecx),%edx
     63c:	84 d2                	test   %dl,%dl
     63e:	75 f0                	jne    630 <mkdire.part.1+0x100>
  *s1 = 0;
     640:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     643:	80 3b 00             	cmpb   $0x0,(%ebx)
     646:	89 d8                	mov    %ebx,%eax
     648:	74 0e                	je     658 <mkdire.part.1+0x128>
     64a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     650:	83 c0 01             	add    $0x1,%eax
     653:	80 38 00             	cmpb   $0x0,(%eax)
     656:	75 f8                	jne    650 <mkdire.part.1+0x120>
     658:	b9 2f 00 00 00       	mov    $0x2f,%ecx
     65d:	ba e0 16 00 00       	mov    $0x16e0,%edx
     662:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  while (*s2) *s1++ = *s2++;
     668:	83 c0 01             	add    $0x1,%eax
     66b:	83 c2 01             	add    $0x1,%edx
     66e:	88 48 ff             	mov    %cl,-0x1(%eax)
     671:	0f b6 0a             	movzbl (%edx),%ecx
     674:	84 c9                	test   %cl,%cl
     676:	75 f0                	jne    668 <mkdire.part.1+0x138>
    printf(1, "cp: cannot open %s\n", path);
    exit();
  }
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  if((fd = open(tem, 0)) < 0){
     678:	83 ec 08             	sub    $0x8,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     67b:	c6 00 00             	movb   $0x0,(%eax)
    printf(1, "cp: cannot open %s\n", path);
    exit();
  }
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  if((fd = open(tem, 0)) < 0){
     67e:	6a 00                	push   $0x0
     680:	53                   	push   %ebx
     681:	e8 2c 0c 00 00       	call   12b2 <open>
     686:	83 c4 10             	add    $0x10,%esp
     689:	85 c0                	test   %eax,%eax
     68b:	89 85 dc fd ff ff    	mov    %eax,-0x224(%ebp)
     691:	78 3d                	js     6d0 <mkdire.part.1+0x1a0>
    strcat(tem,"/");
    write(foutput,tem,strlen(tem));
    close(foutput);
  }
  else{
    printf(1, "cp: file %s already exist \n", path);
     693:	83 ec 04             	sub    $0x4,%esp
     696:	ff b5 e4 fd ff ff    	pushl  -0x21c(%ebp)
     69c:	68 fc 16 00 00       	push   $0x16fc
     6a1:	6a 01                	push   $0x1
     6a3:	e8 18 0d 00 00       	call   13c0 <printf>
     6a8:	83 c4 10             	add    $0x10,%esp
  }
  close(fd);
     6ab:	83 ec 0c             	sub    $0xc,%esp
     6ae:	ff b5 dc fd ff ff    	pushl  -0x224(%ebp)
     6b4:	e8 e1 0b 00 00       	call   129a <close>
  close(finput);
     6b9:	58                   	pop    %eax
     6ba:	ff b5 e0 fd ff ff    	pushl  -0x220(%ebp)
     6c0:	e8 d5 0b 00 00       	call   129a <close>
     6c5:	83 c4 10             	add    $0x10,%esp
}
     6c8:	8d 65 f4             	lea    -0xc(%ebp),%esp
     6cb:	5b                   	pop    %ebx
     6cc:	5e                   	pop    %esi
     6cd:	5f                   	pop    %edi
     6ce:	5d                   	pop    %ebp
     6cf:	c3                   	ret    
     6d0:	89 9d d8 fd ff ff    	mov    %ebx,-0x228(%ebp)
     6d6:	8d bd e8 fd ff ff    	lea    -0x218(%ebp),%edi
     6dc:	8b 9d e0 fd ff ff    	mov    -0x220(%ebp),%ebx
     6e2:	eb 12                	jmp    6f6 <mkdire.part.1+0x1c6>
     6e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  strcat(tem,"/.yuhuu");
  if((fd = open(tem, 0)) < 0){
    int n;
    char buf[512];
    while((n = read(finput, buf, sizeof(buf))) > 0) {
      write(foutput,buf,n);
     6e8:	83 ec 04             	sub    $0x4,%esp
     6eb:	50                   	push   %eax
     6ec:	57                   	push   %edi
     6ed:	56                   	push   %esi
     6ee:	e8 9f 0b 00 00       	call   1292 <write>
     6f3:	83 c4 10             	add    $0x10,%esp
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  if((fd = open(tem, 0)) < 0){
    int n;
    char buf[512];
    while((n = read(finput, buf, sizeof(buf))) > 0) {
     6f6:	83 ec 04             	sub    $0x4,%esp
     6f9:	68 00 02 00 00       	push   $0x200
     6fe:	57                   	push   %edi
     6ff:	53                   	push   %ebx
     700:	e8 85 0b 00 00       	call   128a <read>
     705:	83 c4 10             	add    $0x10,%esp
     708:	85 c0                	test   %eax,%eax
     70a:	7f dc                	jg     6e8 <mkdire.part.1+0x1b8>
     70c:	8b 9d d8 fd ff ff    	mov    -0x228(%ebp),%ebx
      write(foutput,buf,n);
    }
    memset(tem,0,sizeof tem);
     712:	83 ec 04             	sub    $0x4,%esp
     715:	6a 04                	push   $0x4
     717:	6a 00                	push   $0x0
     719:	53                   	push   %ebx
     71a:	e8 c1 09 00 00       	call   10e0 <memset>
    strcat(tem,fmtname(path));
     71f:	5a                   	pop    %edx
     720:	ff b5 e4 fd ff ff    	pushl  -0x21c(%ebp)
     726:	e8 65 fd ff ff       	call   490 <fmtname>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     72b:	83 c4 10             	add    $0x10,%esp
     72e:	80 3b 00             	cmpb   $0x0,(%ebx)
     731:	89 da                	mov    %ebx,%edx
     733:	74 24                	je     759 <mkdire.part.1+0x229>
     735:	8d 76 00             	lea    0x0(%esi),%esi
     738:	83 c2 01             	add    $0x1,%edx
     73b:	80 3a 00             	cmpb   $0x0,(%edx)
     73e:	75 f8                	jne    738 <mkdire.part.1+0x208>
  while (*s2) *s1++ = *s2++;
     740:	0f b6 08             	movzbl (%eax),%ecx
     743:	84 c9                	test   %cl,%cl
     745:	74 19                	je     760 <mkdire.part.1+0x230>
     747:	89 f6                	mov    %esi,%esi
     749:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
     750:	83 c2 01             	add    $0x1,%edx
     753:	83 c0 01             	add    $0x1,%eax
     756:	88 4a ff             	mov    %cl,-0x1(%edx)
     759:	0f b6 08             	movzbl (%eax),%ecx
     75c:	84 c9                	test   %cl,%cl
     75e:	75 f0                	jne    750 <mkdire.part.1+0x220>
  *s1 = 0;
     760:	c6 02 00             	movb   $0x0,(%edx)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     763:	80 3b 00             	cmpb   $0x0,(%ebx)
     766:	89 d8                	mov    %ebx,%eax
     768:	74 0e                	je     778 <mkdire.part.1+0x248>
     76a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     770:	83 c0 01             	add    $0x1,%eax
     773:	80 38 00             	cmpb   $0x0,(%eax)
     776:	75 f8                	jne    770 <mkdire.part.1+0x240>
      write(foutput,buf,n);
    }
    memset(tem,0,sizeof tem);
    strcat(tem,fmtname(path));
    strcat(tem,"/");
    write(foutput,tem,strlen(tem));
     778:	83 ec 0c             	sub    $0xc,%esp
char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
     77b:	c6 00 2f             	movb   $0x2f,(%eax)
  *s1 = 0;
     77e:	c6 40 01 00          	movb   $0x0,0x1(%eax)
      write(foutput,buf,n);
    }
    memset(tem,0,sizeof tem);
    strcat(tem,fmtname(path));
    strcat(tem,"/");
    write(foutput,tem,strlen(tem));
     782:	53                   	push   %ebx
     783:	e8 28 09 00 00       	call   10b0 <strlen>
     788:	83 c4 0c             	add    $0xc,%esp
     78b:	50                   	push   %eax
     78c:	53                   	push   %ebx
     78d:	56                   	push   %esi
     78e:	e8 ff 0a 00 00       	call   1292 <write>
    close(foutput);
     793:	89 34 24             	mov    %esi,(%esp)
     796:	e8 ff 0a 00 00       	call   129a <close>
     79b:	83 c4 10             	add    $0x10,%esp
     79e:	e9 08 ff ff ff       	jmp    6ab <mkdire.part.1+0x17b>
     7a3:	90                   	nop
     7a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  memset(tem,0,sizeof tem);
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  int foutput=open(tem, O_CREATE | O_RDWR);
  if(*path=='/'){
    write(foutput,path,strlen(path));
     7a8:	83 ec 0c             	sub    $0xc,%esp
     7ab:	89 c7                	mov    %eax,%edi
     7ad:	50                   	push   %eax
     7ae:	e8 fd 08 00 00       	call   10b0 <strlen>
     7b3:	83 c4 0c             	add    $0xc,%esp
     7b6:	50                   	push   %eax
     7b7:	57                   	push   %edi
     7b8:	56                   	push   %esi
     7b9:	e8 d4 0a 00 00       	call   1292 <write>
    close(foutput);
     7be:	89 34 24             	mov    %esi,(%esp)
     7c1:	e8 d4 0a 00 00       	call   129a <close>
     7c6:	83 c4 10             	add    $0x10,%esp
  else{
    printf(1, "cp: file %s already exist \n", path);
  }
  close(fd);
  close(finput);
}
     7c9:	8d 65 f4             	lea    -0xc(%ebp),%esp
     7cc:	5b                   	pop    %ebx
     7cd:	5e                   	pop    %esi
     7ce:	5f                   	pop    %edi
     7cf:	5d                   	pop    %ebp
     7d0:	c3                   	ret    
    close(foutput);
    return;
  }
  int finput,fd;
  if((finput = open(".yuhuu", O_RDWR)) < 0){
    printf(1, "cp: cannot open %s\n", path);
     7d1:	83 ec 04             	sub    $0x4,%esp
     7d4:	ff b5 e4 fd ff ff    	pushl  -0x21c(%ebp)
     7da:	68 e8 16 00 00       	push   $0x16e8
     7df:	6a 01                	push   $0x1
     7e1:	e8 da 0b 00 00       	call   13c0 <printf>
    exit();
     7e6:	e8 87 0a 00 00       	call   1272 <exit>
     7eb:	90                   	nop
     7ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000007f0 <mkdire>:
  memmove(buf, p, strlen(p));
  strcat(buf,"\0");
  return p;
}

void mkdire(char *path){
     7f0:	55                   	push   %ebp
     7f1:	89 e5                	mov    %esp,%ebp
     7f3:	53                   	push   %ebx
     7f4:	83 ec 10             	sub    $0x10,%esp
     7f7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(mkdir(path) < 0){
     7fa:	53                   	push   %ebx
     7fb:	e8 da 0a 00 00       	call   12da <mkdir>
     800:	83 c4 10             	add    $0x10,%esp
     803:	85 c0                	test   %eax,%eax
     805:	78 11                	js     818 <mkdire+0x28>
     807:	89 d8                	mov    %ebx,%eax
  else{
    printf(1, "cp: file %s already exist \n", path);
  }
  close(fd);
  close(finput);
}
     809:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     80c:	c9                   	leave  
     80d:	e9 1e fd ff ff       	jmp    530 <mkdire.part.1>
     812:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     818:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     81b:	c9                   	leave  
     81c:	c3                   	ret    
     81d:	8d 76 00             	lea    0x0(%esi),%esi

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
    printf(1, "cp: cannot open %s\n", patha);
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
     885:	68 fc 16 00 00       	push   $0x16fc
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
    printf(1, "cp: cannot open %s\n", patha);
     90a:	50                   	push   %eax
     90b:	56                   	push   %esi
     90c:	68 e8 16 00 00       	push   $0x16e8
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
     95d:	58                   	pop    %eax
     95e:	5a                   	pop    %edx
     95f:	6a 00                	push   $0x0
     961:	ff 75 08             	pushl  0x8(%ebp)
     964:	e8 49 09 00 00       	call   12b2 <open>
     969:	83 c4 10             	add    $0x10,%esp
     96c:	85 c0                	test   %eax,%eax
     96e:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
     974:	0f 88 ae 02 00 00    	js     c28 <cpR+0x308>
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
      printf(1,"%s %s\n",tempa,tempb);
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
     9f6:	0f 87 4c 02 00 00    	ja     c48 <cpR+0x328>
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
     a20:	89 85 ac fd ff ff    	mov    %eax,-0x254(%ebp)
    mkdire(pathb);
     a26:	58                   	pop    %eax
     a27:	ff 75 0c             	pushl  0xc(%ebp)
    if(strlen(patha) + 1 + DIRSIZ + 1 > sizeof buf){
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, patha);
    p = buf+strlen(buf);
     a2a:	89 8d b0 fd ff ff    	mov    %ecx,-0x250(%ebp)
    *p++ = '/';
    mkdire(pathb);
     a30:	e8 bb fd ff ff       	call   7f0 <mkdire>
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
     a8e:	59                   	pop    %ecx
     a8f:	58                   	pop    %eax
     a90:	8d 85 d4 fd ff ff    	lea    -0x22c(%ebp),%eax
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
     ad3:	e8 b8 f9 ff ff       	call   490 <fmtname>

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
     b53:	e8 38 f9 ff ff       	call   490 <fmtname>

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
     b8b:	80 3e 00             	cmpb   $0x0,(%esi)
     b8e:	89 f0                	mov    %esi,%eax
     b90:	74 0e                	je     ba0 <cpR+0x280>
     b92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     b98:	83 c0 01             	add    $0x1,%eax
     b9b:	80 38 00             	cmpb   $0x0,(%eax)
     b9e:	75 f8                	jne    b98 <cpR+0x278>
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
      strcat(tempb,"/");
      strcat(tempb,fmtname(buf));
      strcat(tempb,"\0");
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
      strcat(tempb,"\0");
      if(strcmp(fmtname(buf),".yuhuu")==0) continue;
     ba6:	57                   	push   %edi
     ba7:	e8 e4 f8 ff ff       	call   490 <fmtname>
     bac:	59                   	pop    %ecx
     bad:	5a                   	pop    %edx
     bae:	68 e1 16 00 00       	push   $0x16e1
     bb3:	50                   	push   %eax
     bb4:	e8 a7 04 00 00       	call   1060 <strcmp>
     bb9:	83 c4 10             	add    $0x10,%esp
     bbc:	85 c0                	test   %eax,%eax
     bbe:	0f 84 7c fe ff ff    	je     a40 <cpR+0x120>
      if(strcmp(fmtname(buf),".")==0) continue;
     bc4:	83 ec 0c             	sub    $0xc,%esp
     bc7:	57                   	push   %edi
     bc8:	e8 c3 f8 ff ff       	call   490 <fmtname>
     bcd:	59                   	pop    %ecx
     bce:	5a                   	pop    %edx
     bcf:	68 54 17 00 00       	push   $0x1754
     bd4:	50                   	push   %eax
     bd5:	e8 86 04 00 00       	call   1060 <strcmp>
     bda:	83 c4 10             	add    $0x10,%esp
     bdd:	85 c0                	test   %eax,%eax
     bdf:	0f 84 5b fe ff ff    	je     a40 <cpR+0x120>
      if(strcmp(fmtname(buf),"..")==0) continue;
     be5:	83 ec 0c             	sub    $0xc,%esp
     be8:	57                   	push   %edi
     be9:	e8 a2 f8 ff ff       	call   490 <fmtname>
     bee:	59                   	pop    %ecx
     bef:	5a                   	pop    %edx
     bf0:	68 53 17 00 00       	push   $0x1753
     bf5:	50                   	push   %eax
     bf6:	e8 65 04 00 00       	call   1060 <strcmp>
     bfb:	83 c4 10             	add    $0x10,%esp
     bfe:	85 c0                	test   %eax,%eax
     c00:	0f 84 3a fe ff ff    	je     a40 <cpR+0x120>
      printf(1,"%s %s\n",tempa,tempb);
     c06:	56                   	push   %esi
     c07:	53                   	push   %ebx
     c08:	68 56 17 00 00       	push   $0x1756
     c0d:	6a 01                	push   $0x1
     c0f:	e8 ac 07 00 00       	call   13c0 <printf>
      cpR(tempa,tempb);
     c14:	58                   	pop    %eax
     c15:	5a                   	pop    %edx
     c16:	56                   	push   %esi
     c17:	53                   	push   %ebx
     c18:	e8 03 fd ff ff       	call   920 <cpR>
     c1d:	83 c4 10             	add    $0x10,%esp
     c20:	e9 1b fe ff ff       	jmp    a40 <cpR+0x120>
     c25:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  struct dirent de;
  struct stat st;

  if((fd = open(patha, 0)) < 0){
    printf(2, "cp: cannot open %s\n", patha);
     c28:	83 ec 04             	sub    $0x4,%esp
     c2b:	ff 75 08             	pushl  0x8(%ebp)
     c2e:	68 e8 16 00 00       	push   $0x16e8
     c33:	6a 02                	push   $0x2
     c35:	e8 86 07 00 00       	call   13c0 <printf>
    return;
     c3a:	83 c4 10             	add    $0x10,%esp
      cpR(tempa,tempb);
    }
    break;
  }
  close(fd);
}
     c3d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     c40:	5b                   	pop    %ebx
     c41:	5e                   	pop    %esi
     c42:	5f                   	pop    %edi
     c43:	5d                   	pop    %ebp
     c44:	c3                   	ret    
     c45:	8d 76 00             	lea    0x0(%esi),%esi
    cp(patha,pathb);
    break;

  case T_DIR:
    if(strlen(patha) + 1 + DIRSIZ + 1 > sizeof buf){
      printf(1, "ls: path too long\n");
     c48:	83 ec 08             	sub    $0x8,%esp
     c4b:	68 2c 17 00 00       	push   $0x172c
     c50:	6a 01                	push   $0x1
     c52:	e8 69 07 00 00       	call   13c0 <printf>
      break;
     c57:	83 c4 10             	add    $0x10,%esp
     c5a:	e9 5f fd ff ff       	jmp    9be <cpR+0x9e>
     c5f:	90                   	nop
    printf(2, "cp: cannot open %s\n", patha);
    return;
  }

  if(fstat(fd, &st) < 0){
    printf(2, "cp: cannot stat %s\n", patha);
     c60:	83 ec 04             	sub    $0x4,%esp
     c63:	ff 75 08             	pushl  0x8(%ebp)
     c66:	68 18 17 00 00       	push   $0x1718
     c6b:	6a 02                	push   $0x2
     c6d:	e8 4e 07 00 00       	call   13c0 <printf>
    close(fd);
     c72:	58                   	pop    %eax
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
     c94:	68 3f 17 00 00       	push   $0x173f
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
     db0:	e8 3b fa ff ff       	call   7f0 <mkdire>
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
     e53:	e8 38 f6 ff ff       	call   490 <fmtname>

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
     ed3:	e8 b8 f5 ff ff       	call   490 <fmtname>

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
     f27:	e8 64 f5 ff ff       	call   490 <fmtname>
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
     f48:	e8 43 f5 ff ff       	call   490 <fmtname>
     f4d:	5a                   	pop    %edx
     f4e:	59                   	pop    %ecx
     f4f:	68 54 17 00 00       	push   $0x1754
     f54:	50                   	push   %eax
     f55:	e8 06 01 00 00       	call   1060 <strcmp>
     f5a:	83 c4 10             	add    $0x10,%esp
     f5d:	85 c0                	test   %eax,%eax
     f5f:	0f 84 5b fe ff ff    	je     dc0 <cpb+0x110>
      if(strcmp(fmtname(buf),"..")==0) continue;
     f65:	83 ec 0c             	sub    $0xc,%esp
     f68:	57                   	push   %edi
     f69:	e8 22 f5 ff ff       	call   490 <fmtname>
     f6e:	5a                   	pop    %edx
     f6f:	59                   	pop    %ecx
     f70:	68 53 17 00 00       	push   $0x1753
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
     fa6:	68 e8 16 00 00       	push   $0x16e8
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
     fc3:	68 2c 17 00 00       	push   $0x172c
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
     fe6:	68 18 17 00 00       	push   $0x1718
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
    1014:	68 3f 17 00 00       	push   $0x173f
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
    1361:	0f b6 92 6c 17 00 00 	movzbl 0x176c(%edx),%edx
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
    14db:	b8 62 17 00 00       	mov    $0x1762,%eax
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
    1561:	a1 8c 1b 00 00       	mov    0x1b8c,%eax
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
    15b9:	a3 8c 1b 00 00       	mov    %eax,0x1b8c
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
    15dd:	a3 8c 1b 00 00       	mov    %eax,0x1b8c
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
    15fc:	8b 15 8c 1b 00 00    	mov    0x1b8c,%edx
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
    1651:	39 05 8c 1b 00 00    	cmp    %eax,0x1b8c
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
    167b:	8b 15 8c 1b 00 00    	mov    0x1b8c,%edx
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
    169f:	89 15 8c 1b 00 00    	mov    %edx,0x1b8c
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
    16b6:	c7 05 8c 1b 00 00 90 	movl   $0x1b90,0x1b8c
    16bd:	1b 00 00 
    16c0:	c7 05 90 1b 00 00 90 	movl   $0x1b90,0x1b90
    16c7:	1b 00 00 
    base.s.size = 0;
    16ca:	b8 90 1b 00 00       	mov    $0x1b90,%eax
    16cf:	c7 05 94 1b 00 00 00 	movl   $0x0,0x1b94
    16d6:	00 00 00 
    16d9:	e9 3e ff ff ff       	jmp    161c <malloc+0x2c>
