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
    1068:	48 8d 3d 6a 01 00 00 	lea    0x16a(%rip),%rdi        # 11d9 <main>
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
			  // comparison.
			  // however I'll checkout the objdump
};

int	compare_structs(const struct bar *bar1, const struct bar2 *bar2)
{
    1149:	55                   	push   %rbp
    114a:	48 89 e5             	mov    %rsp,%rbp
    114d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1151:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	return bar1->a == bar2->a && 
    1155:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1159:	0f b6 00             	movzbl (%rax),%eax
    115c:	83 e0 01             	and    $0x1,%eax
    115f:	89 c2                	mov    %eax,%edx
    1161:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1165:	0f b6 00             	movzbl (%rax),%eax
    1168:	83 e0 01             	and    $0x1,%eax
	       bar1->b == bar2->b && 
	       bar1->c == bar2->c && 
    116b:	38 c2                	cmp    %al,%dl
    116d:	75 63                	jne    11d2 <compare_structs+0x89>
	       bar1->b == bar2->b && 
    116f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1173:	0f b6 00             	movzbl (%rax),%eax
    1176:	d0 e8                	shr    $1,%al
    1178:	89 c2                	mov    %eax,%edx
    117a:	83 e2 03             	and    $0x3,%edx
    117d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1181:	0f b6 00             	movzbl (%rax),%eax
    1184:	d0 e8                	shr    $1,%al
    1186:	83 e0 03             	and    $0x3,%eax
	return bar1->a == bar2->a && 
    1189:	38 c2                	cmp    %al,%dl
    118b:	75 45                	jne    11d2 <compare_structs+0x89>
	       bar1->c == bar2->c && 
    118d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1191:	0f b6 00             	movzbl (%rax),%eax
    1194:	c0 e8 03             	shr    $0x3,%al
    1197:	83 e0 07             	and    $0x7,%eax
    119a:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    119e:	0f b6 52 04          	movzbl 0x4(%rdx),%edx
    11a2:	83 e2 07             	and    $0x7,%edx
	       bar1->b == bar2->b && 
    11a5:	38 d0                	cmp    %dl,%al
    11a7:	75 29                	jne    11d2 <compare_structs+0x89>
	       bar1->d == bar2->d;
    11a9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    11ad:	0f b7 00             	movzwl (%rax),%eax
    11b0:	66 c1 e8 06          	shr    $0x6,%ax
    11b4:	89 c2                	mov    %eax,%edx
    11b6:	83 e2 0f             	and    $0xf,%edx
    11b9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    11bd:	0f b6 40 04          	movzbl 0x4(%rax),%eax
    11c1:	c0 e8 03             	shr    $0x3,%al
    11c4:	83 e0 0f             	and    $0xf,%eax
	       bar1->c == bar2->c && 
    11c7:	38 c2                	cmp    %al,%dl
    11c9:	75 07                	jne    11d2 <compare_structs+0x89>
    11cb:	b8 01 00 00 00       	mov    $0x1,%eax
    11d0:	eb 05                	jmp    11d7 <compare_structs+0x8e>
    11d2:	b8 00 00 00 00       	mov    $0x0,%eax
}
    11d7:	5d                   	pop    %rbp
    11d8:	c3                   	ret

00000000000011d9 <main>:

int	main(void)
{
    11d9:	55                   	push   %rbp
    11da:	48 89 e5             	mov    %rsp,%rbp
    11dd:	48 83 ec 20          	sub    $0x20,%rsp
    11e1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    11e8:	00 00 
    11ea:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    11ee:	31 c0                	xor    %eax,%eax
	printf("%zu\n", sizeof(struct foo));
    11f0:	be 01 00 00 00       	mov    $0x1,%esi
    11f5:	48 8d 05 08 0e 00 00 	lea    0xe08(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    11fc:	48 89 c7             	mov    %rax,%rdi
    11ff:	b8 00 00 00 00       	mov    $0x0,%eax
    1204:	e8 37 fe ff ff       	call   1040 <printf@plt>
	printf("%zu\n", sizeof(struct foo2));
    1209:	be 01 00 00 00       	mov    $0x1,%esi
    120e:	48 8d 05 ef 0d 00 00 	lea    0xdef(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    1215:	48 89 c7             	mov    %rax,%rdi
    1218:	b8 00 00 00 00       	mov    $0x0,%eax
    121d:	e8 1e fe ff ff       	call   1040 <printf@plt>

	printf("%zu\n", sizeof(struct bar));
    1222:	be 04 00 00 00       	mov    $0x4,%esi
    1227:	48 8d 05 d6 0d 00 00 	lea    0xdd6(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    122e:	48 89 c7             	mov    %rax,%rdi
    1231:	b8 00 00 00 00       	mov    $0x0,%eax
    1236:	e8 05 fe ff ff       	call   1040 <printf@plt>
	printf("%zu\n", sizeof(struct bar2));
    123b:	be 08 00 00 00       	mov    $0x8,%esi
    1240:	48 8d 05 bd 0d 00 00 	lea    0xdbd(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    1247:	48 89 c7             	mov    %rax,%rdi
    124a:	b8 00 00 00 00       	mov    $0x0,%eax
    124f:	e8 ec fd ff ff       	call   1040 <printf@plt>

	struct bar  bar;
	struct bar2 bar2;

	bar.a  = 1; bar.b  = 1; bar.c  = 1; bar.d  = 1;
    1254:	0f b6 45 ec          	movzbl -0x14(%rbp),%eax
    1258:	83 c8 01             	or     $0x1,%eax
    125b:	88 45 ec             	mov    %al,-0x14(%rbp)
    125e:	0f b6 45 ec          	movzbl -0x14(%rbp),%eax
    1262:	83 e0 f9             	and    $0xfffffff9,%eax
    1265:	83 c8 02             	or     $0x2,%eax
    1268:	88 45 ec             	mov    %al,-0x14(%rbp)
    126b:	0f b6 45 ec          	movzbl -0x14(%rbp),%eax
    126f:	83 e0 c7             	and    $0xffffffc7,%eax
    1272:	83 c8 08             	or     $0x8,%eax
    1275:	88 45 ec             	mov    %al,-0x14(%rbp)
    1278:	0f b7 45 ec          	movzwl -0x14(%rbp),%eax
    127c:	66 25 3f fc          	and    $0xfc3f,%ax
    1280:	83 c8 40             	or     $0x40,%eax
    1283:	66 89 45 ec          	mov    %ax,-0x14(%rbp)
	bar2.a = 1; bar2.b = 1; bar2.c = 1; bar2.d = 1;
    1287:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
    128b:	83 c8 01             	or     $0x1,%eax
    128e:	88 45 f0             	mov    %al,-0x10(%rbp)
    1291:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
    1295:	83 e0 f9             	and    $0xfffffff9,%eax
    1298:	83 c8 02             	or     $0x2,%eax
    129b:	88 45 f0             	mov    %al,-0x10(%rbp)
    129e:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
    12a2:	83 e0 f8             	and    $0xfffffff8,%eax
    12a5:	83 c8 01             	or     $0x1,%eax
    12a8:	88 45 f4             	mov    %al,-0xc(%rbp)
    12ab:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
    12af:	83 e0 87             	and    $0xffffff87,%eax
    12b2:	83 c8 08             	or     $0x8,%eax
    12b5:	88 45 f4             	mov    %al,-0xc(%rbp)
	
	if (compare_structs(&bar, &bar2))
    12b8:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
    12bc:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
    12c0:	48 89 d6             	mov    %rdx,%rsi
    12c3:	48 89 c7             	mov    %rax,%rdi
    12c6:	e8 7e fe ff ff       	call   1149 <compare_structs>
    12cb:	85 c0                	test   %eax,%eax
    12cd:	74 14                	je     12e3 <main+0x10a>
		printf("eq");
    12cf:	48 8d 05 33 0d 00 00 	lea    0xd33(%rip),%rax        # 2009 <_IO_stdin_used+0x9>
    12d6:	48 89 c7             	mov    %rax,%rdi
    12d9:	b8 00 00 00 00       	mov    $0x0,%eax
    12de:	e8 5d fd ff ff       	call   1040 <printf@plt>
	
	return (0);
    12e3:	b8 00 00 00 00       	mov    $0x0,%eax
}
    12e8:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    12ec:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    12f3:	00 00 
    12f5:	74 05                	je     12fc <main+0x123>
    12f7:	e8 34 fd ff ff       	call   1030 <__stack_chk_fail@plt>
    12fc:	c9                   	leave
    12fd:	c3                   	ret

Disassembly of section .fini:

0000000000001300 <_fini>:
    1300:	f3 0f 1e fa          	endbr64
    1304:	48 83 ec 08          	sub    $0x8,%rsp
    1308:	48 83 c4 08          	add    $0x8,%rsp
    130c:	c3                   	ret
