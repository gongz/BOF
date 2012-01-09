
vuln:     file format elf32-i386


Disassembly of section .init:

080482f4 <_init>:
 80482f4:	55                   	push   %ebp
 80482f5:	89 e5                	mov    %esp,%ebp
 80482f7:	53                   	push   %ebx
 80482f8:	83 ec 04             	sub    $0x4,%esp
 80482fb:	e8 00 00 00 00       	call   8048300 <_init+0xc>
 8048300:	5b                   	pop    %ebx
 8048301:	81 c3 f4 1c 00 00    	add    $0x1cf4,%ebx
 8048307:	8b 93 fc ff ff ff    	mov    -0x4(%ebx),%edx
 804830d:	85 d2                	test   %edx,%edx
 804830f:	74 05                	je     8048316 <_init+0x22>
 8048311:	e8 1e 00 00 00       	call   8048334 <__gmon_start__@plt>
 8048316:	e8 15 01 00 00       	call   8048430 <frame_dummy>
 804831b:	e8 60 02 00 00       	call   8048580 <__do_global_ctors_aux>
 8048320:	58                   	pop    %eax
 8048321:	5b                   	pop    %ebx
 8048322:	c9                   	leave  
 8048323:	c3                   	ret    

Disassembly of section .plt:

08048324 <__gmon_start__@plt-0x10>:
 8048324:	ff 35 f8 9f 04 08    	pushl  0x8049ff8
 804832a:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 8048330:	00 00                	add    %al,(%eax)
	...

08048334 <__gmon_start__@plt>:
 8048334:	ff 25 00 a0 04 08    	jmp    *0x804a000
 804833a:	68 00 00 00 00       	push   $0x0
 804833f:	e9 e0 ff ff ff       	jmp    8048324 <_init+0x30>

08048344 <__libc_start_main@plt>:
 8048344:	ff 25 04 a0 04 08    	jmp    *0x804a004
 804834a:	68 08 00 00 00       	push   $0x8
 804834f:	e9 d0 ff ff ff       	jmp    8048324 <_init+0x30>

08048354 <strcpy@plt>:
 8048354:	ff 25 08 a0 04 08    	jmp    *0x804a008
 804835a:	68 10 00 00 00       	push   $0x10
 804835f:	e9 c0 ff ff ff       	jmp    8048324 <_init+0x30>

08048364 <printf@plt>:
 8048364:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 804836a:	68 18 00 00 00       	push   $0x18
 804836f:	e9 b0 ff ff ff       	jmp    8048324 <_init+0x30>

08048374 <puts@plt>:
 8048374:	ff 25 10 a0 04 08    	jmp    *0x804a010
 804837a:	68 20 00 00 00       	push   $0x20
 804837f:	e9 a0 ff ff ff       	jmp    8048324 <_init+0x30>

08048384 <exit@plt>:
 8048384:	ff 25 14 a0 04 08    	jmp    *0x804a014
 804838a:	68 28 00 00 00       	push   $0x28
 804838f:	e9 90 ff ff ff       	jmp    8048324 <_init+0x30>

Disassembly of section .text:

080483a0 <_start>:
 80483a0:	31 ed                	xor    %ebp,%ebp
 80483a2:	5e                   	pop    %esi
 80483a3:	89 e1                	mov    %esp,%ecx
 80483a5:	83 e4 f0             	and    $0xfffffff0,%esp
 80483a8:	50                   	push   %eax
 80483a9:	54                   	push   %esp
 80483aa:	52                   	push   %edx
 80483ab:	68 70 85 04 08       	push   $0x8048570
 80483b0:	68 10 85 04 08       	push   $0x8048510
 80483b5:	51                   	push   %ecx
 80483b6:	56                   	push   %esi
 80483b7:	68 a9 84 04 08       	push   $0x80484a9
 80483bc:	e8 83 ff ff ff       	call   8048344 <__libc_start_main@plt>
 80483c1:	f4                   	hlt    
 80483c2:	90                   	nop
 80483c3:	90                   	nop
 80483c4:	90                   	nop
 80483c5:	90                   	nop
 80483c6:	90                   	nop
 80483c7:	90                   	nop
 80483c8:	90                   	nop
 80483c9:	90                   	nop
 80483ca:	90                   	nop
 80483cb:	90                   	nop
 80483cc:	90                   	nop
 80483cd:	90                   	nop
 80483ce:	90                   	nop
 80483cf:	90                   	nop

080483d0 <__do_global_dtors_aux>:
 80483d0:	55                   	push   %ebp
 80483d1:	89 e5                	mov    %esp,%ebp
 80483d3:	53                   	push   %ebx
 80483d4:	83 ec 04             	sub    $0x4,%esp
 80483d7:	80 3d 20 a0 04 08 00 	cmpb   $0x0,0x804a020
 80483de:	75 3f                	jne    804841f <__do_global_dtors_aux+0x4f>
 80483e0:	a1 24 a0 04 08       	mov    0x804a024,%eax
 80483e5:	bb 20 9f 04 08       	mov    $0x8049f20,%ebx
 80483ea:	81 eb 1c 9f 04 08    	sub    $0x8049f1c,%ebx
 80483f0:	c1 fb 02             	sar    $0x2,%ebx
 80483f3:	83 eb 01             	sub    $0x1,%ebx
 80483f6:	39 d8                	cmp    %ebx,%eax
 80483f8:	73 1e                	jae    8048418 <__do_global_dtors_aux+0x48>
 80483fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048400:	83 c0 01             	add    $0x1,%eax
 8048403:	a3 24 a0 04 08       	mov    %eax,0x804a024
 8048408:	ff 14 85 1c 9f 04 08 	call   *0x8049f1c(,%eax,4)
 804840f:	a1 24 a0 04 08       	mov    0x804a024,%eax
 8048414:	39 d8                	cmp    %ebx,%eax
 8048416:	72 e8                	jb     8048400 <__do_global_dtors_aux+0x30>
 8048418:	c6 05 20 a0 04 08 01 	movb   $0x1,0x804a020
 804841f:	83 c4 04             	add    $0x4,%esp
 8048422:	5b                   	pop    %ebx
 8048423:	5d                   	pop    %ebp
 8048424:	c3                   	ret    
 8048425:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048429:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048430 <frame_dummy>:
 8048430:	55                   	push   %ebp
 8048431:	89 e5                	mov    %esp,%ebp
 8048433:	83 ec 18             	sub    $0x18,%esp
 8048436:	a1 24 9f 04 08       	mov    0x8049f24,%eax
 804843b:	85 c0                	test   %eax,%eax
 804843d:	74 12                	je     8048451 <frame_dummy+0x21>
 804843f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048444:	85 c0                	test   %eax,%eax
 8048446:	74 09                	je     8048451 <frame_dummy+0x21>
 8048448:	c7 04 24 24 9f 04 08 	movl   $0x8049f24,(%esp)
 804844f:	ff d0                	call   *%eax
 8048451:	c9                   	leave  
 8048452:	c3                   	ret    
 8048453:	90                   	nop

08048454 <countA>:
 8048454:	55                   	push   %ebp
 8048455:	89 e5                	mov    %esp,%ebp
 8048457:	83 ec 48             	sub    $0x48,%esp
 804845a:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8048461:	8b 45 08             	mov    0x8(%ebp),%eax
 8048464:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048468:	8d 45 d0             	lea    -0x30(%ebp),%eax
 804846b:	89 04 24             	mov    %eax,(%esp)
 804846e:	e8 e1 fe ff ff       	call   8048354 <strcpy@plt>
 8048473:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804847a:	eb 22                	jmp    804849e <countA+0x4a>
 804847c:	8d 45 d0             	lea    -0x30(%ebp),%eax
 804847f:	03 45 f4             	add    -0xc(%ebp),%eax
 8048482:	0f b6 00             	movzbl (%eax),%eax
 8048485:	3c 61                	cmp    $0x61,%al
 8048487:	74 0d                	je     8048496 <countA+0x42>
 8048489:	8d 45 d0             	lea    -0x30(%ebp),%eax
 804848c:	03 45 f4             	add    -0xc(%ebp),%eax
 804848f:	0f b6 00             	movzbl (%eax),%eax
 8048492:	3c 41                	cmp    $0x41,%al
 8048494:	75 04                	jne    804849a <countA+0x46>
 8048496:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 804849a:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804849e:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
 80484a2:	7e d8                	jle    804847c <countA+0x28>
 80484a4:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80484a7:	c9                   	leave  
 80484a8:	c3                   	ret    

080484a9 <main>:
 80484a9:	55                   	push   %ebp
 80484aa:	89 e5                	mov    %esp,%ebp
 80484ac:	83 e4 f0             	and    $0xfffffff0,%esp
 80484af:	83 ec 20             	sub    $0x20,%esp
 80484b2:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
 80484b6:	74 18                	je     80484d0 <main+0x27>
 80484b8:	c7 04 24 d0 85 04 08 	movl   $0x80485d0,(%esp)
 80484bf:	e8 b0 fe ff ff       	call   8048374 <puts@plt>
 80484c4:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 80484cb:	e8 b4 fe ff ff       	call   8048384 <exit@plt>
 80484d0:	8b 45 0c             	mov    0xc(%ebp),%eax
 80484d3:	83 c0 04             	add    $0x4,%eax
 80484d6:	8b 00                	mov    (%eax),%eax
 80484d8:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 80484dc:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 80484e0:	89 04 24             	mov    %eax,(%esp)
 80484e3:	e8 6c ff ff ff       	call   8048454 <countA>
 80484e8:	89 44 24 18          	mov    %eax,0x18(%esp)
 80484ec:	b8 f9 85 04 08       	mov    $0x80485f9,%eax
 80484f1:	8b 54 24 18          	mov    0x18(%esp),%edx
 80484f5:	89 54 24 04          	mov    %edx,0x4(%esp)
 80484f9:	89 04 24             	mov    %eax,(%esp)
 80484fc:	e8 63 fe ff ff       	call   8048364 <printf@plt>
 8048501:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048508:	e8 77 fe ff ff       	call   8048384 <exit@plt>
 804850d:	90                   	nop
 804850e:	90                   	nop
 804850f:	90                   	nop

08048510 <__libc_csu_init>:
 8048510:	55                   	push   %ebp
 8048511:	89 e5                	mov    %esp,%ebp
 8048513:	57                   	push   %edi
 8048514:	56                   	push   %esi
 8048515:	53                   	push   %ebx
 8048516:	e8 5a 00 00 00       	call   8048575 <__i686.get_pc_thunk.bx>
 804851b:	81 c3 d9 1a 00 00    	add    $0x1ad9,%ebx
 8048521:	83 ec 1c             	sub    $0x1c,%esp
 8048524:	e8 cb fd ff ff       	call   80482f4 <_init>
 8048529:	8d bb 20 ff ff ff    	lea    -0xe0(%ebx),%edi
 804852f:	8d 83 20 ff ff ff    	lea    -0xe0(%ebx),%eax
 8048535:	29 c7                	sub    %eax,%edi
 8048537:	c1 ff 02             	sar    $0x2,%edi
 804853a:	85 ff                	test   %edi,%edi
 804853c:	74 24                	je     8048562 <__libc_csu_init+0x52>
 804853e:	31 f6                	xor    %esi,%esi
 8048540:	8b 45 10             	mov    0x10(%ebp),%eax
 8048543:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048547:	8b 45 0c             	mov    0xc(%ebp),%eax
 804854a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804854e:	8b 45 08             	mov    0x8(%ebp),%eax
 8048551:	89 04 24             	mov    %eax,(%esp)
 8048554:	ff 94 b3 20 ff ff ff 	call   *-0xe0(%ebx,%esi,4)
 804855b:	83 c6 01             	add    $0x1,%esi
 804855e:	39 fe                	cmp    %edi,%esi
 8048560:	72 de                	jb     8048540 <__libc_csu_init+0x30>
 8048562:	83 c4 1c             	add    $0x1c,%esp
 8048565:	5b                   	pop    %ebx
 8048566:	5e                   	pop    %esi
 8048567:	5f                   	pop    %edi
 8048568:	5d                   	pop    %ebp
 8048569:	c3                   	ret    
 804856a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08048570 <__libc_csu_fini>:
 8048570:	55                   	push   %ebp
 8048571:	89 e5                	mov    %esp,%ebp
 8048573:	5d                   	pop    %ebp
 8048574:	c3                   	ret    

08048575 <__i686.get_pc_thunk.bx>:
 8048575:	8b 1c 24             	mov    (%esp),%ebx
 8048578:	c3                   	ret    
 8048579:	90                   	nop
 804857a:	90                   	nop
 804857b:	90                   	nop
 804857c:	90                   	nop
 804857d:	90                   	nop
 804857e:	90                   	nop
 804857f:	90                   	nop

08048580 <__do_global_ctors_aux>:
 8048580:	55                   	push   %ebp
 8048581:	89 e5                	mov    %esp,%ebp
 8048583:	53                   	push   %ebx
 8048584:	83 ec 04             	sub    $0x4,%esp
 8048587:	a1 14 9f 04 08       	mov    0x8049f14,%eax
 804858c:	83 f8 ff             	cmp    $0xffffffff,%eax
 804858f:	74 13                	je     80485a4 <__do_global_ctors_aux+0x24>
 8048591:	bb 14 9f 04 08       	mov    $0x8049f14,%ebx
 8048596:	66 90                	xchg   %ax,%ax
 8048598:	83 eb 04             	sub    $0x4,%ebx
 804859b:	ff d0                	call   *%eax
 804859d:	8b 03                	mov    (%ebx),%eax
 804859f:	83 f8 ff             	cmp    $0xffffffff,%eax
 80485a2:	75 f4                	jne    8048598 <__do_global_ctors_aux+0x18>
 80485a4:	83 c4 04             	add    $0x4,%esp
 80485a7:	5b                   	pop    %ebx
 80485a8:	5d                   	pop    %ebp
 80485a9:	c3                   	ret    
 80485aa:	90                   	nop
 80485ab:	90                   	nop

Disassembly of section .fini:

080485ac <_fini>:
 80485ac:	55                   	push   %ebp
 80485ad:	89 e5                	mov    %esp,%ebp
 80485af:	53                   	push   %ebx
 80485b0:	83 ec 04             	sub    $0x4,%esp
 80485b3:	e8 00 00 00 00       	call   80485b8 <_fini+0xc>
 80485b8:	5b                   	pop    %ebx
 80485b9:	81 c3 3c 1a 00 00    	add    $0x1a3c,%ebx
 80485bf:	e8 0c fe ff ff       	call   80483d0 <__do_global_dtors_aux>
 80485c4:	59                   	pop    %ecx
 80485c5:	5b                   	pop    %ebx
 80485c6:	c9                   	leave  
 80485c7:	c3                   	ret    
