
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
  19:	8b 79 04             	mov    0x4(%ecx),%edi
  int i;

  if(argc < 2){
  1c:	c7 85 e0 fd ff ff 01 	movl   $0x1,-0x220(%ebp)
  23:	00 00 00 
  return b;
}

int
main(int argc, char *argv[])
{
  26:	89 bd cc fd ff ff    	mov    %edi,-0x234(%ebp)
  2c:	83 c7 04             	add    $0x4,%edi
  int i;

  if(argc < 2){
  2f:	83 f8 01             	cmp    $0x1,%eax
  32:	89 bd e4 fd ff ff    	mov    %edi,-0x21c(%ebp)
  return b;
}

int
main(int argc, char *argv[])
{
  38:	89 85 d4 fd ff ff    	mov    %eax,-0x22c(%ebp)
  3e:	8d bd e8 fd ff ff    	lea    -0x218(%ebp),%edi
  int i;

  if(argc < 2){
  44:	0f 8e 11 03 00 00    	jle    35b <main+0x35b>
  4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(2, "Usage: mkdir files...\n");
    exit();
  }

  for(i = 1; i < argc; i++){
    if(mkdir(argv[i]) < 0){
  50:	8b 85 e4 fd ff ff    	mov    -0x21c(%ebp),%eax
  56:	83 ec 0c             	sub    $0xc,%esp
  59:	ff 30                	pushl  (%eax)
  5b:	e8 0a 06 00 00       	call   66a <mkdir>
  60:	83 c4 10             	add    $0x10,%esp
  63:	85 c0                	test   %eax,%eax
  65:	0f 88 b8 02 00 00    	js     323 <main+0x323>
      printf(2, "mkdir: %s failed to create\n", argv[i]);
      break;
    }
    char *tem=malloc(100);
  6b:	83 ec 0c             	sub    $0xc,%esp
  6e:	6a 64                	push   $0x64
  70:	e8 0b 09 00 00       	call   980 <malloc>
    memset(tem,0,sizeof tem);
  75:	83 c4 0c             	add    $0xc,%esp
  for(i = 1; i < argc; i++){
    if(mkdir(argv[i]) < 0){
      printf(2, "mkdir: %s failed to create\n", argv[i]);
      break;
    }
    char *tem=malloc(100);
  78:	89 c3                	mov    %eax,%ebx
    memset(tem,0,sizeof tem);
  7a:	6a 04                	push   $0x4
  7c:	6a 00                	push   $0x0
  7e:	50                   	push   %eax
  7f:	e8 ec 03 00 00       	call   470 <memset>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
  84:	83 c4 10             	add    $0x10,%esp
  87:	80 3b 00             	cmpb   $0x0,(%ebx)
      printf(2, "mkdir: %s failed to create\n", argv[i]);
      break;
    }
    char *tem=malloc(100);
    memset(tem,0,sizeof tem);
    strcat(tem,argv[i]);
  8a:	8b 85 e4 fd ff ff    	mov    -0x21c(%ebp),%eax
  90:	8b 08                	mov    (%eax),%ecx

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
  92:	89 d8                	mov    %ebx,%eax
  94:	74 23                	je     b9 <main+0xb9>
  96:	8d 76 00             	lea    0x0(%esi),%esi
  99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  a0:	83 c0 01             	add    $0x1,%eax
  a3:	80 38 00             	cmpb   $0x0,(%eax)
  a6:	75 f8                	jne    a0 <main+0xa0>
  while (*s2) *s1++ = *s2++;
  a8:	0f b6 11             	movzbl (%ecx),%edx
  ab:	84 d2                	test   %dl,%dl
  ad:	74 11                	je     c0 <main+0xc0>
  af:	90                   	nop
  b0:	83 c0 01             	add    $0x1,%eax
  b3:	83 c1 01             	add    $0x1,%ecx
  b6:	88 50 ff             	mov    %dl,-0x1(%eax)
  b9:	0f b6 11             	movzbl (%ecx),%edx
  bc:	84 d2                	test   %dl,%dl
  be:	75 f0                	jne    b0 <main+0xb0>
  *s1 = 0;
  c0:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
  c3:	80 3b 00             	cmpb   $0x0,(%ebx)
  c6:	89 d8                	mov    %ebx,%eax
  c8:	74 0e                	je     d8 <main+0xd8>
  ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  d0:	83 c0 01             	add    $0x1,%eax
  d3:	80 38 00             	cmpb   $0x0,(%eax)
  d6:	75 f8                	jne    d0 <main+0xd0>
  d8:	b9 2f 00 00 00       	mov    $0x2f,%ecx
  dd:	ba 70 0a 00 00       	mov    $0xa70,%edx
  e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  while (*s2) *s1++ = *s2++;
  e8:	83 c0 01             	add    $0x1,%eax
  eb:	83 c2 01             	add    $0x1,%edx
  ee:	88 48 ff             	mov    %cl,-0x1(%eax)
  f1:	0f b6 0a             	movzbl (%edx),%ecx
  f4:	84 c9                	test   %cl,%cl
  f6:	75 f0                	jne    e8 <main+0xe8>
    }
    char *tem=malloc(100);
    memset(tem,0,sizeof tem);
    strcat(tem,argv[i]);
    strcat(tem,"/.yuhuu");
    int foutput=open(tem, O_CREATE | O_RDWR);
  f8:	83 ec 08             	sub    $0x8,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
  fb:	c6 00 00             	movb   $0x0,(%eax)
    }
    char *tem=malloc(100);
    memset(tem,0,sizeof tem);
    strcat(tem,argv[i]);
    strcat(tem,"/.yuhuu");
    int foutput=open(tem, O_CREATE | O_RDWR);
  fe:	68 02 02 00 00       	push   $0x202
 103:	53                   	push   %ebx
 104:	e8 39 05 00 00       	call   642 <open>
 109:	89 c6                	mov    %eax,%esi
    if(*argv[i]=='/'){
 10b:	8b 85 e4 fd ff ff    	mov    -0x21c(%ebp),%eax
 111:	83 c4 10             	add    $0x10,%esp
 114:	8b 00                	mov    (%eax),%eax
 116:	80 38 2f             	cmpb   $0x2f,(%eax)
 119:	0f 84 d9 01 00 00    	je     2f8 <main+0x2f8>
      write(foutput,argv[i],strlen(argv[i]));
      close(foutput);
      continue;
    }
    int finput,fd;
    if((finput = open(".yuhuu", O_RDWR)) < 0){
 11f:	83 ec 08             	sub    $0x8,%esp
 122:	6a 02                	push   $0x2
 124:	68 71 0a 00 00       	push   $0xa71
 129:	e8 14 05 00 00       	call   642 <open>
 12e:	83 c4 10             	add    $0x10,%esp
 131:	85 c0                	test   %eax,%eax
 133:	89 85 dc fd ff ff    	mov    %eax,-0x224(%ebp)
 139:	0f 88 01 02 00 00    	js     340 <main+0x340>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
 13f:	80 3b 00             	cmpb   $0x0,(%ebx)
    int finput,fd;
    if((finput = open(".yuhuu", O_RDWR)) < 0){
      printf(1, "cp: cannot open %s\n", argv[2]);
      exit();
    }
    strcat(tem,argv[i]);
 142:	8b 85 e4 fd ff ff    	mov    -0x21c(%ebp),%eax
 148:	8b 08                	mov    (%eax),%ecx

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
 14a:	89 d8                	mov    %ebx,%eax
 14c:	74 1b                	je     169 <main+0x169>
 14e:	66 90                	xchg   %ax,%ax
 150:	83 c0 01             	add    $0x1,%eax
 153:	80 38 00             	cmpb   $0x0,(%eax)
 156:	75 f8                	jne    150 <main+0x150>
  while (*s2) *s1++ = *s2++;
 158:	0f b6 11             	movzbl (%ecx),%edx
 15b:	84 d2                	test   %dl,%dl
 15d:	74 11                	je     170 <main+0x170>
 15f:	90                   	nop
 160:	83 c0 01             	add    $0x1,%eax
 163:	83 c1 01             	add    $0x1,%ecx
 166:	88 50 ff             	mov    %dl,-0x1(%eax)
 169:	0f b6 11             	movzbl (%ecx),%edx
 16c:	84 d2                	test   %dl,%dl
 16e:	75 f0                	jne    160 <main+0x160>
  *s1 = 0;
 170:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
 173:	80 3b 00             	cmpb   $0x0,(%ebx)
 176:	89 d8                	mov    %ebx,%eax
 178:	74 0e                	je     188 <main+0x188>
 17a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 180:	83 c0 01             	add    $0x1,%eax
 183:	80 38 00             	cmpb   $0x0,(%eax)
 186:	75 f8                	jne    180 <main+0x180>
 188:	b9 2f 00 00 00       	mov    $0x2f,%ecx
 18d:	ba 70 0a 00 00       	mov    $0xa70,%edx
 192:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  while (*s2) *s1++ = *s2++;
 198:	83 c0 01             	add    $0x1,%eax
 19b:	83 c2 01             	add    $0x1,%edx
 19e:	88 48 ff             	mov    %cl,-0x1(%eax)
 1a1:	0f b6 0a             	movzbl (%edx),%ecx
 1a4:	84 c9                	test   %cl,%cl
 1a6:	75 f0                	jne    198 <main+0x198>
      printf(1, "cp: cannot open %s\n", argv[2]);
      exit();
    }
    strcat(tem,argv[i]);
    strcat(tem,"/.yuhuu");
    if((fd = open(tem, 0)) < 0){
 1a8:	83 ec 08             	sub    $0x8,%esp
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
  *s1 = 0;
 1ab:	c6 00 00             	movb   $0x0,(%eax)
      printf(1, "cp: cannot open %s\n", argv[2]);
      exit();
    }
    strcat(tem,argv[i]);
    strcat(tem,"/.yuhuu");
    if((fd = open(tem, 0)) < 0){
 1ae:	6a 00                	push   $0x0
 1b0:	53                   	push   %ebx
 1b1:	e8 8c 04 00 00       	call   642 <open>
 1b6:	83 c4 10             	add    $0x10,%esp
 1b9:	85 c0                	test   %eax,%eax
 1bb:	89 85 d8 fd ff ff    	mov    %eax,-0x228(%ebp)
 1c1:	78 65                	js     228 <main+0x228>
      strcat(tem,"/");
      write(foutput,tem,strlen(tem));
      close(foutput);
    }
    else{
      printf(1, "cp: file %s already exist \n", argv[2]);
 1c3:	8b 85 cc fd ff ff    	mov    -0x234(%ebp),%eax
 1c9:	83 ec 04             	sub    $0x4,%esp
 1cc:	ff 70 08             	pushl  0x8(%eax)
 1cf:	68 bf 0a 00 00       	push   $0xabf
 1d4:	6a 01                	push   $0x1
 1d6:	e8 75 05 00 00       	call   750 <printf>
 1db:	83 c4 10             	add    $0x10,%esp
 1de:	66 90                	xchg   %ax,%ax
    }
    close(fd);
 1e0:	83 ec 0c             	sub    $0xc,%esp
 1e3:	ff b5 d8 fd ff ff    	pushl  -0x228(%ebp)
 1e9:	e8 3c 04 00 00       	call   62a <close>
    close(finput);
 1ee:	58                   	pop    %eax
 1ef:	ff b5 dc fd ff ff    	pushl  -0x224(%ebp)
 1f5:	e8 30 04 00 00       	call   62a <close>
 1fa:	83 c4 10             	add    $0x10,%esp
  if(argc < 2){
    printf(2, "Usage: mkdir files...\n");
    exit();
  }

  for(i = 1; i < argc; i++){
 1fd:	83 85 e0 fd ff ff 01 	addl   $0x1,-0x220(%ebp)
 204:	83 85 e4 fd ff ff 04 	addl   $0x4,-0x21c(%ebp)
 20b:	8b 85 e0 fd ff ff    	mov    -0x220(%ebp),%eax
 211:	39 85 d4 fd ff ff    	cmp    %eax,-0x22c(%ebp)
 217:	0f 85 33 fe ff ff    	jne    50 <main+0x50>
    }
    close(fd);
    close(finput);
  }

  exit();
 21d:	e8 e0 03 00 00       	call   602 <exit>
 222:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 228:	89 9d d0 fd ff ff    	mov    %ebx,-0x230(%ebp)
 22e:	8b 9d dc fd ff ff    	mov    -0x224(%ebp),%ebx
 234:	eb 18                	jmp    24e <main+0x24e>
 236:	8d 76 00             	lea    0x0(%esi),%esi
 239:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    strcat(tem,"/.yuhuu");
    if((fd = open(tem, 0)) < 0){
      int n;
      char buf[512];
      while((n = read(finput, buf, sizeof(buf))) > 0) {
        write(foutput,buf,n);
 240:	83 ec 04             	sub    $0x4,%esp
 243:	50                   	push   %eax
 244:	57                   	push   %edi
 245:	56                   	push   %esi
 246:	e8 d7 03 00 00       	call   622 <write>
 24b:	83 c4 10             	add    $0x10,%esp
    strcat(tem,argv[i]);
    strcat(tem,"/.yuhuu");
    if((fd = open(tem, 0)) < 0){
      int n;
      char buf[512];
      while((n = read(finput, buf, sizeof(buf))) > 0) {
 24e:	83 ec 04             	sub    $0x4,%esp
 251:	68 00 02 00 00       	push   $0x200
 256:	57                   	push   %edi
 257:	53                   	push   %ebx
 258:	e8 bd 03 00 00       	call   61a <read>
 25d:	83 c4 10             	add    $0x10,%esp
 260:	85 c0                	test   %eax,%eax
 262:	7f dc                	jg     240 <main+0x240>
 264:	8b 9d d0 fd ff ff    	mov    -0x230(%ebp),%ebx
        write(foutput,buf,n);
      }
      memset(tem,0,sizeof tem);
 26a:	83 ec 04             	sub    $0x4,%esp
 26d:	6a 04                	push   $0x4
 26f:	6a 00                	push   $0x0
 271:	53                   	push   %ebx
 272:	e8 f9 01 00 00       	call   470 <memset>

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
 277:	83 c4 10             	add    $0x10,%esp
 27a:	80 3b 00             	cmpb   $0x0,(%ebx)
      char buf[512];
      while((n = read(finput, buf, sizeof(buf))) > 0) {
        write(foutput,buf,n);
      }
      memset(tem,0,sizeof tem);
      strcat(tem,argv[i]);
 27d:	8b 85 e4 fd ff ff    	mov    -0x21c(%ebp),%eax
 283:	8b 08                	mov    (%eax),%ecx

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
 285:	89 d8                	mov    %ebx,%eax
 287:	74 20                	je     2a9 <main+0x2a9>
 289:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 290:	83 c0 01             	add    $0x1,%eax
 293:	80 38 00             	cmpb   $0x0,(%eax)
 296:	75 f8                	jne    290 <main+0x290>
  while (*s2) *s1++ = *s2++;
 298:	0f b6 11             	movzbl (%ecx),%edx
 29b:	84 d2                	test   %dl,%dl
 29d:	74 11                	je     2b0 <main+0x2b0>
 29f:	90                   	nop
 2a0:	83 c0 01             	add    $0x1,%eax
 2a3:	83 c1 01             	add    $0x1,%ecx
 2a6:	88 50 ff             	mov    %dl,-0x1(%eax)
 2a9:	0f b6 11             	movzbl (%ecx),%edx
 2ac:	84 d2                	test   %dl,%dl
 2ae:	75 f0                	jne    2a0 <main+0x2a0>
  *s1 = 0;
 2b0:	c6 00 00             	movb   $0x0,(%eax)

char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
 2b3:	80 3b 00             	cmpb   $0x0,(%ebx)
 2b6:	89 d8                	mov    %ebx,%eax
 2b8:	74 0e                	je     2c8 <main+0x2c8>
 2ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2c0:	83 c0 01             	add    $0x1,%eax
 2c3:	80 38 00             	cmpb   $0x0,(%eax)
 2c6:	75 f8                	jne    2c0 <main+0x2c0>
        write(foutput,buf,n);
      }
      memset(tem,0,sizeof tem);
      strcat(tem,argv[i]);
      strcat(tem,"/");
      write(foutput,tem,strlen(tem));
 2c8:	83 ec 0c             	sub    $0xc,%esp
char* strcat(char* s1, const char* s2)
{
  char* b = s1;

  while (*s1) ++s1;
  while (*s2) *s1++ = *s2++;
 2cb:	c6 00 2f             	movb   $0x2f,(%eax)
  *s1 = 0;
 2ce:	c6 40 01 00          	movb   $0x0,0x1(%eax)
        write(foutput,buf,n);
      }
      memset(tem,0,sizeof tem);
      strcat(tem,argv[i]);
      strcat(tem,"/");
      write(foutput,tem,strlen(tem));
 2d2:	53                   	push   %ebx
 2d3:	e8 68 01 00 00       	call   440 <strlen>
 2d8:	83 c4 0c             	add    $0xc,%esp
 2db:	50                   	push   %eax
 2dc:	53                   	push   %ebx
 2dd:	56                   	push   %esi
 2de:	e8 3f 03 00 00       	call   622 <write>
      close(foutput);
 2e3:	89 34 24             	mov    %esi,(%esp)
 2e6:	e8 3f 03 00 00       	call   62a <close>
 2eb:	83 c4 10             	add    $0x10,%esp
 2ee:	e9 ed fe ff ff       	jmp    1e0 <main+0x1e0>
 2f3:	90                   	nop
 2f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    memset(tem,0,sizeof tem);
    strcat(tem,argv[i]);
    strcat(tem,"/.yuhuu");
    int foutput=open(tem, O_CREATE | O_RDWR);
    if(*argv[i]=='/'){
      write(foutput,argv[i],strlen(argv[i]));
 2f8:	83 ec 0c             	sub    $0xc,%esp
 2fb:	50                   	push   %eax
 2fc:	e8 3f 01 00 00       	call   440 <strlen>
 301:	83 c4 0c             	add    $0xc,%esp
 304:	50                   	push   %eax
 305:	8b 85 e4 fd ff ff    	mov    -0x21c(%ebp),%eax
 30b:	ff 30                	pushl  (%eax)
 30d:	56                   	push   %esi
 30e:	e8 0f 03 00 00       	call   622 <write>
      close(foutput);
 313:	89 34 24             	mov    %esi,(%esp)
 316:	e8 0f 03 00 00       	call   62a <close>
      continue;
 31b:	83 c4 10             	add    $0x10,%esp
 31e:	e9 da fe ff ff       	jmp    1fd <main+0x1fd>
    exit();
  }

  for(i = 1; i < argc; i++){
    if(mkdir(argv[i]) < 0){
      printf(2, "mkdir: %s failed to create\n", argv[i]);
 323:	8b 85 e4 fd ff ff    	mov    -0x21c(%ebp),%eax
 329:	51                   	push   %ecx
 32a:	ff 30                	pushl  (%eax)
 32c:	68 8f 0a 00 00       	push   $0xa8f
 331:	6a 02                	push   $0x2
 333:	e8 18 04 00 00       	call   750 <printf>
      break;
 338:	83 c4 10             	add    $0x10,%esp
 33b:	e9 dd fe ff ff       	jmp    21d <main+0x21d>
      close(foutput);
      continue;
    }
    int finput,fd;
    if((finput = open(".yuhuu", O_RDWR)) < 0){
      printf(1, "cp: cannot open %s\n", argv[2]);
 340:	8b 85 cc fd ff ff    	mov    -0x234(%ebp),%eax
 346:	52                   	push   %edx
 347:	ff 70 08             	pushl  0x8(%eax)
 34a:	68 ab 0a 00 00       	push   $0xaab
 34f:	6a 01                	push   $0x1
 351:	e8 fa 03 00 00       	call   750 <printf>
      exit();
 356:	e8 a7 02 00 00       	call   602 <exit>
main(int argc, char *argv[])
{
  int i;

  if(argc < 2){
    printf(2, "Usage: mkdir files...\n");
 35b:	53                   	push   %ebx
 35c:	53                   	push   %ebx
 35d:	68 78 0a 00 00       	push   $0xa78
 362:	6a 02                	push   $0x2
 364:	e8 e7 03 00 00       	call   750 <printf>
    exit();
 369:	e8 94 02 00 00       	call   602 <exit>
 36e:	66 90                	xchg   %ax,%ax

00000370 <strcat>:
#include "fcntl.h"
#include <assert.h>
#include <stdarg.h>

char* strcat(char* s1, const char* s2)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	53                   	push   %ebx
 374:	8b 45 08             	mov    0x8(%ebp),%eax
 377:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char* b = s1;

  while (*s1) ++s1;
 37a:	80 38 00             	cmpb   $0x0,(%eax)
 37d:	89 c2                	mov    %eax,%edx
 37f:	74 28                	je     3a9 <strcat+0x39>
 381:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 388:	83 c2 01             	add    $0x1,%edx
 38b:	80 3a 00             	cmpb   $0x0,(%edx)
 38e:	75 f8                	jne    388 <strcat+0x18>
  while (*s2) *s1++ = *s2++;
 390:	0f b6 0b             	movzbl (%ebx),%ecx
 393:	84 c9                	test   %cl,%cl
 395:	74 19                	je     3b0 <strcat+0x40>
 397:	89 f6                	mov    %esi,%esi
 399:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 3a0:	83 c2 01             	add    $0x1,%edx
 3a3:	83 c3 01             	add    $0x1,%ebx
 3a6:	88 4a ff             	mov    %cl,-0x1(%edx)
 3a9:	0f b6 0b             	movzbl (%ebx),%ecx
 3ac:	84 c9                	test   %cl,%cl
 3ae:	75 f0                	jne    3a0 <strcat+0x30>
  *s1 = 0;
 3b0:	c6 02 00             	movb   $0x0,(%edx)

  return b;
}
 3b3:	5b                   	pop    %ebx
 3b4:	5d                   	pop    %ebp
 3b5:	c3                   	ret    
 3b6:	66 90                	xchg   %ax,%ax
 3b8:	66 90                	xchg   %ax,%ax
 3ba:	66 90                	xchg   %ax,%ax
 3bc:	66 90                	xchg   %ax,%ax
 3be:	66 90                	xchg   %ax,%ax

000003c0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	53                   	push   %ebx
 3c4:	8b 45 08             	mov    0x8(%ebp),%eax
 3c7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 3ca:	89 c2                	mov    %eax,%edx
 3cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3d0:	83 c1 01             	add    $0x1,%ecx
 3d3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 3d7:	83 c2 01             	add    $0x1,%edx
 3da:	84 db                	test   %bl,%bl
 3dc:	88 5a ff             	mov    %bl,-0x1(%edx)
 3df:	75 ef                	jne    3d0 <strcpy+0x10>
    ;
  return os;
}
 3e1:	5b                   	pop    %ebx
 3e2:	5d                   	pop    %ebp
 3e3:	c3                   	ret    
 3e4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 3ea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000003f0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	56                   	push   %esi
 3f4:	53                   	push   %ebx
 3f5:	8b 55 08             	mov    0x8(%ebp),%edx
 3f8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 3fb:	0f b6 02             	movzbl (%edx),%eax
 3fe:	0f b6 19             	movzbl (%ecx),%ebx
 401:	84 c0                	test   %al,%al
 403:	75 1e                	jne    423 <strcmp+0x33>
 405:	eb 29                	jmp    430 <strcmp+0x40>
 407:	89 f6                	mov    %esi,%esi
 409:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 410:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 413:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 416:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 419:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 41d:	84 c0                	test   %al,%al
 41f:	74 0f                	je     430 <strcmp+0x40>
 421:	89 f1                	mov    %esi,%ecx
 423:	38 d8                	cmp    %bl,%al
 425:	74 e9                	je     410 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
 427:	29 d8                	sub    %ebx,%eax
}
 429:	5b                   	pop    %ebx
 42a:	5e                   	pop    %esi
 42b:	5d                   	pop    %ebp
 42c:	c3                   	ret    
 42d:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 430:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 432:	29 d8                	sub    %ebx,%eax
}
 434:	5b                   	pop    %ebx
 435:	5e                   	pop    %esi
 436:	5d                   	pop    %ebp
 437:	c3                   	ret    
 438:	90                   	nop
 439:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000440 <strlen>:

uint
strlen(char *s)
{
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 446:	80 39 00             	cmpb   $0x0,(%ecx)
 449:	74 12                	je     45d <strlen+0x1d>
 44b:	31 d2                	xor    %edx,%edx
 44d:	8d 76 00             	lea    0x0(%esi),%esi
 450:	83 c2 01             	add    $0x1,%edx
 453:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 457:	89 d0                	mov    %edx,%eax
 459:	75 f5                	jne    450 <strlen+0x10>
    ;
  return n;
}
 45b:	5d                   	pop    %ebp
 45c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 45d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 45f:	5d                   	pop    %ebp
 460:	c3                   	ret    
 461:	eb 0d                	jmp    470 <memset>
 463:	90                   	nop
 464:	90                   	nop
 465:	90                   	nop
 466:	90                   	nop
 467:	90                   	nop
 468:	90                   	nop
 469:	90                   	nop
 46a:	90                   	nop
 46b:	90                   	nop
 46c:	90                   	nop
 46d:	90                   	nop
 46e:	90                   	nop
 46f:	90                   	nop

00000470 <memset>:

void*
memset(void *dst, int c, uint n)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	57                   	push   %edi
 474:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 477:	8b 4d 10             	mov    0x10(%ebp),%ecx
 47a:	8b 45 0c             	mov    0xc(%ebp),%eax
 47d:	89 d7                	mov    %edx,%edi
 47f:	fc                   	cld    
 480:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 482:	89 d0                	mov    %edx,%eax
 484:	5f                   	pop    %edi
 485:	5d                   	pop    %ebp
 486:	c3                   	ret    
 487:	89 f6                	mov    %esi,%esi
 489:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000490 <strchr>:

char*
strchr(const char *s, char c)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	53                   	push   %ebx
 494:	8b 45 08             	mov    0x8(%ebp),%eax
 497:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 49a:	0f b6 10             	movzbl (%eax),%edx
 49d:	84 d2                	test   %dl,%dl
 49f:	74 1d                	je     4be <strchr+0x2e>
    if(*s == c)
 4a1:	38 d3                	cmp    %dl,%bl
 4a3:	89 d9                	mov    %ebx,%ecx
 4a5:	75 0d                	jne    4b4 <strchr+0x24>
 4a7:	eb 17                	jmp    4c0 <strchr+0x30>
 4a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4b0:	38 ca                	cmp    %cl,%dl
 4b2:	74 0c                	je     4c0 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 4b4:	83 c0 01             	add    $0x1,%eax
 4b7:	0f b6 10             	movzbl (%eax),%edx
 4ba:	84 d2                	test   %dl,%dl
 4bc:	75 f2                	jne    4b0 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 4be:	31 c0                	xor    %eax,%eax
}
 4c0:	5b                   	pop    %ebx
 4c1:	5d                   	pop    %ebp
 4c2:	c3                   	ret    
 4c3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 4c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004d0 <gets>:

char*
gets(char *buf, int max)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	57                   	push   %edi
 4d4:	56                   	push   %esi
 4d5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 4d6:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
 4d8:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
 4db:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 4de:	eb 29                	jmp    509 <gets+0x39>
    cc = read(0, &c, 1);
 4e0:	83 ec 04             	sub    $0x4,%esp
 4e3:	6a 01                	push   $0x1
 4e5:	57                   	push   %edi
 4e6:	6a 00                	push   $0x0
 4e8:	e8 2d 01 00 00       	call   61a <read>
    if(cc < 1)
 4ed:	83 c4 10             	add    $0x10,%esp
 4f0:	85 c0                	test   %eax,%eax
 4f2:	7e 1d                	jle    511 <gets+0x41>
      break;
    buf[i++] = c;
 4f4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 4f8:	8b 55 08             	mov    0x8(%ebp),%edx
 4fb:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
 4fd:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 4ff:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 503:	74 1b                	je     520 <gets+0x50>
 505:	3c 0d                	cmp    $0xd,%al
 507:	74 17                	je     520 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 509:	8d 5e 01             	lea    0x1(%esi),%ebx
 50c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 50f:	7c cf                	jl     4e0 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 511:	8b 45 08             	mov    0x8(%ebp),%eax
 514:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 518:	8d 65 f4             	lea    -0xc(%ebp),%esp
 51b:	5b                   	pop    %ebx
 51c:	5e                   	pop    %esi
 51d:	5f                   	pop    %edi
 51e:	5d                   	pop    %ebp
 51f:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 520:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 523:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 525:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 529:	8d 65 f4             	lea    -0xc(%ebp),%esp
 52c:	5b                   	pop    %ebx
 52d:	5e                   	pop    %esi
 52e:	5f                   	pop    %edi
 52f:	5d                   	pop    %ebp
 530:	c3                   	ret    
 531:	eb 0d                	jmp    540 <stat>
 533:	90                   	nop
 534:	90                   	nop
 535:	90                   	nop
 536:	90                   	nop
 537:	90                   	nop
 538:	90                   	nop
 539:	90                   	nop
 53a:	90                   	nop
 53b:	90                   	nop
 53c:	90                   	nop
 53d:	90                   	nop
 53e:	90                   	nop
 53f:	90                   	nop

00000540 <stat>:

int
stat(char *n, struct stat *st)
{
 540:	55                   	push   %ebp
 541:	89 e5                	mov    %esp,%ebp
 543:	56                   	push   %esi
 544:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 545:	83 ec 08             	sub    $0x8,%esp
 548:	6a 00                	push   $0x0
 54a:	ff 75 08             	pushl  0x8(%ebp)
 54d:	e8 f0 00 00 00       	call   642 <open>
  if(fd < 0)
 552:	83 c4 10             	add    $0x10,%esp
 555:	85 c0                	test   %eax,%eax
 557:	78 27                	js     580 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 559:	83 ec 08             	sub    $0x8,%esp
 55c:	ff 75 0c             	pushl  0xc(%ebp)
 55f:	89 c3                	mov    %eax,%ebx
 561:	50                   	push   %eax
 562:	e8 f3 00 00 00       	call   65a <fstat>
 567:	89 c6                	mov    %eax,%esi
  close(fd);
 569:	89 1c 24             	mov    %ebx,(%esp)
 56c:	e8 b9 00 00 00       	call   62a <close>
  return r;
 571:	83 c4 10             	add    $0x10,%esp
 574:	89 f0                	mov    %esi,%eax
}
 576:	8d 65 f8             	lea    -0x8(%ebp),%esp
 579:	5b                   	pop    %ebx
 57a:	5e                   	pop    %esi
 57b:	5d                   	pop    %ebp
 57c:	c3                   	ret    
 57d:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 580:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 585:	eb ef                	jmp    576 <stat+0x36>
 587:	89 f6                	mov    %esi,%esi
 589:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000590 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 590:	55                   	push   %ebp
 591:	89 e5                	mov    %esp,%ebp
 593:	53                   	push   %ebx
 594:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 597:	0f be 11             	movsbl (%ecx),%edx
 59a:	8d 42 d0             	lea    -0x30(%edx),%eax
 59d:	3c 09                	cmp    $0x9,%al
 59f:	b8 00 00 00 00       	mov    $0x0,%eax
 5a4:	77 1f                	ja     5c5 <atoi+0x35>
 5a6:	8d 76 00             	lea    0x0(%esi),%esi
 5a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 5b0:	8d 04 80             	lea    (%eax,%eax,4),%eax
 5b3:	83 c1 01             	add    $0x1,%ecx
 5b6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 5ba:	0f be 11             	movsbl (%ecx),%edx
 5bd:	8d 5a d0             	lea    -0x30(%edx),%ebx
 5c0:	80 fb 09             	cmp    $0x9,%bl
 5c3:	76 eb                	jbe    5b0 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
 5c5:	5b                   	pop    %ebx
 5c6:	5d                   	pop    %ebp
 5c7:	c3                   	ret    
 5c8:	90                   	nop
 5c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000005d0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	56                   	push   %esi
 5d4:	53                   	push   %ebx
 5d5:	8b 5d 10             	mov    0x10(%ebp),%ebx
 5d8:	8b 45 08             	mov    0x8(%ebp),%eax
 5db:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 5de:	85 db                	test   %ebx,%ebx
 5e0:	7e 14                	jle    5f6 <memmove+0x26>
 5e2:	31 d2                	xor    %edx,%edx
 5e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 5e8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 5ec:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 5ef:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 5f2:	39 da                	cmp    %ebx,%edx
 5f4:	75 f2                	jne    5e8 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 5f6:	5b                   	pop    %ebx
 5f7:	5e                   	pop    %esi
 5f8:	5d                   	pop    %ebp
 5f9:	c3                   	ret    

000005fa <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 5fa:	b8 01 00 00 00       	mov    $0x1,%eax
 5ff:	cd 40                	int    $0x40
 601:	c3                   	ret    

00000602 <exit>:
SYSCALL(exit)
 602:	b8 02 00 00 00       	mov    $0x2,%eax
 607:	cd 40                	int    $0x40
 609:	c3                   	ret    

0000060a <wait>:
SYSCALL(wait)
 60a:	b8 03 00 00 00       	mov    $0x3,%eax
 60f:	cd 40                	int    $0x40
 611:	c3                   	ret    

00000612 <pipe>:
SYSCALL(pipe)
 612:	b8 04 00 00 00       	mov    $0x4,%eax
 617:	cd 40                	int    $0x40
 619:	c3                   	ret    

0000061a <read>:
SYSCALL(read)
 61a:	b8 05 00 00 00       	mov    $0x5,%eax
 61f:	cd 40                	int    $0x40
 621:	c3                   	ret    

00000622 <write>:
SYSCALL(write)
 622:	b8 10 00 00 00       	mov    $0x10,%eax
 627:	cd 40                	int    $0x40
 629:	c3                   	ret    

0000062a <close>:
SYSCALL(close)
 62a:	b8 15 00 00 00       	mov    $0x15,%eax
 62f:	cd 40                	int    $0x40
 631:	c3                   	ret    

00000632 <kill>:
SYSCALL(kill)
 632:	b8 06 00 00 00       	mov    $0x6,%eax
 637:	cd 40                	int    $0x40
 639:	c3                   	ret    

0000063a <exec>:
SYSCALL(exec)
 63a:	b8 07 00 00 00       	mov    $0x7,%eax
 63f:	cd 40                	int    $0x40
 641:	c3                   	ret    

00000642 <open>:
SYSCALL(open)
 642:	b8 0f 00 00 00       	mov    $0xf,%eax
 647:	cd 40                	int    $0x40
 649:	c3                   	ret    

0000064a <mknod>:
SYSCALL(mknod)
 64a:	b8 11 00 00 00       	mov    $0x11,%eax
 64f:	cd 40                	int    $0x40
 651:	c3                   	ret    

00000652 <unlink>:
SYSCALL(unlink)
 652:	b8 12 00 00 00       	mov    $0x12,%eax
 657:	cd 40                	int    $0x40
 659:	c3                   	ret    

0000065a <fstat>:
SYSCALL(fstat)
 65a:	b8 08 00 00 00       	mov    $0x8,%eax
 65f:	cd 40                	int    $0x40
 661:	c3                   	ret    

00000662 <link>:
SYSCALL(link)
 662:	b8 13 00 00 00       	mov    $0x13,%eax
 667:	cd 40                	int    $0x40
 669:	c3                   	ret    

0000066a <mkdir>:
SYSCALL(mkdir)
 66a:	b8 14 00 00 00       	mov    $0x14,%eax
 66f:	cd 40                	int    $0x40
 671:	c3                   	ret    

00000672 <chdir>:
SYSCALL(chdir)
 672:	b8 09 00 00 00       	mov    $0x9,%eax
 677:	cd 40                	int    $0x40
 679:	c3                   	ret    

0000067a <dup>:
SYSCALL(dup)
 67a:	b8 0a 00 00 00       	mov    $0xa,%eax
 67f:	cd 40                	int    $0x40
 681:	c3                   	ret    

00000682 <getpid>:
SYSCALL(getpid)
 682:	b8 0b 00 00 00       	mov    $0xb,%eax
 687:	cd 40                	int    $0x40
 689:	c3                   	ret    

0000068a <sbrk>:
SYSCALL(sbrk)
 68a:	b8 0c 00 00 00       	mov    $0xc,%eax
 68f:	cd 40                	int    $0x40
 691:	c3                   	ret    

00000692 <sleep>:
SYSCALL(sleep)
 692:	b8 0d 00 00 00       	mov    $0xd,%eax
 697:	cd 40                	int    $0x40
 699:	c3                   	ret    

0000069a <uptime>:
SYSCALL(uptime)
 69a:	b8 0e 00 00 00       	mov    $0xe,%eax
 69f:	cd 40                	int    $0x40
 6a1:	c3                   	ret    

000006a2 <getcwd>:
SYSCALL(getcwd)
 6a2:	b8 16 00 00 00       	mov    $0x16,%eax
 6a7:	cd 40                	int    $0x40
 6a9:	c3                   	ret    
 6aa:	66 90                	xchg   %ax,%ax
 6ac:	66 90                	xchg   %ax,%ax
 6ae:	66 90                	xchg   %ax,%ax

000006b0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 6b0:	55                   	push   %ebp
 6b1:	89 e5                	mov    %esp,%ebp
 6b3:	57                   	push   %edi
 6b4:	56                   	push   %esi
 6b5:	53                   	push   %ebx
 6b6:	89 c6                	mov    %eax,%esi
 6b8:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 6bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
 6be:	85 db                	test   %ebx,%ebx
 6c0:	74 7e                	je     740 <printint+0x90>
 6c2:	89 d0                	mov    %edx,%eax
 6c4:	c1 e8 1f             	shr    $0x1f,%eax
 6c7:	84 c0                	test   %al,%al
 6c9:	74 75                	je     740 <printint+0x90>
    neg = 1;
    x = -xx;
 6cb:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 6cd:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
 6d4:	f7 d8                	neg    %eax
 6d6:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 6d9:	31 ff                	xor    %edi,%edi
 6db:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 6de:	89 ce                	mov    %ecx,%esi
 6e0:	eb 08                	jmp    6ea <printint+0x3a>
 6e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 6e8:	89 cf                	mov    %ecx,%edi
 6ea:	31 d2                	xor    %edx,%edx
 6ec:	8d 4f 01             	lea    0x1(%edi),%ecx
 6ef:	f7 f6                	div    %esi
 6f1:	0f b6 92 e4 0a 00 00 	movzbl 0xae4(%edx),%edx
  }while((x /= base) != 0);
 6f8:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 6fa:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 6fd:	75 e9                	jne    6e8 <printint+0x38>
  if(neg)
 6ff:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 702:	8b 75 c0             	mov    -0x40(%ebp),%esi
 705:	85 c0                	test   %eax,%eax
 707:	74 08                	je     711 <printint+0x61>
    buf[i++] = '-';
 709:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
 70e:	8d 4f 02             	lea    0x2(%edi),%ecx
 711:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
 715:	8d 76 00             	lea    0x0(%esi),%esi
 718:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 71b:	83 ec 04             	sub    $0x4,%esp
 71e:	83 ef 01             	sub    $0x1,%edi
 721:	6a 01                	push   $0x1
 723:	53                   	push   %ebx
 724:	56                   	push   %esi
 725:	88 45 d7             	mov    %al,-0x29(%ebp)
 728:	e8 f5 fe ff ff       	call   622 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 72d:	83 c4 10             	add    $0x10,%esp
 730:	39 df                	cmp    %ebx,%edi
 732:	75 e4                	jne    718 <printint+0x68>
    putc(fd, buf[i]);
}
 734:	8d 65 f4             	lea    -0xc(%ebp),%esp
 737:	5b                   	pop    %ebx
 738:	5e                   	pop    %esi
 739:	5f                   	pop    %edi
 73a:	5d                   	pop    %ebp
 73b:	c3                   	ret    
 73c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 740:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 742:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 749:	eb 8b                	jmp    6d6 <printint+0x26>
 74b:	90                   	nop
 74c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000750 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 750:	55                   	push   %ebp
 751:	89 e5                	mov    %esp,%ebp
 753:	57                   	push   %edi
 754:	56                   	push   %esi
 755:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 756:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 759:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 75c:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 75f:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 762:	89 45 d0             	mov    %eax,-0x30(%ebp)
 765:	0f b6 1e             	movzbl (%esi),%ebx
 768:	83 c6 01             	add    $0x1,%esi
 76b:	84 db                	test   %bl,%bl
 76d:	0f 84 b0 00 00 00    	je     823 <printf+0xd3>
 773:	31 d2                	xor    %edx,%edx
 775:	eb 39                	jmp    7b0 <printf+0x60>
 777:	89 f6                	mov    %esi,%esi
 779:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 780:	83 f8 25             	cmp    $0x25,%eax
 783:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
 786:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 78b:	74 18                	je     7a5 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 78d:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 790:	83 ec 04             	sub    $0x4,%esp
 793:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 796:	6a 01                	push   $0x1
 798:	50                   	push   %eax
 799:	57                   	push   %edi
 79a:	e8 83 fe ff ff       	call   622 <write>
 79f:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 7a2:	83 c4 10             	add    $0x10,%esp
 7a5:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 7a8:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 7ac:	84 db                	test   %bl,%bl
 7ae:	74 73                	je     823 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
 7b0:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 7b2:	0f be cb             	movsbl %bl,%ecx
 7b5:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 7b8:	74 c6                	je     780 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 7ba:	83 fa 25             	cmp    $0x25,%edx
 7bd:	75 e6                	jne    7a5 <printf+0x55>
      if(c == 'd'){
 7bf:	83 f8 64             	cmp    $0x64,%eax
 7c2:	0f 84 f8 00 00 00    	je     8c0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 7c8:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 7ce:	83 f9 70             	cmp    $0x70,%ecx
 7d1:	74 5d                	je     830 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 7d3:	83 f8 73             	cmp    $0x73,%eax
 7d6:	0f 84 84 00 00 00    	je     860 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 7dc:	83 f8 63             	cmp    $0x63,%eax
 7df:	0f 84 ea 00 00 00    	je     8cf <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 7e5:	83 f8 25             	cmp    $0x25,%eax
 7e8:	0f 84 c2 00 00 00    	je     8b0 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 7ee:	8d 45 e7             	lea    -0x19(%ebp),%eax
 7f1:	83 ec 04             	sub    $0x4,%esp
 7f4:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 7f8:	6a 01                	push   $0x1
 7fa:	50                   	push   %eax
 7fb:	57                   	push   %edi
 7fc:	e8 21 fe ff ff       	call   622 <write>
 801:	83 c4 0c             	add    $0xc,%esp
 804:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 807:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 80a:	6a 01                	push   $0x1
 80c:	50                   	push   %eax
 80d:	57                   	push   %edi
 80e:	83 c6 01             	add    $0x1,%esi
 811:	e8 0c fe ff ff       	call   622 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 816:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 81a:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 81d:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 81f:	84 db                	test   %bl,%bl
 821:	75 8d                	jne    7b0 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 823:	8d 65 f4             	lea    -0xc(%ebp),%esp
 826:	5b                   	pop    %ebx
 827:	5e                   	pop    %esi
 828:	5f                   	pop    %edi
 829:	5d                   	pop    %ebp
 82a:	c3                   	ret    
 82b:	90                   	nop
 82c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 830:	83 ec 0c             	sub    $0xc,%esp
 833:	b9 10 00 00 00       	mov    $0x10,%ecx
 838:	6a 00                	push   $0x0
 83a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 83d:	89 f8                	mov    %edi,%eax
 83f:	8b 13                	mov    (%ebx),%edx
 841:	e8 6a fe ff ff       	call   6b0 <printint>
        ap++;
 846:	89 d8                	mov    %ebx,%eax
 848:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 84b:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
 84d:	83 c0 04             	add    $0x4,%eax
 850:	89 45 d0             	mov    %eax,-0x30(%ebp)
 853:	e9 4d ff ff ff       	jmp    7a5 <printf+0x55>
 858:	90                   	nop
 859:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 860:	8b 45 d0             	mov    -0x30(%ebp),%eax
 863:	8b 18                	mov    (%eax),%ebx
        ap++;
 865:	83 c0 04             	add    $0x4,%eax
 868:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
 86b:	b8 db 0a 00 00       	mov    $0xadb,%eax
 870:	85 db                	test   %ebx,%ebx
 872:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
 875:	0f b6 03             	movzbl (%ebx),%eax
 878:	84 c0                	test   %al,%al
 87a:	74 23                	je     89f <printf+0x14f>
 87c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 880:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 883:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 886:	83 ec 04             	sub    $0x4,%esp
 889:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 88b:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 88e:	50                   	push   %eax
 88f:	57                   	push   %edi
 890:	e8 8d fd ff ff       	call   622 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 895:	0f b6 03             	movzbl (%ebx),%eax
 898:	83 c4 10             	add    $0x10,%esp
 89b:	84 c0                	test   %al,%al
 89d:	75 e1                	jne    880 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 89f:	31 d2                	xor    %edx,%edx
 8a1:	e9 ff fe ff ff       	jmp    7a5 <printf+0x55>
 8a6:	8d 76 00             	lea    0x0(%esi),%esi
 8a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 8b0:	83 ec 04             	sub    $0x4,%esp
 8b3:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 8b6:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 8b9:	6a 01                	push   $0x1
 8bb:	e9 4c ff ff ff       	jmp    80c <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 8c0:	83 ec 0c             	sub    $0xc,%esp
 8c3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 8c8:	6a 01                	push   $0x1
 8ca:	e9 6b ff ff ff       	jmp    83a <printf+0xea>
 8cf:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 8d2:	83 ec 04             	sub    $0x4,%esp
 8d5:	8b 03                	mov    (%ebx),%eax
 8d7:	6a 01                	push   $0x1
 8d9:	88 45 e4             	mov    %al,-0x1c(%ebp)
 8dc:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 8df:	50                   	push   %eax
 8e0:	57                   	push   %edi
 8e1:	e8 3c fd ff ff       	call   622 <write>
 8e6:	e9 5b ff ff ff       	jmp    846 <printf+0xf6>
 8eb:	66 90                	xchg   %ax,%ax
 8ed:	66 90                	xchg   %ax,%ax
 8ef:	90                   	nop

000008f0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 8f0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8f1:	a1 ac 0d 00 00       	mov    0xdac,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 8f6:	89 e5                	mov    %esp,%ebp
 8f8:	57                   	push   %edi
 8f9:	56                   	push   %esi
 8fa:	53                   	push   %ebx
 8fb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8fe:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 900:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 903:	39 c8                	cmp    %ecx,%eax
 905:	73 19                	jae    920 <free+0x30>
 907:	89 f6                	mov    %esi,%esi
 909:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 910:	39 d1                	cmp    %edx,%ecx
 912:	72 1c                	jb     930 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 914:	39 d0                	cmp    %edx,%eax
 916:	73 18                	jae    930 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
 918:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 91a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 91c:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 91e:	72 f0                	jb     910 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 920:	39 d0                	cmp    %edx,%eax
 922:	72 f4                	jb     918 <free+0x28>
 924:	39 d1                	cmp    %edx,%ecx
 926:	73 f0                	jae    918 <free+0x28>
 928:	90                   	nop
 929:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
 930:	8b 73 fc             	mov    -0x4(%ebx),%esi
 933:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 936:	39 d7                	cmp    %edx,%edi
 938:	74 19                	je     953 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 93a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 93d:	8b 50 04             	mov    0x4(%eax),%edx
 940:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 943:	39 f1                	cmp    %esi,%ecx
 945:	74 23                	je     96a <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 947:	89 08                	mov    %ecx,(%eax)
  freep = p;
 949:	a3 ac 0d 00 00       	mov    %eax,0xdac
}
 94e:	5b                   	pop    %ebx
 94f:	5e                   	pop    %esi
 950:	5f                   	pop    %edi
 951:	5d                   	pop    %ebp
 952:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 953:	03 72 04             	add    0x4(%edx),%esi
 956:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 959:	8b 10                	mov    (%eax),%edx
 95b:	8b 12                	mov    (%edx),%edx
 95d:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 960:	8b 50 04             	mov    0x4(%eax),%edx
 963:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 966:	39 f1                	cmp    %esi,%ecx
 968:	75 dd                	jne    947 <free+0x57>
    p->s.size += bp->s.size;
 96a:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 96d:	a3 ac 0d 00 00       	mov    %eax,0xdac
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 972:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 975:	8b 53 f8             	mov    -0x8(%ebx),%edx
 978:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 97a:	5b                   	pop    %ebx
 97b:	5e                   	pop    %esi
 97c:	5f                   	pop    %edi
 97d:	5d                   	pop    %ebp
 97e:	c3                   	ret    
 97f:	90                   	nop

00000980 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 980:	55                   	push   %ebp
 981:	89 e5                	mov    %esp,%ebp
 983:	57                   	push   %edi
 984:	56                   	push   %esi
 985:	53                   	push   %ebx
 986:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 989:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 98c:	8b 15 ac 0d 00 00    	mov    0xdac,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 992:	8d 78 07             	lea    0x7(%eax),%edi
 995:	c1 ef 03             	shr    $0x3,%edi
 998:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 99b:	85 d2                	test   %edx,%edx
 99d:	0f 84 a3 00 00 00    	je     a46 <malloc+0xc6>
 9a3:	8b 02                	mov    (%edx),%eax
 9a5:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 9a8:	39 cf                	cmp    %ecx,%edi
 9aa:	76 74                	jbe    a20 <malloc+0xa0>
 9ac:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 9b2:	be 00 10 00 00       	mov    $0x1000,%esi
 9b7:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 9be:	0f 43 f7             	cmovae %edi,%esi
 9c1:	ba 00 80 00 00       	mov    $0x8000,%edx
 9c6:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 9cc:	0f 46 da             	cmovbe %edx,%ebx
 9cf:	eb 10                	jmp    9e1 <malloc+0x61>
 9d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9d8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 9da:	8b 48 04             	mov    0x4(%eax),%ecx
 9dd:	39 cf                	cmp    %ecx,%edi
 9df:	76 3f                	jbe    a20 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 9e1:	39 05 ac 0d 00 00    	cmp    %eax,0xdac
 9e7:	89 c2                	mov    %eax,%edx
 9e9:	75 ed                	jne    9d8 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 9eb:	83 ec 0c             	sub    $0xc,%esp
 9ee:	53                   	push   %ebx
 9ef:	e8 96 fc ff ff       	call   68a <sbrk>
  if(p == (char*)-1)
 9f4:	83 c4 10             	add    $0x10,%esp
 9f7:	83 f8 ff             	cmp    $0xffffffff,%eax
 9fa:	74 1c                	je     a18 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 9fc:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
 9ff:	83 ec 0c             	sub    $0xc,%esp
 a02:	83 c0 08             	add    $0x8,%eax
 a05:	50                   	push   %eax
 a06:	e8 e5 fe ff ff       	call   8f0 <free>
  return freep;
 a0b:	8b 15 ac 0d 00 00    	mov    0xdac,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 a11:	83 c4 10             	add    $0x10,%esp
 a14:	85 d2                	test   %edx,%edx
 a16:	75 c0                	jne    9d8 <malloc+0x58>
        return 0;
 a18:	31 c0                	xor    %eax,%eax
 a1a:	eb 1c                	jmp    a38 <malloc+0xb8>
 a1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
 a20:	39 cf                	cmp    %ecx,%edi
 a22:	74 1c                	je     a40 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 a24:	29 f9                	sub    %edi,%ecx
 a26:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a29:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a2c:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
 a2f:	89 15 ac 0d 00 00    	mov    %edx,0xdac
      return (void*)(p + 1);
 a35:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 a38:	8d 65 f4             	lea    -0xc(%ebp),%esp
 a3b:	5b                   	pop    %ebx
 a3c:	5e                   	pop    %esi
 a3d:	5f                   	pop    %edi
 a3e:	5d                   	pop    %ebp
 a3f:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 a40:	8b 08                	mov    (%eax),%ecx
 a42:	89 0a                	mov    %ecx,(%edx)
 a44:	eb e9                	jmp    a2f <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 a46:	c7 05 ac 0d 00 00 b0 	movl   $0xdb0,0xdac
 a4d:	0d 00 00 
 a50:	c7 05 b0 0d 00 00 b0 	movl   $0xdb0,0xdb0
 a57:	0d 00 00 
    base.s.size = 0;
 a5a:	b8 b0 0d 00 00       	mov    $0xdb0,%eax
 a5f:	c7 05 b4 0d 00 00 00 	movl   $0x0,0xdb4
 a66:	00 00 00 
 a69:	e9 3e ff ff ff       	jmp    9ac <malloc+0x2c>
