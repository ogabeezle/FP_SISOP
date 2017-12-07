
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
      23:	68 13 17 00 00       	push   $0x1713
      28:	ff 76 0c             	pushl  0xc(%esi)
      2b:	e8 f0 0f 00 00       	call   1020 <strcmp>
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
      3e:	68 16 17 00 00       	push   $0x1716
      43:	ff 76 04             	pushl  0x4(%esi)
      46:	e8 d5 0f 00 00       	call   1020 <strcmp>
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
      59:	68 19 17 00 00       	push   $0x1719
      5e:	ff 76 04             	pushl  0x4(%esi)
      61:	e8 ba 0f 00 00       	call   1020 <strcmp>
      66:	83 c4 10             	add    $0x10,%esp
      69:	85 c0                	test   %eax,%eax
      6b:	0f 85 f3 00 00 00    	jne    164 <main+0x164>
    int key=open(".yuhuu",O_CREATE | O_RDWR);
      71:	53                   	push   %ebx
      72:	53                   	push   %ebx
      73:	68 02 02 00 00       	push   $0x202
      78:	68 a1 16 00 00       	push   $0x16a1
      7d:	e8 f0 11 00 00       	call   1272 <open>
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
      8b:	e8 20 15 00 00       	call   15b0 <malloc>
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
      9a:	e8 01 10 00 00       	call   10a0 <memset>
    read(key, buf, sizeof(buf));
      9f:	83 c4 0c             	add    $0xc,%esp
      a2:	6a 04                	push   $0x4
      a4:	53                   	push   %ebx
      a5:	57                   	push   %edi
      a6:	e8 9f 11 00 00       	call   124a <read>
    char *tempa=malloc(100);
      ab:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
      b2:	e8 f9 14 00 00       	call   15b0 <malloc>
    memset (tempa,0,sizeof tempa);
      b7:	83 c4 0c             	add    $0xc,%esp
      ba:	89 45 e4             	mov    %eax,-0x1c(%ebp)
      bd:	6a 04                	push   $0x4
      bf:	6a 00                	push   $0x0
      c1:	50                   	push   %eax
      c2:	e8 d9 0f 00 00       	call   10a0 <memset>
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
     157:	e8 14 0b 00 00       	call   c70 <cpb>
     15c:	83 c4 10             	add    $0x10,%esp
}

int main(int argc, char *argv[])
{
  if(argc < 2){
    exit();
     15f:	e8 ce 10 00 00       	call   1232 <exit>
    strcat(tempb,argv[3]);
    cpb(tempa,tempb);

  }
  else{
    cp(argv[2],argv[3]);
     164:	50                   	push   %eax
     165:	50                   	push   %eax
     166:	ff 76 0c             	pushl  0xc(%esi)
     169:	ff 76 08             	pushl  0x8(%esi)
     16c:	e8 6f 06 00 00       	call   7e0 <cp>
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
     19b:	e8 10 14 00 00       	call   15b0 <malloc>
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
     1aa:	e8 f1 0e 00 00       	call   10a0 <memset>
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
     21c:	68 a1 16 00 00       	push   $0x16a1
     221:	e8 4c 10 00 00       	call   1272 <open>
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
     22f:	e8 7c 13 00 00       	call   15b0 <malloc>
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
     23e:	e8 5d 0e 00 00       	call   10a0 <memset>
    read(key, buf, 100);
     243:	83 c4 0c             	add    $0xc,%esp
     246:	6a 64                	push   $0x64
     248:	53                   	push   %ebx
     249:	57                   	push   %edi
     24a:	e8 fb 0f 00 00       	call   124a <read>
    char *tempa=malloc(100);
     24f:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
     256:	e8 55 13 00 00       	call   15b0 <malloc>
    memset (tempa,0,sizeof tempa);
     25b:	83 c4 0c             	add    $0xc,%esp
     25e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     261:	6a 04                	push   $0x4
     263:	6a 00                	push   $0x0
     265:	50                   	push   %eax
     266:	e8 35 0e 00 00       	call   10a0 <memset>
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
     2e4:	68 a1 16 00 00       	push   $0x16a1
     2e9:	e8 84 0f 00 00       	call   1272 <open>
    char *buf=malloc(100);
     2ee:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
  if(argc < 2){
    exit();
  }
  
  if(strcmp(argv[3],"..")==0){
    int key=open(".yuhuu",O_CREATE | O_RDWR);
     2f5:	89 c7                	mov    %eax,%edi
    char *buf=malloc(100);
     2f7:	e8 b4 12 00 00       	call   15b0 <malloc>
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
     306:	e8 95 0d 00 00       	call   10a0 <memset>
    read(key, buf, sizeof(buf));
     30b:	83 c4 0c             	add    $0xc,%esp
     30e:	6a 04                	push   $0x4
     310:	53                   	push   %ebx
     311:	57                   	push   %edi
     312:	e8 33 0f 00 00       	call   124a <read>
    char *temp;
    temp=buf+strlen(buf)-1;
     317:	89 1c 24             	mov    %ebx,(%esp)
     31a:	e8 51 0d 00 00       	call   1070 <strlen>
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
     342:	e8 a9 0c 00 00       	call   ff0 <strcpy>
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
     37b:	e8 30 12 00 00       	call   15b0 <malloc>
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
     38a:	e8 11 0d 00 00       	call   10a0 <memset>
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
     40f:	e8 cc 04 00 00       	call   8e0 <cpR>
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
     49b:	e8 d0 0b 00 00       	call   1070 <strlen>
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
     4c3:	e8 a8 0b 00 00       	call   1070 <strlen>
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
     4e4:	e8 87 0b 00 00       	call   1070 <strlen>
     4e9:	83 c4 0c             	add    $0xc,%esp
     4ec:	50                   	push   %eax
     4ed:	53                   	push   %ebx
     4ee:	68 24 1b 00 00       	push   $0x1b24
     4f3:	e8 08 0d 00 00       	call   1200 <memmove>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     4f8:	83 c4 10             	add    $0x10,%esp
     4fb:	80 3d 24 1b 00 00 00 	cmpb   $0x0,0x1b24
     502:	b8 24 1b 00 00       	mov    $0x1b24,%eax
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
     544:	e8 67 10 00 00       	call   15b0 <malloc>
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
     553:	e8 48 0b 00 00       	call   10a0 <memset>

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
     5ad:	ba a0 16 00 00       	mov    $0x16a0,%edx
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
     5d4:	e8 99 0c 00 00       	call   1272 <open>
  int finput,fd;
  if((finput = open(".yuhuu", O_RDWR)) < 0){
     5d9:	59                   	pop    %ecx
     5da:	5f                   	pop    %edi
     5db:	6a 02                	push   $0x2
     5dd:	68 a1 16 00 00       	push   $0x16a1
  }
  char *tem=malloc(100);
  memset(tem,0,sizeof tem);
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  int foutput=open(tem, O_CREATE | O_RDWR);
     5e2:	89 c6                	mov    %eax,%esi
  int finput,fd;
  if((finput = open(".yuhuu", O_RDWR)) < 0){
     5e4:	e8 89 0c 00 00       	call   1272 <open>
     5e9:	83 c4 10             	add    $0x10,%esp
     5ec:	85 c0                	test   %eax,%eax
     5ee:	89 85 e0 fd ff ff    	mov    %eax,-0x220(%ebp)
     5f4:	0f 88 99 01 00 00    	js     793 <mkdire.part.1+0x263>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     5fa:	80 3b 00             	cmpb   $0x0,(%ebx)
     5fd:	89 d8                	mov    %ebx,%eax
     5ff:	74 0f                	je     610 <mkdire.part.1+0xe0>
     601:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     608:	83 c0 01             	add    $0x1,%eax
     60b:	80 38 00             	cmpb   $0x0,(%eax)
     60e:	75 f8                	jne    608 <mkdire.part.1+0xd8>
  while (*s2) *s1++ = *s2++;
     610:	8b bd e4 fd ff ff    	mov    -0x21c(%ebp),%edi
     616:	0f b6 17             	movzbl (%edi),%edx
     619:	84 d2                	test   %dl,%dl
     61b:	74 13                	je     630 <mkdire.part.1+0x100>
     61d:	89 f9                	mov    %edi,%ecx
     61f:	90                   	nop
     620:	83 c0 01             	add    $0x1,%eax
     623:	83 c1 01             	add    $0x1,%ecx
     626:	88 50 ff             	mov    %dl,-0x1(%eax)
     629:	0f b6 11             	movzbl (%ecx),%edx
     62c:	84 d2                	test   %dl,%dl
     62e:	75 f0                	jne    620 <mkdire.part.1+0xf0>
  *s1 = 0;
     630:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     633:	80 3b 00             	cmpb   $0x0,(%ebx)
     636:	89 d8                	mov    %ebx,%eax
     638:	74 0e                	je     648 <mkdire.part.1+0x118>
     63a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     640:	83 c0 01             	add    $0x1,%eax
     643:	80 38 00             	cmpb   $0x0,(%eax)
     646:	75 f8                	jne    640 <mkdire.part.1+0x110>
     648:	b9 2f 00 00 00       	mov    $0x2f,%ecx
     64d:	ba a0 16 00 00       	mov    $0x16a0,%edx
     652:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  while (*s2) *s1++ = *s2++;
     658:	83 c0 01             	add    $0x1,%eax
     65b:	83 c2 01             	add    $0x1,%edx
     65e:	88 48 ff             	mov    %cl,-0x1(%eax)
     661:	0f b6 0a             	movzbl (%edx),%ecx
     664:	84 c9                	test   %cl,%cl
     666:	75 f0                	jne    658 <mkdire.part.1+0x128>
    printf(1, "cp: cannot open %s\n", path);
    exit();
  }
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  if((fd = open(tem, 0)) < 0){
     668:	83 ec 08             	sub    $0x8,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     66b:	c6 00 00             	movb   $0x0,(%eax)
    printf(1, "cp: cannot open %s\n", path);
    exit();
  }
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  if((fd = open(tem, 0)) < 0){
     66e:	6a 00                	push   $0x0
     670:	53                   	push   %ebx
     671:	e8 fc 0b 00 00       	call   1272 <open>
     676:	83 c4 10             	add    $0x10,%esp
     679:	85 c0                	test   %eax,%eax
     67b:	89 85 dc fd ff ff    	mov    %eax,-0x224(%ebp)
     681:	78 3d                	js     6c0 <mkdire.part.1+0x190>
    strcat(tem,"/");
    write(foutput,tem,strlen(tem));
    close(foutput);
  }
  else{
    printf(1, "cp: file %s already exist \n", path);
     683:	83 ec 04             	sub    $0x4,%esp
     686:	ff b5 e4 fd ff ff    	pushl  -0x21c(%ebp)
     68c:	68 bc 16 00 00       	push   $0x16bc
     691:	6a 01                	push   $0x1
     693:	e8 e8 0c 00 00       	call   1380 <printf>
     698:	83 c4 10             	add    $0x10,%esp
  }
  close(fd);
     69b:	83 ec 0c             	sub    $0xc,%esp
     69e:	ff b5 dc fd ff ff    	pushl  -0x224(%ebp)
     6a4:	e8 b1 0b 00 00       	call   125a <close>
  close(finput);
     6a9:	58                   	pop    %eax
     6aa:	ff b5 e0 fd ff ff    	pushl  -0x220(%ebp)
     6b0:	e8 a5 0b 00 00       	call   125a <close>
     6b5:	83 c4 10             	add    $0x10,%esp
}
     6b8:	8d 65 f4             	lea    -0xc(%ebp),%esp
     6bb:	5b                   	pop    %ebx
     6bc:	5e                   	pop    %esi
     6bd:	5f                   	pop    %edi
     6be:	5d                   	pop    %ebp
     6bf:	c3                   	ret    
     6c0:	89 9d d8 fd ff ff    	mov    %ebx,-0x228(%ebp)
     6c6:	8d bd e8 fd ff ff    	lea    -0x218(%ebp),%edi
     6cc:	8b 9d e0 fd ff ff    	mov    -0x220(%ebp),%ebx
     6d2:	eb 12                	jmp    6e6 <mkdire.part.1+0x1b6>
     6d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  strcat(tem,"/.yuhuu");
  if((fd = open(tem, 0)) < 0){
    int n;
    char buf[512];
    while((n = read(finput, buf, sizeof(buf))) > 0) {
      write(foutput,buf,n);
     6d8:	83 ec 04             	sub    $0x4,%esp
     6db:	50                   	push   %eax
     6dc:	57                   	push   %edi
     6dd:	56                   	push   %esi
     6de:	e8 6f 0b 00 00       	call   1252 <write>
     6e3:	83 c4 10             	add    $0x10,%esp
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  if((fd = open(tem, 0)) < 0){
    int n;
    char buf[512];
    while((n = read(finput, buf, sizeof(buf))) > 0) {
     6e6:	83 ec 04             	sub    $0x4,%esp
     6e9:	68 00 02 00 00       	push   $0x200
     6ee:	57                   	push   %edi
     6ef:	53                   	push   %ebx
     6f0:	e8 55 0b 00 00       	call   124a <read>
     6f5:	83 c4 10             	add    $0x10,%esp
     6f8:	85 c0                	test   %eax,%eax
     6fa:	7f dc                	jg     6d8 <mkdire.part.1+0x1a8>
     6fc:	8b 9d d8 fd ff ff    	mov    -0x228(%ebp),%ebx
      write(foutput,buf,n);
    }
    memset(tem,0,sizeof tem);
     702:	83 ec 04             	sub    $0x4,%esp
     705:	6a 04                	push   $0x4
     707:	6a 00                	push   $0x0
     709:	53                   	push   %ebx
     70a:	e8 91 09 00 00       	call   10a0 <memset>
    strcat(tem,fmtname(path));
     70f:	5a                   	pop    %edx
     710:	ff b5 e4 fd ff ff    	pushl  -0x21c(%ebp)
     716:	e8 75 fd ff ff       	call   490 <fmtname>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     71b:	83 c4 10             	add    $0x10,%esp
     71e:	80 3b 00             	cmpb   $0x0,(%ebx)
     721:	89 da                	mov    %ebx,%edx
     723:	74 24                	je     749 <mkdire.part.1+0x219>
     725:	8d 76 00             	lea    0x0(%esi),%esi
     728:	83 c2 01             	add    $0x1,%edx
     72b:	80 3a 00             	cmpb   $0x0,(%edx)
     72e:	75 f8                	jne    728 <mkdire.part.1+0x1f8>
  while (*s2) *s1++ = *s2++;
     730:	0f b6 08             	movzbl (%eax),%ecx
     733:	84 c9                	test   %cl,%cl
     735:	74 19                	je     750 <mkdire.part.1+0x220>
     737:	89 f6                	mov    %esi,%esi
     739:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
     740:	83 c2 01             	add    $0x1,%edx
     743:	83 c0 01             	add    $0x1,%eax
     746:	88 4a ff             	mov    %cl,-0x1(%edx)
     749:	0f b6 08             	movzbl (%eax),%ecx
     74c:	84 c9                	test   %cl,%cl
     74e:	75 f0                	jne    740 <mkdire.part.1+0x210>
  *s1 = 0;
     750:	c6 02 00             	movb   $0x0,(%edx)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     753:	80 3b 00             	cmpb   $0x0,(%ebx)
     756:	89 d8                	mov    %ebx,%eax
     758:	74 0e                	je     768 <mkdire.part.1+0x238>
     75a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     760:	83 c0 01             	add    $0x1,%eax
     763:	80 38 00             	cmpb   $0x0,(%eax)
     766:	75 f8                	jne    760 <mkdire.part.1+0x230>
      write(foutput,buf,n);
    }
    memset(tem,0,sizeof tem);
    strcat(tem,fmtname(path));
    strcat(tem,"/");
    write(foutput,tem,strlen(tem));
     768:	83 ec 0c             	sub    $0xc,%esp
char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
     76b:	c6 00 2f             	movb   $0x2f,(%eax)
  *s1 = 0;
     76e:	c6 40 01 00          	movb   $0x0,0x1(%eax)
      write(foutput,buf,n);
    }
    memset(tem,0,sizeof tem);
    strcat(tem,fmtname(path));
    strcat(tem,"/");
    write(foutput,tem,strlen(tem));
     772:	53                   	push   %ebx
     773:	e8 f8 08 00 00       	call   1070 <strlen>
     778:	83 c4 0c             	add    $0xc,%esp
     77b:	50                   	push   %eax
     77c:	53                   	push   %ebx
     77d:	56                   	push   %esi
     77e:	e8 cf 0a 00 00       	call   1252 <write>
    close(foutput);
     783:	89 34 24             	mov    %esi,(%esp)
     786:	e8 cf 0a 00 00       	call   125a <close>
     78b:	83 c4 10             	add    $0x10,%esp
     78e:	e9 08 ff ff ff       	jmp    69b <mkdire.part.1+0x16b>
  strcat(tem,path);
  strcat(tem,"/.yuhuu");
  int foutput=open(tem, O_CREATE | O_RDWR);
  int finput,fd;
  if((finput = open(".yuhuu", O_RDWR)) < 0){
    printf(1, "cp: cannot open %s\n", path);
     793:	83 ec 04             	sub    $0x4,%esp
     796:	ff b5 e4 fd ff ff    	pushl  -0x21c(%ebp)
     79c:	68 a8 16 00 00       	push   $0x16a8
     7a1:	6a 01                	push   $0x1
     7a3:	e8 d8 0b 00 00       	call   1380 <printf>
    exit();
     7a8:	e8 85 0a 00 00       	call   1232 <exit>
     7ad:	8d 76 00             	lea    0x0(%esi),%esi

000007b0 <mkdire>:
  memmove(buf, p, strlen(p));
  strcat(buf,"\0");
  return p;
}

void mkdire(char *path){
     7b0:	55                   	push   %ebp
     7b1:	89 e5                	mov    %esp,%ebp
     7b3:	53                   	push   %ebx
     7b4:	83 ec 10             	sub    $0x10,%esp
     7b7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(mkdir(path) < 0){
     7ba:	53                   	push   %ebx
     7bb:	e8 da 0a 00 00       	call   129a <mkdir>
     7c0:	83 c4 10             	add    $0x10,%esp
     7c3:	85 c0                	test   %eax,%eax
     7c5:	78 11                	js     7d8 <mkdire+0x28>
     7c7:	89 d8                	mov    %ebx,%eax
  else{
    printf(1, "cp: file %s already exist \n", path);
  }
  close(fd);
  close(finput);
}
     7c9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     7cc:	c9                   	leave  
     7cd:	e9 5e fd ff ff       	jmp    530 <mkdire.part.1>
     7d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     7d8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     7db:	c9                   	leave  
     7dc:	c3                   	ret    
     7dd:	8d 76 00             	lea    0x0(%esi),%esi

000007e0 <cp>:


void cp(char *patha,char *pathb){
     7e0:	55                   	push   %ebp
     7e1:	89 e5                	mov    %esp,%ebp
     7e3:	57                   	push   %edi
     7e4:	56                   	push   %esi
     7e5:	53                   	push   %ebx
     7e6:	81 ec 44 04 00 00    	sub    $0x444,%esp
     7ec:	8b 75 08             	mov    0x8(%ebp),%esi
  char buf[1024];
  int finput,foutput,fd;
  if((finput = open(patha, 0)) < 0){
     7ef:	6a 00                	push   $0x0
     7f1:	56                   	push   %esi
     7f2:	e8 7b 0a 00 00       	call   1272 <open>
     7f7:	83 c4 10             	add    $0x10,%esp
     7fa:	85 c0                	test   %eax,%eax
     7fc:	0f 88 c8 00 00 00    	js     8ca <cp+0xea>
     802:	89 c3                	mov    %eax,%ebx
    printf(1, "cp: cannot open %s\n", patha);
    exit();
  }
  struct stat st;
  if(fstat(finput, &st) < 0) return;
     804:	8d 85 d4 fb ff ff    	lea    -0x42c(%ebp),%eax
     80a:	83 ec 08             	sub    $0x8,%esp
     80d:	50                   	push   %eax
     80e:	53                   	push   %ebx
     80f:	e8 76 0a 00 00       	call   128a <fstat>
     814:	83 c4 10             	add    $0x10,%esp
     817:	85 c0                	test   %eax,%eax
     819:	78 52                	js     86d <cp+0x8d>
  if(st.type==T_DIR) return;
     81b:	66 83 bd d4 fb ff ff 	cmpw   $0x1,-0x42c(%ebp)
     822:	01 
     823:	74 48                	je     86d <cp+0x8d>

  if((fd = open(pathb, 0)) < 0){
     825:	83 ec 08             	sub    $0x8,%esp
     828:	6a 00                	push   $0x0
     82a:	ff 75 0c             	pushl  0xc(%ebp)
     82d:	e8 40 0a 00 00       	call   1272 <open>
     832:	83 c4 10             	add    $0x10,%esp
     835:	85 c0                	test   %eax,%eax
     837:	89 85 c4 fb ff ff    	mov    %eax,-0x43c(%ebp)
     83d:	78 39                	js     878 <cp+0x98>
      write(foutput,buf,n);
    }
    close(foutput);
  }
  else{
    printf(1, "cp: file %s already exist \n", pathb);
     83f:	83 ec 04             	sub    $0x4,%esp
     842:	ff 75 0c             	pushl  0xc(%ebp)
     845:	68 bc 16 00 00       	push   $0x16bc
     84a:	6a 01                	push   $0x1
     84c:	e8 2f 0b 00 00       	call   1380 <printf>
     851:	83 c4 10             	add    $0x10,%esp
  }
  close(fd);
     854:	83 ec 0c             	sub    $0xc,%esp
     857:	ff b5 c4 fb ff ff    	pushl  -0x43c(%ebp)
     85d:	e8 f8 09 00 00       	call   125a <close>
  close(finput);
     862:	89 1c 24             	mov    %ebx,(%esp)
     865:	e8 f0 09 00 00       	call   125a <close>
     86a:	83 c4 10             	add    $0x10,%esp
}
     86d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     870:	5b                   	pop    %ebx
     871:	5e                   	pop    %esi
     872:	5f                   	pop    %edi
     873:	5d                   	pop    %ebp
     874:	c3                   	ret    
     875:	8d 76 00             	lea    0x0(%esi),%esi
  if(fstat(finput, &st) < 0) return;
  if(st.type==T_DIR) return;

  if((fd = open(pathb, 0)) < 0){
    int n;
    foutput = open(pathb, O_CREATE | O_RDWR);
     878:	83 ec 08             	sub    $0x8,%esp
     87b:	8d b5 e8 fb ff ff    	lea    -0x418(%ebp),%esi
     881:	68 02 02 00 00       	push   $0x202
     886:	ff 75 0c             	pushl  0xc(%ebp)
     889:	e8 e4 09 00 00       	call   1272 <open>
    while((n = read(finput, buf, sizeof(buf))) > 0) {
     88e:	83 c4 10             	add    $0x10,%esp
  if(fstat(finput, &st) < 0) return;
  if(st.type==T_DIR) return;

  if((fd = open(pathb, 0)) < 0){
    int n;
    foutput = open(pathb, O_CREATE | O_RDWR);
     891:	89 c7                	mov    %eax,%edi
    while((n = read(finput, buf, sizeof(buf))) > 0) {
     893:	eb 11                	jmp    8a6 <cp+0xc6>
     895:	8d 76 00             	lea    0x0(%esi),%esi
      write(foutput,buf,n);
     898:	83 ec 04             	sub    $0x4,%esp
     89b:	50                   	push   %eax
     89c:	56                   	push   %esi
     89d:	57                   	push   %edi
     89e:	e8 af 09 00 00       	call   1252 <write>
     8a3:	83 c4 10             	add    $0x10,%esp
  if(st.type==T_DIR) return;

  if((fd = open(pathb, 0)) < 0){
    int n;
    foutput = open(pathb, O_CREATE | O_RDWR);
    while((n = read(finput, buf, sizeof(buf))) > 0) {
     8a6:	83 ec 04             	sub    $0x4,%esp
     8a9:	68 00 04 00 00       	push   $0x400
     8ae:	56                   	push   %esi
     8af:	53                   	push   %ebx
     8b0:	e8 95 09 00 00       	call   124a <read>
     8b5:	83 c4 10             	add    $0x10,%esp
     8b8:	85 c0                	test   %eax,%eax
     8ba:	7f dc                	jg     898 <cp+0xb8>
      write(foutput,buf,n);
    }
    close(foutput);
     8bc:	83 ec 0c             	sub    $0xc,%esp
     8bf:	57                   	push   %edi
     8c0:	e8 95 09 00 00       	call   125a <close>
     8c5:	83 c4 10             	add    $0x10,%esp
     8c8:	eb 8a                	jmp    854 <cp+0x74>

void cp(char *patha,char *pathb){
  char buf[1024];
  int finput,foutput,fd;
  if((finput = open(patha, 0)) < 0){
    printf(1, "cp: cannot open %s\n", patha);
     8ca:	50                   	push   %eax
     8cb:	56                   	push   %esi
     8cc:	68 a8 16 00 00       	push   $0x16a8
     8d1:	6a 01                	push   $0x1
     8d3:	e8 a8 0a 00 00       	call   1380 <printf>
    exit();
     8d8:	e8 55 09 00 00       	call   1232 <exit>
     8dd:	8d 76 00             	lea    0x0(%esi),%esi

000008e0 <cpR>:
  close(finput);
}

void
cpR(char *patha,char *pathb)
{
     8e0:	55                   	push   %ebp
     8e1:	89 e5                	mov    %esp,%ebp
     8e3:	57                   	push   %edi
     8e4:	56                   	push   %esi
     8e5:	53                   	push   %ebx
     8e6:	81 ec 58 02 00 00    	sub    $0x258,%esp
  char buf[512], *p;
  char *tempa=malloc(100);
     8ec:	6a 64                	push   $0x64
     8ee:	e8 bd 0c 00 00       	call   15b0 <malloc>
  memset (tempa,0,sizeof tempa);
     8f3:	83 c4 0c             	add    $0xc,%esp

void
cpR(char *patha,char *pathb)
{
  char buf[512], *p;
  char *tempa=malloc(100);
     8f6:	89 c3                	mov    %eax,%ebx
  memset (tempa,0,sizeof tempa);
     8f8:	6a 04                	push   $0x4
     8fa:	6a 00                	push   $0x0
     8fc:	50                   	push   %eax
     8fd:	e8 9e 07 00 00       	call   10a0 <memset>
  char *tempb=malloc(100);
     902:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
     909:	e8 a2 0c 00 00       	call   15b0 <malloc>
  memset (tempb,0,sizeof tempb);
     90e:	83 c4 0c             	add    $0xc,%esp
cpR(char *patha,char *pathb)
{
  char buf[512], *p;
  char *tempa=malloc(100);
  memset (tempa,0,sizeof tempa);
  char *tempb=malloc(100);
     911:	89 c6                	mov    %eax,%esi
  memset (tempb,0,sizeof tempb);
     913:	6a 04                	push   $0x4
     915:	6a 00                	push   $0x0
     917:	50                   	push   %eax
     918:	e8 83 07 00 00       	call   10a0 <memset>
  int fd;
  struct dirent de;
  struct stat st;

  if((fd = open(patha, 0)) < 0){
     91d:	5f                   	pop    %edi
     91e:	58                   	pop    %eax
     91f:	6a 00                	push   $0x0
     921:	ff 75 08             	pushl  0x8(%ebp)
     924:	e8 49 09 00 00       	call   1272 <open>
     929:	83 c4 10             	add    $0x10,%esp
     92c:	85 c0                	test   %eax,%eax
     92e:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
     934:	0f 88 a6 02 00 00    	js     be0 <cpR+0x300>
    printf(2, "cp: cannot open %s\n", patha);
    return;
  }

  if(fstat(fd, &st) < 0){
     93a:	8d 85 d4 fd ff ff    	lea    -0x22c(%ebp),%eax
     940:	83 ec 08             	sub    $0x8,%esp
     943:	50                   	push   %eax
     944:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
     94a:	e8 3b 09 00 00       	call   128a <fstat>
     94f:	83 c4 10             	add    $0x10,%esp
     952:	85 c0                	test   %eax,%eax
     954:	0f 88 c6 02 00 00    	js     c20 <cpR+0x340>
    printf(2, "cp: cannot stat %s\n", patha);
    close(fd);
    return;
  }

  switch(st.type){
     95a:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
     961:	66 83 f8 01          	cmp    $0x1,%ax
     965:	74 39                	je     9a0 <cpR+0xc0>
     967:	66 83 f8 02          	cmp    $0x2,%ax
     96b:	75 11                	jne    97e <cpR+0x9e>
  case T_FILE:
    cp(patha,pathb);
     96d:	83 ec 08             	sub    $0x8,%esp
     970:	ff 75 0c             	pushl  0xc(%ebp)
     973:	ff 75 08             	pushl  0x8(%ebp)
     976:	e8 65 fe ff ff       	call   7e0 <cp>
    break;
     97b:	83 c4 10             	add    $0x10,%esp
      if(strcmp(fmtname(buf),"..")==0) continue;
      cpR(tempa,tempb);
    }
    break;
  }
  close(fd);
     97e:	83 ec 0c             	sub    $0xc,%esp
     981:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
     987:	e8 ce 08 00 00       	call   125a <close>
     98c:	83 c4 10             	add    $0x10,%esp
}
     98f:	8d 65 f4             	lea    -0xc(%ebp),%esp
     992:	5b                   	pop    %ebx
     993:	5e                   	pop    %esi
     994:	5f                   	pop    %edi
     995:	5d                   	pop    %ebp
     996:	c3                   	ret    
     997:	89 f6                	mov    %esi,%esi
     999:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  case T_FILE:
    cp(patha,pathb);
    break;

  case T_DIR:
    if(strlen(patha) + 1 + DIRSIZ + 1 > sizeof buf){
     9a0:	83 ec 0c             	sub    $0xc,%esp
     9a3:	ff 75 08             	pushl  0x8(%ebp)
     9a6:	e8 c5 06 00 00       	call   1070 <strlen>
     9ab:	83 c0 10             	add    $0x10,%eax
     9ae:	83 c4 10             	add    $0x10,%esp
     9b1:	3d 00 02 00 00       	cmp    $0x200,%eax
     9b6:	0f 87 44 02 00 00    	ja     c00 <cpR+0x320>
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, patha);
     9bc:	8d bd e8 fd ff ff    	lea    -0x218(%ebp),%edi
     9c2:	83 ec 08             	sub    $0x8,%esp
     9c5:	ff 75 08             	pushl  0x8(%ebp)
     9c8:	57                   	push   %edi
     9c9:	e8 22 06 00 00       	call   ff0 <strcpy>
    p = buf+strlen(buf);
     9ce:	89 3c 24             	mov    %edi,(%esp)
     9d1:	e8 9a 06 00 00       	call   1070 <strlen>
     9d6:	8d 0c 07             	lea    (%edi,%eax,1),%ecx
    *p++ = '/';
     9d9:	8d 44 07 01          	lea    0x1(%edi,%eax,1),%eax
     9dd:	c6 01 2f             	movb   $0x2f,(%ecx)
    if(strlen(patha) + 1 + DIRSIZ + 1 > sizeof buf){
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, patha);
    p = buf+strlen(buf);
     9e0:	89 8d b0 fd ff ff    	mov    %ecx,-0x250(%ebp)
    *p++ = '/';
    mkdire(pathb);
     9e6:	59                   	pop    %ecx
     9e7:	ff 75 0c             	pushl  0xc(%ebp)
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, patha);
    p = buf+strlen(buf);
    *p++ = '/';
     9ea:	89 85 ac fd ff ff    	mov    %eax,-0x254(%ebp)
    mkdire(pathb);
     9f0:	e8 bb fd ff ff       	call   7b0 <mkdire>
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
     9f5:	83 c4 10             	add    $0x10,%esp
     9f8:	90                   	nop
     9f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     a00:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
     a06:	83 ec 04             	sub    $0x4,%esp
     a09:	6a 10                	push   $0x10
     a0b:	50                   	push   %eax
     a0c:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
     a12:	e8 33 08 00 00       	call   124a <read>
     a17:	83 c4 10             	add    $0x10,%esp
     a1a:	83 f8 10             	cmp    $0x10,%eax
     a1d:	0f 85 5b ff ff ff    	jne    97e <cpR+0x9e>
      if(de.inum == 0)
     a23:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
     a2a:	00 
     a2b:	74 d3                	je     a00 <cpR+0x120>
        continue;
      memmove(p, de.name, DIRSIZ);
     a2d:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
     a33:	83 ec 04             	sub    $0x4,%esp
     a36:	6a 0e                	push   $0xe
     a38:	50                   	push   %eax
     a39:	ff b5 ac fd ff ff    	pushl  -0x254(%ebp)
     a3f:	e8 bc 07 00 00       	call   1200 <memmove>
      p[DIRSIZ] = 0;
     a44:	8b 85 b0 fd ff ff    	mov    -0x250(%ebp),%eax
     a4a:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
      if(stat(buf, &st) < 0){
     a4e:	58                   	pop    %eax
     a4f:	8d 85 d4 fd ff ff    	lea    -0x22c(%ebp),%eax
     a55:	5a                   	pop    %edx
     a56:	50                   	push   %eax
     a57:	57                   	push   %edi
     a58:	e8 13 07 00 00       	call   1170 <stat>
     a5d:	83 c4 10             	add    $0x10,%esp
     a60:	85 c0                	test   %eax,%eax
     a62:	0f 88 e8 01 00 00    	js     c50 <cpR+0x370>
        printf(1, "ls: cannot stat %s\n", buf);
        continue;
      }
      strcpy(tempa,patha);
     a68:	83 ec 08             	sub    $0x8,%esp
     a6b:	ff 75 08             	pushl  0x8(%ebp)
     a6e:	53                   	push   %ebx
     a6f:	e8 7c 05 00 00       	call   ff0 <strcpy>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     a74:	83 c4 10             	add    $0x10,%esp
     a77:	80 3b 00             	cmpb   $0x0,(%ebx)
     a7a:	89 d8                	mov    %ebx,%eax
     a7c:	74 0a                	je     a88 <cpR+0x1a8>
     a7e:	66 90                	xchg   %ax,%ax
     a80:	83 c0 01             	add    $0x1,%eax
     a83:	80 38 00             	cmpb   $0x0,(%eax)
     a86:	75 f8                	jne    a80 <cpR+0x1a0>
        printf(1, "ls: cannot stat %s\n", buf);
        continue;
      }
      strcpy(tempa,patha);
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
     a88:	83 ec 0c             	sub    $0xc,%esp
char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
     a8b:	c6 00 2f             	movb   $0x2f,(%eax)
  *s1 = 0;
     a8e:	c6 40 01 00          	movb   $0x0,0x1(%eax)
        printf(1, "ls: cannot stat %s\n", buf);
        continue;
      }
      strcpy(tempa,patha);
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
     a92:	57                   	push   %edi
     a93:	e8 f8 f9 ff ff       	call   490 <fmtname>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     a98:	83 c4 10             	add    $0x10,%esp
     a9b:	80 3b 00             	cmpb   $0x0,(%ebx)
     a9e:	89 da                	mov    %ebx,%edx
     aa0:	74 1f                	je     ac1 <cpR+0x1e1>
     aa2:	83 c2 01             	add    $0x1,%edx
     aa5:	80 3a 00             	cmpb   $0x0,(%edx)
     aa8:	75 f8                	jne    aa2 <cpR+0x1c2>
  while (*s2) *s1++ = *s2++;
     aaa:	0f b6 08             	movzbl (%eax),%ecx
     aad:	84 c9                	test   %cl,%cl
     aaf:	74 17                	je     ac8 <cpR+0x1e8>
     ab1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     ab8:	83 c2 01             	add    $0x1,%edx
     abb:	83 c0 01             	add    $0x1,%eax
     abe:	88 4a ff             	mov    %cl,-0x1(%edx)
     ac1:	0f b6 08             	movzbl (%eax),%ecx
     ac4:	84 c9                	test   %cl,%cl
     ac6:	75 f0                	jne    ab8 <cpR+0x1d8>
  *s1 = 0;
     ac8:	c6 02 00             	movb   $0x0,(%edx)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     acb:	80 3b 00             	cmpb   $0x0,(%ebx)
     ace:	89 d8                	mov    %ebx,%eax
     ad0:	74 0e                	je     ae0 <cpR+0x200>
     ad2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     ad8:	83 c0 01             	add    $0x1,%eax
     adb:	80 38 00             	cmpb   $0x0,(%eax)
     ade:	75 f8                	jne    ad8 <cpR+0x1f8>
      }
      strcpy(tempa,patha);
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
     ae0:	83 ec 08             	sub    $0x8,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     ae3:	c6 00 00             	movb   $0x0,(%eax)
      }
      strcpy(tempa,patha);
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
     ae6:	ff 75 0c             	pushl  0xc(%ebp)
     ae9:	56                   	push   %esi
     aea:	e8 01 05 00 00       	call   ff0 <strcpy>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     aef:	83 c4 10             	add    $0x10,%esp
     af2:	80 3e 00             	cmpb   $0x0,(%esi)
     af5:	89 f0                	mov    %esi,%eax
     af7:	74 0f                	je     b08 <cpR+0x228>
     af9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     b00:	83 c0 01             	add    $0x1,%eax
     b03:	80 38 00             	cmpb   $0x0,(%eax)
     b06:	75 f8                	jne    b00 <cpR+0x220>
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
      strcat(tempb,"/");
      strcat(tempb,fmtname(buf));
     b08:	83 ec 0c             	sub    $0xc,%esp
char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
     b0b:	c6 00 2f             	movb   $0x2f,(%eax)
  *s1 = 0;
     b0e:	c6 40 01 00          	movb   $0x0,0x1(%eax)
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
      strcat(tempb,"/");
      strcat(tempb,fmtname(buf));
     b12:	57                   	push   %edi
     b13:	e8 78 f9 ff ff       	call   490 <fmtname>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     b18:	83 c4 10             	add    $0x10,%esp
     b1b:	80 3e 00             	cmpb   $0x0,(%esi)
     b1e:	89 f2                	mov    %esi,%edx
     b20:	74 1f                	je     b41 <cpR+0x261>
     b22:	83 c2 01             	add    $0x1,%edx
     b25:	80 3a 00             	cmpb   $0x0,(%edx)
     b28:	75 f8                	jne    b22 <cpR+0x242>
  while (*s2) *s1++ = *s2++;
     b2a:	0f b6 08             	movzbl (%eax),%ecx
     b2d:	84 c9                	test   %cl,%cl
     b2f:	74 17                	je     b48 <cpR+0x268>
     b31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     b38:	83 c2 01             	add    $0x1,%edx
     b3b:	83 c0 01             	add    $0x1,%eax
     b3e:	88 4a ff             	mov    %cl,-0x1(%edx)
     b41:	0f b6 08             	movzbl (%eax),%ecx
     b44:	84 c9                	test   %cl,%cl
     b46:	75 f0                	jne    b38 <cpR+0x258>
  *s1 = 0;
     b48:	c6 02 00             	movb   $0x0,(%edx)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     b4b:	80 3e 00             	cmpb   $0x0,(%esi)
     b4e:	89 f0                	mov    %esi,%eax
     b50:	74 0e                	je     b60 <cpR+0x280>
     b52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     b58:	83 c0 01             	add    $0x1,%eax
     b5b:	80 38 00             	cmpb   $0x0,(%eax)
     b5e:	75 f8                	jne    b58 <cpR+0x278>
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
      strcat(tempb,"/");
      strcat(tempb,fmtname(buf));
      strcat(tempb,"\0");
      if(strcmp(fmtname(buf),".yuhuu")==0) continue;
     b60:	83 ec 0c             	sub    $0xc,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     b63:	c6 00 00             	movb   $0x0,(%eax)
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
      strcat(tempb,"/");
      strcat(tempb,fmtname(buf));
      strcat(tempb,"\0");
      if(strcmp(fmtname(buf),".yuhuu")==0) continue;
     b66:	57                   	push   %edi
     b67:	e8 24 f9 ff ff       	call   490 <fmtname>
     b6c:	5a                   	pop    %edx
     b6d:	59                   	pop    %ecx
     b6e:	68 a1 16 00 00       	push   $0x16a1
     b73:	50                   	push   %eax
     b74:	e8 a7 04 00 00       	call   1020 <strcmp>
     b79:	83 c4 10             	add    $0x10,%esp
     b7c:	85 c0                	test   %eax,%eax
     b7e:	0f 84 7c fe ff ff    	je     a00 <cpR+0x120>
      if(strcmp(fmtname(buf),".")==0) continue;
     b84:	83 ec 0c             	sub    $0xc,%esp
     b87:	57                   	push   %edi
     b88:	e8 03 f9 ff ff       	call   490 <fmtname>
     b8d:	5a                   	pop    %edx
     b8e:	59                   	pop    %ecx
     b8f:	68 14 17 00 00       	push   $0x1714
     b94:	50                   	push   %eax
     b95:	e8 86 04 00 00       	call   1020 <strcmp>
     b9a:	83 c4 10             	add    $0x10,%esp
     b9d:	85 c0                	test   %eax,%eax
     b9f:	0f 84 5b fe ff ff    	je     a00 <cpR+0x120>
      if(strcmp(fmtname(buf),"..")==0) continue;
     ba5:	83 ec 0c             	sub    $0xc,%esp
     ba8:	57                   	push   %edi
     ba9:	e8 e2 f8 ff ff       	call   490 <fmtname>
     bae:	5a                   	pop    %edx
     baf:	59                   	pop    %ecx
     bb0:	68 13 17 00 00       	push   $0x1713
     bb5:	50                   	push   %eax
     bb6:	e8 65 04 00 00       	call   1020 <strcmp>
     bbb:	83 c4 10             	add    $0x10,%esp
     bbe:	85 c0                	test   %eax,%eax
     bc0:	0f 84 3a fe ff ff    	je     a00 <cpR+0x120>
      cpR(tempa,tempb);
     bc6:	83 ec 08             	sub    $0x8,%esp
     bc9:	56                   	push   %esi
     bca:	53                   	push   %ebx
     bcb:	e8 10 fd ff ff       	call   8e0 <cpR>
     bd0:	83 c4 10             	add    $0x10,%esp
     bd3:	e9 28 fe ff ff       	jmp    a00 <cpR+0x120>
     bd8:	90                   	nop
     bd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  struct dirent de;
  struct stat st;

  if((fd = open(patha, 0)) < 0){
    printf(2, "cp: cannot open %s\n", patha);
     be0:	83 ec 04             	sub    $0x4,%esp
     be3:	ff 75 08             	pushl  0x8(%ebp)
     be6:	68 a8 16 00 00       	push   $0x16a8
     beb:	6a 02                	push   $0x2
     bed:	e8 8e 07 00 00       	call   1380 <printf>
    return;
     bf2:	83 c4 10             	add    $0x10,%esp
      cpR(tempa,tempb);
    }
    break;
  }
  close(fd);
}
     bf5:	8d 65 f4             	lea    -0xc(%ebp),%esp
     bf8:	5b                   	pop    %ebx
     bf9:	5e                   	pop    %esi
     bfa:	5f                   	pop    %edi
     bfb:	5d                   	pop    %ebp
     bfc:	c3                   	ret    
     bfd:	8d 76 00             	lea    0x0(%esi),%esi
    cp(patha,pathb);
    break;

  case T_DIR:
    if(strlen(patha) + 1 + DIRSIZ + 1 > sizeof buf){
      printf(1, "ls: path too long\n");
     c00:	83 ec 08             	sub    $0x8,%esp
     c03:	68 ec 16 00 00       	push   $0x16ec
     c08:	6a 01                	push   $0x1
     c0a:	e8 71 07 00 00       	call   1380 <printf>
      break;
     c0f:	83 c4 10             	add    $0x10,%esp
     c12:	e9 67 fd ff ff       	jmp    97e <cpR+0x9e>
     c17:	89 f6                	mov    %esi,%esi
     c19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    printf(2, "cp: cannot open %s\n", patha);
    return;
  }

  if(fstat(fd, &st) < 0){
    printf(2, "cp: cannot stat %s\n", patha);
     c20:	83 ec 04             	sub    $0x4,%esp
     c23:	ff 75 08             	pushl  0x8(%ebp)
     c26:	68 d8 16 00 00       	push   $0x16d8
     c2b:	6a 02                	push   $0x2
     c2d:	e8 4e 07 00 00       	call   1380 <printf>
    close(fd);
     c32:	5b                   	pop    %ebx
     c33:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
     c39:	e8 1c 06 00 00       	call   125a <close>
    return;
     c3e:	83 c4 10             	add    $0x10,%esp
     c41:	e9 49 fd ff ff       	jmp    98f <cpR+0xaf>
     c46:	8d 76 00             	lea    0x0(%esi),%esi
     c49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      if(de.inum == 0)
        continue;
      memmove(p, de.name, DIRSIZ);
      p[DIRSIZ] = 0;
      if(stat(buf, &st) < 0){
        printf(1, "ls: cannot stat %s\n", buf);
     c50:	83 ec 04             	sub    $0x4,%esp
     c53:	57                   	push   %edi
     c54:	68 ff 16 00 00       	push   $0x16ff
     c59:	6a 01                	push   $0x1
     c5b:	e8 20 07 00 00       	call   1380 <printf>
        continue;
     c60:	83 c4 10             	add    $0x10,%esp
     c63:	e9 98 fd ff ff       	jmp    a00 <cpR+0x120>
     c68:	90                   	nop
     c69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000c70 <cpb>:
  close(fd);
}

void
cpb(char *patha,char *pathb)
{
     c70:	55                   	push   %ebp
     c71:	89 e5                	mov    %esp,%ebp
     c73:	57                   	push   %edi
     c74:	56                   	push   %esi
     c75:	53                   	push   %ebx
     c76:	81 ec 58 02 00 00    	sub    $0x258,%esp
  char buf[512], *p;
  char *tempa=malloc(100);
     c7c:	6a 64                	push   $0x64
     c7e:	e8 2d 09 00 00       	call   15b0 <malloc>
  memset (tempa,0,sizeof tempa);
     c83:	83 c4 0c             	add    $0xc,%esp

void
cpb(char *patha,char *pathb)
{
  char buf[512], *p;
  char *tempa=malloc(100);
     c86:	89 c3                	mov    %eax,%ebx
  memset (tempa,0,sizeof tempa);
     c88:	6a 04                	push   $0x4
     c8a:	6a 00                	push   $0x0
     c8c:	50                   	push   %eax
     c8d:	e8 0e 04 00 00       	call   10a0 <memset>
  char *tempb=malloc(100);
     c92:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
     c99:	e8 12 09 00 00       	call   15b0 <malloc>
  memset (tempb,0,sizeof tempb);
     c9e:	83 c4 0c             	add    $0xc,%esp
cpb(char *patha,char *pathb)
{
  char buf[512], *p;
  char *tempa=malloc(100);
  memset (tempa,0,sizeof tempa);
  char *tempb=malloc(100);
     ca1:	89 c6                	mov    %eax,%esi
  memset (tempb,0,sizeof tempb);
     ca3:	6a 04                	push   $0x4
     ca5:	6a 00                	push   $0x0
     ca7:	50                   	push   %eax
     ca8:	e8 f3 03 00 00       	call   10a0 <memset>
  int fd;
  struct dirent de;
  struct stat st;

  if((fd = open(patha, 0)) < 0){
     cad:	5f                   	pop    %edi
     cae:	58                   	pop    %eax
     caf:	6a 00                	push   $0x0
     cb1:	ff 75 08             	pushl  0x8(%ebp)
     cb4:	e8 b9 05 00 00       	call   1272 <open>
     cb9:	83 c4 10             	add    $0x10,%esp
     cbc:	85 c0                	test   %eax,%eax
     cbe:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
     cc4:	0f 88 96 02 00 00    	js     f60 <cpb+0x2f0>
    printf(2, "cp: cannot open %s\n", patha);
    return;
  }

  if(fstat(fd, &st) < 0){
     cca:	8d 85 d4 fd ff ff    	lea    -0x22c(%ebp),%eax
     cd0:	83 ec 08             	sub    $0x8,%esp
     cd3:	50                   	push   %eax
     cd4:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
     cda:	e8 ab 05 00 00       	call   128a <fstat>
     cdf:	83 c4 10             	add    $0x10,%esp
     ce2:	85 c0                	test   %eax,%eax
     ce4:	0f 88 b6 02 00 00    	js     fa0 <cpb+0x330>
    printf(2, "cp: cannot stat %s\n", patha);
    close(fd);
    return;
  }

  switch(st.type){
     cea:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
     cf1:	66 83 f8 01          	cmp    $0x1,%ax
     cf5:	74 29                	je     d20 <cpb+0xb0>
     cf7:	66 83 f8 02          	cmp    $0x2,%ax
     cfb:	74 11                	je     d0e <cpb+0x9e>
      if(strcmp(fmtname(buf),"..")==0) continue;
      cp(tempa,tempb);
    }
    break;
  }
  close(fd);
     cfd:	83 ec 0c             	sub    $0xc,%esp
     d00:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
     d06:	e8 4f 05 00 00       	call   125a <close>
     d0b:	83 c4 10             	add    $0x10,%esp
}
     d0e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     d11:	5b                   	pop    %ebx
     d12:	5e                   	pop    %esi
     d13:	5f                   	pop    %edi
     d14:	5d                   	pop    %ebp
     d15:	c3                   	ret    
     d16:	8d 76 00             	lea    0x0(%esi),%esi
     d19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  switch(st.type){
  case T_FILE:
    return;

  case T_DIR:
    if(strlen(patha) + 1 + DIRSIZ + 1 > sizeof buf){
     d20:	83 ec 0c             	sub    $0xc,%esp
     d23:	ff 75 08             	pushl  0x8(%ebp)
     d26:	e8 45 03 00 00       	call   1070 <strlen>
     d2b:	83 c0 10             	add    $0x10,%eax
     d2e:	83 c4 10             	add    $0x10,%esp
     d31:	3d 00 02 00 00       	cmp    $0x200,%eax
     d36:	0f 87 44 02 00 00    	ja     f80 <cpb+0x310>
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, patha);
     d3c:	8d bd e8 fd ff ff    	lea    -0x218(%ebp),%edi
     d42:	83 ec 08             	sub    $0x8,%esp
     d45:	ff 75 08             	pushl  0x8(%ebp)
     d48:	57                   	push   %edi
     d49:	e8 a2 02 00 00       	call   ff0 <strcpy>
    p = buf+strlen(buf);
     d4e:	89 3c 24             	mov    %edi,(%esp)
     d51:	e8 1a 03 00 00       	call   1070 <strlen>
     d56:	8d 0c 07             	lea    (%edi,%eax,1),%ecx
    *p++ = '/';
     d59:	8d 44 07 01          	lea    0x1(%edi,%eax,1),%eax
     d5d:	c6 01 2f             	movb   $0x2f,(%ecx)
    if(strlen(patha) + 1 + DIRSIZ + 1 > sizeof buf){
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, patha);
    p = buf+strlen(buf);
     d60:	89 8d b0 fd ff ff    	mov    %ecx,-0x250(%ebp)
    *p++ = '/';
    mkdire(pathb);
     d66:	59                   	pop    %ecx
     d67:	ff 75 0c             	pushl  0xc(%ebp)
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, patha);
    p = buf+strlen(buf);
    *p++ = '/';
     d6a:	89 85 ac fd ff ff    	mov    %eax,-0x254(%ebp)
    mkdire(pathb);
     d70:	e8 3b fa ff ff       	call   7b0 <mkdire>
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
     d75:	83 c4 10             	add    $0x10,%esp
     d78:	90                   	nop
     d79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d80:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
     d86:	83 ec 04             	sub    $0x4,%esp
     d89:	6a 10                	push   $0x10
     d8b:	50                   	push   %eax
     d8c:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
     d92:	e8 b3 04 00 00       	call   124a <read>
     d97:	83 c4 10             	add    $0x10,%esp
     d9a:	83 f8 10             	cmp    $0x10,%eax
     d9d:	0f 85 5a ff ff ff    	jne    cfd <cpb+0x8d>
      if(de.inum == 0)
     da3:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
     daa:	00 
     dab:	74 d3                	je     d80 <cpb+0x110>
        continue;
      memmove(p, de.name, DIRSIZ);
     dad:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
     db3:	83 ec 04             	sub    $0x4,%esp
     db6:	6a 0e                	push   $0xe
     db8:	50                   	push   %eax
     db9:	ff b5 ac fd ff ff    	pushl  -0x254(%ebp)
     dbf:	e8 3c 04 00 00       	call   1200 <memmove>
      p[DIRSIZ] = 0;
     dc4:	8b 85 b0 fd ff ff    	mov    -0x250(%ebp),%eax
     dca:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
      if(stat(buf, &st) < 0){
     dce:	58                   	pop    %eax
     dcf:	8d 85 d4 fd ff ff    	lea    -0x22c(%ebp),%eax
     dd5:	5a                   	pop    %edx
     dd6:	50                   	push   %eax
     dd7:	57                   	push   %edi
     dd8:	e8 93 03 00 00       	call   1170 <stat>
     ddd:	83 c4 10             	add    $0x10,%esp
     de0:	85 c0                	test   %eax,%eax
     de2:	0f 88 e8 01 00 00    	js     fd0 <cpb+0x360>
        printf(1, "ls: cannot stat %s\n", buf);
        continue;
      }
      strcpy(tempa,patha);
     de8:	83 ec 08             	sub    $0x8,%esp
     deb:	ff 75 08             	pushl  0x8(%ebp)
     dee:	53                   	push   %ebx
     def:	e8 fc 01 00 00       	call   ff0 <strcpy>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     df4:	83 c4 10             	add    $0x10,%esp
     df7:	80 3b 00             	cmpb   $0x0,(%ebx)
     dfa:	89 d8                	mov    %ebx,%eax
     dfc:	74 0a                	je     e08 <cpb+0x198>
     dfe:	66 90                	xchg   %ax,%ax
     e00:	83 c0 01             	add    $0x1,%eax
     e03:	80 38 00             	cmpb   $0x0,(%eax)
     e06:	75 f8                	jne    e00 <cpb+0x190>
        printf(1, "ls: cannot stat %s\n", buf);
        continue;
      }
      strcpy(tempa,patha);
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
     e08:	83 ec 0c             	sub    $0xc,%esp
char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
     e0b:	c6 00 2f             	movb   $0x2f,(%eax)
  *s1 = 0;
     e0e:	c6 40 01 00          	movb   $0x0,0x1(%eax)
        printf(1, "ls: cannot stat %s\n", buf);
        continue;
      }
      strcpy(tempa,patha);
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
     e12:	57                   	push   %edi
     e13:	e8 78 f6 ff ff       	call   490 <fmtname>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     e18:	83 c4 10             	add    $0x10,%esp
     e1b:	80 3b 00             	cmpb   $0x0,(%ebx)
     e1e:	89 da                	mov    %ebx,%edx
     e20:	74 1f                	je     e41 <cpb+0x1d1>
     e22:	83 c2 01             	add    $0x1,%edx
     e25:	80 3a 00             	cmpb   $0x0,(%edx)
     e28:	75 f8                	jne    e22 <cpb+0x1b2>
  while (*s2) *s1++ = *s2++;
     e2a:	0f b6 08             	movzbl (%eax),%ecx
     e2d:	84 c9                	test   %cl,%cl
     e2f:	74 17                	je     e48 <cpb+0x1d8>
     e31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     e38:	83 c2 01             	add    $0x1,%edx
     e3b:	83 c0 01             	add    $0x1,%eax
     e3e:	88 4a ff             	mov    %cl,-0x1(%edx)
     e41:	0f b6 08             	movzbl (%eax),%ecx
     e44:	84 c9                	test   %cl,%cl
     e46:	75 f0                	jne    e38 <cpb+0x1c8>
  *s1 = 0;
     e48:	c6 02 00             	movb   $0x0,(%edx)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     e4b:	80 3b 00             	cmpb   $0x0,(%ebx)
     e4e:	89 d8                	mov    %ebx,%eax
     e50:	74 0e                	je     e60 <cpb+0x1f0>
     e52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     e58:	83 c0 01             	add    $0x1,%eax
     e5b:	80 38 00             	cmpb   $0x0,(%eax)
     e5e:	75 f8                	jne    e58 <cpb+0x1e8>
      }
      strcpy(tempa,patha);
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
     e60:	83 ec 08             	sub    $0x8,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     e63:	c6 00 00             	movb   $0x0,(%eax)
      }
      strcpy(tempa,patha);
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
     e66:	ff 75 0c             	pushl  0xc(%ebp)
     e69:	56                   	push   %esi
     e6a:	e8 81 01 00 00       	call   ff0 <strcpy>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     e6f:	83 c4 10             	add    $0x10,%esp
     e72:	80 3e 00             	cmpb   $0x0,(%esi)
     e75:	89 f0                	mov    %esi,%eax
     e77:	74 0f                	je     e88 <cpb+0x218>
     e79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     e80:	83 c0 01             	add    $0x1,%eax
     e83:	80 38 00             	cmpb   $0x0,(%eax)
     e86:	75 f8                	jne    e80 <cpb+0x210>
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
      strcat(tempb,"/");
      strcat(tempb,fmtname(buf));
     e88:	83 ec 0c             	sub    $0xc,%esp
char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
     e8b:	c6 00 2f             	movb   $0x2f,(%eax)
  *s1 = 0;
     e8e:	c6 40 01 00          	movb   $0x0,0x1(%eax)
      strcat(tempa,"/");
      strcat(tempa,fmtname(buf));
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
      strcat(tempb,"/");
      strcat(tempb,fmtname(buf));
     e92:	57                   	push   %edi
     e93:	e8 f8 f5 ff ff       	call   490 <fmtname>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     e98:	83 c4 10             	add    $0x10,%esp
     e9b:	80 3e 00             	cmpb   $0x0,(%esi)
     e9e:	89 f2                	mov    %esi,%edx
     ea0:	74 1f                	je     ec1 <cpb+0x251>
     ea2:	83 c2 01             	add    $0x1,%edx
     ea5:	80 3a 00             	cmpb   $0x0,(%edx)
     ea8:	75 f8                	jne    ea2 <cpb+0x232>
  while (*s2) *s1++ = *s2++;
     eaa:	0f b6 08             	movzbl (%eax),%ecx
     ead:	84 c9                	test   %cl,%cl
     eaf:	74 17                	je     ec8 <cpb+0x258>
     eb1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     eb8:	83 c2 01             	add    $0x1,%edx
     ebb:	83 c0 01             	add    $0x1,%eax
     ebe:	88 4a ff             	mov    %cl,-0x1(%edx)
     ec1:	0f b6 08             	movzbl (%eax),%ecx
     ec4:	84 c9                	test   %cl,%cl
     ec6:	75 f0                	jne    eb8 <cpb+0x248>
  *s1 = 0;
     ec8:	c6 02 00             	movb   $0x0,(%edx)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
     ecb:	80 3b 00             	cmpb   $0x0,(%ebx)
     ece:	89 d8                	mov    %ebx,%eax
     ed0:	74 0e                	je     ee0 <cpb+0x270>
     ed2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     ed8:	83 c0 01             	add    $0x1,%eax
     edb:	80 38 00             	cmpb   $0x0,(%eax)
     ede:	75 f8                	jne    ed8 <cpb+0x268>
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
      strcat(tempb,"/");
      strcat(tempb,fmtname(buf));
      strcat(tempa,"\0");
      if(strcmp(fmtname(buf),".yuhuu")==0) continue;
     ee0:	83 ec 0c             	sub    $0xc,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
     ee3:	c6 00 00             	movb   $0x0,(%eax)
      strcat(tempa,"\0");
      strcpy(tempb,pathb);
      strcat(tempb,"/");
      strcat(tempb,fmtname(buf));
      strcat(tempa,"\0");
      if(strcmp(fmtname(buf),".yuhuu")==0) continue;
     ee6:	57                   	push   %edi
     ee7:	e8 a4 f5 ff ff       	call   490 <fmtname>
     eec:	5a                   	pop    %edx
     eed:	59                   	pop    %ecx
     eee:	68 a1 16 00 00       	push   $0x16a1
     ef3:	50                   	push   %eax
     ef4:	e8 27 01 00 00       	call   1020 <strcmp>
     ef9:	83 c4 10             	add    $0x10,%esp
     efc:	85 c0                	test   %eax,%eax
     efe:	0f 84 7c fe ff ff    	je     d80 <cpb+0x110>
      if(strcmp(fmtname(buf),".")==0) continue;
     f04:	83 ec 0c             	sub    $0xc,%esp
     f07:	57                   	push   %edi
     f08:	e8 83 f5 ff ff       	call   490 <fmtname>
     f0d:	5a                   	pop    %edx
     f0e:	59                   	pop    %ecx
     f0f:	68 14 17 00 00       	push   $0x1714
     f14:	50                   	push   %eax
     f15:	e8 06 01 00 00       	call   1020 <strcmp>
     f1a:	83 c4 10             	add    $0x10,%esp
     f1d:	85 c0                	test   %eax,%eax
     f1f:	0f 84 5b fe ff ff    	je     d80 <cpb+0x110>
      if(strcmp(fmtname(buf),"..")==0) continue;
     f25:	83 ec 0c             	sub    $0xc,%esp
     f28:	57                   	push   %edi
     f29:	e8 62 f5 ff ff       	call   490 <fmtname>
     f2e:	5a                   	pop    %edx
     f2f:	59                   	pop    %ecx
     f30:	68 13 17 00 00       	push   $0x1713
     f35:	50                   	push   %eax
     f36:	e8 e5 00 00 00       	call   1020 <strcmp>
     f3b:	83 c4 10             	add    $0x10,%esp
     f3e:	85 c0                	test   %eax,%eax
     f40:	0f 84 3a fe ff ff    	je     d80 <cpb+0x110>
      cp(tempa,tempb);
     f46:	83 ec 08             	sub    $0x8,%esp
     f49:	56                   	push   %esi
     f4a:	53                   	push   %ebx
     f4b:	e8 90 f8 ff ff       	call   7e0 <cp>
     f50:	83 c4 10             	add    $0x10,%esp
     f53:	e9 28 fe ff ff       	jmp    d80 <cpb+0x110>
     f58:	90                   	nop
     f59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  struct dirent de;
  struct stat st;

  if((fd = open(patha, 0)) < 0){
    printf(2, "cp: cannot open %s\n", patha);
     f60:	83 ec 04             	sub    $0x4,%esp
     f63:	ff 75 08             	pushl  0x8(%ebp)
     f66:	68 a8 16 00 00       	push   $0x16a8
     f6b:	6a 02                	push   $0x2
     f6d:	e8 0e 04 00 00       	call   1380 <printf>
    return;
     f72:	83 c4 10             	add    $0x10,%esp
      cp(tempa,tempb);
    }
    break;
  }
  close(fd);
}
     f75:	8d 65 f4             	lea    -0xc(%ebp),%esp
     f78:	5b                   	pop    %ebx
     f79:	5e                   	pop    %esi
     f7a:	5f                   	pop    %edi
     f7b:	5d                   	pop    %ebp
     f7c:	c3                   	ret    
     f7d:	8d 76 00             	lea    0x0(%esi),%esi
  case T_FILE:
    return;

  case T_DIR:
    if(strlen(patha) + 1 + DIRSIZ + 1 > sizeof buf){
      printf(1, "ls: path too long\n");
     f80:	83 ec 08             	sub    $0x8,%esp
     f83:	68 ec 16 00 00       	push   $0x16ec
     f88:	6a 01                	push   $0x1
     f8a:	e8 f1 03 00 00       	call   1380 <printf>
      break;
     f8f:	83 c4 10             	add    $0x10,%esp
     f92:	e9 66 fd ff ff       	jmp    cfd <cpb+0x8d>
     f97:	89 f6                	mov    %esi,%esi
     f99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    printf(2, "cp: cannot open %s\n", patha);
    return;
  }

  if(fstat(fd, &st) < 0){
    printf(2, "cp: cannot stat %s\n", patha);
     fa0:	83 ec 04             	sub    $0x4,%esp
     fa3:	ff 75 08             	pushl  0x8(%ebp)
     fa6:	68 d8 16 00 00       	push   $0x16d8
     fab:	6a 02                	push   $0x2
     fad:	e8 ce 03 00 00       	call   1380 <printf>
    close(fd);
     fb2:	5b                   	pop    %ebx
     fb3:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
     fb9:	e8 9c 02 00 00       	call   125a <close>
    return;
     fbe:	83 c4 10             	add    $0x10,%esp
     fc1:	e9 48 fd ff ff       	jmp    d0e <cpb+0x9e>
     fc6:	8d 76 00             	lea    0x0(%esi),%esi
     fc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      if(de.inum == 0)
        continue;
      memmove(p, de.name, DIRSIZ);
      p[DIRSIZ] = 0;
      if(stat(buf, &st) < 0){
        printf(1, "ls: cannot stat %s\n", buf);
     fd0:	83 ec 04             	sub    $0x4,%esp
     fd3:	57                   	push   %edi
     fd4:	68 ff 16 00 00       	push   $0x16ff
     fd9:	6a 01                	push   $0x1
     fdb:	e8 a0 03 00 00       	call   1380 <printf>
        continue;
     fe0:	83 c4 10             	add    $0x10,%esp
     fe3:	e9 98 fd ff ff       	jmp    d80 <cpb+0x110>
     fe8:	66 90                	xchg   %ax,%ax
     fea:	66 90                	xchg   %ax,%ax
     fec:	66 90                	xchg   %ax,%ax
     fee:	66 90                	xchg   %ax,%ax

00000ff0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
     ff0:	55                   	push   %ebp
     ff1:	89 e5                	mov    %esp,%ebp
     ff3:	53                   	push   %ebx
     ff4:	8b 45 08             	mov    0x8(%ebp),%eax
     ff7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     ffa:	89 c2                	mov    %eax,%edx
     ffc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1000:	83 c1 01             	add    $0x1,%ecx
    1003:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    1007:	83 c2 01             	add    $0x1,%edx
    100a:	84 db                	test   %bl,%bl
    100c:	88 5a ff             	mov    %bl,-0x1(%edx)
    100f:	75 ef                	jne    1000 <strcpy+0x10>
    ;
  return os;
}
    1011:	5b                   	pop    %ebx
    1012:	5d                   	pop    %ebp
    1013:	c3                   	ret    
    1014:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    101a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001020 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1020:	55                   	push   %ebp
    1021:	89 e5                	mov    %esp,%ebp
    1023:	56                   	push   %esi
    1024:	53                   	push   %ebx
    1025:	8b 55 08             	mov    0x8(%ebp),%edx
    1028:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    102b:	0f b6 02             	movzbl (%edx),%eax
    102e:	0f b6 19             	movzbl (%ecx),%ebx
    1031:	84 c0                	test   %al,%al
    1033:	75 1e                	jne    1053 <strcmp+0x33>
    1035:	eb 29                	jmp    1060 <strcmp+0x40>
    1037:	89 f6                	mov    %esi,%esi
    1039:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    1040:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    1043:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    1046:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    1049:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    104d:	84 c0                	test   %al,%al
    104f:	74 0f                	je     1060 <strcmp+0x40>
    1051:	89 f1                	mov    %esi,%ecx
    1053:	38 d8                	cmp    %bl,%al
    1055:	74 e9                	je     1040 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
    1057:	29 d8                	sub    %ebx,%eax
}
    1059:	5b                   	pop    %ebx
    105a:	5e                   	pop    %esi
    105b:	5d                   	pop    %ebp
    105c:	c3                   	ret    
    105d:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    1060:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
    1062:	29 d8                	sub    %ebx,%eax
}
    1064:	5b                   	pop    %ebx
    1065:	5e                   	pop    %esi
    1066:	5d                   	pop    %ebp
    1067:	c3                   	ret    
    1068:	90                   	nop
    1069:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001070 <strlen>:

uint
strlen(char *s)
{
    1070:	55                   	push   %ebp
    1071:	89 e5                	mov    %esp,%ebp
    1073:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    1076:	80 39 00             	cmpb   $0x0,(%ecx)
    1079:	74 12                	je     108d <strlen+0x1d>
    107b:	31 d2                	xor    %edx,%edx
    107d:	8d 76 00             	lea    0x0(%esi),%esi
    1080:	83 c2 01             	add    $0x1,%edx
    1083:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    1087:	89 d0                	mov    %edx,%eax
    1089:	75 f5                	jne    1080 <strlen+0x10>
    ;
  return n;
}
    108b:	5d                   	pop    %ebp
    108c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
    108d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
    108f:	5d                   	pop    %ebp
    1090:	c3                   	ret    
    1091:	eb 0d                	jmp    10a0 <memset>
    1093:	90                   	nop
    1094:	90                   	nop
    1095:	90                   	nop
    1096:	90                   	nop
    1097:	90                   	nop
    1098:	90                   	nop
    1099:	90                   	nop
    109a:	90                   	nop
    109b:	90                   	nop
    109c:	90                   	nop
    109d:	90                   	nop
    109e:	90                   	nop
    109f:	90                   	nop

000010a0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    10a0:	55                   	push   %ebp
    10a1:	89 e5                	mov    %esp,%ebp
    10a3:	57                   	push   %edi
    10a4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    10a7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    10aa:	8b 45 0c             	mov    0xc(%ebp),%eax
    10ad:	89 d7                	mov    %edx,%edi
    10af:	fc                   	cld    
    10b0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    10b2:	89 d0                	mov    %edx,%eax
    10b4:	5f                   	pop    %edi
    10b5:	5d                   	pop    %ebp
    10b6:	c3                   	ret    
    10b7:	89 f6                	mov    %esi,%esi
    10b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000010c0 <strchr>:

char*
strchr(const char *s, char c)
{
    10c0:	55                   	push   %ebp
    10c1:	89 e5                	mov    %esp,%ebp
    10c3:	53                   	push   %ebx
    10c4:	8b 45 08             	mov    0x8(%ebp),%eax
    10c7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    10ca:	0f b6 10             	movzbl (%eax),%edx
    10cd:	84 d2                	test   %dl,%dl
    10cf:	74 1d                	je     10ee <strchr+0x2e>
    if(*s == c)
    10d1:	38 d3                	cmp    %dl,%bl
    10d3:	89 d9                	mov    %ebx,%ecx
    10d5:	75 0d                	jne    10e4 <strchr+0x24>
    10d7:	eb 17                	jmp    10f0 <strchr+0x30>
    10d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10e0:	38 ca                	cmp    %cl,%dl
    10e2:	74 0c                	je     10f0 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
    10e4:	83 c0 01             	add    $0x1,%eax
    10e7:	0f b6 10             	movzbl (%eax),%edx
    10ea:	84 d2                	test   %dl,%dl
    10ec:	75 f2                	jne    10e0 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
    10ee:	31 c0                	xor    %eax,%eax
}
    10f0:	5b                   	pop    %ebx
    10f1:	5d                   	pop    %ebp
    10f2:	c3                   	ret    
    10f3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    10f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001100 <gets>:

char*
gets(char *buf, int max)
{
    1100:	55                   	push   %ebp
    1101:	89 e5                	mov    %esp,%ebp
    1103:	57                   	push   %edi
    1104:	56                   	push   %esi
    1105:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1106:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
    1108:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
    110b:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    110e:	eb 29                	jmp    1139 <gets+0x39>
    cc = read(0, &c, 1);
    1110:	83 ec 04             	sub    $0x4,%esp
    1113:	6a 01                	push   $0x1
    1115:	57                   	push   %edi
    1116:	6a 00                	push   $0x0
    1118:	e8 2d 01 00 00       	call   124a <read>
    if(cc < 1)
    111d:	83 c4 10             	add    $0x10,%esp
    1120:	85 c0                	test   %eax,%eax
    1122:	7e 1d                	jle    1141 <gets+0x41>
      break;
    buf[i++] = c;
    1124:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    1128:	8b 55 08             	mov    0x8(%ebp),%edx
    112b:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
    112d:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
    112f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    1133:	74 1b                	je     1150 <gets+0x50>
    1135:	3c 0d                	cmp    $0xd,%al
    1137:	74 17                	je     1150 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1139:	8d 5e 01             	lea    0x1(%esi),%ebx
    113c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    113f:	7c cf                	jl     1110 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    1141:	8b 45 08             	mov    0x8(%ebp),%eax
    1144:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    1148:	8d 65 f4             	lea    -0xc(%ebp),%esp
    114b:	5b                   	pop    %ebx
    114c:	5e                   	pop    %esi
    114d:	5f                   	pop    %edi
    114e:	5d                   	pop    %ebp
    114f:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    1150:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1153:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    1155:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    1159:	8d 65 f4             	lea    -0xc(%ebp),%esp
    115c:	5b                   	pop    %ebx
    115d:	5e                   	pop    %esi
    115e:	5f                   	pop    %edi
    115f:	5d                   	pop    %ebp
    1160:	c3                   	ret    
    1161:	eb 0d                	jmp    1170 <stat>
    1163:	90                   	nop
    1164:	90                   	nop
    1165:	90                   	nop
    1166:	90                   	nop
    1167:	90                   	nop
    1168:	90                   	nop
    1169:	90                   	nop
    116a:	90                   	nop
    116b:	90                   	nop
    116c:	90                   	nop
    116d:	90                   	nop
    116e:	90                   	nop
    116f:	90                   	nop

00001170 <stat>:

int
stat(char *n, struct stat *st)
{
    1170:	55                   	push   %ebp
    1171:	89 e5                	mov    %esp,%ebp
    1173:	56                   	push   %esi
    1174:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    1175:	83 ec 08             	sub    $0x8,%esp
    1178:	6a 00                	push   $0x0
    117a:	ff 75 08             	pushl  0x8(%ebp)
    117d:	e8 f0 00 00 00       	call   1272 <open>
  if(fd < 0)
    1182:	83 c4 10             	add    $0x10,%esp
    1185:	85 c0                	test   %eax,%eax
    1187:	78 27                	js     11b0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    1189:	83 ec 08             	sub    $0x8,%esp
    118c:	ff 75 0c             	pushl  0xc(%ebp)
    118f:	89 c3                	mov    %eax,%ebx
    1191:	50                   	push   %eax
    1192:	e8 f3 00 00 00       	call   128a <fstat>
    1197:	89 c6                	mov    %eax,%esi
  close(fd);
    1199:	89 1c 24             	mov    %ebx,(%esp)
    119c:	e8 b9 00 00 00       	call   125a <close>
  return r;
    11a1:	83 c4 10             	add    $0x10,%esp
    11a4:	89 f0                	mov    %esi,%eax
}
    11a6:	8d 65 f8             	lea    -0x8(%ebp),%esp
    11a9:	5b                   	pop    %ebx
    11aa:	5e                   	pop    %esi
    11ab:	5d                   	pop    %ebp
    11ac:	c3                   	ret    
    11ad:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
    11b0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    11b5:	eb ef                	jmp    11a6 <stat+0x36>
    11b7:	89 f6                	mov    %esi,%esi
    11b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000011c0 <atoi>:
  return r;
}

int
atoi(const char *s)
{
    11c0:	55                   	push   %ebp
    11c1:	89 e5                	mov    %esp,%ebp
    11c3:	53                   	push   %ebx
    11c4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    11c7:	0f be 11             	movsbl (%ecx),%edx
    11ca:	8d 42 d0             	lea    -0x30(%edx),%eax
    11cd:	3c 09                	cmp    $0x9,%al
    11cf:	b8 00 00 00 00       	mov    $0x0,%eax
    11d4:	77 1f                	ja     11f5 <atoi+0x35>
    11d6:	8d 76 00             	lea    0x0(%esi),%esi
    11d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    11e0:	8d 04 80             	lea    (%eax,%eax,4),%eax
    11e3:	83 c1 01             	add    $0x1,%ecx
    11e6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    11ea:	0f be 11             	movsbl (%ecx),%edx
    11ed:	8d 5a d0             	lea    -0x30(%edx),%ebx
    11f0:	80 fb 09             	cmp    $0x9,%bl
    11f3:	76 eb                	jbe    11e0 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
    11f5:	5b                   	pop    %ebx
    11f6:	5d                   	pop    %ebp
    11f7:	c3                   	ret    
    11f8:	90                   	nop
    11f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001200 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    1200:	55                   	push   %ebp
    1201:	89 e5                	mov    %esp,%ebp
    1203:	56                   	push   %esi
    1204:	53                   	push   %ebx
    1205:	8b 5d 10             	mov    0x10(%ebp),%ebx
    1208:	8b 45 08             	mov    0x8(%ebp),%eax
    120b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    120e:	85 db                	test   %ebx,%ebx
    1210:	7e 14                	jle    1226 <memmove+0x26>
    1212:	31 d2                	xor    %edx,%edx
    1214:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    1218:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    121c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    121f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    1222:	39 da                	cmp    %ebx,%edx
    1224:	75 f2                	jne    1218 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
    1226:	5b                   	pop    %ebx
    1227:	5e                   	pop    %esi
    1228:	5d                   	pop    %ebp
    1229:	c3                   	ret    

0000122a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    122a:	b8 01 00 00 00       	mov    $0x1,%eax
    122f:	cd 40                	int    $0x40
    1231:	c3                   	ret    

00001232 <exit>:
SYSCALL(exit)
    1232:	b8 02 00 00 00       	mov    $0x2,%eax
    1237:	cd 40                	int    $0x40
    1239:	c3                   	ret    

0000123a <wait>:
SYSCALL(wait)
    123a:	b8 03 00 00 00       	mov    $0x3,%eax
    123f:	cd 40                	int    $0x40
    1241:	c3                   	ret    

00001242 <pipe>:
SYSCALL(pipe)
    1242:	b8 04 00 00 00       	mov    $0x4,%eax
    1247:	cd 40                	int    $0x40
    1249:	c3                   	ret    

0000124a <read>:
SYSCALL(read)
    124a:	b8 05 00 00 00       	mov    $0x5,%eax
    124f:	cd 40                	int    $0x40
    1251:	c3                   	ret    

00001252 <write>:
SYSCALL(write)
    1252:	b8 10 00 00 00       	mov    $0x10,%eax
    1257:	cd 40                	int    $0x40
    1259:	c3                   	ret    

0000125a <close>:
SYSCALL(close)
    125a:	b8 15 00 00 00       	mov    $0x15,%eax
    125f:	cd 40                	int    $0x40
    1261:	c3                   	ret    

00001262 <kill>:
SYSCALL(kill)
    1262:	b8 06 00 00 00       	mov    $0x6,%eax
    1267:	cd 40                	int    $0x40
    1269:	c3                   	ret    

0000126a <exec>:
SYSCALL(exec)
    126a:	b8 07 00 00 00       	mov    $0x7,%eax
    126f:	cd 40                	int    $0x40
    1271:	c3                   	ret    

00001272 <open>:
SYSCALL(open)
    1272:	b8 0f 00 00 00       	mov    $0xf,%eax
    1277:	cd 40                	int    $0x40
    1279:	c3                   	ret    

0000127a <mknod>:
SYSCALL(mknod)
    127a:	b8 11 00 00 00       	mov    $0x11,%eax
    127f:	cd 40                	int    $0x40
    1281:	c3                   	ret    

00001282 <unlink>:
SYSCALL(unlink)
    1282:	b8 12 00 00 00       	mov    $0x12,%eax
    1287:	cd 40                	int    $0x40
    1289:	c3                   	ret    

0000128a <fstat>:
SYSCALL(fstat)
    128a:	b8 08 00 00 00       	mov    $0x8,%eax
    128f:	cd 40                	int    $0x40
    1291:	c3                   	ret    

00001292 <link>:
SYSCALL(link)
    1292:	b8 13 00 00 00       	mov    $0x13,%eax
    1297:	cd 40                	int    $0x40
    1299:	c3                   	ret    

0000129a <mkdir>:
SYSCALL(mkdir)
    129a:	b8 14 00 00 00       	mov    $0x14,%eax
    129f:	cd 40                	int    $0x40
    12a1:	c3                   	ret    

000012a2 <chdir>:
SYSCALL(chdir)
    12a2:	b8 09 00 00 00       	mov    $0x9,%eax
    12a7:	cd 40                	int    $0x40
    12a9:	c3                   	ret    

000012aa <dup>:
SYSCALL(dup)
    12aa:	b8 0a 00 00 00       	mov    $0xa,%eax
    12af:	cd 40                	int    $0x40
    12b1:	c3                   	ret    

000012b2 <getpid>:
SYSCALL(getpid)
    12b2:	b8 0b 00 00 00       	mov    $0xb,%eax
    12b7:	cd 40                	int    $0x40
    12b9:	c3                   	ret    

000012ba <sbrk>:
SYSCALL(sbrk)
    12ba:	b8 0c 00 00 00       	mov    $0xc,%eax
    12bf:	cd 40                	int    $0x40
    12c1:	c3                   	ret    

000012c2 <sleep>:
SYSCALL(sleep)
    12c2:	b8 0d 00 00 00       	mov    $0xd,%eax
    12c7:	cd 40                	int    $0x40
    12c9:	c3                   	ret    

000012ca <uptime>:
SYSCALL(uptime)
    12ca:	b8 0e 00 00 00       	mov    $0xe,%eax
    12cf:	cd 40                	int    $0x40
    12d1:	c3                   	ret    

000012d2 <getcwd>:
SYSCALL(getcwd)
    12d2:	b8 16 00 00 00       	mov    $0x16,%eax
    12d7:	cd 40                	int    $0x40
    12d9:	c3                   	ret    
    12da:	66 90                	xchg   %ax,%ax
    12dc:	66 90                	xchg   %ax,%ax
    12de:	66 90                	xchg   %ax,%ax

000012e0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    12e0:	55                   	push   %ebp
    12e1:	89 e5                	mov    %esp,%ebp
    12e3:	57                   	push   %edi
    12e4:	56                   	push   %esi
    12e5:	53                   	push   %ebx
    12e6:	89 c6                	mov    %eax,%esi
    12e8:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    12eb:	8b 5d 08             	mov    0x8(%ebp),%ebx
    12ee:	85 db                	test   %ebx,%ebx
    12f0:	74 7e                	je     1370 <printint+0x90>
    12f2:	89 d0                	mov    %edx,%eax
    12f4:	c1 e8 1f             	shr    $0x1f,%eax
    12f7:	84 c0                	test   %al,%al
    12f9:	74 75                	je     1370 <printint+0x90>
    neg = 1;
    x = -xx;
    12fb:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    12fd:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
    1304:	f7 d8                	neg    %eax
    1306:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    1309:	31 ff                	xor    %edi,%edi
    130b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    130e:	89 ce                	mov    %ecx,%esi
    1310:	eb 08                	jmp    131a <printint+0x3a>
    1312:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    1318:	89 cf                	mov    %ecx,%edi
    131a:	31 d2                	xor    %edx,%edx
    131c:	8d 4f 01             	lea    0x1(%edi),%ecx
    131f:	f7 f6                	div    %esi
    1321:	0f b6 92 24 17 00 00 	movzbl 0x1724(%edx),%edx
  }while((x /= base) != 0);
    1328:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
    132a:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
    132d:	75 e9                	jne    1318 <printint+0x38>
  if(neg)
    132f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    1332:	8b 75 c0             	mov    -0x40(%ebp),%esi
    1335:	85 c0                	test   %eax,%eax
    1337:	74 08                	je     1341 <printint+0x61>
    buf[i++] = '-';
    1339:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
    133e:	8d 4f 02             	lea    0x2(%edi),%ecx
    1341:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
    1345:	8d 76 00             	lea    0x0(%esi),%esi
    1348:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    134b:	83 ec 04             	sub    $0x4,%esp
    134e:	83 ef 01             	sub    $0x1,%edi
    1351:	6a 01                	push   $0x1
    1353:	53                   	push   %ebx
    1354:	56                   	push   %esi
    1355:	88 45 d7             	mov    %al,-0x29(%ebp)
    1358:	e8 f5 fe ff ff       	call   1252 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
    135d:	83 c4 10             	add    $0x10,%esp
    1360:	39 df                	cmp    %ebx,%edi
    1362:	75 e4                	jne    1348 <printint+0x68>
    putc(fd, buf[i]);
}
    1364:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1367:	5b                   	pop    %ebx
    1368:	5e                   	pop    %esi
    1369:	5f                   	pop    %edi
    136a:	5d                   	pop    %ebp
    136b:	c3                   	ret    
    136c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    1370:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
    1372:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    1379:	eb 8b                	jmp    1306 <printint+0x26>
    137b:	90                   	nop
    137c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001380 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    1380:	55                   	push   %ebp
    1381:	89 e5                	mov    %esp,%ebp
    1383:	57                   	push   %edi
    1384:	56                   	push   %esi
    1385:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1386:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    1389:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    138c:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    138f:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1392:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1395:	0f b6 1e             	movzbl (%esi),%ebx
    1398:	83 c6 01             	add    $0x1,%esi
    139b:	84 db                	test   %bl,%bl
    139d:	0f 84 b0 00 00 00    	je     1453 <printf+0xd3>
    13a3:	31 d2                	xor    %edx,%edx
    13a5:	eb 39                	jmp    13e0 <printf+0x60>
    13a7:	89 f6                	mov    %esi,%esi
    13a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    13b0:	83 f8 25             	cmp    $0x25,%eax
    13b3:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
    13b6:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    13bb:	74 18                	je     13d5 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    13bd:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    13c0:	83 ec 04             	sub    $0x4,%esp
    13c3:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    13c6:	6a 01                	push   $0x1
    13c8:	50                   	push   %eax
    13c9:	57                   	push   %edi
    13ca:	e8 83 fe ff ff       	call   1252 <write>
    13cf:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    13d2:	83 c4 10             	add    $0x10,%esp
    13d5:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    13d8:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    13dc:	84 db                	test   %bl,%bl
    13de:	74 73                	je     1453 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
    13e0:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    13e2:	0f be cb             	movsbl %bl,%ecx
    13e5:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    13e8:	74 c6                	je     13b0 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    13ea:	83 fa 25             	cmp    $0x25,%edx
    13ed:	75 e6                	jne    13d5 <printf+0x55>
      if(c == 'd'){
    13ef:	83 f8 64             	cmp    $0x64,%eax
    13f2:	0f 84 f8 00 00 00    	je     14f0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    13f8:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    13fe:	83 f9 70             	cmp    $0x70,%ecx
    1401:	74 5d                	je     1460 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1403:	83 f8 73             	cmp    $0x73,%eax
    1406:	0f 84 84 00 00 00    	je     1490 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    140c:	83 f8 63             	cmp    $0x63,%eax
    140f:	0f 84 ea 00 00 00    	je     14ff <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1415:	83 f8 25             	cmp    $0x25,%eax
    1418:	0f 84 c2 00 00 00    	je     14e0 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    141e:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1421:	83 ec 04             	sub    $0x4,%esp
    1424:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    1428:	6a 01                	push   $0x1
    142a:	50                   	push   %eax
    142b:	57                   	push   %edi
    142c:	e8 21 fe ff ff       	call   1252 <write>
    1431:	83 c4 0c             	add    $0xc,%esp
    1434:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    1437:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    143a:	6a 01                	push   $0x1
    143c:	50                   	push   %eax
    143d:	57                   	push   %edi
    143e:	83 c6 01             	add    $0x1,%esi
    1441:	e8 0c fe ff ff       	call   1252 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1446:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    144a:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    144d:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    144f:	84 db                	test   %bl,%bl
    1451:	75 8d                	jne    13e0 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    1453:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1456:	5b                   	pop    %ebx
    1457:	5e                   	pop    %esi
    1458:	5f                   	pop    %edi
    1459:	5d                   	pop    %ebp
    145a:	c3                   	ret    
    145b:	90                   	nop
    145c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    1460:	83 ec 0c             	sub    $0xc,%esp
    1463:	b9 10 00 00 00       	mov    $0x10,%ecx
    1468:	6a 00                	push   $0x0
    146a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    146d:	89 f8                	mov    %edi,%eax
    146f:	8b 13                	mov    (%ebx),%edx
    1471:	e8 6a fe ff ff       	call   12e0 <printint>
        ap++;
    1476:	89 d8                	mov    %ebx,%eax
    1478:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    147b:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
    147d:	83 c0 04             	add    $0x4,%eax
    1480:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1483:	e9 4d ff ff ff       	jmp    13d5 <printf+0x55>
    1488:	90                   	nop
    1489:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
    1490:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1493:	8b 18                	mov    (%eax),%ebx
        ap++;
    1495:	83 c0 04             	add    $0x4,%eax
    1498:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
    149b:	b8 1b 17 00 00       	mov    $0x171b,%eax
    14a0:	85 db                	test   %ebx,%ebx
    14a2:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
    14a5:	0f b6 03             	movzbl (%ebx),%eax
    14a8:	84 c0                	test   %al,%al
    14aa:	74 23                	je     14cf <printf+0x14f>
    14ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    14b0:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    14b3:	8d 45 e3             	lea    -0x1d(%ebp),%eax
    14b6:	83 ec 04             	sub    $0x4,%esp
    14b9:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
    14bb:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    14be:	50                   	push   %eax
    14bf:	57                   	push   %edi
    14c0:	e8 8d fd ff ff       	call   1252 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
    14c5:	0f b6 03             	movzbl (%ebx),%eax
    14c8:	83 c4 10             	add    $0x10,%esp
    14cb:	84 c0                	test   %al,%al
    14cd:	75 e1                	jne    14b0 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    14cf:	31 d2                	xor    %edx,%edx
    14d1:	e9 ff fe ff ff       	jmp    13d5 <printf+0x55>
    14d6:	8d 76 00             	lea    0x0(%esi),%esi
    14d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    14e0:	83 ec 04             	sub    $0x4,%esp
    14e3:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    14e6:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    14e9:	6a 01                	push   $0x1
    14eb:	e9 4c ff ff ff       	jmp    143c <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    14f0:	83 ec 0c             	sub    $0xc,%esp
    14f3:	b9 0a 00 00 00       	mov    $0xa,%ecx
    14f8:	6a 01                	push   $0x1
    14fa:	e9 6b ff ff ff       	jmp    146a <printf+0xea>
    14ff:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1502:	83 ec 04             	sub    $0x4,%esp
    1505:	8b 03                	mov    (%ebx),%eax
    1507:	6a 01                	push   $0x1
    1509:	88 45 e4             	mov    %al,-0x1c(%ebp)
    150c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    150f:	50                   	push   %eax
    1510:	57                   	push   %edi
    1511:	e8 3c fd ff ff       	call   1252 <write>
    1516:	e9 5b ff ff ff       	jmp    1476 <printf+0xf6>
    151b:	66 90                	xchg   %ax,%ax
    151d:	66 90                	xchg   %ax,%ax
    151f:	90                   	nop

00001520 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1520:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1521:	a1 34 1b 00 00       	mov    0x1b34,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
    1526:	89 e5                	mov    %esp,%ebp
    1528:	57                   	push   %edi
    1529:	56                   	push   %esi
    152a:	53                   	push   %ebx
    152b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    152e:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
    1530:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1533:	39 c8                	cmp    %ecx,%eax
    1535:	73 19                	jae    1550 <free+0x30>
    1537:	89 f6                	mov    %esi,%esi
    1539:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    1540:	39 d1                	cmp    %edx,%ecx
    1542:	72 1c                	jb     1560 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1544:	39 d0                	cmp    %edx,%eax
    1546:	73 18                	jae    1560 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
    1548:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    154a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    154c:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    154e:	72 f0                	jb     1540 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1550:	39 d0                	cmp    %edx,%eax
    1552:	72 f4                	jb     1548 <free+0x28>
    1554:	39 d1                	cmp    %edx,%ecx
    1556:	73 f0                	jae    1548 <free+0x28>
    1558:	90                   	nop
    1559:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
    1560:	8b 73 fc             	mov    -0x4(%ebx),%esi
    1563:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    1566:	39 d7                	cmp    %edx,%edi
    1568:	74 19                	je     1583 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    156a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    156d:	8b 50 04             	mov    0x4(%eax),%edx
    1570:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1573:	39 f1                	cmp    %esi,%ecx
    1575:	74 23                	je     159a <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    1577:	89 08                	mov    %ecx,(%eax)
  freep = p;
    1579:	a3 34 1b 00 00       	mov    %eax,0x1b34
}
    157e:	5b                   	pop    %ebx
    157f:	5e                   	pop    %esi
    1580:	5f                   	pop    %edi
    1581:	5d                   	pop    %ebp
    1582:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
    1583:	03 72 04             	add    0x4(%edx),%esi
    1586:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1589:	8b 10                	mov    (%eax),%edx
    158b:	8b 12                	mov    (%edx),%edx
    158d:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    1590:	8b 50 04             	mov    0x4(%eax),%edx
    1593:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1596:	39 f1                	cmp    %esi,%ecx
    1598:	75 dd                	jne    1577 <free+0x57>
    p->s.size += bp->s.size;
    159a:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
    159d:	a3 34 1b 00 00       	mov    %eax,0x1b34
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
    15a2:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    15a5:	8b 53 f8             	mov    -0x8(%ebx),%edx
    15a8:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
    15aa:	5b                   	pop    %ebx
    15ab:	5e                   	pop    %esi
    15ac:	5f                   	pop    %edi
    15ad:	5d                   	pop    %ebp
    15ae:	c3                   	ret    
    15af:	90                   	nop

000015b0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    15b0:	55                   	push   %ebp
    15b1:	89 e5                	mov    %esp,%ebp
    15b3:	57                   	push   %edi
    15b4:	56                   	push   %esi
    15b5:	53                   	push   %ebx
    15b6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    15b9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    15bc:	8b 15 34 1b 00 00    	mov    0x1b34,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    15c2:	8d 78 07             	lea    0x7(%eax),%edi
    15c5:	c1 ef 03             	shr    $0x3,%edi
    15c8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    15cb:	85 d2                	test   %edx,%edx
    15cd:	0f 84 a3 00 00 00    	je     1676 <malloc+0xc6>
    15d3:	8b 02                	mov    (%edx),%eax
    15d5:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    15d8:	39 cf                	cmp    %ecx,%edi
    15da:	76 74                	jbe    1650 <malloc+0xa0>
    15dc:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    15e2:	be 00 10 00 00       	mov    $0x1000,%esi
    15e7:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
    15ee:	0f 43 f7             	cmovae %edi,%esi
    15f1:	ba 00 80 00 00       	mov    $0x8000,%edx
    15f6:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
    15fc:	0f 46 da             	cmovbe %edx,%ebx
    15ff:	eb 10                	jmp    1611 <malloc+0x61>
    1601:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1608:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    160a:	8b 48 04             	mov    0x4(%eax),%ecx
    160d:	39 cf                	cmp    %ecx,%edi
    160f:	76 3f                	jbe    1650 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1611:	39 05 34 1b 00 00    	cmp    %eax,0x1b34
    1617:	89 c2                	mov    %eax,%edx
    1619:	75 ed                	jne    1608 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
    161b:	83 ec 0c             	sub    $0xc,%esp
    161e:	53                   	push   %ebx
    161f:	e8 96 fc ff ff       	call   12ba <sbrk>
  if(p == (char*)-1)
    1624:	83 c4 10             	add    $0x10,%esp
    1627:	83 f8 ff             	cmp    $0xffffffff,%eax
    162a:	74 1c                	je     1648 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
    162c:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
    162f:	83 ec 0c             	sub    $0xc,%esp
    1632:	83 c0 08             	add    $0x8,%eax
    1635:	50                   	push   %eax
    1636:	e8 e5 fe ff ff       	call   1520 <free>
  return freep;
    163b:	8b 15 34 1b 00 00    	mov    0x1b34,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
    1641:	83 c4 10             	add    $0x10,%esp
    1644:	85 d2                	test   %edx,%edx
    1646:	75 c0                	jne    1608 <malloc+0x58>
        return 0;
    1648:	31 c0                	xor    %eax,%eax
    164a:	eb 1c                	jmp    1668 <malloc+0xb8>
    164c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
    1650:	39 cf                	cmp    %ecx,%edi
    1652:	74 1c                	je     1670 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
    1654:	29 f9                	sub    %edi,%ecx
    1656:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    1659:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    165c:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
    165f:	89 15 34 1b 00 00    	mov    %edx,0x1b34
      return (void*)(p + 1);
    1665:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
    1668:	8d 65 f4             	lea    -0xc(%ebp),%esp
    166b:	5b                   	pop    %ebx
    166c:	5e                   	pop    %esi
    166d:	5f                   	pop    %edi
    166e:	5d                   	pop    %ebp
    166f:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
    1670:	8b 08                	mov    (%eax),%ecx
    1672:	89 0a                	mov    %ecx,(%edx)
    1674:	eb e9                	jmp    165f <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    1676:	c7 05 34 1b 00 00 38 	movl   $0x1b38,0x1b34
    167d:	1b 00 00 
    1680:	c7 05 38 1b 00 00 38 	movl   $0x1b38,0x1b38
    1687:	1b 00 00 
    base.s.size = 0;
    168a:	b8 38 1b 00 00       	mov    $0x1b38,%eax
    168f:	c7 05 3c 1b 00 00 00 	movl   $0x0,0x1b3c
    1696:	00 00 00 
    1699:	e9 3e ff ff ff       	jmp    15dc <malloc+0x2c>
