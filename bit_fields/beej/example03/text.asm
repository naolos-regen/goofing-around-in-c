Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 c1 2f 00 00 	mov    0x2fc1(%rip),%rax        # 3fd0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <__stack_chk_fail@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <__stack_chk_fail@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <__stack_chk_fail@GLIBC_2.4>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <printf@plt>:
    1040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 4008 <printf@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

0000000000001050 <_start>:
    1050:	f3 0f 1e fa          	endbr64
    1054:	31 ed                	xor    %ebp,%ebp
    1056:	49 89 d1             	mov    %rdx,%r9
    1059:	5e                   	pop    %rsi
    105a:	48 89 e2             	mov    %rsp,%rdx
    105d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1061:	50                   	push   %rax
    1062:	54                   	push   %rsp
    1063:	45 31 c0             	xor    %r8d,%r8d
    1066:	31 c9                	xor    %ecx,%ecx
    1068:	48 8d 3d 0d 01 00 00 	lea    0x10d(%rip),%rdi        # 117c <main>
    106f:	ff 15 4b 2f 00 00    	call   *0x2f4b(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    1075:	f4                   	hlt
    1076:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    107d:	00 00 00 
    1080:	48 8d 3d 99 2f 00 00 	lea    0x2f99(%rip),%rdi        # 4020 <__TMC_END__>
    1087:	48 8d 05 92 2f 00 00 	lea    0x2f92(%rip),%rax        # 4020 <__TMC_END__>
    108e:	48 39 f8             	cmp    %rdi,%rax
    1091:	74 15                	je     10a8 <_start+0x58>
    1093:	48 8b 05 2e 2f 00 00 	mov    0x2f2e(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    109a:	48 85 c0             	test   %rax,%rax
    109d:	74 09                	je     10a8 <_start+0x58>
    109f:	ff e0                	jmp    *%rax
    10a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10a8:	c3                   	ret
    10a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10b0:	48 8d 3d 69 2f 00 00 	lea    0x2f69(%rip),%rdi        # 4020 <__TMC_END__>
    10b7:	48 8d 35 62 2f 00 00 	lea    0x2f62(%rip),%rsi        # 4020 <__TMC_END__>
    10be:	48 29 fe             	sub    %rdi,%rsi
    10c1:	48 89 f0             	mov    %rsi,%rax
    10c4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10c8:	48 c1 f8 03          	sar    $0x3,%rax
    10cc:	48 01 c6             	add    %rax,%rsi
    10cf:	48 d1 fe             	sar    $1,%rsi
    10d2:	74 14                	je     10e8 <_start+0x98>
    10d4:	48 8b 05 fd 2e 00 00 	mov    0x2efd(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    10db:	48 85 c0             	test   %rax,%rax
    10de:	74 08                	je     10e8 <_start+0x98>
    10e0:	ff e0                	jmp    *%rax
    10e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10e8:	c3                   	ret
    10e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	80 3d 25 2f 00 00 00 	cmpb   $0x0,0x2f25(%rip)        # 4020 <__TMC_END__>
    10fb:	75 33                	jne    1130 <_start+0xe0>
    10fd:	55                   	push   %rbp
    10fe:	48 83 3d da 2e 00 00 	cmpq   $0x0,0x2eda(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1105:	00 
    1106:	48 89 e5             	mov    %rsp,%rbp
    1109:	74 0d                	je     1118 <_start+0xc8>
    110b:	48 8b 3d 06 2f 00 00 	mov    0x2f06(%rip),%rdi        # 4018 <__dso_handle>
    1112:	ff 15 c8 2e 00 00    	call   *0x2ec8(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1118:	e8 63 ff ff ff       	call   1080 <_start+0x30>
    111d:	c6 05 fc 2e 00 00 01 	movb   $0x1,0x2efc(%rip)        # 4020 <__TMC_END__>
    1124:	5d                   	pop    %rbp
    1125:	c3                   	ret
    1126:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    112d:	00 00 00 
    1130:	c3                   	ret
    1131:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1138:	00 00 00 00 
    113c:	0f 1f 40 00          	nopl   0x0(%rax)
    1140:	f3 0f 1e fa          	endbr64
    1144:	e9 67 ff ff ff       	jmp    10b0 <_start+0x60>

0000000000001149 <compare_structs>:
			  // however I'll checkout the objdump
};

int	compare_structs(const struct bar *bar1, const struct bar2 *bar2)
{
	return bar1->a == bar2->a && 
    1149:	0f b6 07             	movzbl (%rdi),%eax
    114c:	32 06                	xor    (%rsi),%al
	       bar1->b == bar2->b && 
	       bar1->c == bar2->c && 
    114e:	a8 07                	test   $0x7,%al
    1150:	75 1e                	jne    1170 <compare_structs+0x27>
    1152:	0f b7 17             	movzwl (%rdi),%edx
    1155:	c1 e2 06             	shl    $0x6,%edx
    1158:	66 c1 fa 09          	sar    $0x9,%dx
    115c:	0f b6 46 04          	movzbl 0x4(%rsi),%eax
    1160:	01 c0                	add    %eax,%eax
    1162:	d0 f8                	sar    $1,%al
    1164:	31 d0                	xor    %edx,%eax
    1166:	a8 7f                	test   $0x7f,%al
    1168:	74 0c                	je     1176 <compare_structs+0x2d>
    116a:	b8 00 00 00 00       	mov    $0x0,%eax
    116f:	c3                   	ret
    1170:	b8 00 00 00 00       	mov    $0x0,%eax
    1175:	c3                   	ret
    1176:	b8 01 00 00 00       	mov    $0x1,%eax
	       bar1->d == bar2->d;
}
    117b:	c3                   	ret

000000000000117c <main>:

int	main(void)
{
    117c:	53                   	push   %rbx
    117d:	48 83 ec 20          	sub    $0x20,%rsp
    1181:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1188:	00 00 
    118a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    118f:	31 c0                	xor    %eax,%eax
	printf("%zu\n", sizeof(struct foo));
    1191:	be 01 00 00 00       	mov    $0x1,%esi
    1196:	48 8d 1d 67 0e 00 00 	lea    0xe67(%rip),%rbx        # 2004 <_IO_stdin_used+0x4>
    119d:	48 89 df             	mov    %rbx,%rdi
    11a0:	e8 9b fe ff ff       	call   1040 <printf@plt>
	printf("%zu\n", sizeof(struct foo2));
    11a5:	be 01 00 00 00       	mov    $0x1,%esi
    11aa:	48 89 df             	mov    %rbx,%rdi
    11ad:	b8 00 00 00 00       	mov    $0x0,%eax
    11b2:	e8 89 fe ff ff       	call   1040 <printf@plt>

	printf("%zu\n", sizeof(struct bar));
    11b7:	be 04 00 00 00       	mov    $0x4,%esi
    11bc:	48 89 df             	mov    %rbx,%rdi
    11bf:	b8 00 00 00 00       	mov    $0x0,%eax
    11c4:	e8 77 fe ff ff       	call   1040 <printf@plt>
	printf("%zu\n", sizeof(struct bar2));
    11c9:	be 08 00 00 00       	mov    $0x8,%esi
    11ce:	48 89 df             	mov    %rbx,%rdi
    11d1:	b8 00 00 00 00       	mov    $0x0,%eax
    11d6:	e8 65 fe ff ff       	call   1040 <printf@plt>

	struct bar  bar;
	struct bar2 bar2;

	bar.a  = 1; bar.b  = 1; bar.c  = 1; bar.d  = 1;
    11db:	0f b6 44 24 0c       	movzbl 0xc(%rsp),%eax
    11e0:	83 c8 01             	or     $0x1,%eax
    11e3:	88 44 24 0c          	mov    %al,0xc(%rsp)
    11e7:	83 e0 f9             	and    $0xfffffff9,%eax
    11ea:	83 c8 02             	or     $0x2,%eax
    11ed:	88 44 24 0c          	mov    %al,0xc(%rsp)
    11f1:	83 e0 c7             	and    $0xffffffc7,%eax
    11f4:	83 c8 08             	or     $0x8,%eax
    11f7:	88 44 24 0c          	mov    %al,0xc(%rsp)
    11fb:	0f b7 44 24 0c       	movzwl 0xc(%rsp),%eax
    1200:	66 25 3f fc          	and    $0xfc3f,%ax
    1204:	83 c8 40             	or     $0x40,%eax
    1207:	66 89 44 24 0c       	mov    %ax,0xc(%rsp)
	bar2.a = 1; bar2.b = 1; bar2.c = 1; bar2.d = 1;
    120c:	0f b6 44 24 10       	movzbl 0x10(%rsp),%eax
    1211:	83 c8 01             	or     $0x1,%eax
    1214:	88 44 24 10          	mov    %al,0x10(%rsp)
    1218:	83 e0 f9             	and    $0xfffffff9,%eax
    121b:	83 c8 02             	or     $0x2,%eax
    121e:	88 44 24 10          	mov    %al,0x10(%rsp)
    1222:	0f b6 44 24 14       	movzbl 0x14(%rsp),%eax
    1227:	83 e0 f8             	and    $0xfffffff8,%eax
    122a:	83 c8 01             	or     $0x1,%eax
    122d:	88 44 24 14          	mov    %al,0x14(%rsp)
    1231:	83 e0 87             	and    $0xffffff87,%eax
    1234:	83 c8 08             	or     $0x8,%eax
    1237:	88 44 24 14          	mov    %al,0x14(%rsp)
	
	if (compare_structs(&bar, &bar2))
    123b:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
    1240:	48 8d 7c 24 0c       	lea    0xc(%rsp),%rdi
    1245:	e8 ff fe ff ff       	call   1149 <compare_structs>
    124a:	85 c0                	test   %eax,%eax
    124c:	75 1b                	jne    1269 <main+0xed>
		printf("eq");
	
	return (0);
}
    124e:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1253:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    125a:	00 00 
    125c:	75 1e                	jne    127c <main+0x100>
    125e:	b8 00 00 00 00       	mov    $0x0,%eax
    1263:	48 83 c4 20          	add    $0x20,%rsp
    1267:	5b                   	pop    %rbx
    1268:	c3                   	ret
		printf("eq");
    1269:	48 8d 3d 99 0d 00 00 	lea    0xd99(%rip),%rdi        # 2009 <_IO_stdin_used+0x9>
    1270:	b8 00 00 00 00       	mov    $0x0,%eax
    1275:	e8 c6 fd ff ff       	call   1040 <printf@plt>
    127a:	eb d2                	jmp    124e <main+0xd2>
}
    127c:	e8 af fd ff ff       	call   1030 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000001284 <_fini>:
    1284:	f3 0f 1e fa          	endbr64
    1288:	48 83 ec 08          	sub    $0x8,%rsp
    128c:	48 83 c4 08          	add    $0x8,%rsp
    1290:	c3                   	ret
