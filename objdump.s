
main.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 15 b9 00 00 	mov    0xb915(%rip),%rax        # 14000c930 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 16 b9 00 00 	mov    0xb916(%rip),%rax        # 14000c940 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 19 b9 00 00 	mov    0xb919(%rip),%rax        # 14000c950 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 6c b8 00 00 	mov    0xb86c(%rip),%rax        # 14000c8b0 <.refptr.__ImageBase>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 bf b8 00 00 	mov    0xb8bf(%rip),%rax        # 14000c920 <.refptr.__mingw_app_type>
   140001061:	89 0d a5 ef 00 00    	mov    %ecx,0xefa5(%rip)        # 14001000c <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 71 91 00 00       	call   14000a1e8 <__set_app_type>
   140001077:	e8 74 87 00 00       	call   1400097f0 <__p__fmode>
   14000107c:	48 8b 15 7d b9 00 00 	mov    0xb97d(%rip),%rdx        # 14000ca00 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 74 87 00 00       	call   140009800 <__p__commode>
   14000108c:	48 8b 15 4d b9 00 00 	mov    0xb94d(%rip),%rdx        # 14000c9e0 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 64 27 00 00       	call   140003800 <_setargv>
   14000109c:	48 8b 05 cd b7 00 00 	mov    0xb7cd(%rip),%rax        # 14000c870 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 2e 91 00 00       	call   14000a1e8 <__set_app_type>
   1400010ba:	eb bb                	jmp    140001077 <pre_c_init+0x67>
   1400010bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010c0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   1400010c4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   1400010c9:	74 45                	je     140001110 <pre_c_init+0x100>
   1400010cb:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   1400010d0:	75 88                	jne    14000105a <pre_c_init+0x4a>
   1400010d2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   1400010d9:	0f 86 7b ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   1400010df:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
   1400010e5:	31 c9                	xor    %ecx,%ecx
   1400010e7:	85 d2                	test   %edx,%edx
   1400010e9:	0f 95 c1             	setne  %cl
   1400010ec:	e9 69 ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   1400010f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400010f8:	48 8b 0d 21 b9 00 00 	mov    0xb921(%rip),%rcx        # 14000ca20 <.refptr._matherr>
   1400010ff:	e8 6c 2e 00 00       	call   140003f70 <__mingw_setusermatherr>
   140001104:	31 c0                	xor    %eax,%eax
   140001106:	48 83 c4 28          	add    $0x28,%rsp
   14000110a:	c3                   	ret
   14000110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001110:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   140001114:	0f 86 40 ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   14000111a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
   140001121:	31 c9                	xor    %ecx,%ecx
   140001123:	45 85 c0             	test   %r8d,%r8d
   140001126:	0f 95 c1             	setne  %cl
   140001129:	e9 2c ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   14000112e:	66 90                	xchg   %ax,%ax

0000000140001130 <pre_cpp_init>:
   140001130:	48 83 ec 38          	sub    $0x38,%rsp
   140001134:	48 8b 05 f5 b8 00 00 	mov    0xb8f5(%rip),%rax        # 14000ca30 <.refptr._newmode>
   14000113b:	4c 8d 05 d6 ee 00 00 	lea    0xeed6(%rip),%r8        # 140010018 <envp>
   140001142:	48 8d 15 d7 ee 00 00 	lea    0xeed7(%rip),%rdx        # 140010020 <argv>
   140001149:	48 8d 0d d8 ee 00 00 	lea    0xeed8(%rip),%rcx        # 140010028 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 ac ee 00 00    	mov    %eax,0xeeac(%rip)        # 140010004 <startinfo>
   140001158:	48 8b 05 91 b8 00 00 	mov    0xb891(%rip),%rax        # 14000c9f0 <.refptr._dowildcard>
   14000115f:	44 8b 08             	mov    (%rax),%r9d
   140001162:	48 8d 05 9b ee 00 00 	lea    0xee9b(%rip),%rax        # 140010004 <startinfo>
   140001169:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   14000116e:	e8 65 90 00 00       	call   14000a1d8 <__getmainargs>
   140001173:	90                   	nop
   140001174:	48 83 c4 38          	add    $0x38,%rsp
   140001178:	c3                   	ret
   140001179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001180 <__tmainCRTStartup>:
   140001180:	41 54                	push   %r12
   140001182:	55                   	push   %rbp
   140001183:	57                   	push   %rdi
   140001184:	56                   	push   %rsi
   140001185:	53                   	push   %rbx
   140001186:	48 83 ec 20          	sub    $0x20,%rsp
   14000118a:	48 8b 1d df b7 00 00 	mov    0xb7df(%rip),%rbx        # 14000c970 <.refptr.__native_startup_lock>
   140001191:	48 8b 2d d8 01 01 00 	mov    0x101d8(%rip),%rbp        # 140011370 <__imp_Sleep>
   140001198:	31 ff                	xor    %edi,%edi
   14000119a:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011a1:	00 00 
   1400011a3:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011a7:	eb 17                	jmp    1400011c0 <__tmainCRTStartup+0x40>
   1400011a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400011b0:	48 39 c6             	cmp    %rax,%rsi
   1400011b3:	0f 84 67 01 00 00    	je     140001320 <__tmainCRTStartup+0x1a0>
   1400011b9:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011be:	ff d5                	call   *%rbp
   1400011c0:	48 89 f8             	mov    %rdi,%rax
   1400011c3:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   1400011c8:	48 85 c0             	test   %rax,%rax
   1400011cb:	75 e3                	jne    1400011b0 <__tmainCRTStartup+0x30>
   1400011cd:	48 8b 35 ac b7 00 00 	mov    0xb7ac(%rip),%rsi        # 14000c980 <.refptr.__native_startup_state>
   1400011d4:	31 ff                	xor    %edi,%edi
   1400011d6:	8b 06                	mov    (%rsi),%eax
   1400011d8:	83 f8 01             	cmp    $0x1,%eax
   1400011db:	0f 84 56 01 00 00    	je     140001337 <__tmainCRTStartup+0x1b7>
   1400011e1:	8b 06                	mov    (%rsi),%eax
   1400011e3:	85 c0                	test   %eax,%eax
   1400011e5:	0f 84 b5 01 00 00    	je     1400013a0 <__tmainCRTStartup+0x220>
   1400011eb:	c7 05 13 ee 00 00 01 	movl   $0x1,0xee13(%rip)        # 140010008 <has_cctor>
   1400011f2:	00 00 00 
   1400011f5:	8b 06                	mov    (%rsi),%eax
   1400011f7:	83 f8 01             	cmp    $0x1,%eax
   1400011fa:	0f 84 4c 01 00 00    	je     14000134c <__tmainCRTStartup+0x1cc>
   140001200:	85 ff                	test   %edi,%edi
   140001202:	0f 84 65 01 00 00    	je     14000136d <__tmainCRTStartup+0x1ed>
   140001208:	48 8b 05 d1 b6 00 00 	mov    0xb6d1(%rip),%rax        # 14000c8e0 <.refptr.__dyn_tls_init_callback>
   14000120f:	48 8b 00             	mov    (%rax),%rax
   140001212:	48 85 c0             	test   %rax,%rax
   140001215:	74 0c                	je     140001223 <__tmainCRTStartup+0xa3>
   140001217:	45 31 c0             	xor    %r8d,%r8d
   14000121a:	ba 02 00 00 00       	mov    $0x2,%edx
   14000121f:	31 c9                	xor    %ecx,%ecx
   140001221:	ff d0                	call   *%rax
   140001223:	e8 a8 29 00 00       	call   140003bd0 <_pei386_runtime_relocator>
   140001228:	48 8b 0d e1 b7 00 00 	mov    0xb7e1(%rip),%rcx        # 14000ca10 <.refptr._gnu_exception_handler>
   14000122f:	ff 15 33 01 01 00    	call   *0x10133(%rip)        # 140011368 <__imp_SetUnhandledExceptionFilter>
   140001235:	48 8b 15 24 b7 00 00 	mov    0xb724(%rip),%rdx        # 14000c960 <.refptr.__mingw_oldexcpt_handler>
   14000123c:	48 8d 0d bd fd ff ff 	lea    -0x243(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   140001243:	48 89 02             	mov    %rax,(%rdx)
   140001246:	e8 a5 86 00 00       	call   1400098f0 <_set_invalid_parameter_handler>
   14000124b:	e8 90 27 00 00       	call   1400039e0 <_fpreset>
   140001250:	8b 1d d2 ed 00 00    	mov    0xedd2(%rip),%ebx        # 140010028 <argc>
   140001256:	8d 7b 01             	lea    0x1(%rbx),%edi
   140001259:	48 63 ff             	movslq %edi,%rdi
   14000125c:	48 c1 e7 03          	shl    $0x3,%rdi
   140001260:	48 89 f9             	mov    %rdi,%rcx
   140001263:	e8 08 90 00 00       	call   14000a270 <malloc>
   140001268:	4c 8b 25 b1 ed 00 00 	mov    0xedb1(%rip),%r12        # 140010020 <argv>
   14000126f:	48 89 c5             	mov    %rax,%rbp
   140001272:	85 db                	test   %ebx,%ebx
   140001274:	0f 8e 46 01 00 00    	jle    1400013c0 <__tmainCRTStartup+0x240>
   14000127a:	48 83 ef 08          	sub    $0x8,%rdi
   14000127e:	31 db                	xor    %ebx,%ebx
   140001280:	49 8b 0c 1c          	mov    (%r12,%rbx,1),%rcx
   140001284:	e8 17 90 00 00       	call   14000a2a0 <strlen>
   140001289:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000128d:	48 89 f1             	mov    %rsi,%rcx
   140001290:	e8 db 8f 00 00       	call   14000a270 <malloc>
   140001295:	49 89 f0             	mov    %rsi,%r8
   140001298:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
   14000129d:	49 8b 14 1c          	mov    (%r12,%rbx,1),%rdx
   1400012a1:	48 89 c1             	mov    %rax,%rcx
   1400012a4:	48 83 c3 08          	add    $0x8,%rbx
   1400012a8:	e8 cb 8f 00 00       	call   14000a278 <memcpy>
   1400012ad:	48 39 df             	cmp    %rbx,%rdi
   1400012b0:	75 ce                	jne    140001280 <__tmainCRTStartup+0x100>
   1400012b2:	48 01 ef             	add    %rbp,%rdi
   1400012b5:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
   1400012bc:	48 89 2d 5d ed 00 00 	mov    %rbp,0xed5d(%rip)        # 140010020 <argv>
   1400012c3:	e8 18 25 00 00       	call   1400037e0 <__main>
   1400012c8:	48 8b 05 21 b6 00 00 	mov    0xb621(%rip),%rax        # 14000c8f0 <.refptr.__imp___initenv>
   1400012cf:	4c 8b 05 42 ed 00 00 	mov    0xed42(%rip),%r8        # 140010018 <envp>
   1400012d6:	8b 0d 4c ed 00 00    	mov    0xed4c(%rip),%ecx        # 140010028 <argc>
   1400012dc:	48 8b 00             	mov    (%rax),%rax
   1400012df:	4c 89 00             	mov    %r8,(%rax)
   1400012e2:	48 8b 15 37 ed 00 00 	mov    0xed37(%rip),%rdx        # 140010020 <argv>
   1400012e9:	e8 62 01 00 00       	call   140001450 <main>
   1400012ee:	8b 0d 18 ed 00 00    	mov    0xed18(%rip),%ecx        # 14001000c <managedapp>
   1400012f4:	89 05 16 ed 00 00    	mov    %eax,0xed16(%rip)        # 140010010 <mainret>
   1400012fa:	85 c9                	test   %ecx,%ecx
   1400012fc:	0f 84 c6 00 00 00    	je     1400013c8 <__tmainCRTStartup+0x248>
   140001302:	8b 15 00 ed 00 00    	mov    0xed00(%rip),%edx        # 140010008 <has_cctor>
   140001308:	85 d2                	test   %edx,%edx
   14000130a:	74 74                	je     140001380 <__tmainCRTStartup+0x200>
   14000130c:	48 83 c4 20          	add    $0x20,%rsp
   140001310:	5b                   	pop    %rbx
   140001311:	5e                   	pop    %rsi
   140001312:	5f                   	pop    %rdi
   140001313:	5d                   	pop    %rbp
   140001314:	41 5c                	pop    %r12
   140001316:	c3                   	ret
   140001317:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000131e:	00 00 
   140001320:	48 8b 35 59 b6 00 00 	mov    0xb659(%rip),%rsi        # 14000c980 <.refptr.__native_startup_state>
   140001327:	bf 01 00 00 00       	mov    $0x1,%edi
   14000132c:	8b 06                	mov    (%rsi),%eax
   14000132e:	83 f8 01             	cmp    $0x1,%eax
   140001331:	0f 85 aa fe ff ff    	jne    1400011e1 <__tmainCRTStartup+0x61>
   140001337:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   14000133c:	e8 b7 8e 00 00       	call   14000a1f8 <_amsg_exit>
   140001341:	8b 06                	mov    (%rsi),%eax
   140001343:	83 f8 01             	cmp    $0x1,%eax
   140001346:	0f 85 b4 fe ff ff    	jne    140001200 <__tmainCRTStartup+0x80>
   14000134c:	48 8b 15 5d b6 00 00 	mov    0xb65d(%rip),%rdx        # 14000c9b0 <.refptr.__xc_z>
   140001353:	48 8b 0d 46 b6 00 00 	mov    0xb646(%rip),%rcx        # 14000c9a0 <.refptr.__xc_a>
   14000135a:	e8 b1 8e 00 00       	call   14000a210 <_initterm>
   14000135f:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   140001365:	85 ff                	test   %edi,%edi
   140001367:	0f 85 9b fe ff ff    	jne    140001208 <__tmainCRTStartup+0x88>
   14000136d:	31 c0                	xor    %eax,%eax
   14000136f:	48 87 03             	xchg   %rax,(%rbx)
   140001372:	e9 91 fe ff ff       	jmp    140001208 <__tmainCRTStartup+0x88>
   140001377:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000137e:	00 00 
   140001380:	e8 7b 8e 00 00       	call   14000a200 <_cexit>
   140001385:	8b 05 85 ec 00 00    	mov    0xec85(%rip),%eax        # 140010010 <mainret>
   14000138b:	48 83 c4 20          	add    $0x20,%rsp
   14000138f:	5b                   	pop    %rbx
   140001390:	5e                   	pop    %rsi
   140001391:	5f                   	pop    %rdi
   140001392:	5d                   	pop    %rbp
   140001393:	41 5c                	pop    %r12
   140001395:	c3                   	ret
   140001396:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000139d:	00 00 00 
   1400013a0:	48 8b 15 29 b6 00 00 	mov    0xb629(%rip),%rdx        # 14000c9d0 <.refptr.__xi_z>
   1400013a7:	48 8b 0d 12 b6 00 00 	mov    0xb612(%rip),%rcx        # 14000c9c0 <.refptr.__xi_a>
   1400013ae:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   1400013b4:	e8 57 8e 00 00       	call   14000a210 <_initterm>
   1400013b9:	e9 37 fe ff ff       	jmp    1400011f5 <__tmainCRTStartup+0x75>
   1400013be:	66 90                	xchg   %ax,%ax
   1400013c0:	48 89 c7             	mov    %rax,%rdi
   1400013c3:	e9 ed fe ff ff       	jmp    1400012b5 <__tmainCRTStartup+0x135>
   1400013c8:	89 c1                	mov    %eax,%ecx
   1400013ca:	e8 71 8e 00 00       	call   14000a240 <exit>
   1400013cf:	90                   	nop

00000001400013d0 <WinMainCRTStartup>:
   1400013d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013d4 <.l_startw>:
   1400013d4:	48 8b 05 45 b5 00 00 	mov    0xb545(%rip),%rax        # 14000c920 <.refptr.__mingw_app_type>
   1400013db:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400013e1:	e8 9a fd ff ff       	call   140001180 <__tmainCRTStartup>
   1400013e6:	90                   	nop

00000001400013e7 <.l_endw>:
   1400013e7:	90                   	nop
   1400013e8:	48 83 c4 28          	add    $0x28,%rsp
   1400013ec:	c3                   	ret
   1400013ed:	0f 1f 00             	nopl   (%rax)

00000001400013f0 <mainCRTStartup>:
   1400013f0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013f4 <.l_start>:
   1400013f4:	48 8b 05 25 b5 00 00 	mov    0xb525(%rip),%rax        # 14000c920 <.refptr.__mingw_app_type>
   1400013fb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001401:	e8 7a fd ff ff       	call   140001180 <__tmainCRTStartup>
   140001406:	90                   	nop

0000000140001407 <.l_end>:
   140001407:	90                   	nop
   140001408:	48 83 c4 28          	add    $0x28,%rsp
   14000140c:	c3                   	ret
   14000140d:	0f 1f 00             	nopl   (%rax)

0000000140001410 <atexit>:
   140001410:	48 83 ec 28          	sub    $0x28,%rsp
   140001414:	e8 07 8e 00 00       	call   14000a220 <_onexit>
   140001419:	48 83 f8 01          	cmp    $0x1,%rax
   14000141d:	19 c0                	sbb    %eax,%eax
   14000141f:	48 83 c4 28          	add    $0x28,%rsp
   140001423:	c3                   	ret
   140001424:	90                   	nop
   140001425:	90                   	nop
   140001426:	90                   	nop
   140001427:	90                   	nop
   140001428:	90                   	nop
   140001429:	90                   	nop
   14000142a:	90                   	nop
   14000142b:	90                   	nop
   14000142c:	90                   	nop
   14000142d:	90                   	nop
   14000142e:	90                   	nop
   14000142f:	90                   	nop

0000000140001430 <__gcc_register_frame>:
   140001430:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 140001440 <__gcc_deregister_frame>
   140001437:	e9 d4 ff ff ff       	jmp    140001410 <atexit>
   14000143c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001440 <__gcc_deregister_frame>:
   140001440:	c3                   	ret
   140001441:	90                   	nop
   140001442:	90                   	nop
   140001443:	90                   	nop
   140001444:	90                   	nop
   140001445:	90                   	nop
   140001446:	90                   	nop
   140001447:	90                   	nop
   140001448:	90                   	nop
   140001449:	90                   	nop
   14000144a:	90                   	nop
   14000144b:	90                   	nop
   14000144c:	90                   	nop
   14000144d:	90                   	nop
   14000144e:	90                   	nop
   14000144f:	90                   	nop

0000000140001450 <main>:
   140001450:	55                   	push   %rbp
   140001451:	57                   	push   %rdi
   140001452:	56                   	push   %rsi
   140001453:	53                   	push   %rbx
   140001454:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
   14000145b:	48 8d ac 24 f0 00 00 	lea    0xf0(%rsp),%rbp
   140001462:	00 
   140001463:	89 4d 30             	mov    %ecx,0x30(%rbp)
   140001466:	48 89 55 38          	mov    %rdx,0x38(%rbp)
   14000146a:	e8 71 23 00 00       	call   1400037e0 <__main>
   14000146f:	f3 0f 10 05 05 ac 00 	movss  0xac05(%rip),%xmm0        # 14000c07c <_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE+0x1>
   140001476:	00 
   140001477:	f3 0f 11 45 a8       	movss  %xmm0,-0x58(%rbp)
   14000147c:	f3 0f 10 05 fc ab 00 	movss  0xabfc(%rip),%xmm0        # 14000c080 <_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE+0x5>
   140001483:	00 
   140001484:	f3 0f 11 45 ac       	movss  %xmm0,-0x54(%rbp)
   140001489:	b9 31 f2 00 00       	mov    $0xf231,%ecx
   14000148e:	e8 4d 33 00 00       	call   1400047e0 <SDL_Init>
   140001493:	c7 44 24 28 00 20 00 	movl   $0x2000,0x28(%rsp)
   14000149a:	00 
   14000149b:	c7 44 24 20 58 02 00 	movl   $0x258,0x20(%rsp)
   1400014a2:	00 
   1400014a3:	41 b9 20 03 00 00    	mov    $0x320,%r9d
   1400014a9:	41 b8 c8 00 00 00    	mov    $0xc8,%r8d
   1400014af:	ba c8 00 00 00       	mov    $0xc8,%edx
   1400014b4:	48 8d 05 45 ab 00 00 	lea    0xab45(%rip),%rax        # 14000c000 <.rdata>
   1400014bb:	48 89 c1             	mov    %rax,%rcx
   1400014be:	e8 4d 33 00 00       	call   140004810 <SDL_CreateWindow>
   1400014c3:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400014c7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400014cb:	41 b8 06 00 00 00    	mov    $0x6,%r8d
   1400014d1:	ba ff ff ff ff       	mov    $0xffffffff,%edx
   1400014d6:	48 89 c1             	mov    %rax,%rcx
   1400014d9:	e8 3a 33 00 00       	call   140004818 <SDL_CreateRenderer>
   1400014de:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   1400014e2:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   1400014e7:	75 48                	jne    140001531 <main+0xe1>
   1400014e9:	48 8d 05 20 ab 00 00 	lea    0xab20(%rip),%rax        # 14000c010 <.rdata+0x10>
   1400014f0:	48 89 c2             	mov    %rax,%rdx
   1400014f3:	48 8b 05 86 b3 00 00 	mov    0xb386(%rip),%rax        # 14000c880 <__fu0__ZSt4cout>
   1400014fa:	48 89 c1             	mov    %rax,%rcx
   1400014fd:	e8 56 33 00 00       	call   140004858 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001502:	48 89 c3             	mov    %rax,%rbx
   140001505:	e8 ee 32 00 00       	call   1400047f8 <SDL_GetError>
   14000150a:	48 89 c2             	mov    %rax,%rdx
   14000150d:	48 89 d9             	mov    %rbx,%rcx
   140001510:	e8 43 33 00 00       	call   140004858 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001515:	48 89 c1             	mov    %rax,%rcx
   140001518:	48 8b 05 71 b3 00 00 	mov    0xb371(%rip),%rax        # 14000c890 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   14000151f:	48 89 c2             	mov    %rax,%rdx
   140001522:	e8 71 33 00 00       	call   140004898 <_ZNSolsEPFRSoS_E>
   140001527:	bb 01 00 00 00       	mov    $0x1,%ebx
   14000152c:	e9 e8 01 00 00       	jmp    140001719 <main+0x2c9>
   140001531:	48 8d 95 68 ff ff ff 	lea    -0x98(%rbp),%rdx
   140001538:	48 8d 85 6c ff ff ff 	lea    -0x94(%rbp),%rax
   14000153f:	48 89 c1             	mov    %rax,%rcx
   140001542:	e8 a1 32 00 00       	call   1400047e8 <SDL_GetMouseState>
   140001547:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%rbp)
   14000154e:	c7 45 b4 01 00 00 00 	movl   $0x1,-0x4c(%rbp)
   140001555:	c7 45 b8 02 00 00 00 	movl   $0x2,-0x48(%rbp)
   14000155c:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%rbp)
   140001563:	c7 45 c0 02 00 00 00 	movl   $0x2,-0x40(%rbp)
   14000156a:	c7 45 c4 03 00 00 00 	movl   $0x3,-0x3c(%rbp)
   140001571:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
   140001575:	48 89 c6             	mov    %rax,%rsi
   140001578:	bf 06 00 00 00       	mov    $0x6,%edi
   14000157d:	48 8d 45 d7          	lea    -0x29(%rbp),%rax
   140001581:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   140001585:	90                   	nop
   140001586:	90                   	nop
   140001587:	48 89 b5 40 ff ff ff 	mov    %rsi,-0xc0(%rbp)
   14000158e:	48 89 bd 48 ff ff ff 	mov    %rdi,-0xb8(%rbp)
   140001595:	48 8d 4d d7          	lea    -0x29(%rbp),%rcx
   140001599:	48 8d 95 40 ff ff ff 	lea    -0xc0(%rbp),%rdx
   1400015a0:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
   1400015a7:	49 89 c8             	mov    %rcx,%r8
   1400015aa:	48 89 c1             	mov    %rax,%rcx
   1400015ad:	e8 9e 96 00 00       	call   14000ac50 <_ZNSt6vectorIiSaIiEEC1ESt16initializer_listIiERKS0_>
   1400015b2:	48 8d 45 d7          	lea    -0x29(%rbp),%rax
   1400015b6:	48 89 c1             	mov    %rax,%rcx
   1400015b9:	e8 62 92 00 00       	call   14000a820 <_ZNSt15__new_allocatorIiED2Ev>
   1400015be:	90                   	nop
   1400015bf:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
   1400015c3:	e8 b4 05 00 00       	call   140001b7c <_ZN5Input11GetInstanceEv>
   1400015c8:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   1400015cc:	48 8d 05 57 aa 00 00 	lea    0xaa57(%rip),%rax        # 14000c02a <.rdata+0x2a>
   1400015d3:	48 89 c2             	mov    %rax,%rdx
   1400015d6:	48 8b 05 a3 b2 00 00 	mov    0xb2a3(%rip),%rax        # 14000c880 <__fu0__ZSt4cout>
   1400015dd:	48 89 c1             	mov    %rax,%rcx
   1400015e0:	e8 73 32 00 00       	call   140004858 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400015e5:	48 89 c1             	mov    %rax,%rcx
   1400015e8:	48 8b 05 a1 b2 00 00 	mov    0xb2a1(%rip),%rax        # 14000c890 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400015ef:	48 89 c2             	mov    %rax,%rdx
   1400015f2:	e8 a1 32 00 00       	call   140004898 <_ZNSolsEPFRSoS_E>
   1400015f7:	e9 e2 00 00 00       	jmp    1400016de <main+0x28e>
   1400015fc:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
   140001603:	48 89 c1             	mov    %rax,%rcx
   140001606:	e8 cd 31 00 00       	call   1400047d8 <SDL_PollEvent>
   14000160b:	85 c0                	test   %eax,%eax
   14000160d:	0f 95 c0             	setne  %al
   140001610:	84 c0                	test   %al,%al
   140001612:	74 3d                	je     140001651 <main+0x201>
   140001614:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
   14000161a:	3d 00 01 00 00       	cmp    $0x100,%eax
   14000161f:	75 30                	jne    140001651 <main+0x201>
   140001621:	48 8d 05 08 aa 00 00 	lea    0xaa08(%rip),%rax        # 14000c030 <.rdata+0x30>
   140001628:	48 89 c2             	mov    %rax,%rdx
   14000162b:	48 8b 05 4e b2 00 00 	mov    0xb24e(%rip),%rax        # 14000c880 <__fu0__ZSt4cout>
   140001632:	48 89 c1             	mov    %rax,%rcx
   140001635:	e8 1e 32 00 00       	call   140004858 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   14000163a:	48 89 c1             	mov    %rax,%rcx
   14000163d:	48 8b 05 4c b2 00 00 	mov    0xb24c(%rip),%rax        # 14000c890 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001644:	48 89 c2             	mov    %rax,%rdx
   140001647:	e8 4c 32 00 00       	call   140004898 <_ZNSolsEPFRSoS_E>
   14000164c:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
   140001650:	90                   	nop
   140001651:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
   140001657:	89 c2                	mov    %eax,%edx
   140001659:	48 8b 05 20 b2 00 00 	mov    0xb220(%rip),%rax        # 14000c880 <__fu0__ZSt4cout>
   140001660:	48 89 c1             	mov    %rax,%rcx
   140001663:	e8 20 32 00 00       	call   140004888 <_ZNSolsEi>
   140001668:	48 89 c1             	mov    %rax,%rcx
   14000166b:	48 8d 05 c4 a9 00 00 	lea    0xa9c4(%rip),%rax        # 14000c036 <.rdata+0x36>
   140001672:	48 89 c2             	mov    %rax,%rdx
   140001675:	e8 de 31 00 00       	call   140004858 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   14000167a:	48 89 c1             	mov    %rax,%rcx
   14000167d:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
   140001683:	89 c2                	mov    %eax,%edx
   140001685:	e8 fe 31 00 00       	call   140004888 <_ZNSolsEi>
   14000168a:	48 89 c1             	mov    %rax,%rcx
   14000168d:	48 8b 05 fc b1 00 00 	mov    0xb1fc(%rip),%rax        # 14000c890 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001694:	48 89 c2             	mov    %rax,%rdx
   140001697:	e8 fc 31 00 00       	call   140004898 <_ZNSolsEPFRSoS_E>
   14000169c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1400016a0:	48 89 c1             	mov    %rax,%rcx
   1400016a3:	e8 20 31 00 00       	call   1400047c8 <SDL_RenderClear>
   1400016a8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1400016ac:	c7 44 24 20 ff 00 00 	movl   $0xff,0x20(%rsp)
   1400016b3:	00 
   1400016b4:	41 b9 ff 00 00 00    	mov    $0xff,%r9d
   1400016ba:	41 b8 ff 00 00 00    	mov    $0xff,%r8d
   1400016c0:	ba ff 00 00 00       	mov    $0xff,%edx
   1400016c5:	48 89 c1             	mov    %rax,%rcx
   1400016c8:	e8 e3 30 00 00       	call   1400047b0 <SDL_SetRenderDrawColor>
   1400016cd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1400016d1:	48 89 c1             	mov    %rax,%rcx
   1400016d4:	e8 df 30 00 00       	call   1400047b8 <SDL_RenderPresent>
   1400016d9:	e8 62 04 00 00       	call   140001b40 <_ZN5Input6UpdateEv>
   1400016de:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
   1400016e2:	0f 85 14 ff ff ff    	jne    1400015fc <main+0x1ac>
   1400016e8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1400016ec:	48 89 c1             	mov    %rax,%rcx
   1400016ef:	e8 14 31 00 00       	call   140004808 <SDL_DestroyRenderer>
   1400016f4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400016f8:	48 89 c1             	mov    %rax,%rcx
   1400016fb:	e8 00 31 00 00       	call   140004800 <SDL_DestroyWindow>
   140001700:	e8 cb 30 00 00       	call   1400047d0 <SDL_Quit>
   140001705:	bb 00 00 00 00       	mov    $0x0,%ebx
   14000170a:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
   140001711:	48 89 c1             	mov    %rax,%rcx
   140001714:	e8 c7 95 00 00       	call   14000ace0 <_ZNSt6vectorIiSaIiEED1Ev>
   140001719:	89 d8                	mov    %ebx,%eax
   14000171b:	eb 38                	jmp    140001755 <main+0x305>
   14000171d:	48 89 c3             	mov    %rax,%rbx
   140001720:	48 8d 45 d7          	lea    -0x29(%rbp),%rax
   140001724:	48 89 c1             	mov    %rax,%rcx
   140001727:	e8 f4 90 00 00       	call   14000a820 <_ZNSt15__new_allocatorIiED2Ev>
   14000172c:	90                   	nop
   14000172d:	48 89 d8             	mov    %rbx,%rax
   140001730:	48 89 c1             	mov    %rax,%rcx
   140001733:	e8 68 31 00 00       	call   1400048a0 <_Unwind_Resume>
   140001738:	48 89 c3             	mov    %rax,%rbx
   14000173b:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
   140001742:	48 89 c1             	mov    %rax,%rcx
   140001745:	e8 96 95 00 00       	call   14000ace0 <_ZNSt6vectorIiSaIiEED1Ev>
   14000174a:	48 89 d8             	mov    %rbx,%rax
   14000174d:	48 89 c1             	mov    %rax,%rcx
   140001750:	e8 4b 31 00 00       	call   1400048a0 <_Unwind_Resume>
   140001755:	48 81 c4 f8 00 00 00 	add    $0xf8,%rsp
   14000175c:	5b                   	pop    %rbx
   14000175d:	5e                   	pop    %rsi
   14000175e:	5f                   	pop    %rdi
   14000175f:	5d                   	pop    %rbp
   140001760:	c3                   	ret
   140001761:	90                   	nop
   140001762:	90                   	nop
   140001763:	90                   	nop
   140001764:	90                   	nop
   140001765:	90                   	nop
   140001766:	90                   	nop
   140001767:	90                   	nop
   140001768:	90                   	nop
   140001769:	90                   	nop
   14000176a:	90                   	nop
   14000176b:	90                   	nop
   14000176c:	90                   	nop
   14000176d:	90                   	nop
   14000176e:	90                   	nop
   14000176f:	90                   	nop

0000000140001770 <_Z7Radiansf>:
   140001770:	55                   	push   %rbp
   140001771:	48 89 e5             	mov    %rsp,%rbp
   140001774:	f3 0f 11 45 10       	movss  %xmm0,0x10(%rbp)
   140001779:	f3 0f 10 4d 10       	movss  0x10(%rbp),%xmm1
   14000177e:	f3 0f 10 05 0a a9 00 	movss  0xa90a(%rip),%xmm0        # 14000c090 <.rdata>
   140001785:	00 
   140001786:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
   14000178a:	f3 0f 10 0d 02 a9 00 	movss  0xa902(%rip),%xmm1        # 14000c094 <.rdata+0x4>
   140001791:	00 
   140001792:	f3 0f 5e c1          	divss  %xmm1,%xmm0
   140001796:	5d                   	pop    %rbp
   140001797:	c3                   	ret

0000000140001798 <_Z6Degreef>:
   140001798:	55                   	push   %rbp
   140001799:	48 89 e5             	mov    %rsp,%rbp
   14000179c:	f3 0f 11 45 10       	movss  %xmm0,0x10(%rbp)
   1400017a1:	f3 0f 10 4d 10       	movss  0x10(%rbp),%xmm1
   1400017a6:	f3 0f 10 05 e6 a8 00 	movss  0xa8e6(%rip),%xmm0        # 14000c094 <.rdata+0x4>
   1400017ad:	00 
   1400017ae:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
   1400017b2:	f3 0f 10 0d d6 a8 00 	movss  0xa8d6(%rip),%xmm1        # 14000c090 <.rdata>
   1400017b9:	00 
   1400017ba:	f3 0f 5e c1          	divss  %xmm1,%xmm0
   1400017be:	5d                   	pop    %rbp
   1400017bf:	c3                   	ret

00000001400017c0 <_Z7B_Clampiii>:
   1400017c0:	55                   	push   %rbp
   1400017c1:	48 89 e5             	mov    %rsp,%rbp
   1400017c4:	89 4d 10             	mov    %ecx,0x10(%rbp)
   1400017c7:	89 55 18             	mov    %edx,0x18(%rbp)
   1400017ca:	44 89 45 20          	mov    %r8d,0x20(%rbp)
   1400017ce:	8b 45 20             	mov    0x20(%rbp),%eax
   1400017d1:	3b 45 10             	cmp    0x10(%rbp),%eax
   1400017d4:	7f 05                	jg     1400017db <_Z7B_Clampiii+0x1b>
   1400017d6:	8b 45 10             	mov    0x10(%rbp),%eax
   1400017d9:	eb 10                	jmp    1400017eb <_Z7B_Clampiii+0x2b>
   1400017db:	8b 45 20             	mov    0x20(%rbp),%eax
   1400017de:	3b 45 18             	cmp    0x18(%rbp),%eax
   1400017e1:	7c 05                	jl     1400017e8 <_Z7B_Clampiii+0x28>
   1400017e3:	8b 45 18             	mov    0x18(%rbp),%eax
   1400017e6:	eb 03                	jmp    1400017eb <_Z7B_Clampiii+0x2b>
   1400017e8:	8b 45 20             	mov    0x20(%rbp),%eax
   1400017eb:	5d                   	pop    %rbp
   1400017ec:	c3                   	ret

00000001400017ed <_Z7B_Clampfff>:
   1400017ed:	55                   	push   %rbp
   1400017ee:	48 89 e5             	mov    %rsp,%rbp
   1400017f1:	f3 0f 11 45 10       	movss  %xmm0,0x10(%rbp)
   1400017f6:	f3 0f 11 4d 18       	movss  %xmm1,0x18(%rbp)
   1400017fb:	f3 0f 11 55 20       	movss  %xmm2,0x20(%rbp)
   140001800:	f3 0f 10 45 10       	movss  0x10(%rbp),%xmm0
   140001805:	0f 2f 45 20          	comiss 0x20(%rbp),%xmm0
   140001809:	72 07                	jb     140001812 <_Z7B_Clampfff+0x25>
   14000180b:	f3 0f 10 45 10       	movss  0x10(%rbp),%xmm0
   140001810:	eb 17                	jmp    140001829 <_Z7B_Clampfff+0x3c>
   140001812:	f3 0f 10 45 20       	movss  0x20(%rbp),%xmm0
   140001817:	0f 2f 45 18          	comiss 0x18(%rbp),%xmm0
   14000181b:	72 07                	jb     140001824 <_Z7B_Clampfff+0x37>
   14000181d:	f3 0f 10 45 18       	movss  0x18(%rbp),%xmm0
   140001822:	eb 05                	jmp    140001829 <_Z7B_Clampfff+0x3c>
   140001824:	f3 0f 10 45 20       	movss  0x20(%rbp),%xmm0
   140001829:	5d                   	pop    %rbp
   14000182a:	c3                   	ret
   14000182b:	90                   	nop
   14000182c:	90                   	nop
   14000182d:	90                   	nop
   14000182e:	90                   	nop
   14000182f:	90                   	nop

0000000140001830 <_ZN6Camera6renderEPvi>:
   140001830:	55                   	push   %rbp
   140001831:	48 89 e5             	mov    %rsp,%rbp
   140001834:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001838:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000183c:	44 89 45 20          	mov    %r8d,0x20(%rbp)
   140001840:	90                   	nop
   140001841:	5d                   	pop    %rbp
   140001842:	c3                   	ret
   140001843:	90                   	nop

0000000140001844 <_ZN6Camera11DrawCirclesEPP6Spherei>:
   140001844:	55                   	push   %rbp
   140001845:	48 89 e5             	mov    %rsp,%rbp
   140001848:	48 83 ec 30          	sub    $0x30,%rsp
   14000184c:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001850:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140001854:	44 89 45 20          	mov    %r8d,0x20(%rbp)
   140001858:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   14000185f:	eb 27                	jmp    140001888 <_ZN6Camera11DrawCirclesEPP6Spherei+0x44>
   140001861:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001864:	48 98                	cltq
   140001866:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   14000186d:	00 
   14000186e:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140001872:	48 01 d0             	add    %rdx,%rax
   140001875:	48 8b 10             	mov    (%rax),%rdx
   140001878:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000187c:	48 89 c1             	mov    %rax,%rcx
   14000187f:	e8 14 00 00 00       	call   140001898 <_ZN6Camera10DrawCircleEP6Sphere>
   140001884:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   140001888:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000188b:	3b 45 20             	cmp    0x20(%rbp),%eax
   14000188e:	7c d1                	jl     140001861 <_ZN6Camera11DrawCirclesEPP6Spherei+0x1d>
   140001890:	90                   	nop
   140001891:	90                   	nop
   140001892:	48 83 c4 30          	add    $0x30,%rsp
   140001896:	5d                   	pop    %rbp
   140001897:	c3                   	ret

0000000140001898 <_ZN6Camera10DrawCircleEP6Sphere>:
   140001898:	55                   	push   %rbp
   140001899:	48 89 e5             	mov    %rsp,%rbp
   14000189c:	48 83 ec 40          	sub    $0x40,%rsp
   1400018a0:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400018a4:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   1400018a8:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400018ac:	f3 0f 10 40 3c       	movss  0x3c(%rax),%xmm0
   1400018b1:	f3 0f 58 c0          	addss  %xmm0,%xmm0
   1400018b5:	f3 0f 2c c0          	cvttss2si %xmm0,%eax
   1400018b9:	89 45 e8             	mov    %eax,-0x18(%rbp)
   1400018bc:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400018c0:	f3 0f 10 00          	movss  (%rax),%xmm0
   1400018c4:	f3 0f 2c c0          	cvttss2si %xmm0,%eax
   1400018c8:	89 45 e4             	mov    %eax,-0x1c(%rbp)
   1400018cb:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400018cf:	f3 0f 10 40 04       	movss  0x4(%rax),%xmm0
   1400018d4:	f3 0f 2c c0          	cvttss2si %xmm0,%eax
   1400018d8:	89 45 e0             	mov    %eax,-0x20(%rbp)
   1400018db:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400018df:	f3 0f 10 40 3c       	movss  0x3c(%rax),%xmm0
   1400018e4:	f3 0f 10 0d b8 a7 00 	movss  0xa7b8(%rip),%xmm1        # 14000c0a4 <_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE+0x2>
   1400018eb:	00 
   1400018ec:	f3 0f 5c c1          	subss  %xmm1,%xmm0
   1400018f0:	f3 0f 2c c0          	cvttss2si %xmm0,%eax
   1400018f4:	89 45 fc             	mov    %eax,-0x4(%rbp)
   1400018f7:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
   1400018fe:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%rbp)
   140001905:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%rbp)
   14000190c:	8b 45 f4             	mov    -0xc(%rbp),%eax
   14000190f:	2b 45 e8             	sub    -0x18(%rbp),%eax
   140001912:	89 45 ec             	mov    %eax,-0x14(%rbp)
   140001915:	e9 47 01 00 00       	jmp    140001a61 <_ZN6Camera10DrawCircleEP6Sphere+0x1c9>
   14000191a:	8b 45 e0             	mov    -0x20(%rbp),%eax
   14000191d:	2b 45 f8             	sub    -0x8(%rbp),%eax
   140001920:	89 c1                	mov    %eax,%ecx
   140001922:	8b 55 e4             	mov    -0x1c(%rbp),%edx
   140001925:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001928:	01 c2                	add    %eax,%edx
   14000192a:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000192e:	48 8b 40 10          	mov    0x10(%rax),%rax
   140001932:	41 89 c8             	mov    %ecx,%r8d
   140001935:	48 89 c1             	mov    %rax,%rcx
   140001938:	e8 83 2e 00 00       	call   1400047c0 <SDL_RenderDrawPoint>
   14000193d:	8b 55 e0             	mov    -0x20(%rbp),%edx
   140001940:	8b 45 f8             	mov    -0x8(%rbp),%eax
   140001943:	8d 0c 02             	lea    (%rdx,%rax,1),%ecx
   140001946:	8b 55 e4             	mov    -0x1c(%rbp),%edx
   140001949:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000194c:	01 c2                	add    %eax,%edx
   14000194e:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001952:	48 8b 40 10          	mov    0x10(%rax),%rax
   140001956:	41 89 c8             	mov    %ecx,%r8d
   140001959:	48 89 c1             	mov    %rax,%rcx
   14000195c:	e8 5f 2e 00 00       	call   1400047c0 <SDL_RenderDrawPoint>
   140001961:	8b 45 e0             	mov    -0x20(%rbp),%eax
   140001964:	2b 45 f8             	sub    -0x8(%rbp),%eax
   140001967:	89 c1                	mov    %eax,%ecx
   140001969:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   14000196c:	2b 45 fc             	sub    -0x4(%rbp),%eax
   14000196f:	89 c2                	mov    %eax,%edx
   140001971:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001975:	48 8b 40 10          	mov    0x10(%rax),%rax
   140001979:	41 89 c8             	mov    %ecx,%r8d
   14000197c:	48 89 c1             	mov    %rax,%rcx
   14000197f:	e8 3c 2e 00 00       	call   1400047c0 <SDL_RenderDrawPoint>
   140001984:	8b 55 e0             	mov    -0x20(%rbp),%edx
   140001987:	8b 45 f8             	mov    -0x8(%rbp),%eax
   14000198a:	8d 0c 02             	lea    (%rdx,%rax,1),%ecx
   14000198d:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   140001990:	2b 45 fc             	sub    -0x4(%rbp),%eax
   140001993:	89 c2                	mov    %eax,%edx
   140001995:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001999:	48 8b 40 10          	mov    0x10(%rax),%rax
   14000199d:	41 89 c8             	mov    %ecx,%r8d
   1400019a0:	48 89 c1             	mov    %rax,%rcx
   1400019a3:	e8 18 2e 00 00       	call   1400047c0 <SDL_RenderDrawPoint>
   1400019a8:	8b 45 e0             	mov    -0x20(%rbp),%eax
   1400019ab:	2b 45 fc             	sub    -0x4(%rbp),%eax
   1400019ae:	89 c1                	mov    %eax,%ecx
   1400019b0:	8b 55 e4             	mov    -0x1c(%rbp),%edx
   1400019b3:	8b 45 f8             	mov    -0x8(%rbp),%eax
   1400019b6:	01 c2                	add    %eax,%edx
   1400019b8:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400019bc:	48 8b 40 10          	mov    0x10(%rax),%rax
   1400019c0:	41 89 c8             	mov    %ecx,%r8d
   1400019c3:	48 89 c1             	mov    %rax,%rcx
   1400019c6:	e8 f5 2d 00 00       	call   1400047c0 <SDL_RenderDrawPoint>
   1400019cb:	8b 55 e0             	mov    -0x20(%rbp),%edx
   1400019ce:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400019d1:	8d 0c 02             	lea    (%rdx,%rax,1),%ecx
   1400019d4:	8b 55 e4             	mov    -0x1c(%rbp),%edx
   1400019d7:	8b 45 f8             	mov    -0x8(%rbp),%eax
   1400019da:	01 c2                	add    %eax,%edx
   1400019dc:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400019e0:	48 8b 40 10          	mov    0x10(%rax),%rax
   1400019e4:	41 89 c8             	mov    %ecx,%r8d
   1400019e7:	48 89 c1             	mov    %rax,%rcx
   1400019ea:	e8 d1 2d 00 00       	call   1400047c0 <SDL_RenderDrawPoint>
   1400019ef:	8b 45 e0             	mov    -0x20(%rbp),%eax
   1400019f2:	2b 45 fc             	sub    -0x4(%rbp),%eax
   1400019f5:	89 c1                	mov    %eax,%ecx
   1400019f7:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   1400019fa:	2b 45 f8             	sub    -0x8(%rbp),%eax
   1400019fd:	89 c2                	mov    %eax,%edx
   1400019ff:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001a03:	48 8b 40 10          	mov    0x10(%rax),%rax
   140001a07:	41 89 c8             	mov    %ecx,%r8d
   140001a0a:	48 89 c1             	mov    %rax,%rcx
   140001a0d:	e8 ae 2d 00 00       	call   1400047c0 <SDL_RenderDrawPoint>
   140001a12:	8b 55 e0             	mov    -0x20(%rbp),%edx
   140001a15:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001a18:	8d 0c 02             	lea    (%rdx,%rax,1),%ecx
   140001a1b:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   140001a1e:	2b 45 f8             	sub    -0x8(%rbp),%eax
   140001a21:	89 c2                	mov    %eax,%edx
   140001a23:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001a27:	48 8b 40 10          	mov    0x10(%rax),%rax
   140001a2b:	41 89 c8             	mov    %ecx,%r8d
   140001a2e:	48 89 c1             	mov    %rax,%rcx
   140001a31:	e8 8a 2d 00 00       	call   1400047c0 <SDL_RenderDrawPoint>
   140001a36:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
   140001a3a:	7f 0e                	jg     140001a4a <_ZN6Camera10DrawCircleEP6Sphere+0x1b2>
   140001a3c:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
   140001a40:	8b 45 f0             	mov    -0x10(%rbp),%eax
   140001a43:	01 45 ec             	add    %eax,-0x14(%rbp)
   140001a46:	83 45 f0 02          	addl   $0x2,-0x10(%rbp)
   140001a4a:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
   140001a4e:	7e 11                	jle    140001a61 <_ZN6Camera10DrawCircleEP6Sphere+0x1c9>
   140001a50:	83 6d fc 01          	subl   $0x1,-0x4(%rbp)
   140001a54:	83 45 f4 02          	addl   $0x2,-0xc(%rbp)
   140001a58:	8b 45 f4             	mov    -0xc(%rbp),%eax
   140001a5b:	2b 45 e8             	sub    -0x18(%rbp),%eax
   140001a5e:	01 45 ec             	add    %eax,-0x14(%rbp)
   140001a61:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001a64:	3b 45 f8             	cmp    -0x8(%rbp),%eax
   140001a67:	0f 8d ad fe ff ff    	jge    14000191a <_ZN6Camera10DrawCircleEP6Sphere+0x82>
   140001a6d:	90                   	nop
   140001a6e:	90                   	nop
   140001a6f:	48 83 c4 40          	add    $0x40,%rsp
   140001a73:	5d                   	pop    %rbp
   140001a74:	c3                   	ret
   140001a75:	90                   	nop
   140001a76:	90                   	nop
   140001a77:	90                   	nop
   140001a78:	90                   	nop
   140001a79:	90                   	nop
   140001a7a:	90                   	nop
   140001a7b:	90                   	nop
   140001a7c:	90                   	nop
   140001a7d:	90                   	nop
   140001a7e:	90                   	nop
   140001a7f:	90                   	nop

0000000140001a80 <_ZN5InputC1Ev>:
   140001a80:	55                   	push   %rbp
   140001a81:	48 89 e5             	mov    %rsp,%rbp
   140001a84:	48 83 ec 20          	sub    $0x20,%rsp
   140001a88:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001a8c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001a90:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%rax)
   140001a97:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001a9b:	48 83 c0 10          	add    $0x10,%rax
   140001a9f:	48 89 c1             	mov    %rax,%rcx
   140001aa2:	e8 49 2d 00 00       	call   1400047f0 <SDL_GetKeyboardState>
   140001aa7:	48 8b 55 10          	mov    0x10(%rbp),%rdx
   140001aab:	48 89 02             	mov    %rax,(%rdx)
   140001aae:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001ab2:	8b 40 10             	mov    0x10(%rax),%eax
   140001ab5:	48 98                	cltq
   140001ab7:	48 89 c1             	mov    %rax,%rcx
   140001aba:	e8 79 2d 00 00       	call   140004838 <_Znay>
   140001abf:	48 89 c2             	mov    %rax,%rdx
   140001ac2:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001ac6:	48 89 50 08          	mov    %rdx,0x8(%rax)
   140001aca:	90                   	nop
   140001acb:	48 83 c4 20          	add    $0x20,%rsp
   140001acf:	5d                   	pop    %rbp
   140001ad0:	c3                   	ret
   140001ad1:	90                   	nop

0000000140001ad2 <_ZN5InputD1Ev>:
   140001ad2:	55                   	push   %rbp
   140001ad3:	53                   	push   %rbx
   140001ad4:	48 83 ec 28          	sub    $0x28,%rsp
   140001ad8:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   140001add:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   140001ae1:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140001ae5:	48 8b 40 08          	mov    0x8(%rax),%rax
   140001ae9:	48 85 c0             	test   %rax,%rax
   140001aec:	74 1d                	je     140001b0b <_ZN5InputD1Ev+0x39>
   140001aee:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140001af2:	48 8b 40 08          	mov    0x8(%rax),%rax
   140001af6:	48 85 c0             	test   %rax,%rax
   140001af9:	74 10                	je     140001b0b <_ZN5InputD1Ev+0x39>
   140001afb:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140001aff:	48 8b 40 08          	mov    0x8(%rax),%rax
   140001b03:	48 89 c1             	mov    %rax,%rcx
   140001b06:	e8 3d 2d 00 00       	call   140004848 <_ZdaPv>
   140001b0b:	48 8b 05 3e e5 00 00 	mov    0xe53e(%rip),%rax        # 140010050 <_ZN5Input8instanceE>
   140001b12:	48 85 c0             	test   %rax,%rax
   140001b15:	74 21                	je     140001b38 <_ZN5InputD1Ev+0x66>
   140001b17:	48 8b 1d 32 e5 00 00 	mov    0xe532(%rip),%rbx        # 140010050 <_ZN5Input8instanceE>
   140001b1e:	48 85 db             	test   %rbx,%rbx
   140001b21:	74 15                	je     140001b38 <_ZN5InputD1Ev+0x66>
   140001b23:	48 89 d9             	mov    %rbx,%rcx
   140001b26:	e8 a7 ff ff ff       	call   140001ad2 <_ZN5InputD1Ev>
   140001b2b:	ba 18 00 00 00       	mov    $0x18,%edx
   140001b30:	48 89 d9             	mov    %rbx,%rcx
   140001b33:	e8 08 2d 00 00       	call   140004840 <_ZdlPvy>
   140001b38:	90                   	nop
   140001b39:	48 83 c4 28          	add    $0x28,%rsp
   140001b3d:	5b                   	pop    %rbx
   140001b3e:	5d                   	pop    %rbp
   140001b3f:	c3                   	ret

0000000140001b40 <_ZN5Input6UpdateEv>:
   140001b40:	55                   	push   %rbp
   140001b41:	48 89 e5             	mov    %rsp,%rbp
   140001b44:	48 83 ec 20          	sub    $0x20,%rsp
   140001b48:	48 8b 05 01 e5 00 00 	mov    0xe501(%rip),%rax        # 140010050 <_ZN5Input8instanceE>
   140001b4f:	8b 40 10             	mov    0x10(%rax),%eax
   140001b52:	48 63 c8             	movslq %eax,%rcx
   140001b55:	48 8b 05 f4 e4 00 00 	mov    0xe4f4(%rip),%rax        # 140010050 <_ZN5Input8instanceE>
   140001b5c:	48 8b 10             	mov    (%rax),%rdx
   140001b5f:	48 8b 05 ea e4 00 00 	mov    0xe4ea(%rip),%rax        # 140010050 <_ZN5Input8instanceE>
   140001b66:	48 8b 40 08          	mov    0x8(%rax),%rax
   140001b6a:	49 89 c8             	mov    %rcx,%r8
   140001b6d:	48 89 c1             	mov    %rax,%rcx
   140001b70:	e8 03 87 00 00       	call   14000a278 <memcpy>
   140001b75:	90                   	nop
   140001b76:	48 83 c4 20          	add    $0x20,%rsp
   140001b7a:	5d                   	pop    %rbp
   140001b7b:	c3                   	ret

0000000140001b7c <_ZN5Input11GetInstanceEv>:
   140001b7c:	55                   	push   %rbp
   140001b7d:	57                   	push   %rdi
   140001b7e:	56                   	push   %rsi
   140001b7f:	53                   	push   %rbx
   140001b80:	48 83 ec 28          	sub    $0x28,%rsp
   140001b84:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   140001b89:	48 8b 05 c0 e4 00 00 	mov    0xe4c0(%rip),%rax        # 140010050 <_ZN5Input8instanceE>
   140001b90:	48 85 c0             	test   %rax,%rax
   140001b93:	74 09                	je     140001b9e <_ZN5Input11GetInstanceEv+0x22>
   140001b95:	48 8b 05 b4 e4 00 00 	mov    0xe4b4(%rip),%rax        # 140010050 <_ZN5Input8instanceE>
   140001b9c:	eb 4a                	jmp    140001be8 <_ZN5Input11GetInstanceEv+0x6c>
   140001b9e:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001ba3:	e8 88 2c 00 00       	call   140004830 <_Znwy>
   140001ba8:	48 89 c3             	mov    %rax,%rbx
   140001bab:	bf 01 00 00 00       	mov    $0x1,%edi
   140001bb0:	48 89 d9             	mov    %rbx,%rcx
   140001bb3:	e8 c8 fe ff ff       	call   140001a80 <_ZN5InputC1Ev>
   140001bb8:	48 89 1d 91 e4 00 00 	mov    %rbx,0xe491(%rip)        # 140010050 <_ZN5Input8instanceE>
   140001bbf:	48 8b 05 8a e4 00 00 	mov    0xe48a(%rip),%rax        # 140010050 <_ZN5Input8instanceE>
   140001bc6:	eb 20                	jmp    140001be8 <_ZN5Input11GetInstanceEv+0x6c>
   140001bc8:	48 89 c6             	mov    %rax,%rsi
   140001bcb:	40 84 ff             	test   %dil,%dil
   140001bce:	74 0d                	je     140001bdd <_ZN5Input11GetInstanceEv+0x61>
   140001bd0:	ba 18 00 00 00       	mov    $0x18,%edx
   140001bd5:	48 89 d9             	mov    %rbx,%rcx
   140001bd8:	e8 63 2c 00 00       	call   140004840 <_ZdlPvy>
   140001bdd:	48 89 f0             	mov    %rsi,%rax
   140001be0:	48 89 c1             	mov    %rax,%rcx
   140001be3:	e8 b8 2c 00 00       	call   1400048a0 <_Unwind_Resume>
   140001be8:	48 83 c4 28          	add    $0x28,%rsp
   140001bec:	5b                   	pop    %rbx
   140001bed:	5e                   	pop    %rsi
   140001bee:	5f                   	pop    %rdi
   140001bef:	5d                   	pop    %rbp
   140001bf0:	c3                   	ret
   140001bf1:	90                   	nop

0000000140001bf2 <_ZN5Input10GetKeyDownEi>:
   140001bf2:	55                   	push   %rbp
   140001bf3:	48 89 e5             	mov    %rsp,%rbp
   140001bf6:	89 4d 10             	mov    %ecx,0x10(%rbp)
   140001bf9:	48 8b 05 50 e4 00 00 	mov    0xe450(%rip),%rax        # 140010050 <_ZN5Input8instanceE>
   140001c00:	48 8b 10             	mov    (%rax),%rdx
   140001c03:	8b 45 10             	mov    0x10(%rbp),%eax
   140001c06:	48 98                	cltq
   140001c08:	48 01 d0             	add    %rdx,%rax
   140001c0b:	0f b6 00             	movzbl (%rax),%eax
   140001c0e:	84 c0                	test   %al,%al
   140001c10:	74 21                	je     140001c33 <_ZN5Input10GetKeyDownEi+0x41>
   140001c12:	48 8b 05 37 e4 00 00 	mov    0xe437(%rip),%rax        # 140010050 <_ZN5Input8instanceE>
   140001c19:	48 8b 50 08          	mov    0x8(%rax),%rdx
   140001c1d:	8b 45 10             	mov    0x10(%rbp),%eax
   140001c20:	48 98                	cltq
   140001c22:	48 01 d0             	add    %rdx,%rax
   140001c25:	0f b6 00             	movzbl (%rax),%eax
   140001c28:	84 c0                	test   %al,%al
   140001c2a:	75 07                	jne    140001c33 <_ZN5Input10GetKeyDownEi+0x41>
   140001c2c:	b8 01 00 00 00       	mov    $0x1,%eax
   140001c31:	eb 05                	jmp    140001c38 <_ZN5Input10GetKeyDownEi+0x46>
   140001c33:	b8 00 00 00 00       	mov    $0x0,%eax
   140001c38:	5d                   	pop    %rbp
   140001c39:	c3                   	ret

0000000140001c3a <_ZN5Input8GetKeyUpEi>:
   140001c3a:	55                   	push   %rbp
   140001c3b:	48 89 e5             	mov    %rsp,%rbp
   140001c3e:	89 4d 10             	mov    %ecx,0x10(%rbp)
   140001c41:	48 8b 05 08 e4 00 00 	mov    0xe408(%rip),%rax        # 140010050 <_ZN5Input8instanceE>
   140001c48:	48 8b 50 08          	mov    0x8(%rax),%rdx
   140001c4c:	8b 45 10             	mov    0x10(%rbp),%eax
   140001c4f:	48 98                	cltq
   140001c51:	48 01 d0             	add    %rdx,%rax
   140001c54:	0f b6 00             	movzbl (%rax),%eax
   140001c57:	84 c0                	test   %al,%al
   140001c59:	74 20                	je     140001c7b <_ZN5Input8GetKeyUpEi+0x41>
   140001c5b:	48 8b 05 ee e3 00 00 	mov    0xe3ee(%rip),%rax        # 140010050 <_ZN5Input8instanceE>
   140001c62:	48 8b 10             	mov    (%rax),%rdx
   140001c65:	8b 45 10             	mov    0x10(%rbp),%eax
   140001c68:	48 98                	cltq
   140001c6a:	48 01 d0             	add    %rdx,%rax
   140001c6d:	0f b6 00             	movzbl (%rax),%eax
   140001c70:	84 c0                	test   %al,%al
   140001c72:	75 07                	jne    140001c7b <_ZN5Input8GetKeyUpEi+0x41>
   140001c74:	b8 01 00 00 00       	mov    $0x1,%eax
   140001c79:	eb 05                	jmp    140001c80 <_ZN5Input8GetKeyUpEi+0x46>
   140001c7b:	b8 00 00 00 00       	mov    $0x0,%eax
   140001c80:	5d                   	pop    %rbp
   140001c81:	c3                   	ret

0000000140001c82 <_ZN5Input6GetKeyEi>:
   140001c82:	55                   	push   %rbp
   140001c83:	48 89 e5             	mov    %rsp,%rbp
   140001c86:	89 4d 10             	mov    %ecx,0x10(%rbp)
   140001c89:	48 8b 05 c0 e3 00 00 	mov    0xe3c0(%rip),%rax        # 140010050 <_ZN5Input8instanceE>
   140001c90:	48 8b 10             	mov    (%rax),%rdx
   140001c93:	8b 45 10             	mov    0x10(%rbp),%eax
   140001c96:	48 98                	cltq
   140001c98:	48 01 d0             	add    %rdx,%rax
   140001c9b:	0f b6 00             	movzbl (%rax),%eax
   140001c9e:	84 c0                	test   %al,%al
   140001ca0:	0f 95 c0             	setne  %al
   140001ca3:	5d                   	pop    %rbp
   140001ca4:	c3                   	ret
   140001ca5:	90                   	nop
   140001ca6:	90                   	nop
   140001ca7:	90                   	nop
   140001ca8:	90                   	nop
   140001ca9:	90                   	nop
   140001caa:	90                   	nop
   140001cab:	90                   	nop
   140001cac:	90                   	nop
   140001cad:	90                   	nop
   140001cae:	90                   	nop
   140001caf:	90                   	nop

0000000140001cb0 <_ZN4MeshC1Ev>:
   140001cb0:	55                   	push   %rbp
   140001cb1:	48 89 e5             	mov    %rsp,%rbp
   140001cb4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001cb8:	90                   	nop
   140001cb9:	5d                   	pop    %rbp
   140001cba:	c3                   	ret
   140001cbb:	90                   	nop

0000000140001cbc <_ZN4MeshD1Ev>:
   140001cbc:	55                   	push   %rbp
   140001cbd:	48 89 e5             	mov    %rsp,%rbp
   140001cc0:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001cc4:	90                   	nop
   140001cc5:	5d                   	pop    %rbp
   140001cc6:	c3                   	ret
   140001cc7:	90                   	nop
   140001cc8:	90                   	nop
   140001cc9:	90                   	nop
   140001cca:	90                   	nop
   140001ccb:	90                   	nop
   140001ccc:	90                   	nop
   140001ccd:	90                   	nop
   140001cce:	90                   	nop
   140001ccf:	90                   	nop

0000000140001cd0 <_ZN6SphereC1Ev>:
   140001cd0:	55                   	push   %rbp
   140001cd1:	48 89 e5             	mov    %rsp,%rbp
   140001cd4:	48 83 ec 20          	sub    $0x20,%rsp
   140001cd8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001cdc:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001ce0:	48 89 c1             	mov    %rax,%rcx
   140001ce3:	e8 b8 13 00 00       	call   1400030a0 <_ZN9TransformC1Ev>
   140001ce8:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001cec:	c7 40 40 00 00 00 00 	movl   $0x0,0x40(%rax)
   140001cf3:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001cf7:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140001cfb:	f3 0f 11 40 18       	movss  %xmm0,0x18(%rax)
   140001d00:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001d04:	f3 0f 10 05 a4 a3 00 	movss  0xa3a4(%rip),%xmm0        # 14000c0b0 <.rdata>
   140001d0b:	00 
   140001d0c:	f3 0f 11 40 1c       	movss  %xmm0,0x1c(%rax)
   140001d11:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001d15:	f3 0f 10 05 97 a3 00 	movss  0xa397(%rip),%xmm0        # 14000c0b4 <.rdata+0x4>
   140001d1c:	00 
   140001d1d:	f3 0f 11 40 28       	movss  %xmm0,0x28(%rax)
   140001d22:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001d26:	48 8b 15 43 e3 00 00 	mov    0xe343(%rip),%rdx        # 140010070 <_ZL12Vector2_Zero>
   140001d2d:	48 89 50 20          	mov    %rdx,0x20(%rax)
   140001d31:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001d35:	f3 0f 10 05 77 a3 00 	movss  0xa377(%rip),%xmm0        # 14000c0b4 <.rdata+0x4>
   140001d3c:	00 
   140001d3d:	f3 0f 11 40 3c       	movss  %xmm0,0x3c(%rax)
   140001d42:	90                   	nop
   140001d43:	48 83 c4 20          	add    $0x20,%rsp
   140001d47:	5d                   	pop    %rbp
   140001d48:	c3                   	ret
   140001d49:	90                   	nop

0000000140001d4a <_ZN6SphereC1Ef>:
   140001d4a:	55                   	push   %rbp
   140001d4b:	48 89 e5             	mov    %rsp,%rbp
   140001d4e:	48 83 ec 20          	sub    $0x20,%rsp
   140001d52:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001d56:	f3 0f 11 4d 18       	movss  %xmm1,0x18(%rbp)
   140001d5b:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001d5f:	48 89 c1             	mov    %rax,%rcx
   140001d62:	e8 39 13 00 00       	call   1400030a0 <_ZN9TransformC1Ev>
   140001d67:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001d6b:	c7 40 40 00 00 00 00 	movl   $0x0,0x40(%rax)
   140001d72:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001d76:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140001d7a:	f3 0f 11 40 18       	movss  %xmm0,0x18(%rax)
   140001d7f:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001d83:	f3 0f 10 05 25 a3 00 	movss  0xa325(%rip),%xmm0        # 14000c0b0 <.rdata>
   140001d8a:	00 
   140001d8b:	f3 0f 11 40 1c       	movss  %xmm0,0x1c(%rax)
   140001d90:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001d94:	f3 0f 10 05 18 a3 00 	movss  0xa318(%rip),%xmm0        # 14000c0b4 <.rdata+0x4>
   140001d9b:	00 
   140001d9c:	f3 0f 11 40 28       	movss  %xmm0,0x28(%rax)
   140001da1:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001da5:	48 8b 15 c4 e2 00 00 	mov    0xe2c4(%rip),%rdx        # 140010070 <_ZL12Vector2_Zero>
   140001dac:	48 89 50 20          	mov    %rdx,0x20(%rax)
   140001db0:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001db4:	f3 0f 10 45 18       	movss  0x18(%rbp),%xmm0
   140001db9:	f3 0f 11 40 3c       	movss  %xmm0,0x3c(%rax)
   140001dbe:	90                   	nop
   140001dbf:	48 83 c4 20          	add    $0x20,%rsp
   140001dc3:	5d                   	pop    %rbp
   140001dc4:	c3                   	ret
   140001dc5:	90                   	nop

0000000140001dc6 <_ZN6SphereD1Ev>:
   140001dc6:	55                   	push   %rbp
   140001dc7:	48 89 e5             	mov    %rsp,%rbp
   140001dca:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001dce:	90                   	nop
   140001dcf:	5d                   	pop    %rbp
   140001dd0:	c3                   	ret
   140001dd1:	90                   	nop

0000000140001dd2 <_ZN6Sphere4MoveEv>:
   140001dd2:	55                   	push   %rbp
   140001dd3:	53                   	push   %rbx
   140001dd4:	48 83 ec 28          	sub    $0x28,%rsp
   140001dd8:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   140001ddd:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   140001de1:	48 8b 5d 20          	mov    0x20(%rbp),%rbx
   140001de5:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140001de9:	48 89 c1             	mov    %rax,%rcx
   140001dec:	e8 0b 00 00 00       	call   140001dfc <_ZN6Sphere14FuturePositionEv>
   140001df1:	48 89 03             	mov    %rax,(%rbx)
   140001df4:	90                   	nop
   140001df5:	48 83 c4 28          	add    $0x28,%rsp
   140001df9:	5b                   	pop    %rbx
   140001dfa:	5d                   	pop    %rbp
   140001dfb:	c3                   	ret

0000000140001dfc <_ZN6Sphere14FuturePositionEv>:
   140001dfc:	55                   	push   %rbp
   140001dfd:	48 89 e5             	mov    %rsp,%rbp
   140001e00:	48 83 ec 20          	sub    $0x20,%rsp
   140001e04:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001e08:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001e0c:	48 8d 50 20          	lea    0x20(%rax),%rdx
   140001e10:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001e14:	48 89 c1             	mov    %rax,%rcx
   140001e17:	e8 af 15 00 00       	call   1400033cb <_ZplRK10SDL_FPointS1_>
   140001e1c:	48 83 c4 20          	add    $0x20,%rsp
   140001e20:	5d                   	pop    %rbp
   140001e21:	c3                   	ret

0000000140001e22 <_ZN6Sphere5ScaleE10SDL_FPoint>:
   140001e22:	55                   	push   %rbp
   140001e23:	48 89 e5             	mov    %rsp,%rbp
   140001e26:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001e2a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140001e2e:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001e32:	f3 0f 10 48 08       	movss  0x8(%rax),%xmm1
   140001e37:	f3 0f 10 45 18       	movss  0x18(%rbp),%xmm0
   140001e3c:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
   140001e40:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001e44:	f3 0f 11 40 08       	movss  %xmm0,0x8(%rax)
   140001e49:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001e4d:	f3 0f 10 48 0c       	movss  0xc(%rax),%xmm1
   140001e52:	f3 0f 10 45 1c       	movss  0x1c(%rbp),%xmm0
   140001e57:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
   140001e5b:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001e5f:	f3 0f 11 40 0c       	movss  %xmm0,0xc(%rax)
   140001e64:	90                   	nop
   140001e65:	5d                   	pop    %rbp
   140001e66:	c3                   	ret
   140001e67:	90                   	nop

0000000140001e68 <_ZN6Sphere6RotateEf>:
   140001e68:	55                   	push   %rbp
   140001e69:	48 89 e5             	mov    %rsp,%rbp
   140001e6c:	48 83 ec 20          	sub    $0x20,%rsp
   140001e70:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001e74:	f3 0f 11 4d 18       	movss  %xmm1,0x18(%rbp)
   140001e79:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001e7d:	f3 0f 10 45 18       	movss  0x18(%rbp),%xmm0
   140001e82:	0f 28 c8             	movaps %xmm0,%xmm1
   140001e85:	48 89 c1             	mov    %rax,%rcx
   140001e88:	e8 e5 12 00 00       	call   140003172 <_ZN9Transform6RotateEf>
   140001e8d:	90                   	nop
   140001e8e:	48 83 c4 20          	add    $0x20,%rsp
   140001e92:	5d                   	pop    %rbp
   140001e93:	c3                   	ret

0000000140001e94 <_ZN6Sphere8SetForceE10SDL_FPoint>:
   140001e94:	55                   	push   %rbp
   140001e95:	48 89 e5             	mov    %rsp,%rbp
   140001e98:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001e9c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140001ea0:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001ea4:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140001ea8:	48 89 50 20          	mov    %rdx,0x20(%rax)
   140001eac:	90                   	nop
   140001ead:	5d                   	pop    %rbp
   140001eae:	c3                   	ret
   140001eaf:	90                   	nop

0000000140001eb0 <_ZN6Sphere8AddForceE10SDL_FPoint>:
   140001eb0:	55                   	push   %rbp
   140001eb1:	48 89 e5             	mov    %rsp,%rbp
   140001eb4:	48 83 ec 20          	sub    $0x20,%rsp
   140001eb8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001ebc:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140001ec0:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001ec4:	48 8d 48 20          	lea    0x20(%rax),%rcx
   140001ec8:	48 8d 45 18          	lea    0x18(%rbp),%rax
   140001ecc:	48 89 c2             	mov    %rax,%rdx
   140001ecf:	e8 e3 16 00 00       	call   1400035b7 <_ZpLR10SDL_FPointRKS_>
   140001ed4:	90                   	nop
   140001ed5:	48 83 c4 20          	add    $0x20,%rsp
   140001ed9:	5d                   	pop    %rbp
   140001eda:	c3                   	ret
   140001edb:	90                   	nop
   140001edc:	90                   	nop
   140001edd:	90                   	nop
   140001ede:	90                   	nop
   140001edf:	90                   	nop

0000000140001ee0 <_ZL6printfPKcz>:
   140001ee0:	55                   	push   %rbp
   140001ee1:	53                   	push   %rbx
   140001ee2:	48 83 ec 38          	sub    $0x38,%rsp
   140001ee6:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   140001eeb:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   140001eef:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   140001ef3:	4c 89 45 30          	mov    %r8,0x30(%rbp)
   140001ef7:	4c 89 4d 38          	mov    %r9,0x38(%rbp)
   140001efb:	48 8d 45 28          	lea    0x28(%rbp),%rax
   140001eff:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140001f03:	48 8b 5d f0          	mov    -0x10(%rbp),%rbx
   140001f07:	b9 01 00 00 00       	mov    $0x1,%ecx
   140001f0c:	48 8b 05 ad 92 00 00 	mov    0x92ad(%rip),%rax        # 14000b1c0 <__imp___acrt_iob_func>
   140001f13:	ff d0                	call   *%rax
   140001f15:	48 89 c1             	mov    %rax,%rcx
   140001f18:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140001f1c:	49 89 d8             	mov    %rbx,%r8
   140001f1f:	48 89 c2             	mov    %rax,%rdx
   140001f22:	e8 c9 29 00 00       	call   1400048f0 <__mingw_vfprintf>
   140001f27:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140001f2a:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001f2d:	48 83 c4 38          	add    $0x38,%rsp
   140001f31:	5b                   	pop    %rbx
   140001f32:	5d                   	pop    %rbp
   140001f33:	c3                   	ret

0000000140001f34 <_ZN7PhysicsC1Ev>:
   140001f34:	55                   	push   %rbp
   140001f35:	41 54                	push   %r12
   140001f37:	57                   	push   %rdi
   140001f38:	56                   	push   %rsi
   140001f39:	53                   	push   %rbx
   140001f3a:	48 83 ec 30          	sub    $0x30,%rsp
   140001f3e:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   140001f43:	48 89 4d 30          	mov    %rcx,0x30(%rbp)
   140001f47:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140001f4b:	bb 08 00 00 00       	mov    $0x8,%ebx
   140001f50:	49 89 c4             	mov    %rax,%r12
   140001f53:	eb 2a                	jmp    140001f7f <_ZN7PhysicsC1Ev+0x4b>
   140001f55:	4c 89 e7             	mov    %r12,%rdi
   140001f58:	be 0f 00 00 00       	mov    $0xf,%esi
   140001f5d:	eb 10                	jmp    140001f6f <_ZN7PhysicsC1Ev+0x3b>
   140001f5f:	48 89 f9             	mov    %rdi,%rcx
   140001f62:	e8 39 84 00 00       	call   14000a3a0 <_ZN4GridC1Ev>
   140001f67:	48 83 ee 01          	sub    $0x1,%rsi
   140001f6b:	48 83 c7 10          	add    $0x10,%rdi
   140001f6f:	48 85 f6             	test   %rsi,%rsi
   140001f72:	79 eb                	jns    140001f5f <_ZN7PhysicsC1Ev+0x2b>
   140001f74:	48 83 eb 01          	sub    $0x1,%rbx
   140001f78:	49 81 c4 00 01 00 00 	add    $0x100,%r12
   140001f7f:	48 85 db             	test   %rbx,%rbx
   140001f82:	79 d1                	jns    140001f55 <_ZN7PhysicsC1Ev+0x21>
   140001f84:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140001f88:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140001f8c:	0f 11 80 00 09 00 00 	movups %xmm0,0x900(%rax)
   140001f93:	0f 11 80 10 09 00 00 	movups %xmm0,0x910(%rax)
   140001f9a:	0f 11 80 20 09 00 00 	movups %xmm0,0x920(%rax)
   140001fa1:	0f 11 80 30 09 00 00 	movups %xmm0,0x930(%rax)
   140001fa8:	66 0f d6 80 40 09 00 	movq   %xmm0,0x940(%rax)
   140001faf:	00 
   140001fb0:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   140001fb7:	e9 d0 00 00 00       	jmp    14000208c <_ZN7PhysicsC1Ev+0x158>
   140001fbc:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
   140001fc3:	e9 b6 00 00 00       	jmp    14000207e <_ZN7PhysicsC1Ev+0x14a>
   140001fc8:	b9 50 00 00 00       	mov    $0x50,%ecx
   140001fcd:	e8 66 28 00 00       	call   140004838 <_Znay>
   140001fd2:	49 89 c0             	mov    %rax,%r8
   140001fd5:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140001fd9:	8b 55 f8             	mov    -0x8(%rbp),%edx
   140001fdc:	48 63 d2             	movslq %edx,%rdx
   140001fdf:	8b 4d fc             	mov    -0x4(%rbp),%ecx
   140001fe2:	48 63 c9             	movslq %ecx,%rcx
   140001fe5:	48 c1 e1 04          	shl    $0x4,%rcx
   140001fe9:	48 01 ca             	add    %rcx,%rdx
   140001fec:	48 c1 e2 04          	shl    $0x4,%rdx
   140001ff0:	48 01 d0             	add    %rdx,%rax
   140001ff3:	4c 89 00             	mov    %r8,(%rax)
   140001ff6:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140001ffa:	8b 55 f8             	mov    -0x8(%rbp),%edx
   140001ffd:	48 63 d2             	movslq %edx,%rdx
   140002000:	8b 4d fc             	mov    -0x4(%rbp),%ecx
   140002003:	48 63 c9             	movslq %ecx,%rcx
   140002006:	48 c1 e1 04          	shl    $0x4,%rcx
   14000200a:	48 01 ca             	add    %rcx,%rdx
   14000200d:	48 c1 e2 04          	shl    $0x4,%rdx
   140002011:	48 01 d0             	add    %rdx,%rax
   140002014:	48 83 c0 08          	add    $0x8,%rax
   140002018:	c7 00 0a 00 00 00    	movl   $0xa,(%rax)
   14000201e:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140002022:	8b 55 f8             	mov    -0x8(%rbp),%edx
   140002025:	48 63 d2             	movslq %edx,%rdx
   140002028:	8b 4d fc             	mov    -0x4(%rbp),%ecx
   14000202b:	48 63 c9             	movslq %ecx,%rcx
   14000202e:	48 c1 e1 04          	shl    $0x4,%rcx
   140002032:	48 01 ca             	add    %rcx,%rdx
   140002035:	48 c1 e2 04          	shl    $0x4,%rdx
   140002039:	48 01 d0             	add    %rdx,%rax
   14000203c:	48 83 c0 0c          	add    $0xc,%rax
   140002040:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140002046:	48 8b 45 30          	mov    0x30(%rbp),%rax
   14000204a:	8b 55 f8             	mov    -0x8(%rbp),%edx
   14000204d:	48 63 d2             	movslq %edx,%rdx
   140002050:	8b 4d fc             	mov    -0x4(%rbp),%ecx
   140002053:	48 63 c9             	movslq %ecx,%rcx
   140002056:	48 c1 e1 04          	shl    $0x4,%rcx
   14000205a:	48 01 ca             	add    %rcx,%rdx
   14000205d:	48 c1 e2 04          	shl    $0x4,%rdx
   140002061:	48 01 d0             	add    %rdx,%rax
   140002064:	48 8b 00             	mov    (%rax),%rax
   140002067:	41 b8 50 00 00 00    	mov    $0x50,%r8d
   14000206d:	ba 00 00 00 00       	mov    $0x0,%edx
   140002072:	48 89 c1             	mov    %rax,%rcx
   140002075:	e8 0e 82 00 00       	call   14000a288 <memset>
   14000207a:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
   14000207e:	83 7d f8 0f          	cmpl   $0xf,-0x8(%rbp)
   140002082:	0f 8e 40 ff ff ff    	jle    140001fc8 <_ZN7PhysicsC1Ev+0x94>
   140002088:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   14000208c:	83 7d fc 08          	cmpl   $0x8,-0x4(%rbp)
   140002090:	0f 8e 26 ff ff ff    	jle    140001fbc <_ZN7PhysicsC1Ev+0x88>
   140002096:	90                   	nop
   140002097:	90                   	nop
   140002098:	48 83 c4 30          	add    $0x30,%rsp
   14000209c:	5b                   	pop    %rbx
   14000209d:	5e                   	pop    %rsi
   14000209e:	5f                   	pop    %rdi
   14000209f:	41 5c                	pop    %r12
   1400020a1:	5d                   	pop    %rbp
   1400020a2:	c3                   	ret
   1400020a3:	90                   	nop

00000001400020a4 <_ZN7PhysicsD1Ev>:
   1400020a4:	55                   	push   %rbp
   1400020a5:	53                   	push   %rbx
   1400020a6:	48 83 ec 48          	sub    $0x48,%rsp
   1400020aa:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   1400020af:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   1400020b3:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
   1400020ba:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   1400020c1:	00 
   1400020c2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   1400020c9:	e9 1f 01 00 00       	jmp    1400021ed <_ZN7PhysicsD1Ev+0x149>
   1400020ce:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
   1400020d5:	e9 05 01 00 00       	jmp    1400021df <_ZN7PhysicsD1Ev+0x13b>
   1400020da:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400020de:	8b 55 f8             	mov    -0x8(%rbp),%edx
   1400020e1:	48 63 d2             	movslq %edx,%rdx
   1400020e4:	8b 4d fc             	mov    -0x4(%rbp),%ecx
   1400020e7:	48 63 c9             	movslq %ecx,%rcx
   1400020ea:	48 c1 e1 04          	shl    $0x4,%rcx
   1400020ee:	48 01 ca             	add    %rcx,%rdx
   1400020f1:	48 c1 e2 04          	shl    $0x4,%rdx
   1400020f5:	48 01 d0             	add    %rdx,%rax
   1400020f8:	48 83 c0 0c          	add    $0xc,%rax
   1400020fc:	8b 00                	mov    (%rax),%eax
   1400020fe:	89 45 f0             	mov    %eax,-0x10(%rbp)
   140002101:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140002105:	8b 55 f8             	mov    -0x8(%rbp),%edx
   140002108:	48 63 d2             	movslq %edx,%rdx
   14000210b:	8b 4d fc             	mov    -0x4(%rbp),%ecx
   14000210e:	48 63 c9             	movslq %ecx,%rcx
   140002111:	48 c1 e1 04          	shl    $0x4,%rcx
   140002115:	48 01 ca             	add    %rcx,%rdx
   140002118:	48 c1 e2 04          	shl    $0x4,%rdx
   14000211c:	48 01 d0             	add    %rdx,%rax
   14000211f:	48 8b 00             	mov    (%rax),%rax
   140002122:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140002126:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000212a:	8b 55 f8             	mov    -0x8(%rbp),%edx
   14000212d:	48 63 d2             	movslq %edx,%rdx
   140002130:	8b 4d fc             	mov    -0x4(%rbp),%ecx
   140002133:	48 63 c9             	movslq %ecx,%rcx
   140002136:	48 c1 e1 04          	shl    $0x4,%rcx
   14000213a:	48 01 ca             	add    %rcx,%rdx
   14000213d:	48 c1 e2 04          	shl    $0x4,%rdx
   140002141:	48 01 d0             	add    %rdx,%rax
   140002144:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   14000214b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
   140002152:	eb 6c                	jmp    1400021c0 <_ZN7PhysicsD1Ev+0x11c>
   140002154:	8b 45 f4             	mov    -0xc(%rbp),%eax
   140002157:	48 98                	cltq
   140002159:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140002160:	00 
   140002161:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002165:	48 01 d0             	add    %rdx,%rax
   140002168:	48 8b 00             	mov    (%rax),%rax
   14000216b:	48 85 c0             	test   %rax,%rax
   14000216e:	74 4c                	je     1400021bc <_ZN7PhysicsD1Ev+0x118>
   140002170:	8b 45 f4             	mov    -0xc(%rbp),%eax
   140002173:	48 98                	cltq
   140002175:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   14000217c:	00 
   14000217d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002181:	48 01 d0             	add    %rdx,%rax
   140002184:	48 8b 18             	mov    (%rax),%rbx
   140002187:	48 85 db             	test   %rbx,%rbx
   14000218a:	74 15                	je     1400021a1 <_ZN7PhysicsD1Ev+0xfd>
   14000218c:	48 89 d9             	mov    %rbx,%rcx
   14000218f:	e8 32 fc ff ff       	call   140001dc6 <_ZN6SphereD1Ev>
   140002194:	ba 44 00 00 00       	mov    $0x44,%edx
   140002199:	48 89 d9             	mov    %rbx,%rcx
   14000219c:	e8 9f 26 00 00       	call   140004840 <_ZdlPvy>
   1400021a1:	8b 45 f4             	mov    -0xc(%rbp),%eax
   1400021a4:	48 98                	cltq
   1400021a6:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   1400021ad:	00 
   1400021ae:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1400021b2:	48 01 d0             	add    %rdx,%rax
   1400021b5:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   1400021bc:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
   1400021c0:	8b 45 f4             	mov    -0xc(%rbp),%eax
   1400021c3:	3b 45 f0             	cmp    -0x10(%rbp),%eax
   1400021c6:	7c 8c                	jl     140002154 <_ZN7PhysicsD1Ev+0xb0>
   1400021c8:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
   1400021cd:	74 0c                	je     1400021db <_ZN7PhysicsD1Ev+0x137>
   1400021cf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1400021d3:	48 89 c1             	mov    %rax,%rcx
   1400021d6:	e8 6d 26 00 00       	call   140004848 <_ZdaPv>
   1400021db:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
   1400021df:	83 7d f8 0f          	cmpl   $0xf,-0x8(%rbp)
   1400021e3:	0f 8e f1 fe ff ff    	jle    1400020da <_ZN7PhysicsD1Ev+0x36>
   1400021e9:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   1400021ed:	83 7d fc 08          	cmpl   $0x8,-0x4(%rbp)
   1400021f1:	0f 8e d7 fe ff ff    	jle    1400020ce <_ZN7PhysicsD1Ev+0x2a>
   1400021f7:	90                   	nop
   1400021f8:	90                   	nop
   1400021f9:	48 83 c4 48          	add    $0x48,%rsp
   1400021fd:	5b                   	pop    %rbx
   1400021fe:	5d                   	pop    %rbp
   1400021ff:	c3                   	ret

0000000140002200 <_ZN7Physics11resize_gridEP4Gridi>:
   140002200:	55                   	push   %rbp
   140002201:	48 89 e5             	mov    %rsp,%rbp
   140002204:	48 83 ec 30          	sub    $0x30,%rsp
   140002208:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000220c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140002210:	44 89 45 20          	mov    %r8d,0x20(%rbp)
   140002214:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140002218:	8b 40 08             	mov    0x8(%rax),%eax
   14000221b:	39 45 20             	cmp    %eax,0x20(%rbp)
   14000221e:	7d 0a                	jge    14000222a <_ZN7Physics11resize_gridEP4Gridi+0x2a>
   140002220:	b8 00 00 00 00       	mov    $0x0,%eax
   140002225:	e9 89 00 00 00       	jmp    1400022b3 <_ZN7Physics11resize_gridEP4Gridi+0xb3>
   14000222a:	8b 45 20             	mov    0x20(%rbp),%eax
   14000222d:	48 98                	cltq
   14000222f:	48 ba ff ff ff ff ff 	movabs $0xfffffffffffffff,%rdx
   140002236:	ff ff 0f 
   140002239:	48 39 c2             	cmp    %rax,%rdx
   14000223c:	72 4f                	jb     14000228d <_ZN7Physics11resize_gridEP4Gridi+0x8d>
   14000223e:	48 c1 e0 03          	shl    $0x3,%rax
   140002242:	48 89 c1             	mov    %rax,%rcx
   140002245:	e8 ee 25 00 00       	call   140004838 <_Znay>
   14000224a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   14000224e:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140002252:	8b 40 08             	mov    0x8(%rax),%eax
   140002255:	48 98                	cltq
   140002257:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
   14000225e:	00 
   14000225f:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140002263:	48 8b 10             	mov    (%rax),%rdx
   140002266:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000226a:	49 89 c8             	mov    %rcx,%r8
   14000226d:	48 89 c1             	mov    %rax,%rcx
   140002270:	e8 03 80 00 00       	call   14000a278 <memcpy>
   140002275:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140002279:	8b 55 20             	mov    0x20(%rbp),%edx
   14000227c:	89 50 08             	mov    %edx,0x8(%rax)
   14000227f:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140002283:	48 8b 00             	mov    (%rax),%rax
   140002286:	48 85 c0             	test   %rax,%rax
   140002289:	74 16                	je     1400022a1 <_ZN7Physics11resize_gridEP4Gridi+0xa1>
   14000228b:	eb 05                	jmp    140002292 <_ZN7Physics11resize_gridEP4Gridi+0x92>
   14000228d:	e8 96 25 00 00       	call   140004828 <__cxa_throw_bad_array_new_length>
   140002292:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140002296:	48 8b 00             	mov    (%rax),%rax
   140002299:	48 89 c1             	mov    %rax,%rcx
   14000229c:	e8 a7 25 00 00       	call   140004848 <_ZdaPv>
   1400022a1:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400022a5:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
   1400022a9:	48 89 10             	mov    %rdx,(%rax)
   1400022ac:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400022b0:	48 8b 00             	mov    (%rax),%rax
   1400022b3:	48 83 c4 30          	add    $0x30,%rsp
   1400022b7:	5d                   	pop    %rbp
   1400022b8:	c3                   	ret
   1400022b9:	90                   	nop

00000001400022ba <_ZN7Physics16sphere_collisionEPKP4GridP6Sphere>:
   1400022ba:	55                   	push   %rbp
   1400022bb:	48 89 e5             	mov    %rsp,%rbp
   1400022be:	48 83 ec 50          	sub    $0x50,%rsp
   1400022c2:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400022c6:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   1400022ca:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   1400022ce:	f3 0f 10 05 1e 9e 00 	movss  0x9e1e(%rip),%xmm0        # 14000c0f4 <_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE+0x3>
   1400022d5:	00 
   1400022d6:	f3 0f 11 45 fc       	movss  %xmm0,-0x4(%rbp)
   1400022db:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
   1400022e2:	00 
   1400022e3:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
   1400022ea:	e9 e1 00 00 00       	jmp    1400023d0 <_ZN7Physics16sphere_collisionEPKP4GridP6Sphere+0x116>
   1400022ef:	8b 45 ec             	mov    -0x14(%rbp),%eax
   1400022f2:	48 98                	cltq
   1400022f4:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   1400022fb:	00 
   1400022fc:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140002300:	48 01 d0             	add    %rdx,%rax
   140002303:	48 8b 00             	mov    (%rax),%rax
   140002306:	48 85 c0             	test   %rax,%rax
   140002309:	0f 84 bd 00 00 00    	je     1400023cc <_ZN7Physics16sphere_collisionEPKP4GridP6Sphere+0x112>
   14000230f:	8b 45 ec             	mov    -0x14(%rbp),%eax
   140002312:	48 98                	cltq
   140002314:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   14000231b:	00 
   14000231c:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140002320:	48 01 d0             	add    %rdx,%rax
   140002323:	48 8b 00             	mov    (%rax),%rax
   140002326:	8b 40 0c             	mov    0xc(%rax),%eax
   140002329:	89 45 e4             	mov    %eax,-0x1c(%rbp)
   14000232c:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
   140002333:	e9 88 00 00 00       	jmp    1400023c0 <_ZN7Physics16sphere_collisionEPKP4GridP6Sphere+0x106>
   140002338:	8b 45 ec             	mov    -0x14(%rbp),%eax
   14000233b:	48 98                	cltq
   14000233d:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140002344:	00 
   140002345:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140002349:	48 01 d0             	add    %rdx,%rax
   14000234c:	48 8b 00             	mov    (%rax),%rax
   14000234f:	48 8b 00             	mov    (%rax),%rax
   140002352:	8b 55 ec             	mov    -0x14(%rbp),%edx
   140002355:	48 63 d2             	movslq %edx,%rdx
   140002358:	48 c1 e2 03          	shl    $0x3,%rdx
   14000235c:	48 01 d0             	add    %rdx,%rax
   14000235f:	48 8b 00             	mov    (%rax),%rax
   140002362:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   140002366:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   14000236a:	48 8b 10             	mov    (%rax),%rdx
   14000236d:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140002371:	48 8b 00             	mov    (%rax),%rax
   140002374:	48 89 c1             	mov    %rax,%rcx
   140002377:	e8 9f 0f 00 00       	call   14000331b <_Z8Distance10SDL_FPointS_>
   14000237c:	66 0f 7e c0          	movd   %xmm0,%eax
   140002380:	89 45 d4             	mov    %eax,-0x2c(%rbp)
   140002383:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   140002387:	f3 0f 10 48 3c       	movss  0x3c(%rax),%xmm1
   14000238c:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140002390:	f3 0f 10 40 3c       	movss  0x3c(%rax),%xmm0
   140002395:	f3 0f 58 c1          	addss  %xmm1,%xmm0
   140002399:	0f 2f 45 d4          	comiss -0x2c(%rbp),%xmm0
   14000239d:	76 1d                	jbe    1400023bc <_ZN7Physics16sphere_collisionEPKP4GridP6Sphere+0x102>
   14000239f:	f3 0f 10 45 fc       	movss  -0x4(%rbp),%xmm0
   1400023a4:	0f 2f 45 d4          	comiss -0x2c(%rbp),%xmm0
   1400023a8:	76 12                	jbe    1400023bc <_ZN7Physics16sphere_collisionEPKP4GridP6Sphere+0x102>
   1400023aa:	f3 0f 10 45 d4       	movss  -0x2c(%rbp),%xmm0
   1400023af:	f3 0f 11 45 fc       	movss  %xmm0,-0x4(%rbp)
   1400023b4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   1400023b8:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400023bc:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
   1400023c0:	8b 45 e8             	mov    -0x18(%rbp),%eax
   1400023c3:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
   1400023c6:	0f 8c 6c ff ff ff    	jl     140002338 <_ZN7Physics16sphere_collisionEPKP4GridP6Sphere+0x7e>
   1400023cc:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
   1400023d0:	83 7d ec 08          	cmpl   $0x8,-0x14(%rbp)
   1400023d4:	0f 8e 15 ff ff ff    	jle    1400022ef <_ZN7Physics16sphere_collisionEPKP4GridP6Sphere+0x35>
   1400023da:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400023de:	48 83 c4 50          	add    $0x50,%rsp
   1400023e2:	5d                   	pop    %rbp
   1400023e3:	c3                   	ret

00000001400023e4 <_ZN7Physics14mesh_collisionEPKP4GridP8Mesh_OBJ>:
   1400023e4:	55                   	push   %rbp
   1400023e5:	48 89 e5             	mov    %rsp,%rbp
   1400023e8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400023ec:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   1400023f0:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   1400023f4:	b8 00 00 00 00       	mov    $0x0,%eax
   1400023f9:	5d                   	pop    %rbp
   1400023fa:	c3                   	ret
   1400023fb:	90                   	nop

00000001400023fc <_ZN7Physics19rectangle_collisionEPKP4GridP9Rectangle>:
   1400023fc:	55                   	push   %rbp
   1400023fd:	48 89 e5             	mov    %rsp,%rbp
   140002400:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002404:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140002408:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   14000240c:	b8 00 00 00 00       	mov    $0x0,%eax
   140002411:	5d                   	pop    %rbp
   140002412:	c3                   	ret
   140002413:	90                   	nop

0000000140002414 <_ZN7Physics20Get_Surrounding_GridEii>:
   140002414:	55                   	push   %rbp
   140002415:	48 89 e5             	mov    %rsp,%rbp
   140002418:	48 83 ec 40          	sub    $0x40,%rsp
   14000241c:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002420:	89 55 18             	mov    %edx,0x18(%rbp)
   140002423:	44 89 45 20          	mov    %r8d,0x20(%rbp)
   140002427:	83 7d 18 10          	cmpl   $0x10,0x18(%rbp)
   14000242b:	7f 06                	jg     140002433 <_ZN7Physics20Get_Surrounding_GridEii+0x1f>
   14000242d:	83 7d 18 00          	cmpl   $0x0,0x18(%rbp)
   140002431:	79 0a                	jns    14000243d <_ZN7Physics20Get_Surrounding_GridEii+0x29>
   140002433:	b8 00 00 00 00       	mov    $0x0,%eax
   140002438:	e9 53 01 00 00       	jmp    140002590 <_ZN7Physics20Get_Surrounding_GridEii+0x17c>
   14000243d:	83 7d 20 09          	cmpl   $0x9,0x20(%rbp)
   140002441:	7f 06                	jg     140002449 <_ZN7Physics20Get_Surrounding_GridEii+0x35>
   140002443:	83 7d 20 00          	cmpl   $0x0,0x20(%rbp)
   140002447:	79 0a                	jns    140002453 <_ZN7Physics20Get_Surrounding_GridEii+0x3f>
   140002449:	b8 00 00 00 00       	mov    $0x0,%eax
   14000244e:	e9 3d 01 00 00       	jmp    140002590 <_ZN7Physics20Get_Surrounding_GridEii+0x17c>
   140002453:	8b 45 18             	mov    0x18(%rbp),%eax
   140002456:	83 e8 01             	sub    $0x1,%eax
   140002459:	41 89 c0             	mov    %eax,%r8d
   14000245c:	ba 10 00 00 00       	mov    $0x10,%edx
   140002461:	b9 00 00 00 00       	mov    $0x0,%ecx
   140002466:	e8 55 f3 ff ff       	call   1400017c0 <_Z7B_Clampiii>
   14000246b:	66 0f ef c0          	pxor   %xmm0,%xmm0
   14000246f:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
   140002473:	f3 0f 11 45 ec       	movss  %xmm0,-0x14(%rbp)
   140002478:	8b 45 20             	mov    0x20(%rbp),%eax
   14000247b:	83 e8 01             	sub    $0x1,%eax
   14000247e:	41 89 c0             	mov    %eax,%r8d
   140002481:	ba 09 00 00 00       	mov    $0x9,%edx
   140002486:	b9 00 00 00 00       	mov    $0x0,%ecx
   14000248b:	e8 30 f3 ff ff       	call   1400017c0 <_Z7B_Clampiii>
   140002490:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140002494:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
   140002498:	f3 0f 11 45 f0       	movss  %xmm0,-0x10(%rbp)
   14000249d:	8b 45 18             	mov    0x18(%rbp),%eax
   1400024a0:	83 c0 01             	add    $0x1,%eax
   1400024a3:	41 89 c0             	mov    %eax,%r8d
   1400024a6:	ba 10 00 00 00       	mov    $0x10,%edx
   1400024ab:	b9 00 00 00 00       	mov    $0x0,%ecx
   1400024b0:	e8 0b f3 ff ff       	call   1400017c0 <_Z7B_Clampiii>
   1400024b5:	66 0f ef c0          	pxor   %xmm0,%xmm0
   1400024b9:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
   1400024bd:	f3 0f 11 45 e4       	movss  %xmm0,-0x1c(%rbp)
   1400024c2:	8b 45 20             	mov    0x20(%rbp),%eax
   1400024c5:	83 c0 01             	add    $0x1,%eax
   1400024c8:	41 89 c0             	mov    %eax,%r8d
   1400024cb:	ba 09 00 00 00       	mov    $0x9,%edx
   1400024d0:	b9 00 00 00 00       	mov    $0x0,%ecx
   1400024d5:	e8 e6 f2 ff ff       	call   1400017c0 <_Z7B_Clampiii>
   1400024da:	66 0f ef c0          	pxor   %xmm0,%xmm0
   1400024de:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
   1400024e2:	f3 0f 11 45 e8       	movss  %xmm0,-0x18(%rbp)
   1400024e7:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400024eb:	48 05 00 09 00 00    	add    $0x900,%rax
   1400024f1:	41 b8 48 00 00 00    	mov    $0x48,%r8d
   1400024f7:	ba 00 00 00 00       	mov    $0x0,%edx
   1400024fc:	48 89 c1             	mov    %rax,%rcx
   1400024ff:	e8 84 7d 00 00       	call   14000a288 <memset>
   140002504:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
   14000250b:	f3 0f 10 45 f0       	movss  -0x10(%rbp),%xmm0
   140002510:	f3 0f 2c c0          	cvttss2si %xmm0,%eax
   140002514:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140002517:	eb 5f                	jmp    140002578 <_ZN7Physics20Get_Surrounding_GridEii+0x164>
   140002519:	f3 0f 10 45 ec       	movss  -0x14(%rbp),%xmm0
   14000251e:	f3 0f 2c c0          	cvttss2si %xmm0,%eax
   140002522:	89 45 f8             	mov    %eax,-0x8(%rbp)
   140002525:	eb 3a                	jmp    140002561 <_ZN7Physics20Get_Surrounding_GridEii+0x14d>
   140002527:	8b 45 f8             	mov    -0x8(%rbp),%eax
   14000252a:	48 98                	cltq
   14000252c:	8b 55 fc             	mov    -0x4(%rbp),%edx
   14000252f:	48 63 d2             	movslq %edx,%rdx
   140002532:	48 c1 e2 04          	shl    $0x4,%rdx
   140002536:	48 01 d0             	add    %rdx,%rax
   140002539:	48 c1 e0 04          	shl    $0x4,%rax
   14000253d:	48 89 c2             	mov    %rax,%rdx
   140002540:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002544:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
   140002548:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000254c:	8b 55 f4             	mov    -0xc(%rbp),%edx
   14000254f:	48 63 d2             	movslq %edx,%rdx
   140002552:	48 81 c2 20 01 00 00 	add    $0x120,%rdx
   140002559:	48 89 0c d0          	mov    %rcx,(%rax,%rdx,8)
   14000255d:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
   140002561:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140002565:	f3 0f 2a 4d f8       	cvtsi2ssl -0x8(%rbp),%xmm1
   14000256a:	f3 0f 10 45 e4       	movss  -0x1c(%rbp),%xmm0
   14000256f:	0f 2f c1             	comiss %xmm1,%xmm0
   140002572:	77 b3                	ja     140002527 <_ZN7Physics20Get_Surrounding_GridEii+0x113>
   140002574:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   140002578:	66 0f ef c9          	pxor   %xmm1,%xmm1
   14000257c:	f3 0f 2a 4d fc       	cvtsi2ssl -0x4(%rbp),%xmm1
   140002581:	f3 0f 10 45 e8       	movss  -0x18(%rbp),%xmm0
   140002586:	0f 2f c1             	comiss %xmm1,%xmm0
   140002589:	77 8e                	ja     140002519 <_ZN7Physics20Get_Surrounding_GridEii+0x105>
   14000258b:	b8 01 00 00 00       	mov    $0x1,%eax
   140002590:	48 83 c4 40          	add    $0x40,%rsp
   140002594:	5d                   	pop    %rbp
   140002595:	c3                   	ret

0000000140002596 <_ZN7Physics13Update_ObjectEv>:
   140002596:	55                   	push   %rbp
   140002597:	48 89 e5             	mov    %rsp,%rbp
   14000259a:	48 83 ec 60          	sub    $0x60,%rsp
   14000259e:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400025a2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   1400025a9:	e9 b1 02 00 00       	jmp    14000285f <_ZN7Physics13Update_ObjectEv+0x2c9>
   1400025ae:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
   1400025b5:	e9 97 02 00 00       	jmp    140002851 <_ZN7Physics13Update_ObjectEv+0x2bb>
   1400025ba:	8b 4d fc             	mov    -0x4(%rbp),%ecx
   1400025bd:	8b 55 f8             	mov    -0x8(%rbp),%edx
   1400025c0:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400025c4:	41 89 c8             	mov    %ecx,%r8d
   1400025c7:	48 89 c1             	mov    %rax,%rcx
   1400025ca:	e8 45 fe ff ff       	call   140002414 <_ZN7Physics20Get_Surrounding_GridEii>
   1400025cf:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
   1400025d6:	e9 45 02 00 00       	jmp    140002820 <_ZN7Physics13Update_ObjectEv+0x28a>
   1400025db:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400025df:	8b 55 f8             	mov    -0x8(%rbp),%edx
   1400025e2:	48 63 d2             	movslq %edx,%rdx
   1400025e5:	8b 4d fc             	mov    -0x4(%rbp),%ecx
   1400025e8:	48 63 c9             	movslq %ecx,%rcx
   1400025eb:	48 c1 e1 04          	shl    $0x4,%rcx
   1400025ef:	48 01 ca             	add    %rcx,%rdx
   1400025f2:	48 c1 e2 04          	shl    $0x4,%rdx
   1400025f6:	48 01 d0             	add    %rdx,%rax
   1400025f9:	48 8b 00             	mov    (%rax),%rax
   1400025fc:	8b 55 f4             	mov    -0xc(%rbp),%edx
   1400025ff:	48 63 d2             	movslq %edx,%rdx
   140002602:	48 c1 e2 03          	shl    $0x3,%rdx
   140002606:	48 01 d0             	add    %rdx,%rax
   140002609:	48 8b 00             	mov    (%rax),%rax
   14000260c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140002610:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002614:	48 8d 90 00 09 00 00 	lea    0x900(%rax),%rdx
   14000261b:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
   14000261f:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002623:	49 89 c8             	mov    %rcx,%r8
   140002626:	48 89 c1             	mov    %rax,%rcx
   140002629:	e8 8c fc ff ff       	call   1400022ba <_ZN7Physics16sphere_collisionEPKP4GridP6Sphere>
   14000262e:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   140002632:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
   140002637:	0f 84 ff 00 00 00    	je     14000273c <_ZN7Physics13Update_ObjectEv+0x1a6>
   14000263d:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
   140002641:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
   140002645:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002649:	f3 0f 10 1d a7 9a 00 	movss  0x9aa7(%rip),%xmm3        # 14000c0f8 <_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE+0x7>
   140002650:	00 
   140002651:	49 89 c8             	mov    %rcx,%r8
   140002654:	48 89 c1             	mov    %rax,%rcx
   140002657:	e8 48 03 00 00       	call   1400029a4 <_ZN7Physics17Resolve_CollisionEP6SphereS1_f>
   14000265c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140002660:	48 89 c1             	mov    %rax,%rcx
   140002663:	e8 6a f7 ff ff       	call   140001dd2 <_ZN6Sphere4MoveEv>
   140002668:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   14000266c:	f3 0f 10 00          	movss  (%rax),%xmm0
   140002670:	f3 0f 10 0d 84 9a 00 	movss  0x9a84(%rip),%xmm1        # 14000c0fc <_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE+0xb>
   140002677:	00 
   140002678:	f3 0f 5e c1          	divss  %xmm1,%xmm0
   14000267c:	f3 0f 10 0d 7c 9a 00 	movss  0x9a7c(%rip),%xmm1        # 14000c100 <_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE+0xf>
   140002683:	00 
   140002684:	f3 0f 5e c1          	divss  %xmm1,%xmm0
   140002688:	f3 0f 2c c0          	cvttss2si %xmm0,%eax
   14000268c:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140002690:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
   140002694:	f3 0f 11 45 c0       	movss  %xmm0,-0x40(%rbp)
   140002699:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   14000269d:	f3 0f 10 40 04       	movss  0x4(%rax),%xmm0
   1400026a2:	f3 0f 10 0d 5a 9a 00 	movss  0x9a5a(%rip),%xmm1        # 14000c104 <_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE+0x13>
   1400026a9:	00 
   1400026aa:	f3 0f 5e c1          	divss  %xmm1,%xmm0
   1400026ae:	f3 0f 10 0d 52 9a 00 	movss  0x9a52(%rip),%xmm1        # 14000c108 <_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE+0x17>
   1400026b5:	00 
   1400026b6:	f3 0f 5e c1          	divss  %xmm1,%xmm0
   1400026ba:	f3 0f 2c c0          	cvttss2si %xmm0,%eax
   1400026be:	66 0f ef c0          	pxor   %xmm0,%xmm0
   1400026c2:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
   1400026c6:	f3 0f 11 45 c4       	movss  %xmm0,-0x3c(%rbp)
   1400026cb:	66 0f ef c0          	pxor   %xmm0,%xmm0
   1400026cf:	f3 0f 2a 45 f8       	cvtsi2ssl -0x8(%rbp),%xmm0
   1400026d4:	f3 0f 11 45 d0       	movss  %xmm0,-0x30(%rbp)
   1400026d9:	66 0f ef c0          	pxor   %xmm0,%xmm0
   1400026dd:	f3 0f 2a 45 fc       	cvtsi2ssl -0x4(%rbp),%xmm0
   1400026e2:	f3 0f 11 45 d4       	movss  %xmm0,-0x2c(%rbp)
   1400026e7:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
   1400026eb:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
   1400026ef:	48 89 c1             	mov    %rax,%rcx
   1400026f2:	e8 a6 0f 00 00       	call   14000369d <_ZneRK10SDL_FPointS1_>
   1400026f7:	84 c0                	test   %al,%al
   1400026f9:	74 41                	je     14000273c <_ZN7Physics13Update_ObjectEv+0x1a6>
   1400026fb:	4c 8b 45 e0          	mov    -0x20(%rbp),%r8
   1400026ff:	8b 4d fc             	mov    -0x4(%rbp),%ecx
   140002702:	8b 55 f8             	mov    -0x8(%rbp),%edx
   140002705:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002709:	4d 89 c1             	mov    %r8,%r9
   14000270c:	41 89 c8             	mov    %ecx,%r8d
   14000270f:	48 89 c1             	mov    %rax,%rcx
   140002712:	e8 ed 03 00 00       	call   140002b04 <_ZN7Physics12RemoveObjectEiiP6Sphere>
   140002717:	48 89 c1             	mov    %rax,%rcx
   14000271a:	f3 0f 10 45 c4       	movss  -0x3c(%rbp),%xmm0
   14000271f:	f3 44 0f 2c c0       	cvttss2si %xmm0,%r8d
   140002724:	f3 0f 10 45 c0       	movss  -0x40(%rbp),%xmm0
   140002729:	f3 0f 2c d0          	cvttss2si %xmm0,%edx
   14000272d:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002731:	49 89 c9             	mov    %rcx,%r9
   140002734:	48 89 c1             	mov    %rax,%rcx
   140002737:	e8 f2 02 00 00       	call   140002a2e <_ZN7Physics9AddObjectEiiP6Sphere>
   14000273c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002740:	48 89 c1             	mov    %rax,%rcx
   140002743:	e8 8a f6 ff ff       	call   140001dd2 <_ZN6Sphere4MoveEv>
   140002748:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   14000274c:	f3 0f 10 00          	movss  (%rax),%xmm0
   140002750:	f3 0f 10 0d a4 99 00 	movss  0x99a4(%rip),%xmm1        # 14000c0fc <_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE+0xb>
   140002757:	00 
   140002758:	f3 0f 5e c1          	divss  %xmm1,%xmm0
   14000275c:	f3 0f 10 0d 9c 99 00 	movss  0x999c(%rip),%xmm1        # 14000c100 <_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE+0xf>
   140002763:	00 
   140002764:	f3 0f 5e c1          	divss  %xmm1,%xmm0
   140002768:	f3 0f 2c c0          	cvttss2si %xmm0,%eax
   14000276c:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140002770:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
   140002774:	f3 0f 11 45 c8       	movss  %xmm0,-0x38(%rbp)
   140002779:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   14000277d:	f3 0f 10 40 04       	movss  0x4(%rax),%xmm0
   140002782:	f3 0f 10 0d 7a 99 00 	movss  0x997a(%rip),%xmm1        # 14000c104 <_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE+0x13>
   140002789:	00 
   14000278a:	f3 0f 5e c1          	divss  %xmm1,%xmm0
   14000278e:	f3 0f 10 0d 72 99 00 	movss  0x9972(%rip),%xmm1        # 14000c108 <_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE+0x17>
   140002795:	00 
   140002796:	f3 0f 5e c1          	divss  %xmm1,%xmm0
   14000279a:	f3 0f 2c c0          	cvttss2si %xmm0,%eax
   14000279e:	66 0f ef c0          	pxor   %xmm0,%xmm0
   1400027a2:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
   1400027a6:	f3 0f 11 45 cc       	movss  %xmm0,-0x34(%rbp)
   1400027ab:	66 0f ef c0          	pxor   %xmm0,%xmm0
   1400027af:	f3 0f 2a 45 f8       	cvtsi2ssl -0x8(%rbp),%xmm0
   1400027b4:	f3 0f 11 45 d8       	movss  %xmm0,-0x28(%rbp)
   1400027b9:	66 0f ef c0          	pxor   %xmm0,%xmm0
   1400027bd:	f3 0f 2a 45 fc       	cvtsi2ssl -0x4(%rbp),%xmm0
   1400027c2:	f3 0f 11 45 dc       	movss  %xmm0,-0x24(%rbp)
   1400027c7:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
   1400027cb:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
   1400027cf:	48 89 c1             	mov    %rax,%rcx
   1400027d2:	e8 c6 0e 00 00       	call   14000369d <_ZneRK10SDL_FPointS1_>
   1400027d7:	84 c0                	test   %al,%al
   1400027d9:	74 41                	je     14000281c <_ZN7Physics13Update_ObjectEv+0x286>
   1400027db:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
   1400027df:	8b 4d fc             	mov    -0x4(%rbp),%ecx
   1400027e2:	8b 55 f8             	mov    -0x8(%rbp),%edx
   1400027e5:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400027e9:	4d 89 c1             	mov    %r8,%r9
   1400027ec:	41 89 c8             	mov    %ecx,%r8d
   1400027ef:	48 89 c1             	mov    %rax,%rcx
   1400027f2:	e8 0d 03 00 00       	call   140002b04 <_ZN7Physics12RemoveObjectEiiP6Sphere>
   1400027f7:	48 89 c1             	mov    %rax,%rcx
   1400027fa:	f3 0f 10 45 cc       	movss  -0x34(%rbp),%xmm0
   1400027ff:	f3 44 0f 2c c0       	cvttss2si %xmm0,%r8d
   140002804:	f3 0f 10 45 c8       	movss  -0x38(%rbp),%xmm0
   140002809:	f3 0f 2c d0          	cvttss2si %xmm0,%edx
   14000280d:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002811:	49 89 c9             	mov    %rcx,%r9
   140002814:	48 89 c1             	mov    %rax,%rcx
   140002817:	e8 12 02 00 00       	call   140002a2e <_ZN7Physics9AddObjectEiiP6Sphere>
   14000281c:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
   140002820:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002824:	8b 55 f8             	mov    -0x8(%rbp),%edx
   140002827:	48 63 d2             	movslq %edx,%rdx
   14000282a:	8b 4d fc             	mov    -0x4(%rbp),%ecx
   14000282d:	48 63 c9             	movslq %ecx,%rcx
   140002830:	48 c1 e1 04          	shl    $0x4,%rcx
   140002834:	48 01 ca             	add    %rcx,%rdx
   140002837:	48 c1 e2 04          	shl    $0x4,%rdx
   14000283b:	48 01 d0             	add    %rdx,%rax
   14000283e:	48 83 c0 0c          	add    $0xc,%rax
   140002842:	8b 00                	mov    (%rax),%eax
   140002844:	39 45 f4             	cmp    %eax,-0xc(%rbp)
   140002847:	0f 8c 8e fd ff ff    	jl     1400025db <_ZN7Physics13Update_ObjectEv+0x45>
   14000284d:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
   140002851:	83 7d f8 0f          	cmpl   $0xf,-0x8(%rbp)
   140002855:	0f 8e 5f fd ff ff    	jle    1400025ba <_ZN7Physics13Update_ObjectEv+0x24>
   14000285b:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   14000285f:	83 7d fc 08          	cmpl   $0x8,-0x4(%rbp)
   140002863:	0f 8e 45 fd ff ff    	jle    1400025ae <_ZN7Physics13Update_ObjectEv+0x18>
   140002869:	90                   	nop
   14000286a:	90                   	nop
   14000286b:	48 83 c4 60          	add    $0x60,%rsp
   14000286f:	5d                   	pop    %rbp
   140002870:	c3                   	ret

0000000140002871 <_Z14final_velocityP6SphereS0_>:
   140002871:	55                   	push   %rbp
   140002872:	48 83 ec 60          	sub    $0x60,%rsp
   140002876:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   14000287b:	0f 11 75 00          	movups %xmm6,0x0(%rbp)
   14000287f:	0f 11 7d 10          	movups %xmm7,0x10(%rbp)
   140002883:	48 89 4d 30          	mov    %rcx,0x30(%rbp)
   140002887:	48 89 55 38          	mov    %rdx,0x38(%rbp)
   14000288b:	48 8b 55 38          	mov    0x38(%rbp),%rdx
   14000288f:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140002893:	48 89 c1             	mov    %rax,%rcx
   140002896:	e8 93 0b 00 00       	call   14000342e <_ZmiRK10SDL_FPointS1_>
   14000289b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   14000289f:	f3 0f 10 45 e8       	movss  -0x18(%rbp),%xmm0
   1400028a4:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400028a8:	0f 2e c1             	ucomiss %xmm1,%xmm0
   1400028ab:	7a 2c                	jp     1400028d9 <_Z14final_velocityP6SphereS0_+0x68>
   1400028ad:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400028b1:	0f 2e c1             	ucomiss %xmm1,%xmm0
   1400028b4:	75 23                	jne    1400028d9 <_Z14final_velocityP6SphereS0_+0x68>
   1400028b6:	f3 0f 10 45 ec       	movss  -0x14(%rbp),%xmm0
   1400028bb:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400028bf:	0f 2e c1             	ucomiss %xmm1,%xmm0
   1400028c2:	7a 15                	jp     1400028d9 <_Z14final_velocityP6SphereS0_+0x68>
   1400028c4:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400028c8:	0f 2e c1             	ucomiss %xmm1,%xmm0
   1400028cb:	75 0c                	jne    1400028d9 <_Z14final_velocityP6SphereS0_+0x68>
   1400028cd:	48 8b 05 bc 87 00 00 	mov    0x87bc(%rip),%rax        # 14000b090 <_ZL11Vector2_One>
   1400028d4:	e9 bc 00 00 00       	jmp    140002995 <_Z14final_velocityP6SphereS0_+0x124>
   1400028d9:	48 8b 45 38          	mov    0x38(%rbp),%rax
   1400028dd:	48 8d 50 20          	lea    0x20(%rax),%rdx
   1400028e1:	48 8b 45 30          	mov    0x30(%rbp),%rax
   1400028e5:	48 83 c0 20          	add    $0x20,%rax
   1400028e9:	48 89 c1             	mov    %rax,%rcx
   1400028ec:	e8 3d 0b 00 00       	call   14000342e <_ZmiRK10SDL_FPointS1_>
   1400028f1:	48 89 c1             	mov    %rax,%rcx
   1400028f4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1400028f8:	48 89 c2             	mov    %rax,%rdx
   1400028fb:	e8 ed 09 00 00       	call   1400032ed <_Z10DotProduct10SDL_FPointS_>
   140002900:	66 0f 7e c0          	movd   %xmm0,%eax
   140002904:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140002907:	48 8b 45 38          	mov    0x38(%rbp),%rax
   14000290b:	f3 0f 10 40 28       	movss  0x28(%rax),%xmm0
   140002910:	f3 0f 58 c0          	addss  %xmm0,%xmm0
   140002914:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140002918:	f3 0f 10 50 28       	movss  0x28(%rax),%xmm2
   14000291d:	48 8b 45 38          	mov    0x38(%rbp),%rax
   140002921:	f3 0f 10 48 28       	movss  0x28(%rax),%xmm1
   140002926:	f3 0f 58 ca          	addss  %xmm2,%xmm1
   14000292a:	0f 28 f8             	movaps %xmm0,%xmm7
   14000292d:	f3 0f 5e f9          	divss  %xmm1,%xmm7
   140002931:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002935:	48 89 c1             	mov    %rax,%rcx
   140002938:	e8 63 09 00 00       	call   1400032a0 <_Z9Magnitude10SDL_FPoint>
   14000293d:	0f 28 f0             	movaps %xmm0,%xmm6
   140002940:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002944:	48 89 c1             	mov    %rax,%rcx
   140002947:	e8 54 09 00 00       	call   1400032a0 <_Z9Magnitude10SDL_FPoint>
   14000294c:	f3 0f 59 f0          	mulss  %xmm0,%xmm6
   140002950:	0f 28 ce             	movaps %xmm6,%xmm1
   140002953:	f3 0f 10 45 fc       	movss  -0x4(%rbp),%xmm0
   140002958:	f3 0f 5e c1          	divss  %xmm1,%xmm0
   14000295c:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
   140002960:	f3 0f 11 45 f8       	movss  %xmm0,-0x8(%rbp)
   140002965:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
   140002969:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   14000296d:	48 89 c1             	mov    %rax,%rcx
   140002970:	e8 7e 0b 00 00       	call   1400034f3 <_ZmlRKfRK10SDL_FPoint>
   140002975:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140002979:	48 8b 45 30          	mov    0x30(%rbp),%rax
   14000297d:	48 8d 48 20          	lea    0x20(%rax),%rcx
   140002981:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
   140002985:	48 89 c2             	mov    %rax,%rdx
   140002988:	e8 a1 0a 00 00       	call   14000342e <_ZmiRK10SDL_FPointS1_>
   14000298d:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   140002991:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140002995:	0f 10 75 00          	movups 0x0(%rbp),%xmm6
   140002999:	0f 10 7d 10          	movups 0x10(%rbp),%xmm7
   14000299d:	48 83 c4 60          	add    $0x60,%rsp
   1400029a1:	5d                   	pop    %rbp
   1400029a2:	c3                   	ret
   1400029a3:	90                   	nop

00000001400029a4 <_ZN7Physics17Resolve_CollisionEP6SphereS1_f>:
   1400029a4:	55                   	push   %rbp
   1400029a5:	53                   	push   %rbx
   1400029a6:	48 83 ec 38          	sub    $0x38,%rsp
   1400029aa:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   1400029af:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   1400029b3:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   1400029b7:	4c 89 45 30          	mov    %r8,0x30(%rbp)
   1400029bb:	f3 0f 11 5d 38       	movss  %xmm3,0x38(%rbp)
   1400029c0:	48 8b 5d 28          	mov    0x28(%rbp),%rbx
   1400029c4:	48 8b 55 30          	mov    0x30(%rbp),%rdx
   1400029c8:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400029cc:	48 89 c1             	mov    %rax,%rcx
   1400029cf:	e8 9d fe ff ff       	call   140002871 <_Z14final_velocityP6SphereS0_>
   1400029d4:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400029d8:	48 8d 55 38          	lea    0x38(%rbp),%rdx
   1400029dc:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
   1400029e0:	48 89 c1             	mov    %rax,%rcx
   1400029e3:	e8 a9 0a 00 00       	call   140003491 <_ZmlRK10SDL_FPointRKf>
   1400029e8:	48 89 c2             	mov    %rax,%rdx
   1400029eb:	48 89 d9             	mov    %rbx,%rcx
   1400029ee:	e8 a1 f4 ff ff       	call   140001e94 <_ZN6Sphere8SetForceE10SDL_FPoint>
   1400029f3:	48 8b 5d 30          	mov    0x30(%rbp),%rbx
   1400029f7:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   1400029fb:	48 8b 45 30          	mov    0x30(%rbp),%rax
   1400029ff:	48 89 c1             	mov    %rax,%rcx
   140002a02:	e8 6a fe ff ff       	call   140002871 <_Z14final_velocityP6SphereS0_>
   140002a07:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002a0b:	48 8d 55 38          	lea    0x38(%rbp),%rdx
   140002a0f:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   140002a13:	48 89 c1             	mov    %rax,%rcx
   140002a16:	e8 76 0a 00 00       	call   140003491 <_ZmlRK10SDL_FPointRKf>
   140002a1b:	48 89 c2             	mov    %rax,%rdx
   140002a1e:	48 89 d9             	mov    %rbx,%rcx
   140002a21:	e8 6e f4 ff ff       	call   140001e94 <_ZN6Sphere8SetForceE10SDL_FPoint>
   140002a26:	90                   	nop
   140002a27:	48 83 c4 38          	add    $0x38,%rsp
   140002a2b:	5b                   	pop    %rbx
   140002a2c:	5d                   	pop    %rbp
   140002a2d:	c3                   	ret

0000000140002a2e <_ZN7Physics9AddObjectEiiP6Sphere>:
   140002a2e:	55                   	push   %rbp
   140002a2f:	48 89 e5             	mov    %rsp,%rbp
   140002a32:	48 83 ec 30          	sub    $0x30,%rsp
   140002a36:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002a3a:	89 55 18             	mov    %edx,0x18(%rbp)
   140002a3d:	44 89 45 20          	mov    %r8d,0x20(%rbp)
   140002a41:	4c 89 4d 28          	mov    %r9,0x28(%rbp)
   140002a45:	48 83 7d 28 00       	cmpq   $0x0,0x28(%rbp)
   140002a4a:	75 0a                	jne    140002a56 <_ZN7Physics9AddObjectEiiP6Sphere+0x28>
   140002a4c:	b8 00 00 00 00       	mov    $0x0,%eax
   140002a51:	e9 a7 00 00 00       	jmp    140002afd <_ZN7Physics9AddObjectEiiP6Sphere+0xcf>
   140002a56:	83 7d 18 0f          	cmpl   $0xf,0x18(%rbp)
   140002a5a:	7e 0a                	jle    140002a66 <_ZN7Physics9AddObjectEiiP6Sphere+0x38>
   140002a5c:	b8 00 00 00 00       	mov    $0x0,%eax
   140002a61:	e9 97 00 00 00       	jmp    140002afd <_ZN7Physics9AddObjectEiiP6Sphere+0xcf>
   140002a66:	83 7d 20 08          	cmpl   $0x8,0x20(%rbp)
   140002a6a:	7e 0a                	jle    140002a76 <_ZN7Physics9AddObjectEiiP6Sphere+0x48>
   140002a6c:	b8 00 00 00 00       	mov    $0x0,%eax
   140002a71:	e9 87 00 00 00       	jmp    140002afd <_ZN7Physics9AddObjectEiiP6Sphere+0xcf>
   140002a76:	8b 45 18             	mov    0x18(%rbp),%eax
   140002a79:	48 98                	cltq
   140002a7b:	8b 55 20             	mov    0x20(%rbp),%edx
   140002a7e:	48 63 d2             	movslq %edx,%rdx
   140002a81:	48 c1 e2 04          	shl    $0x4,%rdx
   140002a85:	48 01 d0             	add    %rdx,%rax
   140002a88:	48 c1 e0 04          	shl    $0x4,%rax
   140002a8c:	48 89 c2             	mov    %rax,%rdx
   140002a8f:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002a93:	48 01 d0             	add    %rdx,%rax
   140002a96:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002a9a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002a9e:	8b 50 08             	mov    0x8(%rax),%edx
   140002aa1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002aa5:	8b 40 0c             	mov    0xc(%rax),%eax
   140002aa8:	39 c2                	cmp    %eax,%edx
   140002aaa:	7f 1d                	jg     140002ac9 <_ZN7Physics9AddObjectEiiP6Sphere+0x9b>
   140002aac:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002ab0:	8b 40 08             	mov    0x8(%rax),%eax
   140002ab3:	8d 0c 00             	lea    (%rax,%rax,1),%ecx
   140002ab6:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
   140002aba:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002abe:	41 89 c8             	mov    %ecx,%r8d
   140002ac1:	48 89 c1             	mov    %rax,%rcx
   140002ac4:	e8 37 f7 ff ff       	call   140002200 <_ZN7Physics11resize_gridEP4Gridi>
   140002ac9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002acd:	48 8b 10             	mov    (%rax),%rdx
   140002ad0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002ad4:	8b 40 0c             	mov    0xc(%rax),%eax
   140002ad7:	48 98                	cltq
   140002ad9:	48 c1 e0 03          	shl    $0x3,%rax
   140002add:	48 01 c2             	add    %rax,%rdx
   140002ae0:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140002ae4:	48 89 02             	mov    %rax,(%rdx)
   140002ae7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002aeb:	8b 40 0c             	mov    0xc(%rax),%eax
   140002aee:	8d 50 01             	lea    0x1(%rax),%edx
   140002af1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002af5:	89 50 0c             	mov    %edx,0xc(%rax)
   140002af8:	b8 01 00 00 00       	mov    $0x1,%eax
   140002afd:	48 83 c4 30          	add    $0x30,%rsp
   140002b01:	5d                   	pop    %rbp
   140002b02:	c3                   	ret
   140002b03:	90                   	nop

0000000140002b04 <_ZN7Physics12RemoveObjectEiiP6Sphere>:
   140002b04:	55                   	push   %rbp
   140002b05:	48 89 e5             	mov    %rsp,%rbp
   140002b08:	48 83 ec 40          	sub    $0x40,%rsp
   140002b0c:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002b10:	89 55 18             	mov    %edx,0x18(%rbp)
   140002b13:	44 89 45 20          	mov    %r8d,0x20(%rbp)
   140002b17:	4c 89 4d 28          	mov    %r9,0x28(%rbp)
   140002b1b:	8b 45 18             	mov    0x18(%rbp),%eax
   140002b1e:	48 98                	cltq
   140002b20:	8b 55 20             	mov    0x20(%rbp),%edx
   140002b23:	48 63 d2             	movslq %edx,%rdx
   140002b26:	48 c1 e2 04          	shl    $0x4,%rdx
   140002b2a:	48 01 d0             	add    %rdx,%rax
   140002b2d:	48 c1 e0 04          	shl    $0x4,%rax
   140002b31:	48 89 c2             	mov    %rax,%rdx
   140002b34:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002b38:	48 01 d0             	add    %rdx,%rax
   140002b3b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140002b3f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002b43:	8b 40 08             	mov    0x8(%rax),%eax
   140002b46:	89 45 e4             	mov    %eax,-0x1c(%rbp)
   140002b49:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   140002b50:	00 
   140002b51:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
   140002b58:	e9 cc 00 00 00       	jmp    140002c29 <_ZN7Physics12RemoveObjectEiiP6Sphere+0x125>
   140002b5d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002b61:	48 8b 00             	mov    (%rax),%rax
   140002b64:	8b 55 f4             	mov    -0xc(%rbp),%edx
   140002b67:	48 63 d2             	movslq %edx,%rdx
   140002b6a:	48 c1 e2 03          	shl    $0x3,%rdx
   140002b6e:	48 01 d0             	add    %rdx,%rax
   140002b71:	48 8b 00             	mov    (%rax),%rax
   140002b74:	48 39 45 28          	cmp    %rax,0x28(%rbp)
   140002b78:	0f 85 a7 00 00 00    	jne    140002c25 <_ZN7Physics12RemoveObjectEiiP6Sphere+0x121>
   140002b7e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002b82:	48 8b 00             	mov    (%rax),%rax
   140002b85:	8b 55 f4             	mov    -0xc(%rbp),%edx
   140002b88:	48 63 d2             	movslq %edx,%rdx
   140002b8b:	48 c1 e2 03          	shl    $0x3,%rdx
   140002b8f:	48 01 d0             	add    %rdx,%rax
   140002b92:	48 8b 00             	mov    (%rax),%rax
   140002b95:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002b99:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002b9d:	48 8b 00             	mov    (%rax),%rax
   140002ba0:	8b 55 f4             	mov    -0xc(%rbp),%edx
   140002ba3:	48 63 d2             	movslq %edx,%rdx
   140002ba6:	48 c1 e2 03          	shl    $0x3,%rdx
   140002baa:	48 01 d0             	add    %rdx,%rax
   140002bad:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   140002bb4:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   140002bb7:	2b 45 f4             	sub    -0xc(%rbp),%eax
   140002bba:	83 e8 01             	sub    $0x1,%eax
   140002bbd:	48 98                	cltq
   140002bbf:	4c 8d 04 c5 00 00 00 	lea    0x0(,%rax,8),%r8
   140002bc6:	00 
   140002bc7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002bcb:	48 8b 00             	mov    (%rax),%rax
   140002bce:	8b 55 f4             	mov    -0xc(%rbp),%edx
   140002bd1:	48 63 d2             	movslq %edx,%rdx
   140002bd4:	48 83 c2 01          	add    $0x1,%rdx
   140002bd8:	48 c1 e2 03          	shl    $0x3,%rdx
   140002bdc:	48 01 c2             	add    %rax,%rdx
   140002bdf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002be3:	48 8b 00             	mov    (%rax),%rax
   140002be6:	8b 4d f4             	mov    -0xc(%rbp),%ecx
   140002be9:	48 63 c9             	movslq %ecx,%rcx
   140002bec:	48 c1 e1 03          	shl    $0x3,%rcx
   140002bf0:	48 01 c8             	add    %rcx,%rax
   140002bf3:	48 89 c1             	mov    %rax,%rcx
   140002bf6:	e8 7d 76 00 00       	call   14000a278 <memcpy>
   140002bfb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002bff:	48 8b 10             	mov    (%rax),%rdx
   140002c02:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002c06:	8b 40 0c             	mov    0xc(%rax),%eax
   140002c09:	48 98                	cltq
   140002c0b:	48 c1 e0 03          	shl    $0x3,%rax
   140002c0f:	48 01 d0             	add    %rdx,%rax
   140002c12:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140002c18:	ba 00 00 00 00       	mov    $0x0,%edx
   140002c1d:	48 89 c1             	mov    %rax,%rcx
   140002c20:	e8 63 76 00 00       	call   14000a288 <memset>
   140002c25:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
   140002c29:	8b 45 f4             	mov    -0xc(%rbp),%eax
   140002c2c:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
   140002c2f:	0f 8c 28 ff ff ff    	jl     140002b5d <_ZN7Physics12RemoveObjectEiiP6Sphere+0x59>
   140002c35:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002c39:	8b 40 0c             	mov    0xc(%rax),%eax
   140002c3c:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002c3f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002c43:	89 50 0c             	mov    %edx,0xc(%rax)
   140002c46:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002c4a:	48 83 c4 40          	add    $0x40,%rsp
   140002c4e:	5d                   	pop    %rbp
   140002c4f:	c3                   	ret

0000000140002c50 <_ZN7Physics9GetObjectEiii>:
   140002c50:	55                   	push   %rbp
   140002c51:	48 89 e5             	mov    %rsp,%rbp
   140002c54:	48 83 ec 10          	sub    $0x10,%rsp
   140002c58:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002c5c:	89 55 18             	mov    %edx,0x18(%rbp)
   140002c5f:	44 89 45 20          	mov    %r8d,0x20(%rbp)
   140002c63:	44 89 4d 28          	mov    %r9d,0x28(%rbp)
   140002c67:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002c6b:	8b 55 20             	mov    0x20(%rbp),%edx
   140002c6e:	48 63 d2             	movslq %edx,%rdx
   140002c71:	8b 4d 18             	mov    0x18(%rbp),%ecx
   140002c74:	48 63 c9             	movslq %ecx,%rcx
   140002c77:	48 c1 e1 04          	shl    $0x4,%rcx
   140002c7b:	48 01 ca             	add    %rcx,%rdx
   140002c7e:	48 c1 e2 04          	shl    $0x4,%rdx
   140002c82:	48 01 d0             	add    %rdx,%rax
   140002c85:	48 8b 00             	mov    (%rax),%rax
   140002c88:	8b 55 28             	mov    0x28(%rbp),%edx
   140002c8b:	48 63 d2             	movslq %edx,%rdx
   140002c8e:	48 c1 e2 03          	shl    $0x3,%rdx
   140002c92:	48 01 d0             	add    %rdx,%rax
   140002c95:	48 8b 00             	mov    (%rax),%rax
   140002c98:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002c9c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002ca0:	48 83 c4 10          	add    $0x10,%rsp
   140002ca4:	5d                   	pop    %rbp
   140002ca5:	c3                   	ret

0000000140002ca6 <_ZN7Physics9PrintGridEii>:
   140002ca6:	55                   	push   %rbp
   140002ca7:	48 89 e5             	mov    %rsp,%rbp
   140002caa:	48 83 ec 30          	sub    $0x30,%rsp
   140002cae:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002cb2:	89 55 18             	mov    %edx,0x18(%rbp)
   140002cb5:	44 89 45 20          	mov    %r8d,0x20(%rbp)
   140002cb9:	83 7d 18 0f          	cmpl   $0xf,0x18(%rbp)
   140002cbd:	0f 8f fb 01 00 00    	jg     140002ebe <_ZN7Physics9PrintGridEii+0x218>
   140002cc3:	83 7d 20 08          	cmpl   $0x8,0x20(%rbp)
   140002cc7:	0f 8f f1 01 00 00    	jg     140002ebe <_ZN7Physics9PrintGridEii+0x218>
   140002ccd:	48 8d 05 ec 93 00 00 	lea    0x93ec(%rip),%rax        # 14000c0c0 <.rdata>
   140002cd4:	48 89 c2             	mov    %rax,%rdx
   140002cd7:	48 8b 05 a2 9b 00 00 	mov    0x9ba2(%rip),%rax        # 14000c880 <__fu0__ZSt4cout>
   140002cde:	48 89 c1             	mov    %rax,%rcx
   140002ce1:	e8 72 1b 00 00       	call   140004858 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140002ce6:	48 89 c1             	mov    %rax,%rcx
   140002ce9:	8b 45 18             	mov    0x18(%rbp),%eax
   140002cec:	89 c2                	mov    %eax,%edx
   140002cee:	e8 95 1b 00 00       	call   140004888 <_ZNSolsEi>
   140002cf3:	48 89 c1             	mov    %rax,%rcx
   140002cf6:	48 8d 05 c8 93 00 00 	lea    0x93c8(%rip),%rax        # 14000c0c5 <.rdata+0x5>
   140002cfd:	48 89 c2             	mov    %rax,%rdx
   140002d00:	e8 53 1b 00 00       	call   140004858 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140002d05:	48 89 c1             	mov    %rax,%rcx
   140002d08:	8b 45 20             	mov    0x20(%rbp),%eax
   140002d0b:	89 c2                	mov    %eax,%edx
   140002d0d:	e8 76 1b 00 00       	call   140004888 <_ZNSolsEi>
   140002d12:	48 89 c1             	mov    %rax,%rcx
   140002d15:	48 8d 05 ae 93 00 00 	lea    0x93ae(%rip),%rax        # 14000c0ca <.rdata+0xa>
   140002d1c:	48 89 c2             	mov    %rax,%rdx
   140002d1f:	e8 34 1b 00 00       	call   140004858 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140002d24:	48 89 c1             	mov    %rax,%rcx
   140002d27:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002d2b:	8b 55 18             	mov    0x18(%rbp),%edx
   140002d2e:	48 63 d2             	movslq %edx,%rdx
   140002d31:	44 8b 45 20          	mov    0x20(%rbp),%r8d
   140002d35:	4d 63 c0             	movslq %r8d,%r8
   140002d38:	49 c1 e0 04          	shl    $0x4,%r8
   140002d3c:	4c 01 c2             	add    %r8,%rdx
   140002d3f:	48 c1 e2 04          	shl    $0x4,%rdx
   140002d43:	48 01 d0             	add    %rdx,%rax
   140002d46:	48 83 c0 0c          	add    $0xc,%rax
   140002d4a:	8b 00                	mov    (%rax),%eax
   140002d4c:	89 c2                	mov    %eax,%edx
   140002d4e:	e8 35 1b 00 00       	call   140004888 <_ZNSolsEi>
   140002d53:	48 89 c1             	mov    %rax,%rcx
   140002d56:	48 8d 05 7b 93 00 00 	lea    0x937b(%rip),%rax        # 14000c0d8 <.rdata+0x18>
   140002d5d:	48 89 c2             	mov    %rax,%rdx
   140002d60:	e8 f3 1a 00 00       	call   140004858 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140002d65:	48 89 c1             	mov    %rax,%rcx
   140002d68:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002d6c:	8b 55 18             	mov    0x18(%rbp),%edx
   140002d6f:	48 63 d2             	movslq %edx,%rdx
   140002d72:	44 8b 45 20          	mov    0x20(%rbp),%r8d
   140002d76:	4d 63 c0             	movslq %r8d,%r8
   140002d79:	49 c1 e0 04          	shl    $0x4,%r8
   140002d7d:	4c 01 c2             	add    %r8,%rdx
   140002d80:	48 c1 e2 04          	shl    $0x4,%rdx
   140002d84:	48 01 d0             	add    %rdx,%rax
   140002d87:	48 83 c0 08          	add    $0x8,%rax
   140002d8b:	8b 00                	mov    (%rax),%eax
   140002d8d:	89 c2                	mov    %eax,%edx
   140002d8f:	e8 f4 1a 00 00       	call   140004888 <_ZNSolsEi>
   140002d94:	ba 0a 00 00 00       	mov    $0xa,%edx
   140002d99:	48 89 c1             	mov    %rax,%rcx
   140002d9c:	e8 af 1a 00 00       	call   140004850 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>
   140002da1:	48 8d 05 3d 93 00 00 	lea    0x933d(%rip),%rax        # 14000c0e5 <.rdata+0x25>
   140002da8:	48 89 c2             	mov    %rax,%rdx
   140002dab:	48 8b 05 ce 9a 00 00 	mov    0x9ace(%rip),%rax        # 14000c880 <__fu0__ZSt4cout>
   140002db2:	48 89 c1             	mov    %rax,%rcx
   140002db5:	e8 9e 1a 00 00       	call   140004858 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140002dba:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   140002dc1:	00 
   140002dc2:	e9 b6 00 00 00       	jmp    140002e7d <_ZN7Physics9PrintGridEii+0x1d7>
   140002dc7:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002dcb:	8b 55 18             	mov    0x18(%rbp),%edx
   140002dce:	48 63 d2             	movslq %edx,%rdx
   140002dd1:	8b 4d 20             	mov    0x20(%rbp),%ecx
   140002dd4:	48 63 c9             	movslq %ecx,%rcx
   140002dd7:	48 c1 e1 04          	shl    $0x4,%rcx
   140002ddb:	48 01 ca             	add    %rcx,%rdx
   140002dde:	48 c1 e2 04          	shl    $0x4,%rdx
   140002de2:	48 01 d0             	add    %rdx,%rax
   140002de5:	48 8b 00             	mov    (%rax),%rax
   140002de8:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
   140002dec:	48 c1 e2 03          	shl    $0x3,%rdx
   140002df0:	48 01 d0             	add    %rdx,%rax
   140002df3:	48 8b 00             	mov    (%rax),%rax
   140002df6:	48 89 c2             	mov    %rax,%rdx
   140002df9:	48 8b 05 80 9a 00 00 	mov    0x9a80(%rip),%rax        # 14000c880 <__fu0__ZSt4cout>
   140002e00:	48 89 c1             	mov    %rax,%rcx
   140002e03:	e8 88 1a 00 00       	call   140004890 <_ZNSolsEPKv>
   140002e08:	48 89 c1             	mov    %rax,%rcx
   140002e0b:	48 8d 05 d9 92 00 00 	lea    0x92d9(%rip),%rax        # 14000c0eb <.rdata+0x2b>
   140002e12:	48 89 c2             	mov    %rax,%rdx
   140002e15:	e8 3e 1a 00 00       	call   140004858 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140002e1a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002e1e:	48 8d 48 01          	lea    0x1(%rax),%rcx
   140002e22:	48 ba ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rdx
   140002e29:	aa aa aa 
   140002e2c:	48 89 c8             	mov    %rcx,%rax
   140002e2f:	48 f7 e2             	mul    %rdx
   140002e32:	48 c1 ea 02          	shr    $0x2,%rdx
   140002e36:	48 89 d0             	mov    %rdx,%rax
   140002e39:	48 01 c0             	add    %rax,%rax
   140002e3c:	48 01 d0             	add    %rdx,%rax
   140002e3f:	48 01 c0             	add    %rax,%rax
   140002e42:	48 29 c1             	sub    %rax,%rcx
   140002e45:	48 89 ca             	mov    %rcx,%rdx
   140002e48:	48 85 d2             	test   %rdx,%rdx
   140002e4b:	75 2b                	jne    140002e78 <_ZN7Physics9PrintGridEii+0x1d2>
   140002e4d:	48 8b 05 3c 9a 00 00 	mov    0x9a3c(%rip),%rax        # 14000c890 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140002e54:	48 89 c2             	mov    %rax,%rdx
   140002e57:	48 8b 05 22 9a 00 00 	mov    0x9a22(%rip),%rax        # 14000c880 <__fu0__ZSt4cout>
   140002e5e:	48 89 c1             	mov    %rax,%rcx
   140002e61:	e8 32 1a 00 00       	call   140004898 <_ZNSolsEPFRSoS_E>
   140002e66:	48 89 c1             	mov    %rax,%rcx
   140002e69:	48 8d 05 75 92 00 00 	lea    0x9275(%rip),%rax        # 14000c0e5 <.rdata+0x25>
   140002e70:	48 89 c2             	mov    %rax,%rdx
   140002e73:	e8 e0 19 00 00       	call   140004858 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140002e78:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
   140002e7d:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002e81:	8b 55 18             	mov    0x18(%rbp),%edx
   140002e84:	48 63 d2             	movslq %edx,%rdx
   140002e87:	8b 4d 20             	mov    0x20(%rbp),%ecx
   140002e8a:	48 63 c9             	movslq %ecx,%rcx
   140002e8d:	48 c1 e1 04          	shl    $0x4,%rcx
   140002e91:	48 01 ca             	add    %rcx,%rdx
   140002e94:	48 c1 e2 04          	shl    $0x4,%rdx
   140002e98:	48 01 d0             	add    %rdx,%rax
   140002e9b:	48 83 c0 0c          	add    $0xc,%rax
   140002e9f:	8b 00                	mov    (%rax),%eax
   140002ea1:	48 98                	cltq
   140002ea3:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
   140002ea7:	0f 82 1a ff ff ff    	jb     140002dc7 <_ZN7Physics9PrintGridEii+0x121>
   140002ead:	48 8d 05 39 92 00 00 	lea    0x9239(%rip),%rax        # 14000c0ed <.rdata+0x2d>
   140002eb4:	48 89 c1             	mov    %rax,%rcx
   140002eb7:	e8 24 f0 ff ff       	call   140001ee0 <_ZL6printfPKcz>
   140002ebc:	eb 01                	jmp    140002ebf <_ZN7Physics9PrintGridEii+0x219>
   140002ebe:	90                   	nop
   140002ebf:	48 83 c4 30          	add    $0x30,%rsp
   140002ec3:	5d                   	pop    %rbp
   140002ec4:	c3                   	ret
   140002ec5:	90                   	nop

0000000140002ec6 <_ZN7Physics12PrintGridAllEv>:
   140002ec6:	55                   	push   %rbp
   140002ec7:	48 89 e5             	mov    %rsp,%rbp
   140002eca:	48 83 ec 30          	sub    $0x30,%rsp
   140002ece:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002ed2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   140002ed9:	eb 32                	jmp    140002f0d <_ZN7Physics12PrintGridAllEv+0x47>
   140002edb:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
   140002ee2:	00 
   140002ee3:	eb 1d                	jmp    140002f02 <_ZN7Physics12PrintGridAllEv+0x3c>
   140002ee5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002ee9:	89 c1                	mov    %eax,%ecx
   140002eeb:	8b 55 fc             	mov    -0x4(%rbp),%edx
   140002eee:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002ef2:	41 89 c8             	mov    %ecx,%r8d
   140002ef5:	48 89 c1             	mov    %rax,%rcx
   140002ef8:	e8 a9 fd ff ff       	call   140002ca6 <_ZN7Physics9PrintGridEii>
   140002efd:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
   140002f02:	48 83 7d f0 0f       	cmpq   $0xf,-0x10(%rbp)
   140002f07:	76 dc                	jbe    140002ee5 <_ZN7Physics12PrintGridAllEv+0x1f>
   140002f09:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   140002f0d:	83 7d fc 08          	cmpl   $0x8,-0x4(%rbp)
   140002f11:	7e c8                	jle    140002edb <_ZN7Physics12PrintGridAllEv+0x15>
   140002f13:	90                   	nop
   140002f14:	90                   	nop
   140002f15:	48 83 c4 30          	add    $0x30,%rsp
   140002f19:	5d                   	pop    %rbp
   140002f1a:	c3                   	ret
   140002f1b:	90                   	nop
   140002f1c:	90                   	nop
   140002f1d:	90                   	nop
   140002f1e:	90                   	nop
   140002f1f:	90                   	nop

0000000140002f20 <_ZL6printfPKcz>:
   140002f20:	55                   	push   %rbp
   140002f21:	53                   	push   %rbx
   140002f22:	48 83 ec 38          	sub    $0x38,%rsp
   140002f26:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   140002f2b:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   140002f2f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   140002f33:	4c 89 45 30          	mov    %r8,0x30(%rbp)
   140002f37:	4c 89 4d 38          	mov    %r9,0x38(%rbp)
   140002f3b:	48 8d 45 28          	lea    0x28(%rbp),%rax
   140002f3f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140002f43:	48 8b 5d f0          	mov    -0x10(%rbp),%rbx
   140002f47:	b9 01 00 00 00       	mov    $0x1,%ecx
   140002f4c:	48 8b 05 6d 82 00 00 	mov    0x826d(%rip),%rax        # 14000b1c0 <__imp___acrt_iob_func>
   140002f53:	ff d0                	call   *%rax
   140002f55:	48 89 c1             	mov    %rax,%rcx
   140002f58:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140002f5c:	49 89 d8             	mov    %rbx,%r8
   140002f5f:	48 89 c2             	mov    %rax,%rdx
   140002f62:	e8 89 19 00 00       	call   1400048f0 <__mingw_vfprintf>
   140002f67:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140002f6a:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140002f6d:	48 83 c4 38          	add    $0x38,%rsp
   140002f71:	5b                   	pop    %rbx
   140002f72:	5d                   	pop    %rbp
   140002f73:	c3                   	ret

0000000140002f74 <_ZN4TimeC1Ev>:
   140002f74:	55                   	push   %rbp
   140002f75:	48 89 e5             	mov    %rsp,%rbp
   140002f78:	48 83 ec 20          	sub    $0x20,%rsp
   140002f7c:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002f80:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002f84:	48 89 c1             	mov    %rax,%rcx
   140002f87:	e8 e4 78 00 00       	call   14000a870 <_ZNSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEEC1Ev>
   140002f8c:	90                   	nop
   140002f8d:	48 83 c4 20          	add    $0x20,%rsp
   140002f91:	5d                   	pop    %rbp
   140002f92:	c3                   	ret
   140002f93:	90                   	nop

0000000140002f94 <_ZN4Time10start_timeEv>:
   140002f94:	55                   	push   %rbp
   140002f95:	53                   	push   %rbx
   140002f96:	48 83 ec 28          	sub    $0x28,%rsp
   140002f9a:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   140002f9f:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   140002fa3:	48 8b 5d 20          	mov    0x20(%rbp),%rbx
   140002fa7:	e8 d4 18 00 00       	call   140004880 <_ZNSt6chrono3_V212system_clock3nowEv>
   140002fac:	48 89 03             	mov    %rax,(%rbx)
   140002faf:	90                   	nop
   140002fb0:	48 83 c4 28          	add    $0x28,%rsp
   140002fb4:	5b                   	pop    %rbx
   140002fb5:	5d                   	pop    %rbp
   140002fb6:	c3                   	ret
   140002fb7:	90                   	nop

0000000140002fb8 <_ZN4Time8end_timeEv>:
   140002fb8:	55                   	push   %rbp
   140002fb9:	53                   	push   %rbx
   140002fba:	48 83 ec 48          	sub    $0x48,%rsp
   140002fbe:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140002fc3:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   140002fc7:	48 8b 5d 20          	mov    0x20(%rbp),%rbx
   140002fcb:	e8 b0 18 00 00       	call   140004880 <_ZNSt6chrono3_V212system_clock3nowEv>
   140002fd0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002fd4:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   140002fd8:	48 89 da             	mov    %rbx,%rdx
   140002fdb:	48 89 c1             	mov    %rax,%rcx
   140002fde:	e8 0d 7a 00 00       	call   14000a9f0 <_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE>
   140002fe3:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140002fe7:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
   140002feb:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
   140002fef:	48 89 c1             	mov    %rax,%rcx
   140002ff2:	e8 59 79 00 00       	call   14000a950 <_ZNSt6chrono8durationIfSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE>
   140002ff7:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
   140002ffb:	48 89 c1             	mov    %rax,%rcx
   140002ffe:	e8 6d 74 00 00       	call   14000a470 <_ZNKSt6chrono8durationIfSt5ratioILx1ELx1EEE5countEv>
   140003003:	66 0f 7e c0          	movd   %xmm0,%eax
   140003007:	89 05 93 d0 00 00    	mov    %eax,0xd093(%rip)        # 1400100a0 <_ZN4Time9deltaTimeE>
   14000300d:	90                   	nop
   14000300e:	48 83 c4 48          	add    $0x48,%rsp
   140003012:	5b                   	pop    %rbx
   140003013:	5d                   	pop    %rbp
   140003014:	c3                   	ret
   140003015:	90                   	nop

0000000140003016 <_ZN4Time11GetInstanceEv>:
   140003016:	55                   	push   %rbp
   140003017:	53                   	push   %rbx
   140003018:	48 83 ec 28          	sub    $0x28,%rsp
   14000301c:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   140003021:	48 8d 05 f8 90 00 00 	lea    0x90f8(%rip),%rax        # 14000c120 <.rdata>
   140003028:	48 89 c1             	mov    %rax,%rcx
   14000302b:	e8 f0 fe ff ff       	call   140002f20 <_ZL6printfPKcz>
   140003030:	48 8b 05 71 d0 00 00 	mov    0xd071(%rip),%rax        # 1400100a8 <_ZN4Time8instanceE>
   140003037:	48 85 c0             	test   %rax,%rax
   14000303a:	75 1c                	jne    140003058 <_ZN4Time11GetInstanceEv+0x42>
   14000303c:	b9 08 00 00 00       	mov    $0x8,%ecx
   140003041:	e8 ea 17 00 00       	call   140004830 <_Znwy>
   140003046:	48 89 c3             	mov    %rax,%rbx
   140003049:	48 89 d9             	mov    %rbx,%rcx
   14000304c:	e8 23 ff ff ff       	call   140002f74 <_ZN4TimeC1Ev>
   140003051:	48 89 1d 50 d0 00 00 	mov    %rbx,0xd050(%rip)        # 1400100a8 <_ZN4Time8instanceE>
   140003058:	48 8b 05 49 d0 00 00 	mov    0xd049(%rip),%rax        # 1400100a8 <_ZN4Time8instanceE>
   14000305f:	48 83 c4 28          	add    $0x28,%rsp
   140003063:	5b                   	pop    %rbx
   140003064:	5d                   	pop    %rbp
   140003065:	c3                   	ret

0000000140003066 <_ZN4TimeD1Ev>:
   140003066:	55                   	push   %rbp
   140003067:	53                   	push   %rbx
   140003068:	48 83 ec 28          	sub    $0x28,%rsp
   14000306c:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   140003071:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   140003075:	48 8b 1d 2c d0 00 00 	mov    0xd02c(%rip),%rbx        # 1400100a8 <_ZN4Time8instanceE>
   14000307c:	48 85 db             	test   %rbx,%rbx
   14000307f:	74 15                	je     140003096 <_ZN4TimeD1Ev+0x30>
   140003081:	48 89 d9             	mov    %rbx,%rcx
   140003084:	e8 dd ff ff ff       	call   140003066 <_ZN4TimeD1Ev>
   140003089:	ba 08 00 00 00       	mov    $0x8,%edx
   14000308e:	48 89 d9             	mov    %rbx,%rcx
   140003091:	e8 aa 17 00 00       	call   140004840 <_ZdlPvy>
   140003096:	90                   	nop
   140003097:	48 83 c4 28          	add    $0x28,%rsp
   14000309b:	5b                   	pop    %rbx
   14000309c:	5d                   	pop    %rbp
   14000309d:	c3                   	ret
   14000309e:	90                   	nop
   14000309f:	90                   	nop

00000001400030a0 <_ZN9TransformC1Ev>:
   1400030a0:	55                   	push   %rbp
   1400030a1:	48 89 e5             	mov    %rsp,%rbp
   1400030a4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400030a8:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400030ac:	48 8b 15 fd cf 00 00 	mov    0xcffd(%rip),%rdx        # 1400100b0 <_ZL12Vector2_Zero>
   1400030b3:	48 89 10             	mov    %rdx,(%rax)
   1400030b6:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400030ba:	48 8b 15 ef cf 00 00 	mov    0xcfef(%rip),%rdx        # 1400100b0 <_ZL12Vector2_Zero>
   1400030c1:	48 89 50 10          	mov    %rdx,0x10(%rax)
   1400030c5:	90                   	nop
   1400030c6:	5d                   	pop    %rbp
   1400030c7:	c3                   	ret

00000001400030c8 <_ZN9TransformC1E10SDL_FPoint>:
   1400030c8:	55                   	push   %rbp
   1400030c9:	48 89 e5             	mov    %rsp,%rbp
   1400030cc:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400030d0:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   1400030d4:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400030d8:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   1400030dc:	48 89 10             	mov    %rdx,(%rax)
   1400030df:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400030e3:	48 8b 15 c6 cf 00 00 	mov    0xcfc6(%rip),%rdx        # 1400100b0 <_ZL12Vector2_Zero>
   1400030ea:	48 89 50 10          	mov    %rdx,0x10(%rax)
   1400030ee:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400030f2:	48 8b 15 b7 cf 00 00 	mov    0xcfb7(%rip),%rdx        # 1400100b0 <_ZL12Vector2_Zero>
   1400030f9:	48 89 50 08          	mov    %rdx,0x8(%rax)
   1400030fd:	90                   	nop
   1400030fe:	5d                   	pop    %rbp
   1400030ff:	c3                   	ret

0000000140003100 <_ZN9TransformC1E10SDL_FPointS0_S0_>:
   140003100:	55                   	push   %rbp
   140003101:	48 89 e5             	mov    %rsp,%rbp
   140003104:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140003108:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000310c:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   140003110:	4c 89 4d 28          	mov    %r9,0x28(%rbp)
   140003114:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003118:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   14000311c:	48 89 10             	mov    %rdx,(%rax)
   14000311f:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003123:	48 8b 55 20          	mov    0x20(%rbp),%rdx
   140003127:	48 89 50 10          	mov    %rdx,0x10(%rax)
   14000312b:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000312f:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   140003133:	48 89 50 08          	mov    %rdx,0x8(%rax)
   140003137:	90                   	nop
   140003138:	5d                   	pop    %rbp
   140003139:	c3                   	ret

000000014000313a <_ZN9Transform4MoveE10SDL_FPoint>:
   14000313a:	55                   	push   %rbp
   14000313b:	53                   	push   %rbx
   14000313c:	48 83 ec 28          	sub    $0x28,%rsp
   140003140:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   140003145:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   140003149:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   14000314d:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003151:	48 8b 5d 20          	mov    0x20(%rbp),%rbx
   140003155:	48 8d 55 28          	lea    0x28(%rbp),%rdx
   140003159:	48 89 c1             	mov    %rax,%rcx
   14000315c:	e8 6a 02 00 00       	call   1400033cb <_ZplRK10SDL_FPointS1_>
   140003161:	48 89 03             	mov    %rax,(%rbx)
   140003164:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003168:	48 8b 00             	mov    (%rax),%rax
   14000316b:	48 83 c4 28          	add    $0x28,%rsp
   14000316f:	5b                   	pop    %rbx
   140003170:	5d                   	pop    %rbp
   140003171:	c3                   	ret

0000000140003172 <_ZN9Transform6RotateEf>:
   140003172:	55                   	push   %rbp
   140003173:	48 83 ec 50          	sub    $0x50,%rsp
   140003177:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   14000317c:	0f 11 75 00          	movups %xmm6,0x0(%rbp)
   140003180:	0f 11 7d 10          	movups %xmm7,0x10(%rbp)
   140003184:	48 89 4d 30          	mov    %rcx,0x30(%rbp)
   140003188:	f3 0f 11 4d 38       	movss  %xmm1,0x38(%rbp)
   14000318d:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140003191:	f3 0f 10 40 10       	movss  0x10(%rax),%xmm0
   140003196:	66 0f ef f6          	pxor   %xmm6,%xmm6
   14000319a:	f3 0f 5a f0          	cvtss2sd %xmm0,%xmm6
   14000319e:	66 0f ef d2          	pxor   %xmm2,%xmm2
   1400031a2:	f3 0f 5a 55 38       	cvtss2sd 0x38(%rbp),%xmm2
   1400031a7:	66 48 0f 7e d0       	movq   %xmm2,%rax
   1400031ac:	66 48 0f 6e c0       	movq   %rax,%xmm0
   1400031b1:	e8 6a 68 00 00       	call   140009a20 <cos>
   1400031b6:	f2 0f 59 f0          	mulsd  %xmm0,%xmm6
   1400031ba:	48 8b 45 30          	mov    0x30(%rbp),%rax
   1400031be:	f3 0f 10 40 14       	movss  0x14(%rax),%xmm0
   1400031c3:	66 0f ef ff          	pxor   %xmm7,%xmm7
   1400031c7:	f3 0f 5a f8          	cvtss2sd %xmm0,%xmm7
   1400031cb:	66 0f ef db          	pxor   %xmm3,%xmm3
   1400031cf:	f3 0f 5a 5d 38       	cvtss2sd 0x38(%rbp),%xmm3
   1400031d4:	66 48 0f 7e d8       	movq   %xmm3,%rax
   1400031d9:	66 48 0f 6e c0       	movq   %rax,%xmm0
   1400031de:	e8 1d 67 00 00       	call   140009900 <sin>
   1400031e3:	f2 0f 59 c7          	mulsd  %xmm7,%xmm0
   1400031e7:	66 0f 28 ce          	movapd %xmm6,%xmm1
   1400031eb:	f2 0f 5c c8          	subsd  %xmm0,%xmm1
   1400031ef:	66 0f ef c0          	pxor   %xmm0,%xmm0
   1400031f3:	f2 0f 5a c1          	cvtsd2ss %xmm1,%xmm0
   1400031f7:	f3 0f 11 45 fc       	movss  %xmm0,-0x4(%rbp)
   1400031fc:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140003200:	f3 0f 10 40 10       	movss  0x10(%rax),%xmm0
   140003205:	66 0f ef f6          	pxor   %xmm6,%xmm6
   140003209:	f3 0f 5a f0          	cvtss2sd %xmm0,%xmm6
   14000320d:	66 0f ef e4          	pxor   %xmm4,%xmm4
   140003211:	f3 0f 5a 65 38       	cvtss2sd 0x38(%rbp),%xmm4
   140003216:	66 48 0f 7e e0       	movq   %xmm4,%rax
   14000321b:	66 48 0f 6e c0       	movq   %rax,%xmm0
   140003220:	e8 db 66 00 00       	call   140009900 <sin>
   140003225:	f2 0f 59 f0          	mulsd  %xmm0,%xmm6
   140003229:	48 8b 45 30          	mov    0x30(%rbp),%rax
   14000322d:	f3 0f 10 40 14       	movss  0x14(%rax),%xmm0
   140003232:	66 0f ef ff          	pxor   %xmm7,%xmm7
   140003236:	f3 0f 5a f8          	cvtss2sd %xmm0,%xmm7
   14000323a:	66 0f ef ed          	pxor   %xmm5,%xmm5
   14000323e:	f3 0f 5a 6d 38       	cvtss2sd 0x38(%rbp),%xmm5
   140003243:	66 48 0f 7e e8       	movq   %xmm5,%rax
   140003248:	66 48 0f 6e c0       	movq   %rax,%xmm0
   14000324d:	e8 ae 66 00 00       	call   140009900 <sin>
   140003252:	f2 0f 59 c7          	mulsd  %xmm7,%xmm0
   140003256:	f2 0f 58 c6          	addsd  %xmm6,%xmm0
   14000325a:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
   14000325e:	f3 0f 11 45 f8       	movss  %xmm0,-0x8(%rbp)
   140003263:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140003267:	f3 0f 10 45 fc       	movss  -0x4(%rbp),%xmm0
   14000326c:	f3 0f 11 40 10       	movss  %xmm0,0x10(%rax)
   140003271:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140003275:	f3 0f 10 45 f8       	movss  -0x8(%rbp),%xmm0
   14000327a:	f3 0f 11 40 14       	movss  %xmm0,0x14(%rax)
   14000327f:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140003283:	48 8b 40 10          	mov    0x10(%rax),%rax
   140003287:	0f 10 75 00          	movups 0x0(%rbp),%xmm6
   14000328b:	0f 10 7d 10          	movups 0x10(%rbp),%xmm7
   14000328f:	48 83 c4 50          	add    $0x50,%rsp
   140003293:	5d                   	pop    %rbp
   140003294:	c3                   	ret
   140003295:	90                   	nop
   140003296:	90                   	nop
   140003297:	90                   	nop
   140003298:	90                   	nop
   140003299:	90                   	nop
   14000329a:	90                   	nop
   14000329b:	90                   	nop
   14000329c:	90                   	nop
   14000329d:	90                   	nop
   14000329e:	90                   	nop
   14000329f:	90                   	nop

00000001400032a0 <_Z9Magnitude10SDL_FPoint>:
   1400032a0:	55                   	push   %rbp
   1400032a1:	48 89 e5             	mov    %rsp,%rbp
   1400032a4:	48 83 ec 20          	sub    $0x20,%rsp
   1400032a8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400032ac:	f3 0f 10 4d 10       	movss  0x10(%rbp),%xmm1
   1400032b1:	f3 0f 10 45 10       	movss  0x10(%rbp),%xmm0
   1400032b6:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
   1400032ba:	f3 0f 10 55 14       	movss  0x14(%rbp),%xmm2
   1400032bf:	f3 0f 10 45 14       	movss  0x14(%rbp),%xmm0
   1400032c4:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
   1400032c8:	f3 0f 58 c1          	addss  %xmm1,%xmm0
   1400032cc:	66 0f ef db          	pxor   %xmm3,%xmm3
   1400032d0:	f3 0f 5a d8          	cvtss2sd %xmm0,%xmm3
   1400032d4:	66 48 0f 7e d8       	movq   %xmm3,%rax
   1400032d9:	66 48 0f 6e c0       	movq   %rax,%xmm0
   1400032de:	e8 5d 68 00 00       	call   140009b40 <sqrt>
   1400032e3:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
   1400032e7:	48 83 c4 20          	add    $0x20,%rsp
   1400032eb:	5d                   	pop    %rbp
   1400032ec:	c3                   	ret

00000001400032ed <_Z10DotProduct10SDL_FPointS_>:
   1400032ed:	55                   	push   %rbp
   1400032ee:	48 89 e5             	mov    %rsp,%rbp
   1400032f1:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400032f5:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   1400032f9:	f3 0f 10 4d 10       	movss  0x10(%rbp),%xmm1
   1400032fe:	f3 0f 10 45 18       	movss  0x18(%rbp),%xmm0
   140003303:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
   140003307:	f3 0f 10 55 14       	movss  0x14(%rbp),%xmm2
   14000330c:	f3 0f 10 45 1c       	movss  0x1c(%rbp),%xmm0
   140003311:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
   140003315:	f3 0f 58 c1          	addss  %xmm1,%xmm0
   140003319:	5d                   	pop    %rbp
   14000331a:	c3                   	ret

000000014000331b <_Z8Distance10SDL_FPointS_>:
   14000331b:	55                   	push   %rbp
   14000331c:	48 89 e5             	mov    %rsp,%rbp
   14000331f:	48 83 ec 20          	sub    $0x20,%rsp
   140003323:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140003327:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000332b:	f3 0f 10 45 10       	movss  0x10(%rbp),%xmm0
   140003330:	f3 0f 10 55 18       	movss  0x18(%rbp),%xmm2
   140003335:	0f 28 c8             	movaps %xmm0,%xmm1
   140003338:	f3 0f 5c ca          	subss  %xmm2,%xmm1
   14000333c:	f3 0f 10 45 10       	movss  0x10(%rbp),%xmm0
   140003341:	f3 0f 10 55 18       	movss  0x18(%rbp),%xmm2
   140003346:	f3 0f 5c c2          	subss  %xmm2,%xmm0
   14000334a:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
   14000334e:	f3 0f 10 45 14       	movss  0x14(%rbp),%xmm0
   140003353:	f3 0f 10 5d 1c       	movss  0x1c(%rbp),%xmm3
   140003358:	0f 28 d0             	movaps %xmm0,%xmm2
   14000335b:	f3 0f 5c d3          	subss  %xmm3,%xmm2
   14000335f:	f3 0f 10 45 14       	movss  0x14(%rbp),%xmm0
   140003364:	f3 0f 10 5d 1c       	movss  0x1c(%rbp),%xmm3
   140003369:	f3 0f 5c c3          	subss  %xmm3,%xmm0
   14000336d:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
   140003371:	f3 0f 58 c1          	addss  %xmm1,%xmm0
   140003375:	66 0f ef e4          	pxor   %xmm4,%xmm4
   140003379:	f3 0f 5a e0          	cvtss2sd %xmm0,%xmm4
   14000337d:	66 48 0f 7e e0       	movq   %xmm4,%rax
   140003382:	66 48 0f 6e c0       	movq   %rax,%xmm0
   140003387:	e8 b4 67 00 00       	call   140009b40 <sqrt>
   14000338c:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
   140003390:	48 83 c4 20          	add    $0x20,%rsp
   140003394:	5d                   	pop    %rbp
   140003395:	c3                   	ret

0000000140003396 <_Z9Normalize10SDL_FPoint>:
   140003396:	55                   	push   %rbp
   140003397:	48 89 e5             	mov    %rsp,%rbp
   14000339a:	48 83 ec 30          	sub    $0x30,%rsp
   14000339e:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400033a2:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400033a6:	48 89 c1             	mov    %rax,%rcx
   1400033a9:	e8 f2 fe ff ff       	call   1400032a0 <_Z9Magnitude10SDL_FPoint>
   1400033ae:	66 0f 7e c0          	movd   %xmm0,%eax
   1400033b2:	89 45 fc             	mov    %eax,-0x4(%rbp)
   1400033b5:	48 8d 45 fc          	lea    -0x4(%rbp),%rax
   1400033b9:	48 89 c2             	mov    %rax,%rdx
   1400033bc:	48 8d 4d 10          	lea    0x10(%rbp),%rcx
   1400033c0:	e8 90 01 00 00       	call   140003555 <_ZdvRK10SDL_FPointRKf>
   1400033c5:	48 83 c4 30          	add    $0x30,%rsp
   1400033c9:	5d                   	pop    %rbp
   1400033ca:	c3                   	ret

00000001400033cb <_ZplRK10SDL_FPointS1_>:
   1400033cb:	55                   	push   %rbp
   1400033cc:	48 89 e5             	mov    %rsp,%rbp
   1400033cf:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400033d3:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   1400033d7:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400033db:	f3 0f 10 08          	movss  (%rax),%xmm1
   1400033df:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400033e3:	f3 0f 10 00          	movss  (%rax),%xmm0
   1400033e7:	f3 0f 58 c1          	addss  %xmm1,%xmm0
   1400033eb:	66 0f 7e c2          	movd   %xmm0,%edx
   1400033ef:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
   1400033f6:	ff ff ff 
   1400033f9:	4c 21 c0             	and    %r8,%rax
   1400033fc:	48 09 d0             	or     %rdx,%rax
   1400033ff:	49 89 c0             	mov    %rax,%r8
   140003402:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003406:	f3 0f 10 48 04       	movss  0x4(%rax),%xmm1
   14000340b:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000340f:	f3 0f 10 40 04       	movss  0x4(%rax),%xmm0
   140003414:	f3 0f 58 c1          	addss  %xmm1,%xmm0
   140003418:	66 0f 7e c0          	movd   %xmm0,%eax
   14000341c:	48 c1 e0 20          	shl    $0x20,%rax
   140003420:	44 89 c2             	mov    %r8d,%edx
   140003423:	48 09 d0             	or     %rdx,%rax
   140003426:	49 89 c0             	mov    %rax,%r8
   140003429:	4c 89 c0             	mov    %r8,%rax
   14000342c:	5d                   	pop    %rbp
   14000342d:	c3                   	ret

000000014000342e <_ZmiRK10SDL_FPointS1_>:
   14000342e:	55                   	push   %rbp
   14000342f:	48 89 e5             	mov    %rsp,%rbp
   140003432:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140003436:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000343a:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000343e:	f3 0f 10 00          	movss  (%rax),%xmm0
   140003442:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003446:	f3 0f 10 08          	movss  (%rax),%xmm1
   14000344a:	f3 0f 5c c1          	subss  %xmm1,%xmm0
   14000344e:	66 0f 7e c2          	movd   %xmm0,%edx
   140003452:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
   140003459:	ff ff ff 
   14000345c:	4c 21 c0             	and    %r8,%rax
   14000345f:	48 09 d0             	or     %rdx,%rax
   140003462:	49 89 c0             	mov    %rax,%r8
   140003465:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003469:	f3 0f 10 40 04       	movss  0x4(%rax),%xmm0
   14000346e:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003472:	f3 0f 10 48 04       	movss  0x4(%rax),%xmm1
   140003477:	f3 0f 5c c1          	subss  %xmm1,%xmm0
   14000347b:	66 0f 7e c0          	movd   %xmm0,%eax
   14000347f:	48 c1 e0 20          	shl    $0x20,%rax
   140003483:	44 89 c2             	mov    %r8d,%edx
   140003486:	48 09 d0             	or     %rdx,%rax
   140003489:	49 89 c0             	mov    %rax,%r8
   14000348c:	4c 89 c0             	mov    %r8,%rax
   14000348f:	5d                   	pop    %rbp
   140003490:	c3                   	ret

0000000140003491 <_ZmlRK10SDL_FPointRKf>:
   140003491:	55                   	push   %rbp
   140003492:	48 89 e5             	mov    %rsp,%rbp
   140003495:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140003499:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000349d:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400034a1:	f3 0f 10 08          	movss  (%rax),%xmm1
   1400034a5:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400034a9:	f3 0f 10 00          	movss  (%rax),%xmm0
   1400034ad:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
   1400034b1:	66 0f 7e c2          	movd   %xmm0,%edx
   1400034b5:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
   1400034bc:	ff ff ff 
   1400034bf:	4c 21 c0             	and    %r8,%rax
   1400034c2:	48 09 d0             	or     %rdx,%rax
   1400034c5:	49 89 c0             	mov    %rax,%r8
   1400034c8:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400034cc:	f3 0f 10 48 04       	movss  0x4(%rax),%xmm1
   1400034d1:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400034d5:	f3 0f 10 00          	movss  (%rax),%xmm0
   1400034d9:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
   1400034dd:	66 0f 7e c0          	movd   %xmm0,%eax
   1400034e1:	48 c1 e0 20          	shl    $0x20,%rax
   1400034e5:	44 89 c2             	mov    %r8d,%edx
   1400034e8:	48 09 d0             	or     %rdx,%rax
   1400034eb:	49 89 c0             	mov    %rax,%r8
   1400034ee:	4c 89 c0             	mov    %r8,%rax
   1400034f1:	5d                   	pop    %rbp
   1400034f2:	c3                   	ret

00000001400034f3 <_ZmlRKfRK10SDL_FPoint>:
   1400034f3:	55                   	push   %rbp
   1400034f4:	48 89 e5             	mov    %rsp,%rbp
   1400034f7:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400034fb:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   1400034ff:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003503:	f3 0f 10 08          	movss  (%rax),%xmm1
   140003507:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000350b:	f3 0f 10 00          	movss  (%rax),%xmm0
   14000350f:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
   140003513:	66 0f 7e c2          	movd   %xmm0,%edx
   140003517:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
   14000351e:	ff ff ff 
   140003521:	4c 21 c0             	and    %r8,%rax
   140003524:	48 09 d0             	or     %rdx,%rax
   140003527:	49 89 c0             	mov    %rax,%r8
   14000352a:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000352e:	f3 0f 10 48 04       	movss  0x4(%rax),%xmm1
   140003533:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003537:	f3 0f 10 00          	movss  (%rax),%xmm0
   14000353b:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
   14000353f:	66 0f 7e c0          	movd   %xmm0,%eax
   140003543:	48 c1 e0 20          	shl    $0x20,%rax
   140003547:	44 89 c2             	mov    %r8d,%edx
   14000354a:	48 09 d0             	or     %rdx,%rax
   14000354d:	49 89 c0             	mov    %rax,%r8
   140003550:	4c 89 c0             	mov    %r8,%rax
   140003553:	5d                   	pop    %rbp
   140003554:	c3                   	ret

0000000140003555 <_ZdvRK10SDL_FPointRKf>:
   140003555:	55                   	push   %rbp
   140003556:	48 89 e5             	mov    %rsp,%rbp
   140003559:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000355d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140003561:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003565:	f3 0f 10 00          	movss  (%rax),%xmm0
   140003569:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000356d:	f3 0f 10 08          	movss  (%rax),%xmm1
   140003571:	f3 0f 5e c1          	divss  %xmm1,%xmm0
   140003575:	66 0f 7e c2          	movd   %xmm0,%edx
   140003579:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
   140003580:	ff ff ff 
   140003583:	4c 21 c0             	and    %r8,%rax
   140003586:	48 09 d0             	or     %rdx,%rax
   140003589:	49 89 c0             	mov    %rax,%r8
   14000358c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003590:	f3 0f 10 40 04       	movss  0x4(%rax),%xmm0
   140003595:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003599:	f3 0f 10 08          	movss  (%rax),%xmm1
   14000359d:	f3 0f 5e c1          	divss  %xmm1,%xmm0
   1400035a1:	66 0f 7e c0          	movd   %xmm0,%eax
   1400035a5:	48 c1 e0 20          	shl    $0x20,%rax
   1400035a9:	44 89 c2             	mov    %r8d,%edx
   1400035ac:	48 09 d0             	or     %rdx,%rax
   1400035af:	49 89 c0             	mov    %rax,%r8
   1400035b2:	4c 89 c0             	mov    %r8,%rax
   1400035b5:	5d                   	pop    %rbp
   1400035b6:	c3                   	ret

00000001400035b7 <_ZpLR10SDL_FPointRKS_>:
   1400035b7:	55                   	push   %rbp
   1400035b8:	48 89 e5             	mov    %rsp,%rbp
   1400035bb:	48 83 ec 20          	sub    $0x20,%rsp
   1400035bf:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400035c3:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   1400035c7:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   1400035cb:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400035cf:	48 89 c1             	mov    %rax,%rcx
   1400035d2:	e8 f4 fd ff ff       	call   1400033cb <_ZplRK10SDL_FPointS1_>
   1400035d7:	48 89 c2             	mov    %rax,%rdx
   1400035da:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400035de:	48 89 10             	mov    %rdx,(%rax)
   1400035e1:	90                   	nop
   1400035e2:	48 83 c4 20          	add    $0x20,%rsp
   1400035e6:	5d                   	pop    %rbp
   1400035e7:	c3                   	ret

00000001400035e8 <_ZmIR10SDL_FPointRKS_>:
   1400035e8:	55                   	push   %rbp
   1400035e9:	48 89 e5             	mov    %rsp,%rbp
   1400035ec:	48 83 ec 20          	sub    $0x20,%rsp
   1400035f0:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400035f4:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   1400035f8:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   1400035fc:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003600:	48 89 c1             	mov    %rax,%rcx
   140003603:	e8 26 fe ff ff       	call   14000342e <_ZmiRK10SDL_FPointS1_>
   140003608:	48 89 c2             	mov    %rax,%rdx
   14000360b:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000360f:	48 89 10             	mov    %rdx,(%rax)
   140003612:	90                   	nop
   140003613:	48 83 c4 20          	add    $0x20,%rsp
   140003617:	5d                   	pop    %rbp
   140003618:	c3                   	ret

0000000140003619 <_ZeqRK10SDL_FPointS1_>:
   140003619:	55                   	push   %rbp
   14000361a:	48 89 e5             	mov    %rsp,%rbp
   14000361d:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140003621:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140003625:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003629:	f3 0f 10 00          	movss  (%rax),%xmm0
   14000362d:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140003631:	0f 2e c1             	ucomiss %xmm1,%xmm0
   140003634:	7a 09                	jp     14000363f <_ZeqRK10SDL_FPointS1_+0x26>
   140003636:	66 0f ef c9          	pxor   %xmm1,%xmm1
   14000363a:	0f 2e c1             	ucomiss %xmm1,%xmm0
   14000363d:	74 57                	je     140003696 <_ZeqRK10SDL_FPointS1_+0x7d>
   14000363f:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003643:	f3 0f 10 00          	movss  (%rax),%xmm0
   140003647:	66 0f ef c9          	pxor   %xmm1,%xmm1
   14000364b:	0f 2e c1             	ucomiss %xmm1,%xmm0
   14000364e:	7a 09                	jp     140003659 <_ZeqRK10SDL_FPointS1_+0x40>
   140003650:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140003654:	0f 2e c1             	ucomiss %xmm1,%xmm0
   140003657:	74 3d                	je     140003696 <_ZeqRK10SDL_FPointS1_+0x7d>
   140003659:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000365d:	f3 0f 10 40 04       	movss  0x4(%rax),%xmm0
   140003662:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140003666:	0f 2e c1             	ucomiss %xmm1,%xmm0
   140003669:	7a 09                	jp     140003674 <_ZeqRK10SDL_FPointS1_+0x5b>
   14000366b:	66 0f ef c9          	pxor   %xmm1,%xmm1
   14000366f:	0f 2e c1             	ucomiss %xmm1,%xmm0
   140003672:	74 22                	je     140003696 <_ZeqRK10SDL_FPointS1_+0x7d>
   140003674:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003678:	f3 0f 10 40 04       	movss  0x4(%rax),%xmm0
   14000367d:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140003681:	0f 2e c1             	ucomiss %xmm1,%xmm0
   140003684:	7a 09                	jp     14000368f <_ZeqRK10SDL_FPointS1_+0x76>
   140003686:	66 0f ef c9          	pxor   %xmm1,%xmm1
   14000368a:	0f 2e c1             	ucomiss %xmm1,%xmm0
   14000368d:	74 07                	je     140003696 <_ZeqRK10SDL_FPointS1_+0x7d>
   14000368f:	b8 01 00 00 00       	mov    $0x1,%eax
   140003694:	eb 05                	jmp    14000369b <_ZeqRK10SDL_FPointS1_+0x82>
   140003696:	b8 00 00 00 00       	mov    $0x0,%eax
   14000369b:	5d                   	pop    %rbp
   14000369c:	c3                   	ret

000000014000369d <_ZneRK10SDL_FPointS1_>:
   14000369d:	55                   	push   %rbp
   14000369e:	48 89 e5             	mov    %rsp,%rbp
   1400036a1:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400036a5:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   1400036a9:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400036ad:	f3 0f 10 00          	movss  (%rax),%xmm0
   1400036b1:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400036b5:	0f 2e c1             	ucomiss %xmm1,%xmm0
   1400036b8:	7a 09                	jp     1400036c3 <_ZneRK10SDL_FPointS1_+0x26>
   1400036ba:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400036be:	0f 2e c1             	ucomiss %xmm1,%xmm0
   1400036c1:	74 1a                	je     1400036dd <_ZneRK10SDL_FPointS1_+0x40>
   1400036c3:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400036c7:	f3 0f 10 00          	movss  (%rax),%xmm0
   1400036cb:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400036cf:	0f 2e c1             	ucomiss %xmm1,%xmm0
   1400036d2:	7a 46                	jp     14000371a <_ZneRK10SDL_FPointS1_+0x7d>
   1400036d4:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400036d8:	0f 2e c1             	ucomiss %xmm1,%xmm0
   1400036db:	75 3d                	jne    14000371a <_ZneRK10SDL_FPointS1_+0x7d>
   1400036dd:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400036e1:	f3 0f 10 40 04       	movss  0x4(%rax),%xmm0
   1400036e6:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400036ea:	0f 2e c1             	ucomiss %xmm1,%xmm0
   1400036ed:	7a 09                	jp     1400036f8 <_ZneRK10SDL_FPointS1_+0x5b>
   1400036ef:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400036f3:	0f 2e c1             	ucomiss %xmm1,%xmm0
   1400036f6:	74 22                	je     14000371a <_ZneRK10SDL_FPointS1_+0x7d>
   1400036f8:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400036fc:	f3 0f 10 40 04       	movss  0x4(%rax),%xmm0
   140003701:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140003705:	0f 2e c1             	ucomiss %xmm1,%xmm0
   140003708:	7a 09                	jp     140003713 <_ZneRK10SDL_FPointS1_+0x76>
   14000370a:	66 0f ef c9          	pxor   %xmm1,%xmm1
   14000370e:	0f 2e c1             	ucomiss %xmm1,%xmm0
   140003711:	74 07                	je     14000371a <_ZneRK10SDL_FPointS1_+0x7d>
   140003713:	b8 01 00 00 00       	mov    $0x1,%eax
   140003718:	eb 05                	jmp    14000371f <_ZneRK10SDL_FPointS1_+0x82>
   14000371a:	b8 00 00 00 00       	mov    $0x0,%eax
   14000371f:	5d                   	pop    %rbp
   140003720:	c3                   	ret
   140003721:	90                   	nop
   140003722:	90                   	nop
   140003723:	90                   	nop
   140003724:	90                   	nop
   140003725:	90                   	nop
   140003726:	90                   	nop
   140003727:	90                   	nop
   140003728:	90                   	nop
   140003729:	90                   	nop
   14000372a:	90                   	nop
   14000372b:	90                   	nop
   14000372c:	90                   	nop
   14000372d:	90                   	nop
   14000372e:	90                   	nop
   14000372f:	90                   	nop

0000000140003730 <__do_global_dtors>:
   140003730:	48 83 ec 28          	sub    $0x28,%rsp
   140003734:	48 8b 05 c5 79 00 00 	mov    0x79c5(%rip),%rax        # 14000b100 <p.0>
   14000373b:	48 8b 00             	mov    (%rax),%rax
   14000373e:	48 85 c0             	test   %rax,%rax
   140003741:	74 22                	je     140003765 <__do_global_dtors+0x35>
   140003743:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003748:	ff d0                	call   *%rax
   14000374a:	48 8b 05 af 79 00 00 	mov    0x79af(%rip),%rax        # 14000b100 <p.0>
   140003751:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140003755:	48 8b 40 08          	mov    0x8(%rax),%rax
   140003759:	48 89 15 a0 79 00 00 	mov    %rdx,0x79a0(%rip)        # 14000b100 <p.0>
   140003760:	48 85 c0             	test   %rax,%rax
   140003763:	75 e3                	jne    140003748 <__do_global_dtors+0x18>
   140003765:	48 83 c4 28          	add    $0x28,%rsp
   140003769:	c3                   	ret
   14000376a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140003770 <__do_global_ctors>:
   140003770:	56                   	push   %rsi
   140003771:	53                   	push   %rbx
   140003772:	48 83 ec 28          	sub    $0x28,%rsp
   140003776:	48 8b 15 23 91 00 00 	mov    0x9123(%rip),%rdx        # 14000c8a0 <.refptr.__CTOR_LIST__>
   14000377d:	48 8b 02             	mov    (%rdx),%rax
   140003780:	89 c1                	mov    %eax,%ecx
   140003782:	83 f8 ff             	cmp    $0xffffffff,%eax
   140003785:	74 39                	je     1400037c0 <__do_global_ctors+0x50>
   140003787:	85 c9                	test   %ecx,%ecx
   140003789:	74 20                	je     1400037ab <__do_global_ctors+0x3b>
   14000378b:	89 c8                	mov    %ecx,%eax
   14000378d:	83 e9 01             	sub    $0x1,%ecx
   140003790:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   140003794:	48 29 c8             	sub    %rcx,%rax
   140003797:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   14000379c:	0f 1f 40 00          	nopl   0x0(%rax)
   1400037a0:	ff 13                	call   *(%rbx)
   1400037a2:	48 83 eb 08          	sub    $0x8,%rbx
   1400037a6:	48 39 f3             	cmp    %rsi,%rbx
   1400037a9:	75 f5                	jne    1400037a0 <__do_global_ctors+0x30>
   1400037ab:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 140003730 <__do_global_dtors>
   1400037b2:	48 83 c4 28          	add    $0x28,%rsp
   1400037b6:	5b                   	pop    %rbx
   1400037b7:	5e                   	pop    %rsi
   1400037b8:	e9 53 dc ff ff       	jmp    140001410 <atexit>
   1400037bd:	0f 1f 00             	nopl   (%rax)
   1400037c0:	31 c0                	xor    %eax,%eax
   1400037c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400037c8:	44 8d 40 01          	lea    0x1(%rax),%r8d
   1400037cc:	89 c1                	mov    %eax,%ecx
   1400037ce:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   1400037d3:	4c 89 c0             	mov    %r8,%rax
   1400037d6:	75 f0                	jne    1400037c8 <__do_global_ctors+0x58>
   1400037d8:	eb ad                	jmp    140003787 <__do_global_ctors+0x17>
   1400037da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400037e0 <__main>:
   1400037e0:	8b 05 ea c8 00 00    	mov    0xc8ea(%rip),%eax        # 1400100d0 <initialized>
   1400037e6:	85 c0                	test   %eax,%eax
   1400037e8:	74 06                	je     1400037f0 <__main+0x10>
   1400037ea:	c3                   	ret
   1400037eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400037f0:	c7 05 d6 c8 00 00 01 	movl   $0x1,0xc8d6(%rip)        # 1400100d0 <initialized>
   1400037f7:	00 00 00 
   1400037fa:	e9 71 ff ff ff       	jmp    140003770 <__do_global_ctors>
   1400037ff:	90                   	nop

0000000140003800 <_setargv>:
   140003800:	31 c0                	xor    %eax,%eax
   140003802:	c3                   	ret
   140003803:	90                   	nop
   140003804:	90                   	nop
   140003805:	90                   	nop
   140003806:	90                   	nop
   140003807:	90                   	nop
   140003808:	90                   	nop
   140003809:	90                   	nop
   14000380a:	90                   	nop
   14000380b:	90                   	nop
   14000380c:	90                   	nop
   14000380d:	90                   	nop
   14000380e:	90                   	nop
   14000380f:	90                   	nop

0000000140003810 <__dyn_tls_dtor>:
   140003810:	48 83 ec 28          	sub    $0x28,%rsp
   140003814:	83 fa 03             	cmp    $0x3,%edx
   140003817:	74 17                	je     140003830 <__dyn_tls_dtor+0x20>
   140003819:	85 d2                	test   %edx,%edx
   14000381b:	74 13                	je     140003830 <__dyn_tls_dtor+0x20>
   14000381d:	b8 01 00 00 00       	mov    $0x1,%eax
   140003822:	48 83 c4 28          	add    $0x28,%rsp
   140003826:	c3                   	ret
   140003827:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000382e:	00 00 
   140003830:	e8 7b 0a 00 00       	call   1400042b0 <__mingw_TLScallback>
   140003835:	b8 01 00 00 00       	mov    $0x1,%eax
   14000383a:	48 83 c4 28          	add    $0x28,%rsp
   14000383e:	c3                   	ret
   14000383f:	90                   	nop

0000000140003840 <__dyn_tls_init>:
   140003840:	56                   	push   %rsi
   140003841:	53                   	push   %rbx
   140003842:	48 83 ec 28          	sub    $0x28,%rsp
   140003846:	48 8b 05 13 90 00 00 	mov    0x9013(%rip),%rax        # 14000c860 <.refptr._CRT_MT>
   14000384d:	83 38 02             	cmpl   $0x2,(%rax)
   140003850:	74 06                	je     140003858 <__dyn_tls_init+0x18>
   140003852:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   140003858:	83 fa 02             	cmp    $0x2,%edx
   14000385b:	74 13                	je     140003870 <__dyn_tls_init+0x30>
   14000385d:	83 fa 01             	cmp    $0x1,%edx
   140003860:	74 4e                	je     1400038b0 <__dyn_tls_init+0x70>
   140003862:	b8 01 00 00 00       	mov    $0x1,%eax
   140003867:	48 83 c4 28          	add    $0x28,%rsp
   14000386b:	5b                   	pop    %rbx
   14000386c:	5e                   	pop    %rsi
   14000386d:	c3                   	ret
   14000386e:	66 90                	xchg   %ax,%ax
   140003870:	48 8d 1d e1 e7 00 00 	lea    0xe7e1(%rip),%rbx        # 140012058 <__xd_z>
   140003877:	48 8d 35 da e7 00 00 	lea    0xe7da(%rip),%rsi        # 140012058 <__xd_z>
   14000387e:	48 39 f3             	cmp    %rsi,%rbx
   140003881:	74 df                	je     140003862 <__dyn_tls_init+0x22>
   140003883:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003888:	48 8b 03             	mov    (%rbx),%rax
   14000388b:	48 85 c0             	test   %rax,%rax
   14000388e:	74 02                	je     140003892 <__dyn_tls_init+0x52>
   140003890:	ff d0                	call   *%rax
   140003892:	48 83 c3 08          	add    $0x8,%rbx
   140003896:	48 39 f3             	cmp    %rsi,%rbx
   140003899:	75 ed                	jne    140003888 <__dyn_tls_init+0x48>
   14000389b:	b8 01 00 00 00       	mov    $0x1,%eax
   1400038a0:	48 83 c4 28          	add    $0x28,%rsp
   1400038a4:	5b                   	pop    %rbx
   1400038a5:	5e                   	pop    %rsi
   1400038a6:	c3                   	ret
   1400038a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400038ae:	00 00 
   1400038b0:	e8 fb 09 00 00       	call   1400042b0 <__mingw_TLScallback>
   1400038b5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400038ba:	48 83 c4 28          	add    $0x28,%rsp
   1400038be:	5b                   	pop    %rbx
   1400038bf:	5e                   	pop    %rsi
   1400038c0:	c3                   	ret
   1400038c1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400038c8:	00 00 00 00 
   1400038cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400038d0 <__tlregdtor>:
   1400038d0:	31 c0                	xor    %eax,%eax
   1400038d2:	c3                   	ret
   1400038d3:	90                   	nop
   1400038d4:	90                   	nop
   1400038d5:	90                   	nop
   1400038d6:	90                   	nop
   1400038d7:	90                   	nop
   1400038d8:	90                   	nop
   1400038d9:	90                   	nop
   1400038da:	90                   	nop
   1400038db:	90                   	nop
   1400038dc:	90                   	nop
   1400038dd:	90                   	nop
   1400038de:	90                   	nop
   1400038df:	90                   	nop

00000001400038e0 <_matherr>:
   1400038e0:	56                   	push   %rsi
   1400038e1:	53                   	push   %rbx
   1400038e2:	48 83 ec 78          	sub    $0x78,%rsp
   1400038e6:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   1400038eb:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
   1400038f0:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
   1400038f6:	83 39 06             	cmpl   $0x6,(%rcx)
   1400038f9:	0f 87 cd 00 00 00    	ja     1400039cc <_matherr+0xec>
   1400038ff:	8b 01                	mov    (%rcx),%eax
   140003901:	48 8d 15 bc 89 00 00 	lea    0x89bc(%rip),%rdx        # 14000c2c4 <.rdata+0x124>
   140003908:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000390c:	48 01 d0             	add    %rdx,%rax
   14000390f:	ff e0                	jmp    *%rax
   140003911:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003918:	48 8d 1d a0 88 00 00 	lea    0x88a0(%rip),%rbx        # 14000c1bf <.rdata+0x1f>
   14000391f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140003925:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   14000392a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   14000392f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   140003933:	b9 02 00 00 00       	mov    $0x2,%ecx
   140003938:	e8 53 63 00 00       	call   140009c90 <__acrt_iob_func>
   14000393d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   140003944:	49 89 d8             	mov    %rbx,%r8
   140003947:	48 8d 15 4a 89 00 00 	lea    0x894a(%rip),%rdx        # 14000c298 <.rdata+0xf8>
   14000394e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   140003954:	48 89 c1             	mov    %rax,%rcx
   140003957:	49 89 f1             	mov    %rsi,%r9
   14000395a:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   140003960:	e8 e3 68 00 00       	call   14000a248 <fprintf>
   140003965:	90                   	nop
   140003966:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   14000396b:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
   140003970:	31 c0                	xor    %eax,%eax
   140003972:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
   140003978:	48 83 c4 78          	add    $0x78,%rsp
   14000397c:	5b                   	pop    %rbx
   14000397d:	5e                   	pop    %rsi
   14000397e:	c3                   	ret
   14000397f:	90                   	nop
   140003980:	48 8d 1d 19 88 00 00 	lea    0x8819(%rip),%rbx        # 14000c1a0 <.rdata>
   140003987:	eb 96                	jmp    14000391f <_matherr+0x3f>
   140003989:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003990:	48 8d 1d 69 88 00 00 	lea    0x8869(%rip),%rbx        # 14000c200 <.rdata+0x60>
   140003997:	eb 86                	jmp    14000391f <_matherr+0x3f>
   140003999:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400039a0:	48 8d 1d 39 88 00 00 	lea    0x8839(%rip),%rbx        # 14000c1e0 <.rdata+0x40>
   1400039a7:	e9 73 ff ff ff       	jmp    14000391f <_matherr+0x3f>
   1400039ac:	0f 1f 40 00          	nopl   0x0(%rax)
   1400039b0:	48 8d 1d 99 88 00 00 	lea    0x8899(%rip),%rbx        # 14000c250 <.rdata+0xb0>
   1400039b7:	e9 63 ff ff ff       	jmp    14000391f <_matherr+0x3f>
   1400039bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400039c0:	48 8d 1d 61 88 00 00 	lea    0x8861(%rip),%rbx        # 14000c228 <.rdata+0x88>
   1400039c7:	e9 53 ff ff ff       	jmp    14000391f <_matherr+0x3f>
   1400039cc:	48 8d 1d b3 88 00 00 	lea    0x88b3(%rip),%rbx        # 14000c286 <.rdata+0xe6>
   1400039d3:	e9 47 ff ff ff       	jmp    14000391f <_matherr+0x3f>
   1400039d8:	90                   	nop
   1400039d9:	90                   	nop
   1400039da:	90                   	nop
   1400039db:	90                   	nop
   1400039dc:	90                   	nop
   1400039dd:	90                   	nop
   1400039de:	90                   	nop
   1400039df:	90                   	nop

00000001400039e0 <_fpreset>:
   1400039e0:	db e3                	fninit
   1400039e2:	c3                   	ret
   1400039e3:	90                   	nop
   1400039e4:	90                   	nop
   1400039e5:	90                   	nop
   1400039e6:	90                   	nop
   1400039e7:	90                   	nop
   1400039e8:	90                   	nop
   1400039e9:	90                   	nop
   1400039ea:	90                   	nop
   1400039eb:	90                   	nop
   1400039ec:	90                   	nop
   1400039ed:	90                   	nop
   1400039ee:	90                   	nop
   1400039ef:	90                   	nop

00000001400039f0 <__report_error>:
   1400039f0:	56                   	push   %rsi
   1400039f1:	53                   	push   %rbx
   1400039f2:	48 83 ec 38          	sub    $0x38,%rsp
   1400039f6:	48 89 cb             	mov    %rcx,%rbx
   1400039f9:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   1400039fe:	b9 02 00 00 00       	mov    $0x2,%ecx
   140003a03:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140003a08:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   140003a0d:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140003a12:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140003a17:	e8 74 62 00 00       	call   140009c90 <__acrt_iob_func>
   140003a1c:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140003a22:	ba 01 00 00 00       	mov    $0x1,%edx
   140003a27:	48 8d 0d b2 88 00 00 	lea    0x88b2(%rip),%rcx        # 14000c2e0 <.rdata>
   140003a2e:	49 89 c1             	mov    %rax,%r9
   140003a31:	e8 2a 68 00 00       	call   14000a260 <fwrite>
   140003a36:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
   140003a3b:	b9 02 00 00 00       	mov    $0x2,%ecx
   140003a40:	e8 4b 62 00 00       	call   140009c90 <__acrt_iob_func>
   140003a45:	48 89 da             	mov    %rbx,%rdx
   140003a48:	48 89 c1             	mov    %rax,%rcx
   140003a4b:	49 89 f0             	mov    %rsi,%r8
   140003a4e:	e8 5d 68 00 00       	call   14000a2b0 <vfprintf>
   140003a53:	e8 d8 67 00 00       	call   14000a230 <abort>
   140003a58:	90                   	nop
   140003a59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140003a60 <mark_section_writable>:
   140003a60:	57                   	push   %rdi
   140003a61:	56                   	push   %rsi
   140003a62:	53                   	push   %rbx
   140003a63:	48 83 ec 50          	sub    $0x50,%rsp
   140003a67:	48 63 35 c6 c6 00 00 	movslq 0xc6c6(%rip),%rsi        # 140010134 <maxSections>
   140003a6e:	48 89 cb             	mov    %rcx,%rbx
   140003a71:	85 f6                	test   %esi,%esi
   140003a73:	0f 8e 17 01 00 00    	jle    140003b90 <mark_section_writable+0x130>
   140003a79:	48 8b 05 b8 c6 00 00 	mov    0xc6b8(%rip),%rax        # 140010138 <the_secs>
   140003a80:	45 31 c9             	xor    %r9d,%r9d
   140003a83:	48 83 c0 18          	add    $0x18,%rax
   140003a87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140003a8e:	00 00 
   140003a90:	4c 8b 00             	mov    (%rax),%r8
   140003a93:	4c 39 c3             	cmp    %r8,%rbx
   140003a96:	72 13                	jb     140003aab <mark_section_writable+0x4b>
   140003a98:	48 8b 50 08          	mov    0x8(%rax),%rdx
   140003a9c:	8b 52 08             	mov    0x8(%rdx),%edx
   140003a9f:	49 01 d0             	add    %rdx,%r8
   140003aa2:	4c 39 c3             	cmp    %r8,%rbx
   140003aa5:	0f 82 8a 00 00 00    	jb     140003b35 <mark_section_writable+0xd5>
   140003aab:	41 83 c1 01          	add    $0x1,%r9d
   140003aaf:	48 83 c0 28          	add    $0x28,%rax
   140003ab3:	41 39 f1             	cmp    %esi,%r9d
   140003ab6:	75 d8                	jne    140003a90 <mark_section_writable+0x30>
   140003ab8:	48 89 d9             	mov    %rbx,%rcx
   140003abb:	e8 10 0a 00 00       	call   1400044d0 <__mingw_GetSectionForAddress>
   140003ac0:	48 89 c7             	mov    %rax,%rdi
   140003ac3:	48 85 c0             	test   %rax,%rax
   140003ac6:	0f 84 e6 00 00 00    	je     140003bb2 <mark_section_writable+0x152>
   140003acc:	48 8b 05 65 c6 00 00 	mov    0xc665(%rip),%rax        # 140010138 <the_secs>
   140003ad3:	48 8d 1c b6          	lea    (%rsi,%rsi,4),%rbx
   140003ad7:	48 c1 e3 03          	shl    $0x3,%rbx
   140003adb:	48 01 d8             	add    %rbx,%rax
   140003ade:	48 89 78 20          	mov    %rdi,0x20(%rax)
   140003ae2:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140003ae8:	e8 23 0b 00 00       	call   140004610 <_GetPEImageBase>
   140003aed:	8b 57 0c             	mov    0xc(%rdi),%edx
   140003af0:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140003af6:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   140003afa:	48 8b 05 37 c6 00 00 	mov    0xc637(%rip),%rax        # 140010138 <the_secs>
   140003b01:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140003b06:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   140003b0b:	ff 15 77 d8 00 00    	call   *0xd877(%rip)        # 140011388 <__imp_VirtualQuery>
   140003b11:	48 85 c0             	test   %rax,%rax
   140003b14:	0f 84 7d 00 00 00    	je     140003b97 <mark_section_writable+0x137>
   140003b1a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   140003b1e:	8d 50 fc             	lea    -0x4(%rax),%edx
   140003b21:	83 e2 fb             	and    $0xfffffffb,%edx
   140003b24:	74 08                	je     140003b2e <mark_section_writable+0xce>
   140003b26:	8d 50 c0             	lea    -0x40(%rax),%edx
   140003b29:	83 e2 bf             	and    $0xffffffbf,%edx
   140003b2c:	75 12                	jne    140003b40 <mark_section_writable+0xe0>
   140003b2e:	83 05 ff c5 00 00 01 	addl   $0x1,0xc5ff(%rip)        # 140010134 <maxSections>
   140003b35:	48 83 c4 50          	add    $0x50,%rsp
   140003b39:	5b                   	pop    %rbx
   140003b3a:	5e                   	pop    %rsi
   140003b3b:	5f                   	pop    %rdi
   140003b3c:	c3                   	ret
   140003b3d:	0f 1f 00             	nopl   (%rax)
   140003b40:	83 f8 02             	cmp    $0x2,%eax
   140003b43:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140003b48:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   140003b4d:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   140003b53:	b8 04 00 00 00       	mov    $0x4,%eax
   140003b58:	44 0f 44 c0          	cmove  %eax,%r8d
   140003b5c:	48 03 1d d5 c5 00 00 	add    0xc5d5(%rip),%rbx        # 140010138 <the_secs>
   140003b63:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   140003b67:	49 89 d9             	mov    %rbx,%r9
   140003b6a:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   140003b6e:	ff 15 0c d8 00 00    	call   *0xd80c(%rip)        # 140011380 <__imp_VirtualProtect>
   140003b74:	85 c0                	test   %eax,%eax
   140003b76:	75 b6                	jne    140003b2e <mark_section_writable+0xce>
   140003b78:	ff 15 c2 d7 00 00    	call   *0xd7c2(%rip)        # 140011340 <__imp_GetLastError>
   140003b7e:	48 8d 0d d3 87 00 00 	lea    0x87d3(%rip),%rcx        # 14000c358 <.rdata+0x78>
   140003b85:	89 c2                	mov    %eax,%edx
   140003b87:	e8 64 fe ff ff       	call   1400039f0 <__report_error>
   140003b8c:	0f 1f 40 00          	nopl   0x0(%rax)
   140003b90:	31 f6                	xor    %esi,%esi
   140003b92:	e9 21 ff ff ff       	jmp    140003ab8 <mark_section_writable+0x58>
   140003b97:	48 8b 05 9a c5 00 00 	mov    0xc59a(%rip),%rax        # 140010138 <the_secs>
   140003b9e:	8b 57 08             	mov    0x8(%rdi),%edx
   140003ba1:	48 8d 0d 78 87 00 00 	lea    0x8778(%rip),%rcx        # 14000c320 <.rdata+0x40>
   140003ba8:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   140003bad:	e8 3e fe ff ff       	call   1400039f0 <__report_error>
   140003bb2:	48 89 da             	mov    %rbx,%rdx
   140003bb5:	48 8d 0d 44 87 00 00 	lea    0x8744(%rip),%rcx        # 14000c300 <.rdata+0x20>
   140003bbc:	e8 2f fe ff ff       	call   1400039f0 <__report_error>
   140003bc1:	90                   	nop
   140003bc2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140003bc9:	00 00 00 00 
   140003bcd:	0f 1f 00             	nopl   (%rax)

0000000140003bd0 <_pei386_runtime_relocator>:
   140003bd0:	55                   	push   %rbp
   140003bd1:	41 57                	push   %r15
   140003bd3:	41 56                	push   %r14
   140003bd5:	41 55                	push   %r13
   140003bd7:	41 54                	push   %r12
   140003bd9:	57                   	push   %rdi
   140003bda:	56                   	push   %rsi
   140003bdb:	53                   	push   %rbx
   140003bdc:	48 83 ec 48          	sub    $0x48,%rsp
   140003be0:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140003be5:	44 8b 25 44 c5 00 00 	mov    0xc544(%rip),%r12d        # 140010130 <was_init.0>
   140003bec:	45 85 e4             	test   %r12d,%r12d
   140003bef:	74 17                	je     140003c08 <_pei386_runtime_relocator+0x38>
   140003bf1:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140003bf5:	5b                   	pop    %rbx
   140003bf6:	5e                   	pop    %rsi
   140003bf7:	5f                   	pop    %rdi
   140003bf8:	41 5c                	pop    %r12
   140003bfa:	41 5d                	pop    %r13
   140003bfc:	41 5e                	pop    %r14
   140003bfe:	41 5f                	pop    %r15
   140003c00:	5d                   	pop    %rbp
   140003c01:	c3                   	ret
   140003c02:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003c08:	c7 05 1e c5 00 00 01 	movl   $0x1,0xc51e(%rip)        # 140010130 <was_init.0>
   140003c0f:	00 00 00 
   140003c12:	e8 39 09 00 00       	call   140004550 <__mingw_GetSectionCount>
   140003c17:	48 98                	cltq
   140003c19:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140003c1d:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   140003c24:	00 
   140003c25:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140003c29:	e8 82 0c 00 00       	call   1400048b0 <___chkstk_ms>
   140003c2e:	4c 8b 2d 8b 8c 00 00 	mov    0x8c8b(%rip),%r13        # 14000c8c0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140003c35:	48 8b 1d 94 8c 00 00 	mov    0x8c94(%rip),%rbx        # 14000c8d0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140003c3c:	c7 05 ee c4 00 00 00 	movl   $0x0,0xc4ee(%rip)        # 140010134 <maxSections>
   140003c43:	00 00 00 
   140003c46:	48 29 c4             	sub    %rax,%rsp
   140003c49:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140003c4e:	48 89 05 e3 c4 00 00 	mov    %rax,0xc4e3(%rip)        # 140010138 <the_secs>
   140003c55:	4c 89 e8             	mov    %r13,%rax
   140003c58:	48 29 d8             	sub    %rbx,%rax
   140003c5b:	48 83 f8 07          	cmp    $0x7,%rax
   140003c5f:	7e 90                	jle    140003bf1 <_pei386_runtime_relocator+0x21>
   140003c61:	8b 13                	mov    (%rbx),%edx
   140003c63:	48 83 f8 0b          	cmp    $0xb,%rax
   140003c67:	0f 8f 03 01 00 00    	jg     140003d70 <_pei386_runtime_relocator+0x1a0>
   140003c6d:	8b 03                	mov    (%rbx),%eax
   140003c6f:	85 c0                	test   %eax,%eax
   140003c71:	0f 85 69 02 00 00    	jne    140003ee0 <_pei386_runtime_relocator+0x310>
   140003c77:	8b 43 04             	mov    0x4(%rbx),%eax
   140003c7a:	85 c0                	test   %eax,%eax
   140003c7c:	0f 85 5e 02 00 00    	jne    140003ee0 <_pei386_runtime_relocator+0x310>
   140003c82:	8b 53 08             	mov    0x8(%rbx),%edx
   140003c85:	83 fa 01             	cmp    $0x1,%edx
   140003c88:	0f 85 92 02 00 00    	jne    140003f20 <_pei386_runtime_relocator+0x350>
   140003c8e:	48 83 c3 0c          	add    $0xc,%rbx
   140003c92:	4c 39 eb             	cmp    %r13,%rbx
   140003c95:	0f 83 56 ff ff ff    	jae    140003bf1 <_pei386_runtime_relocator+0x21>
   140003c9b:	4c 8b 35 0e 8c 00 00 	mov    0x8c0e(%rip),%r14        # 14000c8b0 <.refptr.__ImageBase>
   140003ca2:	41 bf ff ff ff ff    	mov    $0xffffffff,%r15d
   140003ca8:	eb 65                	jmp    140003d0f <_pei386_runtime_relocator+0x13f>
   140003caa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003cb0:	83 f9 08             	cmp    $0x8,%ecx
   140003cb3:	0f 84 d7 00 00 00    	je     140003d90 <_pei386_runtime_relocator+0x1c0>
   140003cb9:	83 f9 10             	cmp    $0x10,%ecx
   140003cbc:	0f 85 50 02 00 00    	jne    140003f12 <_pei386_runtime_relocator+0x342>
   140003cc2:	0f b7 37             	movzwl (%rdi),%esi
   140003cc5:	81 e2 c0 00 00 00    	and    $0xc0,%edx
   140003ccb:	66 85 f6             	test   %si,%si
   140003cce:	0f 89 cc 01 00 00    	jns    140003ea0 <_pei386_runtime_relocator+0x2d0>
   140003cd4:	48 81 ce 00 00 ff ff 	or     $0xffffffffffff0000,%rsi
   140003cdb:	48 29 c6             	sub    %rax,%rsi
   140003cde:	4c 01 ce             	add    %r9,%rsi
   140003ce1:	85 d2                	test   %edx,%edx
   140003ce3:	75 12                	jne    140003cf7 <_pei386_runtime_relocator+0x127>
   140003ce5:	48 81 fe 00 80 ff ff 	cmp    $0xffffffffffff8000,%rsi
   140003cec:	7c 65                	jl     140003d53 <_pei386_runtime_relocator+0x183>
   140003cee:	48 81 fe ff ff 00 00 	cmp    $0xffff,%rsi
   140003cf5:	7f 5c                	jg     140003d53 <_pei386_runtime_relocator+0x183>
   140003cf7:	48 89 f9             	mov    %rdi,%rcx
   140003cfa:	e8 61 fd ff ff       	call   140003a60 <mark_section_writable>
   140003cff:	66 89 37             	mov    %si,(%rdi)
   140003d02:	48 83 c3 0c          	add    $0xc,%rbx
   140003d06:	4c 39 eb             	cmp    %r13,%rbx
   140003d09:	0f 83 d1 00 00 00    	jae    140003de0 <_pei386_runtime_relocator+0x210>
   140003d0f:	8b 03                	mov    (%rbx),%eax
   140003d11:	8b 53 08             	mov    0x8(%rbx),%edx
   140003d14:	8b 7b 04             	mov    0x4(%rbx),%edi
   140003d17:	4c 01 f0             	add    %r14,%rax
   140003d1a:	0f b6 ca             	movzbl %dl,%ecx
   140003d1d:	4c 8b 08             	mov    (%rax),%r9
   140003d20:	4c 01 f7             	add    %r14,%rdi
   140003d23:	83 f9 20             	cmp    $0x20,%ecx
   140003d26:	0f 84 0c 01 00 00    	je     140003e38 <_pei386_runtime_relocator+0x268>
   140003d2c:	76 82                	jbe    140003cb0 <_pei386_runtime_relocator+0xe0>
   140003d2e:	83 f9 40             	cmp    $0x40,%ecx
   140003d31:	0f 85 db 01 00 00    	jne    140003f12 <_pei386_runtime_relocator+0x342>
   140003d37:	48 8b 37             	mov    (%rdi),%rsi
   140003d3a:	89 d1                	mov    %edx,%ecx
   140003d3c:	48 29 c6             	sub    %rax,%rsi
   140003d3f:	4c 01 ce             	add    %r9,%rsi
   140003d42:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140003d48:	0f 85 42 01 00 00    	jne    140003e90 <_pei386_runtime_relocator+0x2c0>
   140003d4e:	48 85 f6             	test   %rsi,%rsi
   140003d51:	78 af                	js     140003d02 <_pei386_runtime_relocator+0x132>
   140003d53:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   140003d58:	89 ca                	mov    %ecx,%edx
   140003d5a:	49 89 f8             	mov    %rdi,%r8
   140003d5d:	48 8d 0d 84 86 00 00 	lea    0x8684(%rip),%rcx        # 14000c3e8 <.rdata+0x108>
   140003d64:	e8 87 fc ff ff       	call   1400039f0 <__report_error>
   140003d69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003d70:	85 d2                	test   %edx,%edx
   140003d72:	0f 85 68 01 00 00    	jne    140003ee0 <_pei386_runtime_relocator+0x310>
   140003d78:	8b 43 04             	mov    0x4(%rbx),%eax
   140003d7b:	89 c2                	mov    %eax,%edx
   140003d7d:	0b 53 08             	or     0x8(%rbx),%edx
   140003d80:	0f 85 f4 fe ff ff    	jne    140003c7a <_pei386_runtime_relocator+0xaa>
   140003d86:	48 83 c3 0c          	add    $0xc,%rbx
   140003d8a:	e9 de fe ff ff       	jmp    140003c6d <_pei386_runtime_relocator+0x9d>
   140003d8f:	90                   	nop
   140003d90:	0f b6 37             	movzbl (%rdi),%esi
   140003d93:	81 e2 c0 00 00 00    	and    $0xc0,%edx
   140003d99:	40 84 f6             	test   %sil,%sil
   140003d9c:	0f 89 26 01 00 00    	jns    140003ec8 <_pei386_runtime_relocator+0x2f8>
   140003da2:	48 81 ce 00 ff ff ff 	or     $0xffffffffffffff00,%rsi
   140003da9:	48 29 c6             	sub    %rax,%rsi
   140003dac:	4c 01 ce             	add    %r9,%rsi
   140003daf:	85 d2                	test   %edx,%edx
   140003db1:	75 0f                	jne    140003dc2 <_pei386_runtime_relocator+0x1f2>
   140003db3:	48 81 fe ff 00 00 00 	cmp    $0xff,%rsi
   140003dba:	7f 97                	jg     140003d53 <_pei386_runtime_relocator+0x183>
   140003dbc:	48 83 fe 80          	cmp    $0xffffffffffffff80,%rsi
   140003dc0:	7c 91                	jl     140003d53 <_pei386_runtime_relocator+0x183>
   140003dc2:	48 89 f9             	mov    %rdi,%rcx
   140003dc5:	48 83 c3 0c          	add    $0xc,%rbx
   140003dc9:	e8 92 fc ff ff       	call   140003a60 <mark_section_writable>
   140003dce:	40 88 37             	mov    %sil,(%rdi)
   140003dd1:	4c 39 eb             	cmp    %r13,%rbx
   140003dd4:	0f 82 35 ff ff ff    	jb     140003d0f <_pei386_runtime_relocator+0x13f>
   140003dda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003de0:	8b 15 4e c3 00 00    	mov    0xc34e(%rip),%edx        # 140010134 <maxSections>
   140003de6:	85 d2                	test   %edx,%edx
   140003de8:	0f 8e 03 fe ff ff    	jle    140003bf1 <_pei386_runtime_relocator+0x21>
   140003dee:	48 8b 35 8b d5 00 00 	mov    0xd58b(%rip),%rsi        # 140011380 <__imp_VirtualProtect>
   140003df5:	31 db                	xor    %ebx,%ebx
   140003df7:	48 8d 7d fc          	lea    -0x4(%rbp),%rdi
   140003dfb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003e00:	48 8b 05 31 c3 00 00 	mov    0xc331(%rip),%rax        # 140010138 <the_secs>
   140003e07:	48 01 d8             	add    %rbx,%rax
   140003e0a:	44 8b 00             	mov    (%rax),%r8d
   140003e0d:	45 85 c0             	test   %r8d,%r8d
   140003e10:	74 0d                	je     140003e1f <_pei386_runtime_relocator+0x24f>
   140003e12:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140003e16:	48 8b 48 08          	mov    0x8(%rax),%rcx
   140003e1a:	49 89 f9             	mov    %rdi,%r9
   140003e1d:	ff d6                	call   *%rsi
   140003e1f:	41 83 c4 01          	add    $0x1,%r12d
   140003e23:	48 83 c3 28          	add    $0x28,%rbx
   140003e27:	44 3b 25 06 c3 00 00 	cmp    0xc306(%rip),%r12d        # 140010134 <maxSections>
   140003e2e:	7c d0                	jl     140003e00 <_pei386_runtime_relocator+0x230>
   140003e30:	e9 bc fd ff ff       	jmp    140003bf1 <_pei386_runtime_relocator+0x21>
   140003e35:	0f 1f 00             	nopl   (%rax)
   140003e38:	8b 37                	mov    (%rdi),%esi
   140003e3a:	81 e2 c0 00 00 00    	and    $0xc0,%edx
   140003e40:	85 f6                	test   %esi,%esi
   140003e42:	79 74                	jns    140003eb8 <_pei386_runtime_relocator+0x2e8>
   140003e44:	49 bb 00 00 00 00 ff 	movabs $0xffffffff00000000,%r11
   140003e4b:	ff ff ff 
   140003e4e:	4c 09 de             	or     %r11,%rsi
   140003e51:	48 29 c6             	sub    %rax,%rsi
   140003e54:	4c 01 ce             	add    %r9,%rsi
   140003e57:	85 d2                	test   %edx,%edx
   140003e59:	75 1c                	jne    140003e77 <_pei386_runtime_relocator+0x2a7>
   140003e5b:	4c 39 fe             	cmp    %r15,%rsi
   140003e5e:	0f 8f ef fe ff ff    	jg     140003d53 <_pei386_runtime_relocator+0x183>
   140003e64:	48 b8 ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%rax
   140003e6b:	ff ff ff 
   140003e6e:	48 39 c6             	cmp    %rax,%rsi
   140003e71:	0f 8e dc fe ff ff    	jle    140003d53 <_pei386_runtime_relocator+0x183>
   140003e77:	48 89 f9             	mov    %rdi,%rcx
   140003e7a:	e8 e1 fb ff ff       	call   140003a60 <mark_section_writable>
   140003e7f:	89 37                	mov    %esi,(%rdi)
   140003e81:	e9 7c fe ff ff       	jmp    140003d02 <_pei386_runtime_relocator+0x132>
   140003e86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140003e8d:	00 00 00 
   140003e90:	48 89 f9             	mov    %rdi,%rcx
   140003e93:	e8 c8 fb ff ff       	call   140003a60 <mark_section_writable>
   140003e98:	48 89 37             	mov    %rsi,(%rdi)
   140003e9b:	e9 62 fe ff ff       	jmp    140003d02 <_pei386_runtime_relocator+0x132>
   140003ea0:	48 29 c6             	sub    %rax,%rsi
   140003ea3:	4c 01 ce             	add    %r9,%rsi
   140003ea6:	85 d2                	test   %edx,%edx
   140003ea8:	0f 84 37 fe ff ff    	je     140003ce5 <_pei386_runtime_relocator+0x115>
   140003eae:	e9 44 fe ff ff       	jmp    140003cf7 <_pei386_runtime_relocator+0x127>
   140003eb3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003eb8:	48 29 c6             	sub    %rax,%rsi
   140003ebb:	4c 01 ce             	add    %r9,%rsi
   140003ebe:	85 d2                	test   %edx,%edx
   140003ec0:	74 99                	je     140003e5b <_pei386_runtime_relocator+0x28b>
   140003ec2:	eb b3                	jmp    140003e77 <_pei386_runtime_relocator+0x2a7>
   140003ec4:	0f 1f 40 00          	nopl   0x0(%rax)
   140003ec8:	48 29 c6             	sub    %rax,%rsi
   140003ecb:	4c 01 ce             	add    %r9,%rsi
   140003ece:	85 d2                	test   %edx,%edx
   140003ed0:	0f 84 dd fe ff ff    	je     140003db3 <_pei386_runtime_relocator+0x1e3>
   140003ed6:	e9 e7 fe ff ff       	jmp    140003dc2 <_pei386_runtime_relocator+0x1f2>
   140003edb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003ee0:	4c 39 eb             	cmp    %r13,%rbx
   140003ee3:	0f 83 08 fd ff ff    	jae    140003bf1 <_pei386_runtime_relocator+0x21>
   140003ee9:	4c 8b 35 c0 89 00 00 	mov    0x89c0(%rip),%r14        # 14000c8b0 <.refptr.__ImageBase>
   140003ef0:	8b 73 04             	mov    0x4(%rbx),%esi
   140003ef3:	8b 3b                	mov    (%rbx),%edi
   140003ef5:	48 83 c3 08          	add    $0x8,%rbx
   140003ef9:	4c 01 f6             	add    %r14,%rsi
   140003efc:	03 3e                	add    (%rsi),%edi
   140003efe:	48 89 f1             	mov    %rsi,%rcx
   140003f01:	e8 5a fb ff ff       	call   140003a60 <mark_section_writable>
   140003f06:	89 3e                	mov    %edi,(%rsi)
   140003f08:	4c 39 eb             	cmp    %r13,%rbx
   140003f0b:	72 e3                	jb     140003ef0 <_pei386_runtime_relocator+0x320>
   140003f0d:	e9 ce fe ff ff       	jmp    140003de0 <_pei386_runtime_relocator+0x210>
   140003f12:	89 ca                	mov    %ecx,%edx
   140003f14:	48 8d 0d 9d 84 00 00 	lea    0x849d(%rip),%rcx        # 14000c3b8 <.rdata+0xd8>
   140003f1b:	e8 d0 fa ff ff       	call   1400039f0 <__report_error>
   140003f20:	48 8d 0d 59 84 00 00 	lea    0x8459(%rip),%rcx        # 14000c380 <.rdata+0xa0>
   140003f27:	e8 c4 fa ff ff       	call   1400039f0 <__report_error>
   140003f2c:	90                   	nop
   140003f2d:	90                   	nop
   140003f2e:	90                   	nop
   140003f2f:	90                   	nop

0000000140003f30 <__mingw_raise_matherr>:
   140003f30:	48 83 ec 58          	sub    $0x58,%rsp
   140003f34:	48 8b 05 05 c2 00 00 	mov    0xc205(%rip),%rax        # 140010140 <stUserMathErr>
   140003f3b:	66 0f 14 d3          	unpcklpd %xmm3,%xmm2
   140003f3f:	48 85 c0             	test   %rax,%rax
   140003f42:	74 25                	je     140003f69 <__mingw_raise_matherr+0x39>
   140003f44:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140003f4b:	00 00 
   140003f4d:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140003f51:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140003f56:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140003f5b:	0f 11 54 24 30       	movups %xmm2,0x30(%rsp)
   140003f60:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140003f66:	ff d0                	call   *%rax
   140003f68:	90                   	nop
   140003f69:	48 83 c4 58          	add    $0x58,%rsp
   140003f6d:	c3                   	ret
   140003f6e:	66 90                	xchg   %ax,%ax

0000000140003f70 <__mingw_setusermatherr>:
   140003f70:	48 89 0d c9 c1 00 00 	mov    %rcx,0xc1c9(%rip)        # 140010140 <stUserMathErr>
   140003f77:	e9 74 62 00 00       	jmp    14000a1f0 <__setusermatherr>
   140003f7c:	90                   	nop
   140003f7d:	90                   	nop
   140003f7e:	90                   	nop
   140003f7f:	90                   	nop

0000000140003f80 <_gnu_exception_handler>:
   140003f80:	53                   	push   %rbx
   140003f81:	48 83 ec 20          	sub    $0x20,%rsp
   140003f85:	48 8b 11             	mov    (%rcx),%rdx
   140003f88:	8b 02                	mov    (%rdx),%eax
   140003f8a:	48 89 cb             	mov    %rcx,%rbx
   140003f8d:	89 c1                	mov    %eax,%ecx
   140003f8f:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140003f95:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140003f9b:	0f 84 bf 00 00 00    	je     140004060 <_gnu_exception_handler+0xe0>
   140003fa1:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140003fa6:	77 47                	ja     140003fef <_gnu_exception_handler+0x6f>
   140003fa8:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140003fad:	76 61                	jbe    140004010 <_gnu_exception_handler+0x90>
   140003faf:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140003fb4:	83 f8 09             	cmp    $0x9,%eax
   140003fb7:	0f 87 93 00 00 00    	ja     140004050 <_gnu_exception_handler+0xd0>
   140003fbd:	48 8d 15 7c 84 00 00 	lea    0x847c(%rip),%rdx        # 14000c440 <.rdata>
   140003fc4:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140003fc8:	48 01 d0             	add    %rdx,%rax
   140003fcb:	ff e0                	jmp    *%rax
   140003fcd:	0f 1f 00             	nopl   (%rax)
   140003fd0:	31 d2                	xor    %edx,%edx
   140003fd2:	b9 08 00 00 00       	mov    $0x8,%ecx
   140003fd7:	e8 b4 62 00 00       	call   14000a290 <signal>
   140003fdc:	48 83 f8 01          	cmp    $0x1,%rax
   140003fe0:	0f 84 3e 01 00 00    	je     140004124 <_gnu_exception_handler+0x1a4>
   140003fe6:	48 85 c0             	test   %rax,%rax
   140003fe9:	0f 85 01 01 00 00    	jne    1400040f0 <_gnu_exception_handler+0x170>
   140003fef:	48 8b 05 6a c1 00 00 	mov    0xc16a(%rip),%rax        # 140010160 <__mingw_oldexcpt_handler>
   140003ff6:	48 85 c0             	test   %rax,%rax
   140003ff9:	74 75                	je     140004070 <_gnu_exception_handler+0xf0>
   140003ffb:	48 89 d9             	mov    %rbx,%rcx
   140003ffe:	48 83 c4 20          	add    $0x20,%rsp
   140004002:	5b                   	pop    %rbx
   140004003:	48 ff e0             	rex.W jmp *%rax
   140004006:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000400d:	00 00 00 
   140004010:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140004015:	0f 84 a5 00 00 00    	je     1400040c0 <_gnu_exception_handler+0x140>
   14000401b:	76 63                	jbe    140004080 <_gnu_exception_handler+0x100>
   14000401d:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140004022:	74 2c                	je     140004050 <_gnu_exception_handler+0xd0>
   140004024:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140004029:	75 c4                	jne    140003fef <_gnu_exception_handler+0x6f>
   14000402b:	31 d2                	xor    %edx,%edx
   14000402d:	b9 04 00 00 00       	mov    $0x4,%ecx
   140004032:	e8 59 62 00 00       	call   14000a290 <signal>
   140004037:	48 83 f8 01          	cmp    $0x1,%rax
   14000403b:	0f 84 cf 00 00 00    	je     140004110 <_gnu_exception_handler+0x190>
   140004041:	48 85 c0             	test   %rax,%rax
   140004044:	74 a9                	je     140003fef <_gnu_exception_handler+0x6f>
   140004046:	b9 04 00 00 00       	mov    $0x4,%ecx
   14000404b:	ff d0                	call   *%rax
   14000404d:	0f 1f 00             	nopl   (%rax)
   140004050:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140004055:	eb 1b                	jmp    140004072 <_gnu_exception_handler+0xf2>
   140004057:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000405e:	00 00 
   140004060:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140004064:	0f 85 37 ff ff ff    	jne    140003fa1 <_gnu_exception_handler+0x21>
   14000406a:	eb e4                	jmp    140004050 <_gnu_exception_handler+0xd0>
   14000406c:	0f 1f 40 00          	nopl   0x0(%rax)
   140004070:	31 c0                	xor    %eax,%eax
   140004072:	48 83 c4 20          	add    $0x20,%rsp
   140004076:	5b                   	pop    %rbx
   140004077:	c3                   	ret
   140004078:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000407f:	00 
   140004080:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140004085:	0f 85 64 ff ff ff    	jne    140003fef <_gnu_exception_handler+0x6f>
   14000408b:	eb c3                	jmp    140004050 <_gnu_exception_handler+0xd0>
   14000408d:	0f 1f 00             	nopl   (%rax)
   140004090:	31 d2                	xor    %edx,%edx
   140004092:	b9 08 00 00 00       	mov    $0x8,%ecx
   140004097:	e8 f4 61 00 00       	call   14000a290 <signal>
   14000409c:	48 83 f8 01          	cmp    $0x1,%rax
   1400040a0:	0f 85 40 ff ff ff    	jne    140003fe6 <_gnu_exception_handler+0x66>
   1400040a6:	ba 01 00 00 00       	mov    $0x1,%edx
   1400040ab:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400040b0:	e8 db 61 00 00       	call   14000a290 <signal>
   1400040b5:	eb 99                	jmp    140004050 <_gnu_exception_handler+0xd0>
   1400040b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400040be:	00 00 
   1400040c0:	31 d2                	xor    %edx,%edx
   1400040c2:	b9 0b 00 00 00       	mov    $0xb,%ecx
   1400040c7:	e8 c4 61 00 00       	call   14000a290 <signal>
   1400040cc:	48 83 f8 01          	cmp    $0x1,%rax
   1400040d0:	74 2a                	je     1400040fc <_gnu_exception_handler+0x17c>
   1400040d2:	48 85 c0             	test   %rax,%rax
   1400040d5:	0f 84 14 ff ff ff    	je     140003fef <_gnu_exception_handler+0x6f>
   1400040db:	b9 0b 00 00 00       	mov    $0xb,%ecx
   1400040e0:	ff d0                	call   *%rax
   1400040e2:	e9 69 ff ff ff       	jmp    140004050 <_gnu_exception_handler+0xd0>
   1400040e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400040ee:	00 00 
   1400040f0:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400040f5:	ff d0                	call   *%rax
   1400040f7:	e9 54 ff ff ff       	jmp    140004050 <_gnu_exception_handler+0xd0>
   1400040fc:	ba 01 00 00 00       	mov    $0x1,%edx
   140004101:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140004106:	e8 85 61 00 00       	call   14000a290 <signal>
   14000410b:	e9 40 ff ff ff       	jmp    140004050 <_gnu_exception_handler+0xd0>
   140004110:	ba 01 00 00 00       	mov    $0x1,%edx
   140004115:	b9 04 00 00 00       	mov    $0x4,%ecx
   14000411a:	e8 71 61 00 00       	call   14000a290 <signal>
   14000411f:	e9 2c ff ff ff       	jmp    140004050 <_gnu_exception_handler+0xd0>
   140004124:	ba 01 00 00 00       	mov    $0x1,%edx
   140004129:	b9 08 00 00 00       	mov    $0x8,%ecx
   14000412e:	e8 5d 61 00 00       	call   14000a290 <signal>
   140004133:	e8 a8 f8 ff ff       	call   1400039e0 <_fpreset>
   140004138:	e9 13 ff ff ff       	jmp    140004050 <_gnu_exception_handler+0xd0>
   14000413d:	90                   	nop
   14000413e:	90                   	nop
   14000413f:	90                   	nop

0000000140004140 <__mingwthr_run_key_dtors.part.0>:
   140004140:	41 54                	push   %r12
   140004142:	55                   	push   %rbp
   140004143:	57                   	push   %rdi
   140004144:	56                   	push   %rsi
   140004145:	53                   	push   %rbx
   140004146:	48 83 ec 20          	sub    $0x20,%rsp
   14000414a:	4c 8d 25 4f c0 00 00 	lea    0xc04f(%rip),%r12        # 1400101a0 <__mingwthr_cs>
   140004151:	4c 89 e1             	mov    %r12,%rcx
   140004154:	ff 15 de d1 00 00    	call   *0xd1de(%rip)        # 140011338 <__imp_EnterCriticalSection>
   14000415a:	48 8b 1d 1f c0 00 00 	mov    0xc01f(%rip),%rbx        # 140010180 <key_dtor_list>
   140004161:	48 85 db             	test   %rbx,%rbx
   140004164:	74 36                	je     14000419c <__mingwthr_run_key_dtors.part.0+0x5c>
   140004166:	48 8b 2d 0b d2 00 00 	mov    0xd20b(%rip),%rbp        # 140011378 <__imp_TlsGetValue>
   14000416d:	48 8b 3d cc d1 00 00 	mov    0xd1cc(%rip),%rdi        # 140011340 <__imp_GetLastError>
   140004174:	0f 1f 40 00          	nopl   0x0(%rax)
   140004178:	8b 0b                	mov    (%rbx),%ecx
   14000417a:	ff d5                	call   *%rbp
   14000417c:	48 89 c6             	mov    %rax,%rsi
   14000417f:	ff d7                	call   *%rdi
   140004181:	48 85 f6             	test   %rsi,%rsi
   140004184:	74 0d                	je     140004193 <__mingwthr_run_key_dtors.part.0+0x53>
   140004186:	85 c0                	test   %eax,%eax
   140004188:	75 09                	jne    140004193 <__mingwthr_run_key_dtors.part.0+0x53>
   14000418a:	48 8b 43 08          	mov    0x8(%rbx),%rax
   14000418e:	48 89 f1             	mov    %rsi,%rcx
   140004191:	ff d0                	call   *%rax
   140004193:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140004197:	48 85 db             	test   %rbx,%rbx
   14000419a:	75 dc                	jne    140004178 <__mingwthr_run_key_dtors.part.0+0x38>
   14000419c:	4c 89 e1             	mov    %r12,%rcx
   14000419f:	48 83 c4 20          	add    $0x20,%rsp
   1400041a3:	5b                   	pop    %rbx
   1400041a4:	5e                   	pop    %rsi
   1400041a5:	5f                   	pop    %rdi
   1400041a6:	5d                   	pop    %rbp
   1400041a7:	41 5c                	pop    %r12
   1400041a9:	48 ff 25 a8 d1 00 00 	rex.W jmp *0xd1a8(%rip)        # 140011358 <__imp_LeaveCriticalSection>

00000001400041b0 <___w64_mingwthr_add_key_dtor>:
   1400041b0:	57                   	push   %rdi
   1400041b1:	56                   	push   %rsi
   1400041b2:	53                   	push   %rbx
   1400041b3:	48 83 ec 20          	sub    $0x20,%rsp
   1400041b7:	8b 05 cb bf 00 00    	mov    0xbfcb(%rip),%eax        # 140010188 <__mingwthr_cs_init>
   1400041bd:	89 cf                	mov    %ecx,%edi
   1400041bf:	48 89 d6             	mov    %rdx,%rsi
   1400041c2:	85 c0                	test   %eax,%eax
   1400041c4:	75 0a                	jne    1400041d0 <___w64_mingwthr_add_key_dtor+0x20>
   1400041c6:	31 c0                	xor    %eax,%eax
   1400041c8:	48 83 c4 20          	add    $0x20,%rsp
   1400041cc:	5b                   	pop    %rbx
   1400041cd:	5e                   	pop    %rsi
   1400041ce:	5f                   	pop    %rdi
   1400041cf:	c3                   	ret
   1400041d0:	ba 18 00 00 00       	mov    $0x18,%edx
   1400041d5:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400041da:	e8 59 60 00 00       	call   14000a238 <calloc>
   1400041df:	48 89 c3             	mov    %rax,%rbx
   1400041e2:	48 85 c0             	test   %rax,%rax
   1400041e5:	74 33                	je     14000421a <___w64_mingwthr_add_key_dtor+0x6a>
   1400041e7:	48 89 70 08          	mov    %rsi,0x8(%rax)
   1400041eb:	48 8d 35 ae bf 00 00 	lea    0xbfae(%rip),%rsi        # 1400101a0 <__mingwthr_cs>
   1400041f2:	89 38                	mov    %edi,(%rax)
   1400041f4:	48 89 f1             	mov    %rsi,%rcx
   1400041f7:	ff 15 3b d1 00 00    	call   *0xd13b(%rip)        # 140011338 <__imp_EnterCriticalSection>
   1400041fd:	48 8b 05 7c bf 00 00 	mov    0xbf7c(%rip),%rax        # 140010180 <key_dtor_list>
   140004204:	48 89 f1             	mov    %rsi,%rcx
   140004207:	48 89 1d 72 bf 00 00 	mov    %rbx,0xbf72(%rip)        # 140010180 <key_dtor_list>
   14000420e:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140004212:	ff 15 40 d1 00 00    	call   *0xd140(%rip)        # 140011358 <__imp_LeaveCriticalSection>
   140004218:	eb ac                	jmp    1400041c6 <___w64_mingwthr_add_key_dtor+0x16>
   14000421a:	83 c8 ff             	or     $0xffffffff,%eax
   14000421d:	eb a9                	jmp    1400041c8 <___w64_mingwthr_add_key_dtor+0x18>
   14000421f:	90                   	nop

0000000140004220 <___w64_mingwthr_remove_key_dtor>:
   140004220:	56                   	push   %rsi
   140004221:	53                   	push   %rbx
   140004222:	48 83 ec 28          	sub    $0x28,%rsp
   140004226:	8b 05 5c bf 00 00    	mov    0xbf5c(%rip),%eax        # 140010188 <__mingwthr_cs_init>
   14000422c:	89 cb                	mov    %ecx,%ebx
   14000422e:	85 c0                	test   %eax,%eax
   140004230:	75 0e                	jne    140004240 <___w64_mingwthr_remove_key_dtor+0x20>
   140004232:	31 c0                	xor    %eax,%eax
   140004234:	48 83 c4 28          	add    $0x28,%rsp
   140004238:	5b                   	pop    %rbx
   140004239:	5e                   	pop    %rsi
   14000423a:	c3                   	ret
   14000423b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004240:	48 8d 35 59 bf 00 00 	lea    0xbf59(%rip),%rsi        # 1400101a0 <__mingwthr_cs>
   140004247:	48 89 f1             	mov    %rsi,%rcx
   14000424a:	ff 15 e8 d0 00 00    	call   *0xd0e8(%rip)        # 140011338 <__imp_EnterCriticalSection>
   140004250:	48 8b 0d 29 bf 00 00 	mov    0xbf29(%rip),%rcx        # 140010180 <key_dtor_list>
   140004257:	48 85 c9             	test   %rcx,%rcx
   14000425a:	74 27                	je     140004283 <___w64_mingwthr_remove_key_dtor+0x63>
   14000425c:	31 d2                	xor    %edx,%edx
   14000425e:	eb 0b                	jmp    14000426b <___w64_mingwthr_remove_key_dtor+0x4b>
   140004260:	48 89 ca             	mov    %rcx,%rdx
   140004263:	48 85 c0             	test   %rax,%rax
   140004266:	74 1b                	je     140004283 <___w64_mingwthr_remove_key_dtor+0x63>
   140004268:	48 89 c1             	mov    %rax,%rcx
   14000426b:	8b 01                	mov    (%rcx),%eax
   14000426d:	39 d8                	cmp    %ebx,%eax
   14000426f:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140004273:	75 eb                	jne    140004260 <___w64_mingwthr_remove_key_dtor+0x40>
   140004275:	48 85 d2             	test   %rdx,%rdx
   140004278:	74 1e                	je     140004298 <___w64_mingwthr_remove_key_dtor+0x78>
   14000427a:	48 89 42 10          	mov    %rax,0x10(%rdx)
   14000427e:	e8 d5 5f 00 00       	call   14000a258 <free>
   140004283:	48 89 f1             	mov    %rsi,%rcx
   140004286:	ff 15 cc d0 00 00    	call   *0xd0cc(%rip)        # 140011358 <__imp_LeaveCriticalSection>
   14000428c:	31 c0                	xor    %eax,%eax
   14000428e:	48 83 c4 28          	add    $0x28,%rsp
   140004292:	5b                   	pop    %rbx
   140004293:	5e                   	pop    %rsi
   140004294:	c3                   	ret
   140004295:	0f 1f 00             	nopl   (%rax)
   140004298:	48 89 05 e1 be 00 00 	mov    %rax,0xbee1(%rip)        # 140010180 <key_dtor_list>
   14000429f:	eb dd                	jmp    14000427e <___w64_mingwthr_remove_key_dtor+0x5e>
   1400042a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400042a8:	00 00 00 00 
   1400042ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400042b0 <__mingw_TLScallback>:
   1400042b0:	53                   	push   %rbx
   1400042b1:	48 83 ec 20          	sub    $0x20,%rsp
   1400042b5:	83 fa 02             	cmp    $0x2,%edx
   1400042b8:	0f 84 b2 00 00 00    	je     140004370 <__mingw_TLScallback+0xc0>
   1400042be:	77 30                	ja     1400042f0 <__mingw_TLScallback+0x40>
   1400042c0:	85 d2                	test   %edx,%edx
   1400042c2:	74 4c                	je     140004310 <__mingw_TLScallback+0x60>
   1400042c4:	8b 05 be be 00 00    	mov    0xbebe(%rip),%eax        # 140010188 <__mingwthr_cs_init>
   1400042ca:	85 c0                	test   %eax,%eax
   1400042cc:	0f 84 be 00 00 00    	je     140004390 <__mingw_TLScallback+0xe0>
   1400042d2:	c7 05 ac be 00 00 01 	movl   $0x1,0xbeac(%rip)        # 140010188 <__mingwthr_cs_init>
   1400042d9:	00 00 00 
   1400042dc:	b8 01 00 00 00       	mov    $0x1,%eax
   1400042e1:	48 83 c4 20          	add    $0x20,%rsp
   1400042e5:	5b                   	pop    %rbx
   1400042e6:	c3                   	ret
   1400042e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400042ee:	00 00 
   1400042f0:	83 fa 03             	cmp    $0x3,%edx
   1400042f3:	75 e7                	jne    1400042dc <__mingw_TLScallback+0x2c>
   1400042f5:	8b 05 8d be 00 00    	mov    0xbe8d(%rip),%eax        # 140010188 <__mingwthr_cs_init>
   1400042fb:	85 c0                	test   %eax,%eax
   1400042fd:	74 dd                	je     1400042dc <__mingw_TLScallback+0x2c>
   1400042ff:	e8 3c fe ff ff       	call   140004140 <__mingwthr_run_key_dtors.part.0>
   140004304:	eb d6                	jmp    1400042dc <__mingw_TLScallback+0x2c>
   140004306:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000430d:	00 00 00 
   140004310:	8b 05 72 be 00 00    	mov    0xbe72(%rip),%eax        # 140010188 <__mingwthr_cs_init>
   140004316:	85 c0                	test   %eax,%eax
   140004318:	75 66                	jne    140004380 <__mingw_TLScallback+0xd0>
   14000431a:	8b 05 68 be 00 00    	mov    0xbe68(%rip),%eax        # 140010188 <__mingwthr_cs_init>
   140004320:	83 f8 01             	cmp    $0x1,%eax
   140004323:	75 b7                	jne    1400042dc <__mingw_TLScallback+0x2c>
   140004325:	48 8b 1d 54 be 00 00 	mov    0xbe54(%rip),%rbx        # 140010180 <key_dtor_list>
   14000432c:	48 85 db             	test   %rbx,%rbx
   14000432f:	74 18                	je     140004349 <__mingw_TLScallback+0x99>
   140004331:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140004338:	48 89 d9             	mov    %rbx,%rcx
   14000433b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   14000433f:	e8 14 5f 00 00       	call   14000a258 <free>
   140004344:	48 85 db             	test   %rbx,%rbx
   140004347:	75 ef                	jne    140004338 <__mingw_TLScallback+0x88>
   140004349:	48 8d 0d 50 be 00 00 	lea    0xbe50(%rip),%rcx        # 1400101a0 <__mingwthr_cs>
   140004350:	48 c7 05 25 be 00 00 	movq   $0x0,0xbe25(%rip)        # 140010180 <key_dtor_list>
   140004357:	00 00 00 00 
   14000435b:	c7 05 23 be 00 00 00 	movl   $0x0,0xbe23(%rip)        # 140010188 <__mingwthr_cs_init>
   140004362:	00 00 00 
   140004365:	ff 15 c5 cf 00 00    	call   *0xcfc5(%rip)        # 140011330 <__imp_DeleteCriticalSection>
   14000436b:	e9 6c ff ff ff       	jmp    1400042dc <__mingw_TLScallback+0x2c>
   140004370:	e8 6b f6 ff ff       	call   1400039e0 <_fpreset>
   140004375:	b8 01 00 00 00       	mov    $0x1,%eax
   14000437a:	48 83 c4 20          	add    $0x20,%rsp
   14000437e:	5b                   	pop    %rbx
   14000437f:	c3                   	ret
   140004380:	e8 bb fd ff ff       	call   140004140 <__mingwthr_run_key_dtors.part.0>
   140004385:	eb 93                	jmp    14000431a <__mingw_TLScallback+0x6a>
   140004387:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000438e:	00 00 
   140004390:	48 8d 0d 09 be 00 00 	lea    0xbe09(%rip),%rcx        # 1400101a0 <__mingwthr_cs>
   140004397:	ff 15 ab cf 00 00    	call   *0xcfab(%rip)        # 140011348 <__imp_InitializeCriticalSection>
   14000439d:	e9 30 ff ff ff       	jmp    1400042d2 <__mingw_TLScallback+0x22>
   1400043a2:	90                   	nop
   1400043a3:	90                   	nop
   1400043a4:	90                   	nop
   1400043a5:	90                   	nop
   1400043a6:	90                   	nop
   1400043a7:	90                   	nop
   1400043a8:	90                   	nop
   1400043a9:	90                   	nop
   1400043aa:	90                   	nop
   1400043ab:	90                   	nop
   1400043ac:	90                   	nop
   1400043ad:	90                   	nop
   1400043ae:	90                   	nop
   1400043af:	90                   	nop

00000001400043b0 <_ValidateImageBase>:
   1400043b0:	31 c0                	xor    %eax,%eax
   1400043b2:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   1400043b7:	75 0f                	jne    1400043c8 <_ValidateImageBase+0x18>
   1400043b9:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   1400043bd:	48 01 d1             	add    %rdx,%rcx
   1400043c0:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   1400043c6:	74 08                	je     1400043d0 <_ValidateImageBase+0x20>
   1400043c8:	c3                   	ret
   1400043c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400043d0:	31 c0                	xor    %eax,%eax
   1400043d2:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   1400043d8:	0f 94 c0             	sete   %al
   1400043db:	c3                   	ret
   1400043dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400043e0 <_FindPESection>:
   1400043e0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   1400043e4:	48 01 c1             	add    %rax,%rcx
   1400043e7:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   1400043eb:	44 0f b7 41 06       	movzwl 0x6(%rcx),%r8d
   1400043f0:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   1400043f5:	66 45 85 c0          	test   %r8w,%r8w
   1400043f9:	74 32                	je     14000442d <_FindPESection+0x4d>
   1400043fb:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
   1400043ff:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   140004403:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   140004408:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000440f:	00 
   140004410:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140004414:	4c 89 c1             	mov    %r8,%rcx
   140004417:	4c 39 c2             	cmp    %r8,%rdx
   14000441a:	72 08                	jb     140004424 <_FindPESection+0x44>
   14000441c:	03 48 08             	add    0x8(%rax),%ecx
   14000441f:	48 39 ca             	cmp    %rcx,%rdx
   140004422:	72 0b                	jb     14000442f <_FindPESection+0x4f>
   140004424:	48 83 c0 28          	add    $0x28,%rax
   140004428:	4c 39 c8             	cmp    %r9,%rax
   14000442b:	75 e3                	jne    140004410 <_FindPESection+0x30>
   14000442d:	31 c0                	xor    %eax,%eax
   14000442f:	c3                   	ret

0000000140004430 <_FindPESectionByName>:
   140004430:	57                   	push   %rdi
   140004431:	56                   	push   %rsi
   140004432:	53                   	push   %rbx
   140004433:	48 83 ec 20          	sub    $0x20,%rsp
   140004437:	48 89 ce             	mov    %rcx,%rsi
   14000443a:	e8 61 5e 00 00       	call   14000a2a0 <strlen>
   14000443f:	48 83 f8 08          	cmp    $0x8,%rax
   140004443:	77 7b                	ja     1400044c0 <_FindPESectionByName+0x90>
   140004445:	48 8b 15 64 84 00 00 	mov    0x8464(%rip),%rdx        # 14000c8b0 <.refptr.__ImageBase>
   14000444c:	31 db                	xor    %ebx,%ebx
   14000444e:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140004453:	75 59                	jne    1400044ae <_FindPESectionByName+0x7e>
   140004455:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   140004459:	48 01 d0             	add    %rdx,%rax
   14000445c:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140004462:	75 4a                	jne    1400044ae <_FindPESectionByName+0x7e>
   140004464:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000446a:	75 42                	jne    1400044ae <_FindPESectionByName+0x7e>
   14000446c:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   140004470:	48 8d 5c 10 18       	lea    0x18(%rax,%rdx,1),%rbx
   140004475:	0f b7 50 06          	movzwl 0x6(%rax),%edx
   140004479:	66 85 d2             	test   %dx,%dx
   14000447c:	74 42                	je     1400044c0 <_FindPESectionByName+0x90>
   14000447e:	8d 42 ff             	lea    -0x1(%rdx),%eax
   140004481:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140004485:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
   14000448a:	eb 0d                	jmp    140004499 <_FindPESectionByName+0x69>
   14000448c:	0f 1f 40 00          	nopl   0x0(%rax)
   140004490:	48 83 c3 28          	add    $0x28,%rbx
   140004494:	48 39 fb             	cmp    %rdi,%rbx
   140004497:	74 27                	je     1400044c0 <_FindPESectionByName+0x90>
   140004499:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   14000449f:	48 89 f2             	mov    %rsi,%rdx
   1400044a2:	48 89 d9             	mov    %rbx,%rcx
   1400044a5:	e8 fe 5d 00 00       	call   14000a2a8 <strncmp>
   1400044aa:	85 c0                	test   %eax,%eax
   1400044ac:	75 e2                	jne    140004490 <_FindPESectionByName+0x60>
   1400044ae:	48 89 d8             	mov    %rbx,%rax
   1400044b1:	48 83 c4 20          	add    $0x20,%rsp
   1400044b5:	5b                   	pop    %rbx
   1400044b6:	5e                   	pop    %rsi
   1400044b7:	5f                   	pop    %rdi
   1400044b8:	c3                   	ret
   1400044b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400044c0:	31 db                	xor    %ebx,%ebx
   1400044c2:	48 89 d8             	mov    %rbx,%rax
   1400044c5:	48 83 c4 20          	add    $0x20,%rsp
   1400044c9:	5b                   	pop    %rbx
   1400044ca:	5e                   	pop    %rsi
   1400044cb:	5f                   	pop    %rdi
   1400044cc:	c3                   	ret
   1400044cd:	0f 1f 00             	nopl   (%rax)

00000001400044d0 <__mingw_GetSectionForAddress>:
   1400044d0:	48 8b 15 d9 83 00 00 	mov    0x83d9(%rip),%rdx        # 14000c8b0 <.refptr.__ImageBase>
   1400044d7:	31 c0                	xor    %eax,%eax
   1400044d9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400044de:	75 10                	jne    1400044f0 <__mingw_GetSectionForAddress+0x20>
   1400044e0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   1400044e4:	49 01 d0             	add    %rdx,%r8
   1400044e7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400044ee:	74 08                	je     1400044f8 <__mingw_GetSectionForAddress+0x28>
   1400044f0:	c3                   	ret
   1400044f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400044f8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400044ff:	75 ef                	jne    1400044f0 <__mingw_GetSectionForAddress+0x20>
   140004501:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   140004506:	48 29 d1             	sub    %rdx,%rcx
   140004509:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   14000450e:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140004513:	66 45 85 c0          	test   %r8w,%r8w
   140004517:	74 34                	je     14000454d <__mingw_GetSectionForAddress+0x7d>
   140004519:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   14000451d:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140004521:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   140004526:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000452d:	00 00 00 
   140004530:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140004534:	4c 89 c2             	mov    %r8,%rdx
   140004537:	4c 39 c1             	cmp    %r8,%rcx
   14000453a:	72 08                	jb     140004544 <__mingw_GetSectionForAddress+0x74>
   14000453c:	03 50 08             	add    0x8(%rax),%edx
   14000453f:	48 39 d1             	cmp    %rdx,%rcx
   140004542:	72 ac                	jb     1400044f0 <__mingw_GetSectionForAddress+0x20>
   140004544:	48 83 c0 28          	add    $0x28,%rax
   140004548:	4c 39 c8             	cmp    %r9,%rax
   14000454b:	75 e3                	jne    140004530 <__mingw_GetSectionForAddress+0x60>
   14000454d:	31 c0                	xor    %eax,%eax
   14000454f:	c3                   	ret

0000000140004550 <__mingw_GetSectionCount>:
   140004550:	48 8b 05 59 83 00 00 	mov    0x8359(%rip),%rax        # 14000c8b0 <.refptr.__ImageBase>
   140004557:	31 c9                	xor    %ecx,%ecx
   140004559:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   14000455e:	75 0f                	jne    14000456f <__mingw_GetSectionCount+0x1f>
   140004560:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140004564:	48 01 d0             	add    %rdx,%rax
   140004567:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   14000456d:	74 09                	je     140004578 <__mingw_GetSectionCount+0x28>
   14000456f:	89 c8                	mov    %ecx,%eax
   140004571:	c3                   	ret
   140004572:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004578:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000457e:	75 ef                	jne    14000456f <__mingw_GetSectionCount+0x1f>
   140004580:	0f b7 48 06          	movzwl 0x6(%rax),%ecx
   140004584:	89 c8                	mov    %ecx,%eax
   140004586:	c3                   	ret
   140004587:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000458e:	00 00 

0000000140004590 <_FindPESectionExec>:
   140004590:	4c 8b 05 19 83 00 00 	mov    0x8319(%rip),%r8        # 14000c8b0 <.refptr.__ImageBase>
   140004597:	31 c0                	xor    %eax,%eax
   140004599:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   14000459f:	75 0f                	jne    1400045b0 <_FindPESectionExec+0x20>
   1400045a1:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   1400045a5:	4c 01 c2             	add    %r8,%rdx
   1400045a8:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   1400045ae:	74 08                	je     1400045b8 <_FindPESectionExec+0x28>
   1400045b0:	c3                   	ret
   1400045b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400045b8:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   1400045be:	75 f0                	jne    1400045b0 <_FindPESectionExec+0x20>
   1400045c0:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   1400045c4:	44 0f b7 42 06       	movzwl 0x6(%rdx),%r8d
   1400045c9:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   1400045ce:	66 45 85 c0          	test   %r8w,%r8w
   1400045d2:	74 2c                	je     140004600 <_FindPESectionExec+0x70>
   1400045d4:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   1400045d8:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   1400045dc:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   1400045e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400045e8:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   1400045ec:	74 09                	je     1400045f7 <_FindPESectionExec+0x67>
   1400045ee:	48 85 c9             	test   %rcx,%rcx
   1400045f1:	74 bd                	je     1400045b0 <_FindPESectionExec+0x20>
   1400045f3:	48 83 e9 01          	sub    $0x1,%rcx
   1400045f7:	48 83 c0 28          	add    $0x28,%rax
   1400045fb:	48 39 c2             	cmp    %rax,%rdx
   1400045fe:	75 e8                	jne    1400045e8 <_FindPESectionExec+0x58>
   140004600:	31 c0                	xor    %eax,%eax
   140004602:	c3                   	ret
   140004603:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000460a:	00 00 00 00 
   14000460e:	66 90                	xchg   %ax,%ax

0000000140004610 <_GetPEImageBase>:
   140004610:	48 8b 05 99 82 00 00 	mov    0x8299(%rip),%rax        # 14000c8b0 <.refptr.__ImageBase>
   140004617:	31 d2                	xor    %edx,%edx
   140004619:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   14000461e:	75 0f                	jne    14000462f <_GetPEImageBase+0x1f>
   140004620:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
   140004624:	48 01 c1             	add    %rax,%rcx
   140004627:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   14000462d:	74 09                	je     140004638 <_GetPEImageBase+0x28>
   14000462f:	48 89 d0             	mov    %rdx,%rax
   140004632:	c3                   	ret
   140004633:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004638:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   14000463e:	48 0f 44 d0          	cmove  %rax,%rdx
   140004642:	48 89 d0             	mov    %rdx,%rax
   140004645:	c3                   	ret
   140004646:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000464d:	00 00 00 

0000000140004650 <_IsNonwritableInCurrentImage>:
   140004650:	48 8b 15 59 82 00 00 	mov    0x8259(%rip),%rdx        # 14000c8b0 <.refptr.__ImageBase>
   140004657:	31 c0                	xor    %eax,%eax
   140004659:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000465e:	75 10                	jne    140004670 <_IsNonwritableInCurrentImage+0x20>
   140004660:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140004664:	49 01 d0             	add    %rdx,%r8
   140004667:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000466e:	74 08                	je     140004678 <_IsNonwritableInCurrentImage+0x28>
   140004670:	c3                   	ret
   140004671:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140004678:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000467f:	75 ef                	jne    140004670 <_IsNonwritableInCurrentImage+0x20>
   140004681:	48 29 d1             	sub    %rdx,%rcx
   140004684:	45 0f b7 48 06       	movzwl 0x6(%r8),%r9d
   140004689:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   14000468e:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140004693:	66 45 85 c9          	test   %r9w,%r9w
   140004697:	74 d7                	je     140004670 <_IsNonwritableInCurrentImage+0x20>
   140004699:	41 8d 41 ff          	lea    -0x1(%r9),%eax
   14000469d:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400046a1:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   1400046a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400046ad:	00 00 00 
   1400046b0:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   1400046b4:	4c 89 c0             	mov    %r8,%rax
   1400046b7:	4c 39 c1             	cmp    %r8,%rcx
   1400046ba:	72 08                	jb     1400046c4 <_IsNonwritableInCurrentImage+0x74>
   1400046bc:	03 42 08             	add    0x8(%rdx),%eax
   1400046bf:	48 39 c1             	cmp    %rax,%rcx
   1400046c2:	72 0c                	jb     1400046d0 <_IsNonwritableInCurrentImage+0x80>
   1400046c4:	48 83 c2 28          	add    $0x28,%rdx
   1400046c8:	4c 39 ca             	cmp    %r9,%rdx
   1400046cb:	75 e3                	jne    1400046b0 <_IsNonwritableInCurrentImage+0x60>
   1400046cd:	31 c0                	xor    %eax,%eax
   1400046cf:	c3                   	ret
   1400046d0:	8b 42 24             	mov    0x24(%rdx),%eax
   1400046d3:	f7 d0                	not    %eax
   1400046d5:	c1 e8 1f             	shr    $0x1f,%eax
   1400046d8:	c3                   	ret
   1400046d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000001400046e0 <__mingw_enum_import_library_names>:
   1400046e0:	4c 8b 1d c9 81 00 00 	mov    0x81c9(%rip),%r11        # 14000c8b0 <.refptr.__ImageBase>
   1400046e7:	45 31 c9             	xor    %r9d,%r9d
   1400046ea:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   1400046f0:	75 10                	jne    140004702 <__mingw_enum_import_library_names+0x22>
   1400046f2:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   1400046f6:	4d 01 d8             	add    %r11,%r8
   1400046f9:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140004700:	74 0e                	je     140004710 <__mingw_enum_import_library_names+0x30>
   140004702:	4c 89 c8             	mov    %r9,%rax
   140004705:	c3                   	ret
   140004706:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000470d:	00 00 00 
   140004710:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140004717:	75 e9                	jne    140004702 <__mingw_enum_import_library_names+0x22>
   140004719:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   140004720:	85 c0                	test   %eax,%eax
   140004722:	74 de                	je     140004702 <__mingw_enum_import_library_names+0x22>
   140004724:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140004729:	45 0f b7 50 06       	movzwl 0x6(%r8),%r10d
   14000472e:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140004733:	66 45 85 d2          	test   %r10w,%r10w
   140004737:	74 c9                	je     140004702 <__mingw_enum_import_library_names+0x22>
   140004739:	45 8d 42 ff          	lea    -0x1(%r10),%r8d
   14000473d:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   140004741:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   140004746:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000474d:	00 00 00 
   140004750:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   140004754:	4d 89 c8             	mov    %r9,%r8
   140004757:	4c 39 c8             	cmp    %r9,%rax
   14000475a:	72 09                	jb     140004765 <__mingw_enum_import_library_names+0x85>
   14000475c:	44 03 42 08          	add    0x8(%rdx),%r8d
   140004760:	4c 39 c0             	cmp    %r8,%rax
   140004763:	72 13                	jb     140004778 <__mingw_enum_import_library_names+0x98>
   140004765:	48 83 c2 28          	add    $0x28,%rdx
   140004769:	49 39 d2             	cmp    %rdx,%r10
   14000476c:	75 e2                	jne    140004750 <__mingw_enum_import_library_names+0x70>
   14000476e:	45 31 c9             	xor    %r9d,%r9d
   140004771:	4c 89 c8             	mov    %r9,%rax
   140004774:	c3                   	ret
   140004775:	0f 1f 00             	nopl   (%rax)
   140004778:	4c 01 d8             	add    %r11,%rax
   14000477b:	eb 0a                	jmp    140004787 <__mingw_enum_import_library_names+0xa7>
   14000477d:	0f 1f 00             	nopl   (%rax)
   140004780:	83 e9 01             	sub    $0x1,%ecx
   140004783:	48 83 c0 14          	add    $0x14,%rax
   140004787:	44 8b 40 04          	mov    0x4(%rax),%r8d
   14000478b:	45 85 c0             	test   %r8d,%r8d
   14000478e:	75 07                	jne    140004797 <__mingw_enum_import_library_names+0xb7>
   140004790:	8b 50 0c             	mov    0xc(%rax),%edx
   140004793:	85 d2                	test   %edx,%edx
   140004795:	74 d7                	je     14000476e <__mingw_enum_import_library_names+0x8e>
   140004797:	85 c9                	test   %ecx,%ecx
   140004799:	7f e5                	jg     140004780 <__mingw_enum_import_library_names+0xa0>
   14000479b:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   14000479f:	4d 01 d9             	add    %r11,%r9
   1400047a2:	4c 89 c8             	mov    %r9,%rax
   1400047a5:	c3                   	ret
   1400047a6:	90                   	nop
   1400047a7:	90                   	nop
   1400047a8:	90                   	nop
   1400047a9:	90                   	nop
   1400047aa:	90                   	nop
   1400047ab:	90                   	nop
   1400047ac:	90                   	nop
   1400047ad:	90                   	nop
   1400047ae:	90                   	nop
   1400047af:	90                   	nop

00000001400047b0 <SDL_SetRenderDrawColor>:
   1400047b0:	ff 25 02 ce 00 00    	jmp    *0xce02(%rip)        # 1400115b8 <__imp_SDL_SetRenderDrawColor>
   1400047b6:	90                   	nop
   1400047b7:	90                   	nop

00000001400047b8 <SDL_RenderPresent>:
   1400047b8:	ff 25 f2 cd 00 00    	jmp    *0xcdf2(%rip)        # 1400115b0 <__imp_SDL_RenderPresent>
   1400047be:	90                   	nop
   1400047bf:	90                   	nop

00000001400047c0 <SDL_RenderDrawPoint>:
   1400047c0:	ff 25 e2 cd 00 00    	jmp    *0xcde2(%rip)        # 1400115a8 <__imp_SDL_RenderDrawPoint>
   1400047c6:	90                   	nop
   1400047c7:	90                   	nop

00000001400047c8 <SDL_RenderClear>:
   1400047c8:	ff 25 d2 cd 00 00    	jmp    *0xcdd2(%rip)        # 1400115a0 <__imp_SDL_RenderClear>
   1400047ce:	90                   	nop
   1400047cf:	90                   	nop

00000001400047d0 <SDL_Quit>:
   1400047d0:	ff 25 c2 cd 00 00    	jmp    *0xcdc2(%rip)        # 140011598 <__imp_SDL_Quit>
   1400047d6:	90                   	nop
   1400047d7:	90                   	nop

00000001400047d8 <SDL_PollEvent>:
   1400047d8:	ff 25 b2 cd 00 00    	jmp    *0xcdb2(%rip)        # 140011590 <__imp_SDL_PollEvent>
   1400047de:	90                   	nop
   1400047df:	90                   	nop

00000001400047e0 <SDL_Init>:
   1400047e0:	ff 25 a2 cd 00 00    	jmp    *0xcda2(%rip)        # 140011588 <__imp_SDL_Init>
   1400047e6:	90                   	nop
   1400047e7:	90                   	nop

00000001400047e8 <SDL_GetMouseState>:
   1400047e8:	ff 25 92 cd 00 00    	jmp    *0xcd92(%rip)        # 140011580 <__imp_SDL_GetMouseState>
   1400047ee:	90                   	nop
   1400047ef:	90                   	nop

00000001400047f0 <SDL_GetKeyboardState>:
   1400047f0:	ff 25 82 cd 00 00    	jmp    *0xcd82(%rip)        # 140011578 <__imp_SDL_GetKeyboardState>
   1400047f6:	90                   	nop
   1400047f7:	90                   	nop

00000001400047f8 <SDL_GetError>:
   1400047f8:	ff 25 72 cd 00 00    	jmp    *0xcd72(%rip)        # 140011570 <__imp_SDL_GetError>
   1400047fe:	90                   	nop
   1400047ff:	90                   	nop

0000000140004800 <SDL_DestroyWindow>:
   140004800:	ff 25 62 cd 00 00    	jmp    *0xcd62(%rip)        # 140011568 <__imp_SDL_DestroyWindow>
   140004806:	90                   	nop
   140004807:	90                   	nop

0000000140004808 <SDL_DestroyRenderer>:
   140004808:	ff 25 52 cd 00 00    	jmp    *0xcd52(%rip)        # 140011560 <__imp_SDL_DestroyRenderer>
   14000480e:	90                   	nop
   14000480f:	90                   	nop

0000000140004810 <SDL_CreateWindow>:
   140004810:	ff 25 42 cd 00 00    	jmp    *0xcd42(%rip)        # 140011558 <__imp_SDL_CreateWindow>
   140004816:	90                   	nop
   140004817:	90                   	nop

0000000140004818 <SDL_CreateRenderer>:
   140004818:	ff 25 32 cd 00 00    	jmp    *0xcd32(%rip)        # 140011550 <__imp_SDL_CreateRenderer>
   14000481e:	90                   	nop
   14000481f:	90                   	nop

0000000140004820 <__gxx_personality_seh0>:
   140004820:	ff 25 1a cd 00 00    	jmp    *0xcd1a(%rip)        # 140011540 <__imp___gxx_personality_seh0>
   140004826:	90                   	nop
   140004827:	90                   	nop

0000000140004828 <__cxa_throw_bad_array_new_length>:
   140004828:	ff 25 0a cd 00 00    	jmp    *0xcd0a(%rip)        # 140011538 <__imp___cxa_throw_bad_array_new_length>
   14000482e:	90                   	nop
   14000482f:	90                   	nop

0000000140004830 <_Znwy>:
   140004830:	ff 25 fa cc 00 00    	jmp    *0xccfa(%rip)        # 140011530 <__imp__Znwy>
   140004836:	90                   	nop
   140004837:	90                   	nop

0000000140004838 <_Znay>:
   140004838:	ff 25 ea cc 00 00    	jmp    *0xccea(%rip)        # 140011528 <__imp__Znay>
   14000483e:	90                   	nop
   14000483f:	90                   	nop

0000000140004840 <_ZdlPvy>:
   140004840:	ff 25 da cc 00 00    	jmp    *0xccda(%rip)        # 140011520 <__imp__ZdlPvy>
   140004846:	90                   	nop
   140004847:	90                   	nop

0000000140004848 <_ZdaPv>:
   140004848:	ff 25 ca cc 00 00    	jmp    *0xccca(%rip)        # 140011518 <__imp__ZdaPv>
   14000484e:	90                   	nop
   14000484f:	90                   	nop

0000000140004850 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>:
   140004850:	ff 25 ba cc 00 00    	jmp    *0xccba(%rip)        # 140011510 <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>
   140004856:	90                   	nop
   140004857:	90                   	nop

0000000140004858 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>:
   140004858:	ff 25 aa cc 00 00    	jmp    *0xccaa(%rip)        # 140011508 <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   14000485e:	90                   	nop
   14000485f:	90                   	nop

0000000140004860 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>:
   140004860:	ff 25 9a cc 00 00    	jmp    *0xcc9a(%rip)        # 140011500 <__imp__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140004866:	90                   	nop
   140004867:	90                   	nop

0000000140004868 <_ZSt28__throw_bad_array_new_lengthv>:
   140004868:	ff 25 82 cc 00 00    	jmp    *0xcc82(%rip)        # 1400114f0 <__imp__ZSt28__throw_bad_array_new_lengthv>
   14000486e:	90                   	nop
   14000486f:	90                   	nop

0000000140004870 <_ZSt20__throw_length_errorPKc>:
   140004870:	ff 25 72 cc 00 00    	jmp    *0xcc72(%rip)        # 1400114e8 <__imp__ZSt20__throw_length_errorPKc>
   140004876:	90                   	nop
   140004877:	90                   	nop

0000000140004878 <_ZSt17__throw_bad_allocv>:
   140004878:	ff 25 62 cc 00 00    	jmp    *0xcc62(%rip)        # 1400114e0 <__imp__ZSt17__throw_bad_allocv>
   14000487e:	90                   	nop
   14000487f:	90                   	nop

0000000140004880 <_ZNSt6chrono3_V212system_clock3nowEv>:
   140004880:	ff 25 52 cc 00 00    	jmp    *0xcc52(%rip)        # 1400114d8 <__imp__ZNSt6chrono3_V212system_clock3nowEv>
   140004886:	90                   	nop
   140004887:	90                   	nop

0000000140004888 <_ZNSolsEi>:
   140004888:	ff 25 42 cc 00 00    	jmp    *0xcc42(%rip)        # 1400114d0 <__imp__ZNSolsEi>
   14000488e:	90                   	nop
   14000488f:	90                   	nop

0000000140004890 <_ZNSolsEPKv>:
   140004890:	ff 25 32 cc 00 00    	jmp    *0xcc32(%rip)        # 1400114c8 <__imp__ZNSolsEPKv>
   140004896:	90                   	nop
   140004897:	90                   	nop

0000000140004898 <_ZNSolsEPFRSoS_E>:
   140004898:	ff 25 22 cc 00 00    	jmp    *0xcc22(%rip)        # 1400114c0 <__imp__ZNSolsEPFRSoS_E>
   14000489e:	90                   	nop
   14000489f:	90                   	nop

00000001400048a0 <_Unwind_Resume>:
   1400048a0:	ff 25 7a ca 00 00    	jmp    *0xca7a(%rip)        # 140011320 <__IAT_start__>
   1400048a6:	90                   	nop
   1400048a7:	90                   	nop
   1400048a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400048af:	00 

00000001400048b0 <___chkstk_ms>:
   1400048b0:	51                   	push   %rcx
   1400048b1:	50                   	push   %rax
   1400048b2:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   1400048b8:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   1400048bd:	72 19                	jb     1400048d8 <___chkstk_ms+0x28>
   1400048bf:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   1400048c6:	48 83 09 00          	orq    $0x0,(%rcx)
   1400048ca:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   1400048d0:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   1400048d6:	77 e7                	ja     1400048bf <___chkstk_ms+0xf>
   1400048d8:	48 29 c1             	sub    %rax,%rcx
   1400048db:	48 83 09 00          	orq    $0x0,(%rcx)
   1400048df:	58                   	pop    %rax
   1400048e0:	59                   	pop    %rcx
   1400048e1:	c3                   	ret
   1400048e2:	90                   	nop
   1400048e3:	90                   	nop
   1400048e4:	90                   	nop
   1400048e5:	90                   	nop
   1400048e6:	90                   	nop
   1400048e7:	90                   	nop
   1400048e8:	90                   	nop
   1400048e9:	90                   	nop
   1400048ea:	90                   	nop
   1400048eb:	90                   	nop
   1400048ec:	90                   	nop
   1400048ed:	90                   	nop
   1400048ee:	90                   	nop
   1400048ef:	90                   	nop

00000001400048f0 <__mingw_vfprintf>:
   1400048f0:	57                   	push   %rdi
   1400048f1:	56                   	push   %rsi
   1400048f2:	53                   	push   %rbx
   1400048f3:	48 83 ec 30          	sub    $0x30,%rsp
   1400048f7:	4c 89 c7             	mov    %r8,%rdi
   1400048fa:	48 89 cb             	mov    %rcx,%rbx
   1400048fd:	48 89 d6             	mov    %rdx,%rsi
   140004900:	e8 0b 4f 00 00       	call   140009810 <_lock_file>
   140004905:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
   14000490a:	49 89 f1             	mov    %rsi,%r9
   14000490d:	45 31 c0             	xor    %r8d,%r8d
   140004910:	48 89 da             	mov    %rbx,%rdx
   140004913:	b9 00 60 00 00       	mov    $0x6000,%ecx
   140004918:	e8 e3 1b 00 00       	call   140006500 <__mingw_pformat>
   14000491d:	48 89 d9             	mov    %rbx,%rcx
   140004920:	89 c6                	mov    %eax,%esi
   140004922:	e8 59 4f 00 00       	call   140009880 <_unlock_file>
   140004927:	89 f0                	mov    %esi,%eax
   140004929:	48 83 c4 30          	add    $0x30,%rsp
   14000492d:	5b                   	pop    %rbx
   14000492e:	5e                   	pop    %rsi
   14000492f:	5f                   	pop    %rdi
   140004930:	c3                   	ret
   140004931:	90                   	nop
   140004932:	90                   	nop
   140004933:	90                   	nop
   140004934:	90                   	nop
   140004935:	90                   	nop
   140004936:	90                   	nop
   140004937:	90                   	nop
   140004938:	90                   	nop
   140004939:	90                   	nop
   14000493a:	90                   	nop
   14000493b:	90                   	nop
   14000493c:	90                   	nop
   14000493d:	90                   	nop
   14000493e:	90                   	nop
   14000493f:	90                   	nop

0000000140004940 <__pformat_cvt>:
   140004940:	48 83 ec 68          	sub    $0x68,%rsp
   140004944:	48 8b 02             	mov    (%rdx),%rax
   140004947:	8b 52 08             	mov    0x8(%rdx),%edx
   14000494a:	41 89 d2             	mov    %edx,%r10d
   14000494d:	41 89 cb             	mov    %ecx,%r11d
   140004950:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
   140004955:	48 89 d1             	mov    %rdx,%rcx
   140004958:	89 54 24 58          	mov    %edx,0x58(%rsp)
   14000495c:	66 41 81 e2 ff 7f    	and    $0x7fff,%r10w
   140004962:	75 74                	jne    1400049d8 <__pformat_cvt+0x98>
   140004964:	48 89 c2             	mov    %rax,%rdx
   140004967:	48 c1 ea 20          	shr    $0x20,%rdx
   14000496b:	09 d0                	or     %edx,%eax
   14000496d:	0f 84 8d 00 00 00    	je     140004a00 <__pformat_cvt+0xc0>
   140004973:	85 d2                	test   %edx,%edx
   140004975:	0f 89 95 00 00 00    	jns    140004a10 <__pformat_cvt+0xd0>
   14000497b:	41 8d 92 c2 bf ff ff 	lea    -0x403e(%r10),%edx
   140004982:	b8 01 00 00 00       	mov    $0x1,%eax
   140004987:	0f bf d2             	movswl %dx,%edx
   14000498a:	89 44 24 44          	mov    %eax,0x44(%rsp)
   14000498e:	81 e1 00 80 00 00    	and    $0x8000,%ecx
   140004994:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   14000499b:	00 
   14000499c:	89 08                	mov    %ecx,(%rax)
   14000499e:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
   1400049a3:	48 8d 0d a6 67 00 00 	lea    0x67a6(%rip),%rcx        # 14000b150 <fpi.0>
   1400049aa:	4c 89 4c 24 30       	mov    %r9,0x30(%rsp)
   1400049af:	4c 8d 4c 24 44       	lea    0x44(%rsp),%r9
   1400049b4:	44 89 44 24 28       	mov    %r8d,0x28(%rsp)
   1400049b9:	4c 8d 44 24 50       	lea    0x50(%rsp),%r8
   1400049be:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   1400049c3:	44 89 5c 24 20       	mov    %r11d,0x20(%rsp)
   1400049c8:	e8 73 28 00 00       	call   140007240 <__gdtoa>
   1400049cd:	48 83 c4 68          	add    $0x68,%rsp
   1400049d1:	c3                   	ret
   1400049d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400049d8:	66 41 81 fa ff 7f    	cmp    $0x7fff,%r10w
   1400049de:	75 9b                	jne    14000497b <__pformat_cvt+0x3b>
   1400049e0:	48 89 c2             	mov    %rax,%rdx
   1400049e3:	48 c1 ea 20          	shr    $0x20,%rdx
   1400049e7:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
   1400049ed:	09 c2                	or     %eax,%edx
   1400049ef:	74 2f                	je     140004a20 <__pformat_cvt+0xe0>
   1400049f1:	c7 44 24 44 04 00 00 	movl   $0x4,0x44(%rsp)
   1400049f8:	00 
   1400049f9:	31 d2                	xor    %edx,%edx
   1400049fb:	31 c9                	xor    %ecx,%ecx
   1400049fd:	eb 95                	jmp    140004994 <__pformat_cvt+0x54>
   1400049ff:	90                   	nop
   140004a00:	31 c0                	xor    %eax,%eax
   140004a02:	31 d2                	xor    %edx,%edx
   140004a04:	eb 84                	jmp    14000498a <__pformat_cvt+0x4a>
   140004a06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140004a0d:	00 00 00 
   140004a10:	b8 02 00 00 00       	mov    $0x2,%eax
   140004a15:	ba c3 bf ff ff       	mov    $0xffffbfc3,%edx
   140004a1a:	e9 6b ff ff ff       	jmp    14000498a <__pformat_cvt+0x4a>
   140004a1f:	90                   	nop
   140004a20:	b8 03 00 00 00       	mov    $0x3,%eax
   140004a25:	31 d2                	xor    %edx,%edx
   140004a27:	e9 5e ff ff ff       	jmp    14000498a <__pformat_cvt+0x4a>
   140004a2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140004a30 <__pformat_putc>:
   140004a30:	53                   	push   %rbx
   140004a31:	48 83 ec 20          	sub    $0x20,%rsp
   140004a35:	48 89 d3             	mov    %rdx,%rbx
   140004a38:	8b 52 08             	mov    0x8(%rdx),%edx
   140004a3b:	f6 c6 40             	test   $0x40,%dh
   140004a3e:	75 08                	jne    140004a48 <__pformat_putc+0x18>
   140004a40:	8b 43 24             	mov    0x24(%rbx),%eax
   140004a43:	39 43 28             	cmp    %eax,0x28(%rbx)
   140004a46:	7e 12                	jle    140004a5a <__pformat_putc+0x2a>
   140004a48:	48 8b 03             	mov    (%rbx),%rax
   140004a4b:	80 e6 20             	and    $0x20,%dh
   140004a4e:	75 20                	jne    140004a70 <__pformat_putc+0x40>
   140004a50:	48 63 53 24          	movslq 0x24(%rbx),%rdx
   140004a54:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
   140004a57:	8b 43 24             	mov    0x24(%rbx),%eax
   140004a5a:	83 c0 01             	add    $0x1,%eax
   140004a5d:	89 43 24             	mov    %eax,0x24(%rbx)
   140004a60:	48 83 c4 20          	add    $0x20,%rsp
   140004a64:	5b                   	pop    %rbx
   140004a65:	c3                   	ret
   140004a66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140004a6d:	00 00 00 
   140004a70:	48 89 c2             	mov    %rax,%rdx
   140004a73:	e8 d8 57 00 00       	call   14000a250 <fputc>
   140004a78:	8b 43 24             	mov    0x24(%rbx),%eax
   140004a7b:	83 c0 01             	add    $0x1,%eax
   140004a7e:	89 43 24             	mov    %eax,0x24(%rbx)
   140004a81:	48 83 c4 20          	add    $0x20,%rsp
   140004a85:	5b                   	pop    %rbx
   140004a86:	c3                   	ret
   140004a87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140004a8e:	00 00 

0000000140004a90 <__pformat_wputchars>:
   140004a90:	41 57                	push   %r15
   140004a92:	41 56                	push   %r14
   140004a94:	41 55                	push   %r13
   140004a96:	41 54                	push   %r12
   140004a98:	55                   	push   %rbp
   140004a99:	57                   	push   %rdi
   140004a9a:	56                   	push   %rsi
   140004a9b:	53                   	push   %rbx
   140004a9c:	48 83 ec 48          	sub    $0x48,%rsp
   140004aa0:	4c 8d 6c 24 28       	lea    0x28(%rsp),%r13
   140004aa5:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
   140004aaa:	89 d6                	mov    %edx,%esi
   140004aac:	4c 89 c3             	mov    %r8,%rbx
   140004aaf:	31 d2                	xor    %edx,%edx
   140004ab1:	48 89 cd             	mov    %rcx,%rbp
   140004ab4:	4d 89 e8             	mov    %r13,%r8
   140004ab7:	48 89 f9             	mov    %rdi,%rcx
   140004aba:	e8 81 52 00 00       	call   140009d40 <wcrtomb>
   140004abf:	8b 43 10             	mov    0x10(%rbx),%eax
   140004ac2:	39 c6                	cmp    %eax,%esi
   140004ac4:	89 c2                	mov    %eax,%edx
   140004ac6:	0f 4e d6             	cmovle %esi,%edx
   140004ac9:	85 c0                	test   %eax,%eax
   140004acb:	8b 43 0c             	mov    0xc(%rbx),%eax
   140004ace:	0f 49 f2             	cmovns %edx,%esi
   140004ad1:	39 f0                	cmp    %esi,%eax
   140004ad3:	0f 8f e2 00 00 00    	jg     140004bbb <__pformat_wputchars+0x12b>
   140004ad9:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   140004ae0:	44 8d 66 ff          	lea    -0x1(%rsi),%r12d
   140004ae4:	85 f6                	test   %esi,%esi
   140004ae6:	0f 8e 29 01 00 00    	jle    140004c15 <__pformat_wputchars+0x185>
   140004aec:	31 f6                	xor    %esi,%esi
   140004aee:	41 83 c4 01          	add    $0x1,%r12d
   140004af2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004af8:	0f b7 54 75 00       	movzwl 0x0(%rbp,%rsi,2),%edx
   140004afd:	4d 89 e8             	mov    %r13,%r8
   140004b00:	48 89 f9             	mov    %rdi,%rcx
   140004b03:	e8 38 52 00 00       	call   140009d40 <wcrtomb>
   140004b08:	85 c0                	test   %eax,%eax
   140004b0a:	0f 8e 8d 00 00 00    	jle    140004b9d <__pformat_wputchars+0x10d>
   140004b10:	83 e8 01             	sub    $0x1,%eax
   140004b13:	49 89 fe             	mov    %rdi,%r14
   140004b16:	4c 8d 7c 07 01       	lea    0x1(%rdi,%rax,1),%r15
   140004b1b:	eb 18                	jmp    140004b35 <__pformat_wputchars+0xa5>
   140004b1d:	0f 1f 00             	nopl   (%rax)
   140004b20:	48 63 53 24          	movslq 0x24(%rbx),%rdx
   140004b24:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
   140004b27:	8b 43 24             	mov    0x24(%rbx),%eax
   140004b2a:	83 c0 01             	add    $0x1,%eax
   140004b2d:	89 43 24             	mov    %eax,0x24(%rbx)
   140004b30:	4d 39 fe             	cmp    %r15,%r14
   140004b33:	74 37                	je     140004b6c <__pformat_wputchars+0xdc>
   140004b35:	8b 53 08             	mov    0x8(%rbx),%edx
   140004b38:	49 83 c6 01          	add    $0x1,%r14
   140004b3c:	f6 c6 40             	test   $0x40,%dh
   140004b3f:	75 08                	jne    140004b49 <__pformat_wputchars+0xb9>
   140004b41:	8b 43 24             	mov    0x24(%rbx),%eax
   140004b44:	39 43 28             	cmp    %eax,0x28(%rbx)
   140004b47:	7e e1                	jle    140004b2a <__pformat_wputchars+0x9a>
   140004b49:	41 0f be 4e ff       	movsbl -0x1(%r14),%ecx
   140004b4e:	48 8b 03             	mov    (%rbx),%rax
   140004b51:	80 e6 20             	and    $0x20,%dh
   140004b54:	74 ca                	je     140004b20 <__pformat_wputchars+0x90>
   140004b56:	48 89 c2             	mov    %rax,%rdx
   140004b59:	e8 f2 56 00 00       	call   14000a250 <fputc>
   140004b5e:	8b 43 24             	mov    0x24(%rbx),%eax
   140004b61:	83 c0 01             	add    $0x1,%eax
   140004b64:	89 43 24             	mov    %eax,0x24(%rbx)
   140004b67:	4d 39 fe             	cmp    %r15,%r14
   140004b6a:	75 c9                	jne    140004b35 <__pformat_wputchars+0xa5>
   140004b6c:	48 83 c6 01          	add    $0x1,%rsi
   140004b70:	44 89 e0             	mov    %r12d,%eax
   140004b73:	29 f0                	sub    %esi,%eax
   140004b75:	85 c0                	test   %eax,%eax
   140004b77:	0f 8f 7b ff ff ff    	jg     140004af8 <__pformat_wputchars+0x68>
   140004b7d:	8b 43 0c             	mov    0xc(%rbx),%eax
   140004b80:	8d 50 ff             	lea    -0x1(%rax),%edx
   140004b83:	89 53 0c             	mov    %edx,0xc(%rbx)
   140004b86:	85 c0                	test   %eax,%eax
   140004b88:	7e 20                	jle    140004baa <__pformat_wputchars+0x11a>
   140004b8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004b90:	48 89 da             	mov    %rbx,%rdx
   140004b93:	b9 20 00 00 00       	mov    $0x20,%ecx
   140004b98:	e8 93 fe ff ff       	call   140004a30 <__pformat_putc>
   140004b9d:	8b 43 0c             	mov    0xc(%rbx),%eax
   140004ba0:	8d 50 ff             	lea    -0x1(%rax),%edx
   140004ba3:	89 53 0c             	mov    %edx,0xc(%rbx)
   140004ba6:	85 c0                	test   %eax,%eax
   140004ba8:	7f e6                	jg     140004b90 <__pformat_wputchars+0x100>
   140004baa:	48 83 c4 48          	add    $0x48,%rsp
   140004bae:	5b                   	pop    %rbx
   140004baf:	5e                   	pop    %rsi
   140004bb0:	5f                   	pop    %rdi
   140004bb1:	5d                   	pop    %rbp
   140004bb2:	41 5c                	pop    %r12
   140004bb4:	41 5d                	pop    %r13
   140004bb6:	41 5e                	pop    %r14
   140004bb8:	41 5f                	pop    %r15
   140004bba:	c3                   	ret
   140004bbb:	29 f0                	sub    %esi,%eax
   140004bbd:	89 43 0c             	mov    %eax,0xc(%rbx)
   140004bc0:	f6 43 09 04          	testb  $0x4,0x9(%rbx)
   140004bc4:	75 3a                	jne    140004c00 <__pformat_wputchars+0x170>
   140004bc6:	83 e8 01             	sub    $0x1,%eax
   140004bc9:	89 43 0c             	mov    %eax,0xc(%rbx)
   140004bcc:	0f 1f 40 00          	nopl   0x0(%rax)
   140004bd0:	48 89 da             	mov    %rbx,%rdx
   140004bd3:	b9 20 00 00 00       	mov    $0x20,%ecx
   140004bd8:	e8 53 fe ff ff       	call   140004a30 <__pformat_putc>
   140004bdd:	8b 43 0c             	mov    0xc(%rbx),%eax
   140004be0:	8d 50 ff             	lea    -0x1(%rax),%edx
   140004be3:	89 53 0c             	mov    %edx,0xc(%rbx)
   140004be6:	85 c0                	test   %eax,%eax
   140004be8:	75 e6                	jne    140004bd0 <__pformat_wputchars+0x140>
   140004bea:	44 8d 66 ff          	lea    -0x1(%rsi),%r12d
   140004bee:	85 f6                	test   %esi,%esi
   140004bf0:	0f 8f f6 fe ff ff    	jg     140004aec <__pformat_wputchars+0x5c>
   140004bf6:	eb a5                	jmp    140004b9d <__pformat_wputchars+0x10d>
   140004bf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140004bff:	00 
   140004c00:	44 8d 66 ff          	lea    -0x1(%rsi),%r12d
   140004c04:	85 f6                	test   %esi,%esi
   140004c06:	0f 8f e0 fe ff ff    	jg     140004aec <__pformat_wputchars+0x5c>
   140004c0c:	83 6b 0c 01          	subl   $0x1,0xc(%rbx)
   140004c10:	e9 7b ff ff ff       	jmp    140004b90 <__pformat_wputchars+0x100>
   140004c15:	c7 43 0c fe ff ff ff 	movl   $0xfffffffe,0xc(%rbx)
   140004c1c:	eb 8c                	jmp    140004baa <__pformat_wputchars+0x11a>
   140004c1e:	66 90                	xchg   %ax,%ax

0000000140004c20 <__pformat_putchars>:
   140004c20:	57                   	push   %rdi
   140004c21:	56                   	push   %rsi
   140004c22:	53                   	push   %rbx
   140004c23:	48 83 ec 20          	sub    $0x20,%rsp
   140004c27:	41 8b 40 10          	mov    0x10(%r8),%eax
   140004c2b:	89 d7                	mov    %edx,%edi
   140004c2d:	39 c2                	cmp    %eax,%edx
   140004c2f:	89 c2                	mov    %eax,%edx
   140004c31:	48 89 ce             	mov    %rcx,%rsi
   140004c34:	0f 4e d7             	cmovle %edi,%edx
   140004c37:	85 c0                	test   %eax,%eax
   140004c39:	41 8b 40 0c          	mov    0xc(%r8),%eax
   140004c3d:	4c 89 c3             	mov    %r8,%rbx
   140004c40:	0f 49 fa             	cmovns %edx,%edi
   140004c43:	39 f8                	cmp    %edi,%eax
   140004c45:	0f 8f bd 00 00 00    	jg     140004d08 <__pformat_putchars+0xe8>
   140004c4b:	41 c7 40 0c ff ff ff 	movl   $0xffffffff,0xc(%r8)
   140004c52:	ff 
   140004c53:	8d 57 ff             	lea    -0x1(%rdi),%edx
   140004c56:	85 ff                	test   %edi,%edi
   140004c58:	0f 84 97 00 00 00    	je     140004cf5 <__pformat_putchars+0xd5>
   140004c5e:	8b 43 08             	mov    0x8(%rbx),%eax
   140004c61:	8d 7a 01             	lea    0x1(%rdx),%edi
   140004c64:	48 01 f7             	add    %rsi,%rdi
   140004c67:	eb 1f                	jmp    140004c88 <__pformat_putchars+0x68>
   140004c69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140004c70:	48 63 43 24          	movslq 0x24(%rbx),%rax
   140004c74:	88 0c 02             	mov    %cl,(%rdx,%rax,1)
   140004c77:	8b 53 24             	mov    0x24(%rbx),%edx
   140004c7a:	83 c2 01             	add    $0x1,%edx
   140004c7d:	89 53 24             	mov    %edx,0x24(%rbx)
   140004c80:	48 39 fe             	cmp    %rdi,%rsi
   140004c83:	74 3c                	je     140004cc1 <__pformat_putchars+0xa1>
   140004c85:	8b 43 08             	mov    0x8(%rbx),%eax
   140004c88:	48 83 c6 01          	add    $0x1,%rsi
   140004c8c:	f6 c4 40             	test   $0x40,%ah
   140004c8f:	75 08                	jne    140004c99 <__pformat_putchars+0x79>
   140004c91:	8b 53 24             	mov    0x24(%rbx),%edx
   140004c94:	39 53 28             	cmp    %edx,0x28(%rbx)
   140004c97:	7e e1                	jle    140004c7a <__pformat_putchars+0x5a>
   140004c99:	0f be 4e ff          	movsbl -0x1(%rsi),%ecx
   140004c9d:	48 8b 13             	mov    (%rbx),%rdx
   140004ca0:	f6 c4 20             	test   $0x20,%ah
   140004ca3:	74 cb                	je     140004c70 <__pformat_putchars+0x50>
   140004ca5:	e8 a6 55 00 00       	call   14000a250 <fputc>
   140004caa:	8b 53 24             	mov    0x24(%rbx),%edx
   140004cad:	eb cb                	jmp    140004c7a <__pformat_putchars+0x5a>
   140004caf:	90                   	nop
   140004cb0:	48 63 43 24          	movslq 0x24(%rbx),%rax
   140004cb4:	c6 04 02 20          	movb   $0x20,(%rdx,%rax,1)
   140004cb8:	8b 53 24             	mov    0x24(%rbx),%edx
   140004cbb:	83 c2 01             	add    $0x1,%edx
   140004cbe:	89 53 24             	mov    %edx,0x24(%rbx)
   140004cc1:	8b 43 0c             	mov    0xc(%rbx),%eax
   140004cc4:	8d 50 ff             	lea    -0x1(%rax),%edx
   140004cc7:	89 53 0c             	mov    %edx,0xc(%rbx)
   140004cca:	85 c0                	test   %eax,%eax
   140004ccc:	7e 2e                	jle    140004cfc <__pformat_putchars+0xdc>
   140004cce:	8b 43 08             	mov    0x8(%rbx),%eax
   140004cd1:	f6 c4 40             	test   $0x40,%ah
   140004cd4:	75 08                	jne    140004cde <__pformat_putchars+0xbe>
   140004cd6:	8b 53 24             	mov    0x24(%rbx),%edx
   140004cd9:	39 53 28             	cmp    %edx,0x28(%rbx)
   140004cdc:	7e dd                	jle    140004cbb <__pformat_putchars+0x9b>
   140004cde:	48 8b 13             	mov    (%rbx),%rdx
   140004ce1:	f6 c4 20             	test   $0x20,%ah
   140004ce4:	74 ca                	je     140004cb0 <__pformat_putchars+0x90>
   140004ce6:	b9 20 00 00 00       	mov    $0x20,%ecx
   140004ceb:	e8 60 55 00 00       	call   14000a250 <fputc>
   140004cf0:	8b 53 24             	mov    0x24(%rbx),%edx
   140004cf3:	eb c6                	jmp    140004cbb <__pformat_putchars+0x9b>
   140004cf5:	c7 43 0c fe ff ff ff 	movl   $0xfffffffe,0xc(%rbx)
   140004cfc:	48 83 c4 20          	add    $0x20,%rsp
   140004d00:	5b                   	pop    %rbx
   140004d01:	5e                   	pop    %rsi
   140004d02:	5f                   	pop    %rdi
   140004d03:	c3                   	ret
   140004d04:	0f 1f 40 00          	nopl   0x0(%rax)
   140004d08:	29 f8                	sub    %edi,%eax
   140004d0a:	41 89 40 0c          	mov    %eax,0xc(%r8)
   140004d0e:	89 c2                	mov    %eax,%edx
   140004d10:	41 8b 40 08          	mov    0x8(%r8),%eax
   140004d14:	f6 c4 04             	test   $0x4,%ah
   140004d17:	75 37                	jne    140004d50 <__pformat_putchars+0x130>
   140004d19:	8d 42 ff             	lea    -0x1(%rdx),%eax
   140004d1c:	41 89 40 0c          	mov    %eax,0xc(%r8)
   140004d20:	48 89 da             	mov    %rbx,%rdx
   140004d23:	b9 20 00 00 00       	mov    $0x20,%ecx
   140004d28:	e8 03 fd ff ff       	call   140004a30 <__pformat_putc>
   140004d2d:	8b 43 0c             	mov    0xc(%rbx),%eax
   140004d30:	8d 50 ff             	lea    -0x1(%rax),%edx
   140004d33:	89 53 0c             	mov    %edx,0xc(%rbx)
   140004d36:	85 c0                	test   %eax,%eax
   140004d38:	75 e6                	jne    140004d20 <__pformat_putchars+0x100>
   140004d3a:	8d 57 ff             	lea    -0x1(%rdi),%edx
   140004d3d:	85 ff                	test   %edi,%edi
   140004d3f:	0f 85 19 ff ff ff    	jne    140004c5e <__pformat_putchars+0x3e>
   140004d45:	e9 77 ff ff ff       	jmp    140004cc1 <__pformat_putchars+0xa1>
   140004d4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004d50:	8d 57 ff             	lea    -0x1(%rdi),%edx
   140004d53:	85 ff                	test   %edi,%edi
   140004d55:	0f 85 06 ff ff ff    	jne    140004c61 <__pformat_putchars+0x41>
   140004d5b:	83 6b 0c 01          	subl   $0x1,0xc(%rbx)
   140004d5f:	e9 6d ff ff ff       	jmp    140004cd1 <__pformat_putchars+0xb1>
   140004d64:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140004d6b:	00 00 00 00 
   140004d6f:	90                   	nop

0000000140004d70 <__pformat_puts>:
   140004d70:	56                   	push   %rsi
   140004d71:	53                   	push   %rbx
   140004d72:	48 83 ec 28          	sub    $0x28,%rsp
   140004d76:	48 8d 05 f3 76 00 00 	lea    0x76f3(%rip),%rax        # 14000c470 <.rdata>
   140004d7d:	48 89 cb             	mov    %rcx,%rbx
   140004d80:	48 85 c9             	test   %rcx,%rcx
   140004d83:	48 89 d6             	mov    %rdx,%rsi
   140004d86:	48 63 52 10          	movslq 0x10(%rdx),%rdx
   140004d8a:	48 0f 44 d8          	cmove  %rax,%rbx
   140004d8e:	48 89 d9             	mov    %rbx,%rcx
   140004d91:	85 d2                	test   %edx,%edx
   140004d93:	78 1b                	js     140004db0 <__pformat_puts+0x40>
   140004d95:	e8 f6 49 00 00       	call   140009790 <strnlen>
   140004d9a:	49 89 f0             	mov    %rsi,%r8
   140004d9d:	89 c2                	mov    %eax,%edx
   140004d9f:	48 89 d9             	mov    %rbx,%rcx
   140004da2:	48 83 c4 28          	add    $0x28,%rsp
   140004da6:	5b                   	pop    %rbx
   140004da7:	5e                   	pop    %rsi
   140004da8:	e9 73 fe ff ff       	jmp    140004c20 <__pformat_putchars>
   140004dad:	0f 1f 00             	nopl   (%rax)
   140004db0:	e8 eb 54 00 00       	call   14000a2a0 <strlen>
   140004db5:	eb e3                	jmp    140004d9a <__pformat_puts+0x2a>
   140004db7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140004dbe:	00 00 

0000000140004dc0 <__pformat_emit_inf_or_nan>:
   140004dc0:	48 83 ec 38          	sub    $0x38,%rsp
   140004dc4:	45 8b 50 08          	mov    0x8(%r8),%r10d
   140004dc8:	41 c7 40 10 ff ff ff 	movl   $0xffffffff,0x10(%r8)
   140004dcf:	ff 
   140004dd0:	85 c9                	test   %ecx,%ecx
   140004dd2:	75 5c                	jne    140004e30 <__pformat_emit_inf_or_nan+0x70>
   140004dd4:	b8 2b 00 00 00       	mov    $0x2b,%eax
   140004dd9:	41 f7 c2 00 01 00 00 	test   $0x100,%r10d
   140004de0:	75 53                	jne    140004e35 <__pformat_emit_inf_or_nan+0x75>
   140004de2:	41 f6 c2 40          	test   $0x40,%r10b
   140004de6:	74 60                	je     140004e48 <__pformat_emit_inf_or_nan+0x88>
   140004de8:	b8 20 00 00 00       	mov    $0x20,%eax
   140004ded:	4c 8d 4c 24 2d       	lea    0x2d(%rsp),%r9
   140004df2:	4c 8d 5c 24 2c       	lea    0x2c(%rsp),%r11
   140004df7:	88 44 24 2c          	mov    %al,0x2c(%rsp)
   140004dfb:	41 83 e2 20          	and    $0x20,%r10d
   140004dff:	31 c9                	xor    %ecx,%ecx
   140004e01:	0f b6 04 0a          	movzbl (%rdx,%rcx,1),%eax
   140004e05:	83 e0 df             	and    $0xffffffdf,%eax
   140004e08:	44 09 d0             	or     %r10d,%eax
   140004e0b:	41 88 04 09          	mov    %al,(%r9,%rcx,1)
   140004e0f:	48 83 c1 01          	add    $0x1,%rcx
   140004e13:	48 83 f9 03          	cmp    $0x3,%rcx
   140004e17:	75 e8                	jne    140004e01 <__pformat_emit_inf_or_nan+0x41>
   140004e19:	49 8d 51 03          	lea    0x3(%r9),%rdx
   140004e1d:	4c 89 d9             	mov    %r11,%rcx
   140004e20:	44 29 da             	sub    %r11d,%edx
   140004e23:	e8 f8 fd ff ff       	call   140004c20 <__pformat_putchars>
   140004e28:	90                   	nop
   140004e29:	48 83 c4 38          	add    $0x38,%rsp
   140004e2d:	c3                   	ret
   140004e2e:	66 90                	xchg   %ax,%ax
   140004e30:	b8 2d 00 00 00       	mov    $0x2d,%eax
   140004e35:	88 44 24 2c          	mov    %al,0x2c(%rsp)
   140004e39:	4c 8d 4c 24 2d       	lea    0x2d(%rsp),%r9
   140004e3e:	4c 8d 5c 24 2c       	lea    0x2c(%rsp),%r11
   140004e43:	eb b6                	jmp    140004dfb <__pformat_emit_inf_or_nan+0x3b>
   140004e45:	0f 1f 00             	nopl   (%rax)
   140004e48:	4c 8d 5c 24 2c       	lea    0x2c(%rsp),%r11
   140004e4d:	4d 89 d9             	mov    %r11,%r9
   140004e50:	eb a9                	jmp    140004dfb <__pformat_emit_inf_or_nan+0x3b>
   140004e52:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140004e59:	00 00 00 00 
   140004e5d:	0f 1f 00             	nopl   (%rax)

0000000140004e60 <__pformat_xint.isra.0>:
   140004e60:	55                   	push   %rbp
   140004e61:	41 57                	push   %r15
   140004e63:	41 56                	push   %r14
   140004e65:	41 55                	push   %r13
   140004e67:	41 54                	push   %r12
   140004e69:	57                   	push   %rdi
   140004e6a:	56                   	push   %rsi
   140004e6b:	53                   	push   %rbx
   140004e6c:	48 83 ec 38          	sub    $0x38,%rsp
   140004e70:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   140004e75:	41 89 cd             	mov    %ecx,%r13d
   140004e78:	4c 89 c3             	mov    %r8,%rbx
   140004e7b:	83 f9 6f             	cmp    $0x6f,%ecx
   140004e7e:	0f 84 cc 02 00 00    	je     140005150 <__pformat_xint.isra.0+0x2f0>
   140004e84:	45 8b 70 10          	mov    0x10(%r8),%r14d
   140004e88:	31 c0                	xor    %eax,%eax
   140004e8a:	41 8b 78 08          	mov    0x8(%r8),%edi
   140004e8e:	45 85 f6             	test   %r14d,%r14d
   140004e91:	41 0f 49 c6          	cmovns %r14d,%eax
   140004e95:	83 c0 12             	add    $0x12,%eax
   140004e98:	f7 c7 00 10 00 00    	test   $0x1000,%edi
   140004e9e:	0f 84 e4 00 00 00    	je     140004f88 <__pformat_xint.isra.0+0x128>
   140004ea4:	b9 04 00 00 00       	mov    $0x4,%ecx
   140004ea9:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
   140004eae:	74 14                	je     140004ec4 <__pformat_xint.isra.0+0x64>
   140004eb0:	41 89 c0             	mov    %eax,%r8d
   140004eb3:	41 b9 ab aa aa aa    	mov    $0xaaaaaaab,%r9d
   140004eb9:	4d 0f af c1          	imul   %r9,%r8
   140004ebd:	49 c1 e8 21          	shr    $0x21,%r8
   140004ec1:	44 01 c0             	add    %r8d,%eax
   140004ec4:	8b 73 0c             	mov    0xc(%rbx),%esi
   140004ec7:	39 c6                	cmp    %eax,%esi
   140004ec9:	89 75 fc             	mov    %esi,-0x4(%rbp)
   140004ecc:	0f 4d c6             	cmovge %esi,%eax
   140004ecf:	48 98                	cltq
   140004ed1:	48 83 c0 0f          	add    $0xf,%rax
   140004ed5:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140004ed9:	e8 d2 f9 ff ff       	call   1400048b0 <___chkstk_ms>
   140004ede:	45 31 c9             	xor    %r9d,%r9d
   140004ee1:	48 29 c4             	sub    %rax,%rsp
   140004ee4:	41 83 fd 6f          	cmp    $0x6f,%r13d
   140004ee8:	41 0f 95 c1          	setne  %r9b
   140004eec:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
   140004ef1:	46 8d 0c cd 07 00 00 	lea    0x7(,%r9,8),%r9d
   140004ef8:	00 
   140004ef9:	48 85 d2             	test   %rdx,%rdx
   140004efc:	0f 85 bc 00 00 00    	jne    140004fbe <__pformat_xint.isra.0+0x15e>
   140004f02:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004f08:	81 e7 ff f7 ff ff    	and    $0xfffff7ff,%edi
   140004f0e:	89 7b 08             	mov    %edi,0x8(%rbx)
   140004f11:	45 85 f6             	test   %r14d,%r14d
   140004f14:	0f 8e ce 02 00 00    	jle    1400051e8 <__pformat_xint.isra.0+0x388>
   140004f1a:	41 8d 7e ff          	lea    -0x1(%r14),%edi
   140004f1e:	4c 89 e6             	mov    %r12,%rsi
   140004f21:	83 c7 01             	add    $0x1,%edi
   140004f24:	48 89 f1             	mov    %rsi,%rcx
   140004f27:	ba 30 00 00 00       	mov    $0x30,%edx
   140004f2c:	48 63 ff             	movslq %edi,%rdi
   140004f2f:	49 89 f8             	mov    %rdi,%r8
   140004f32:	48 01 fe             	add    %rdi,%rsi
   140004f35:	e8 4e 53 00 00       	call   14000a288 <memset>
   140004f3a:	4c 39 e6             	cmp    %r12,%rsi
   140004f3d:	0f 84 a8 02 00 00    	je     1400051eb <__pformat_xint.isra.0+0x38b>
   140004f43:	48 89 f0             	mov    %rsi,%rax
   140004f46:	8b 4d fc             	mov    -0x4(%rbp),%ecx
   140004f49:	4c 29 e0             	sub    %r12,%rax
   140004f4c:	89 c2                	mov    %eax,%edx
   140004f4e:	39 c8                	cmp    %ecx,%eax
   140004f50:	0f 8c bb 02 00 00    	jl     140005211 <__pformat_xint.isra.0+0x3b1>
   140004f56:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   140004f5d:	41 83 fd 6f          	cmp    $0x6f,%r13d
   140004f61:	0f 85 ad 03 00 00    	jne    140005314 <__pformat_xint.isra.0+0x4b4>
   140004f67:	49 39 f4             	cmp    %rsi,%r12
   140004f6a:	0f 83 ce 01 00 00    	jae    14000513e <__pformat_xint.isra.0+0x2de>
   140004f70:	8b 7b 08             	mov    0x8(%rbx),%edi
   140004f73:	41 bd fe ff ff ff    	mov    $0xfffffffe,%r13d
   140004f79:	41 bf ff ff ff ff    	mov    $0xffffffff,%r15d
   140004f7f:	e9 2c 01 00 00       	jmp    1400050b0 <__pformat_xint.isra.0+0x250>
   140004f84:	0f 1f 40 00          	nopl   0x0(%rax)
   140004f88:	8b 4b 0c             	mov    0xc(%rbx),%ecx
   140004f8b:	39 c1                	cmp    %eax,%ecx
   140004f8d:	89 4d fc             	mov    %ecx,-0x4(%rbp)
   140004f90:	0f 4d c1             	cmovge %ecx,%eax
   140004f93:	48 98                	cltq
   140004f95:	48 83 c0 0f          	add    $0xf,%rax
   140004f99:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140004f9d:	e8 0e f9 ff ff       	call   1400048b0 <___chkstk_ms>
   140004fa2:	b9 04 00 00 00       	mov    $0x4,%ecx
   140004fa7:	41 b9 0f 00 00 00    	mov    $0xf,%r9d
   140004fad:	48 29 c4             	sub    %rax,%rsp
   140004fb0:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
   140004fb5:	48 85 d2             	test   %rdx,%rdx
   140004fb8:	0f 84 4a ff ff ff    	je     140004f08 <__pformat_xint.isra.0+0xa8>
   140004fbe:	45 89 ea             	mov    %r13d,%r10d
   140004fc1:	4c 89 e6             	mov    %r12,%rsi
   140004fc4:	41 83 e2 20          	and    $0x20,%r10d
   140004fc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140004fcf:	00 
   140004fd0:	44 89 c8             	mov    %r9d,%eax
   140004fd3:	49 89 f3             	mov    %rsi,%r11
   140004fd6:	48 83 c6 01          	add    $0x1,%rsi
   140004fda:	21 d0                	and    %edx,%eax
   140004fdc:	44 8d 40 30          	lea    0x30(%rax),%r8d
   140004fe0:	83 c0 37             	add    $0x37,%eax
   140004fe3:	44 09 d0             	or     %r10d,%eax
   140004fe6:	45 89 c7             	mov    %r8d,%r15d
   140004fe9:	41 80 f8 39          	cmp    $0x39,%r8b
   140004fed:	41 0f 46 c7          	cmovbe %r15d,%eax
   140004ff1:	48 d3 ea             	shr    %cl,%rdx
   140004ff4:	88 46 ff             	mov    %al,-0x1(%rsi)
   140004ff7:	48 85 d2             	test   %rdx,%rdx
   140004ffa:	75 d4                	jne    140004fd0 <__pformat_xint.isra.0+0x170>
   140004ffc:	4c 39 e6             	cmp    %r12,%rsi
   140004fff:	0f 84 03 ff ff ff    	je     140004f08 <__pformat_xint.isra.0+0xa8>
   140005005:	45 85 f6             	test   %r14d,%r14d
   140005008:	0f 8e 72 01 00 00    	jle    140005180 <__pformat_xint.isra.0+0x320>
   14000500e:	48 89 f2             	mov    %rsi,%rdx
   140005011:	44 89 f0             	mov    %r14d,%eax
   140005014:	4c 29 e2             	sub    %r12,%rdx
   140005017:	29 d0                	sub    %edx,%eax
   140005019:	85 c0                	test   %eax,%eax
   14000501b:	0f 8f df 02 00 00    	jg     140005300 <__pformat_xint.isra.0+0x4a0>
   140005021:	41 83 fd 6f          	cmp    $0x6f,%r13d
   140005025:	0f 84 3d 02 00 00    	je     140005268 <__pformat_xint.isra.0+0x408>
   14000502b:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000502e:	39 c2                	cmp    %eax,%edx
   140005030:	0f 8d 9a 02 00 00    	jge    1400052d0 <__pformat_xint.isra.0+0x470>
   140005036:	41 89 c7             	mov    %eax,%r15d
   140005039:	41 29 d7             	sub    %edx,%r15d
   14000503c:	44 89 7b 0c          	mov    %r15d,0xc(%rbx)
   140005040:	f7 c7 00 08 00 00    	test   $0x800,%edi
   140005046:	0f 85 54 02 00 00    	jne    1400052a0 <__pformat_xint.isra.0+0x440>
   14000504c:	45 85 f6             	test   %r14d,%r14d
   14000504f:	0f 88 c4 02 00 00    	js     140005319 <__pformat_xint.isra.0+0x4b9>
   140005055:	45 8d 6f ff          	lea    -0x1(%r15),%r13d
   140005059:	f7 c7 00 04 00 00    	test   $0x400,%edi
   14000505f:	0f 85 2b 02 00 00    	jne    140005290 <__pformat_xint.isra.0+0x430>
   140005065:	45 89 ef             	mov    %r13d,%r15d
   140005068:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000506f:	00 
   140005070:	48 89 da             	mov    %rbx,%rdx
   140005073:	b9 20 00 00 00       	mov    $0x20,%ecx
   140005078:	e8 b3 f9 ff ff       	call   140004a30 <__pformat_putc>
   14000507d:	41 83 ef 01          	sub    $0x1,%r15d
   140005081:	73 ed                	jae    140005070 <__pformat_xint.isra.0+0x210>
   140005083:	41 bd fe ff ff ff    	mov    $0xfffffffe,%r13d
   140005089:	49 39 f4             	cmp    %rsi,%r12
   14000508c:	72 1f                	jb     1400050ad <__pformat_xint.isra.0+0x24d>
   14000508e:	e9 ab 00 00 00       	jmp    14000513e <__pformat_xint.isra.0+0x2de>
   140005093:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005098:	48 63 43 24          	movslq 0x24(%rbx),%rax
   14000509c:	88 0c 02             	mov    %cl,(%rdx,%rax,1)
   14000509f:	8b 43 24             	mov    0x24(%rbx),%eax
   1400050a2:	83 c0 01             	add    $0x1,%eax
   1400050a5:	89 43 24             	mov    %eax,0x24(%rbx)
   1400050a8:	49 39 f4             	cmp    %rsi,%r12
   1400050ab:	73 38                	jae    1400050e5 <__pformat_xint.isra.0+0x285>
   1400050ad:	8b 7b 08             	mov    0x8(%rbx),%edi
   1400050b0:	48 83 ee 01          	sub    $0x1,%rsi
   1400050b4:	f7 c7 00 40 00 00    	test   $0x4000,%edi
   1400050ba:	75 08                	jne    1400050c4 <__pformat_xint.isra.0+0x264>
   1400050bc:	8b 43 24             	mov    0x24(%rbx),%eax
   1400050bf:	39 43 28             	cmp    %eax,0x28(%rbx)
   1400050c2:	7e de                	jle    1400050a2 <__pformat_xint.isra.0+0x242>
   1400050c4:	81 e7 00 20 00 00    	and    $0x2000,%edi
   1400050ca:	0f be 0e             	movsbl (%rsi),%ecx
   1400050cd:	48 8b 13             	mov    (%rbx),%rdx
   1400050d0:	74 c6                	je     140005098 <__pformat_xint.isra.0+0x238>
   1400050d2:	e8 79 51 00 00       	call   14000a250 <fputc>
   1400050d7:	8b 43 24             	mov    0x24(%rbx),%eax
   1400050da:	83 c0 01             	add    $0x1,%eax
   1400050dd:	89 43 24             	mov    %eax,0x24(%rbx)
   1400050e0:	49 39 f4             	cmp    %rsi,%r12
   1400050e3:	72 c8                	jb     1400050ad <__pformat_xint.isra.0+0x24d>
   1400050e5:	45 85 ff             	test   %r15d,%r15d
   1400050e8:	7f 1d                	jg     140005107 <__pformat_xint.isra.0+0x2a7>
   1400050ea:	eb 52                	jmp    14000513e <__pformat_xint.isra.0+0x2de>
   1400050ec:	0f 1f 40 00          	nopl   0x0(%rax)
   1400050f0:	48 63 43 24          	movslq 0x24(%rbx),%rax
   1400050f4:	c6 04 02 20          	movb   $0x20,(%rdx,%rax,1)
   1400050f8:	8b 43 24             	mov    0x24(%rbx),%eax
   1400050fb:	83 c0 01             	add    $0x1,%eax
   1400050fe:	89 43 24             	mov    %eax,0x24(%rbx)
   140005101:	41 83 ed 01          	sub    $0x1,%r13d
   140005105:	72 37                	jb     14000513e <__pformat_xint.isra.0+0x2de>
   140005107:	8b 7b 08             	mov    0x8(%rbx),%edi
   14000510a:	f7 c7 00 40 00 00    	test   $0x4000,%edi
   140005110:	75 08                	jne    14000511a <__pformat_xint.isra.0+0x2ba>
   140005112:	8b 43 24             	mov    0x24(%rbx),%eax
   140005115:	39 43 28             	cmp    %eax,0x28(%rbx)
   140005118:	7e e1                	jle    1400050fb <__pformat_xint.isra.0+0x29b>
   14000511a:	81 e7 00 20 00 00    	and    $0x2000,%edi
   140005120:	48 8b 13             	mov    (%rbx),%rdx
   140005123:	74 cb                	je     1400050f0 <__pformat_xint.isra.0+0x290>
   140005125:	b9 20 00 00 00       	mov    $0x20,%ecx
   14000512a:	e8 21 51 00 00       	call   14000a250 <fputc>
   14000512f:	8b 43 24             	mov    0x24(%rbx),%eax
   140005132:	83 c0 01             	add    $0x1,%eax
   140005135:	89 43 24             	mov    %eax,0x24(%rbx)
   140005138:	41 83 ed 01          	sub    $0x1,%r13d
   14000513c:	73 c9                	jae    140005107 <__pformat_xint.isra.0+0x2a7>
   14000513e:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140005142:	5b                   	pop    %rbx
   140005143:	5e                   	pop    %rsi
   140005144:	5f                   	pop    %rdi
   140005145:	41 5c                	pop    %r12
   140005147:	41 5d                	pop    %r13
   140005149:	41 5e                	pop    %r14
   14000514b:	41 5f                	pop    %r15
   14000514d:	5d                   	pop    %rbp
   14000514e:	c3                   	ret
   14000514f:	90                   	nop
   140005150:	45 8b 70 10          	mov    0x10(%r8),%r14d
   140005154:	31 c0                	xor    %eax,%eax
   140005156:	41 8b 78 08          	mov    0x8(%r8),%edi
   14000515a:	45 85 f6             	test   %r14d,%r14d
   14000515d:	41 0f 49 c6          	cmovns %r14d,%eax
   140005161:	83 c0 18             	add    $0x18,%eax
   140005164:	f7 c7 00 10 00 00    	test   $0x1000,%edi
   14000516a:	74 44                	je     1400051b0 <__pformat_xint.isra.0+0x350>
   14000516c:	b9 03 00 00 00       	mov    $0x3,%ecx
   140005171:	e9 33 fd ff ff       	jmp    140004ea9 <__pformat_xint.isra.0+0x49>
   140005176:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000517d:	00 00 00 
   140005180:	41 83 fd 6f          	cmp    $0x6f,%r13d
   140005184:	0f 84 de 00 00 00    	je     140005268 <__pformat_xint.isra.0+0x408>
   14000518a:	48 89 f0             	mov    %rsi,%rax
   14000518d:	8b 4d fc             	mov    -0x4(%rbp),%ecx
   140005190:	4c 29 e0             	sub    %r12,%rax
   140005193:	39 c8                	cmp    %ecx,%eax
   140005195:	0f 8d 35 01 00 00    	jge    1400052d0 <__pformat_xint.isra.0+0x470>
   14000519b:	41 89 cf             	mov    %ecx,%r15d
   14000519e:	41 29 c7             	sub    %eax,%r15d
   1400051a1:	44 89 7b 0c          	mov    %r15d,0xc(%rbx)
   1400051a5:	e9 96 fe ff ff       	jmp    140005040 <__pformat_xint.isra.0+0x1e0>
   1400051aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400051b0:	8b 4b 0c             	mov    0xc(%rbx),%ecx
   1400051b3:	39 c1                	cmp    %eax,%ecx
   1400051b5:	89 4d fc             	mov    %ecx,-0x4(%rbp)
   1400051b8:	0f 4d c1             	cmovge %ecx,%eax
   1400051bb:	48 98                	cltq
   1400051bd:	48 83 c0 0f          	add    $0xf,%rax
   1400051c1:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   1400051c5:	e8 e6 f6 ff ff       	call   1400048b0 <___chkstk_ms>
   1400051ca:	b9 03 00 00 00       	mov    $0x3,%ecx
   1400051cf:	41 b9 07 00 00 00    	mov    $0x7,%r9d
   1400051d5:	48 29 c4             	sub    %rax,%rsp
   1400051d8:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
   1400051dd:	e9 d3 fd ff ff       	jmp    140004fb5 <__pformat_xint.isra.0+0x155>
   1400051e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400051e8:	4c 89 e6             	mov    %r12,%rsi
   1400051eb:	45 85 f6             	test   %r14d,%r14d
   1400051ee:	0f 84 4f fd ff ff    	je     140004f43 <__pformat_xint.isra.0+0xe3>
   1400051f4:	48 8d 56 01          	lea    0x1(%rsi),%rdx
   1400051f8:	8b 4d fc             	mov    -0x4(%rbp),%ecx
   1400051fb:	c6 06 30             	movb   $0x30,(%rsi)
   1400051fe:	48 89 d0             	mov    %rdx,%rax
   140005201:	48 89 d6             	mov    %rdx,%rsi
   140005204:	4c 29 e0             	sub    %r12,%rax
   140005207:	89 c2                	mov    %eax,%edx
   140005209:	39 c8                	cmp    %ecx,%eax
   14000520b:	0f 8d 45 fd ff ff    	jge    140004f56 <__pformat_xint.isra.0+0xf6>
   140005211:	8b 7b 08             	mov    0x8(%rbx),%edi
   140005214:	44 8b 7d fc          	mov    -0x4(%rbp),%r15d
   140005218:	41 29 d7             	sub    %edx,%r15d
   14000521b:	44 89 7b 0c          	mov    %r15d,0xc(%rbx)
   14000521f:	41 83 fd 6f          	cmp    $0x6f,%r13d
   140005223:	0f 85 17 fe ff ff    	jne    140005040 <__pformat_xint.isra.0+0x1e0>
   140005229:	45 85 f6             	test   %r14d,%r14d
   14000522c:	0f 89 23 fe ff ff    	jns    140005055 <__pformat_xint.isra.0+0x1f5>
   140005232:	89 f8                	mov    %edi,%eax
   140005234:	25 00 06 00 00       	and    $0x600,%eax
   140005239:	3d 00 02 00 00       	cmp    $0x200,%eax
   14000523e:	0f 85 11 fe ff ff    	jne    140005055 <__pformat_xint.isra.0+0x1f5>
   140005244:	4d 63 ff             	movslq %r15d,%r15
   140005247:	ba 30 00 00 00       	mov    $0x30,%edx
   14000524c:	48 89 f1             	mov    %rsi,%rcx
   14000524f:	4d 89 f8             	mov    %r15,%r8
   140005252:	e8 31 50 00 00       	call   14000a288 <memset>
   140005257:	4a 8d 04 3e          	lea    (%rsi,%r15,1),%rax
   14000525b:	41 bf ff ff ff ff    	mov    $0xffffffff,%r15d
   140005261:	eb 55                	jmp    1400052b8 <__pformat_xint.isra.0+0x458>
   140005263:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005268:	f7 c7 00 08 00 00    	test   $0x800,%edi
   14000526e:	0f 85 94 00 00 00    	jne    140005308 <__pformat_xint.isra.0+0x4a8>
   140005274:	48 89 f0             	mov    %rsi,%rax
   140005277:	4c 29 e0             	sub    %r12,%rax
   14000527a:	89 c2                	mov    %eax,%edx
   14000527c:	39 45 fc             	cmp    %eax,-0x4(%rbp)
   14000527f:	7f 93                	jg     140005214 <__pformat_xint.isra.0+0x3b4>
   140005281:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   140005288:	e9 da fc ff ff       	jmp    140004f67 <__pformat_xint.isra.0+0x107>
   14000528d:	0f 1f 00             	nopl   (%rax)
   140005290:	49 39 f4             	cmp    %rsi,%r12
   140005293:	0f 82 17 fe ff ff    	jb     1400050b0 <__pformat_xint.isra.0+0x250>
   140005299:	e9 6c fe ff ff       	jmp    14000510a <__pformat_xint.isra.0+0x2aa>
   14000529e:	66 90                	xchg   %ax,%ax
   1400052a0:	41 83 ef 02          	sub    $0x2,%r15d
   1400052a4:	45 85 ff             	test   %r15d,%r15d
   1400052a7:	0f 8f b7 00 00 00    	jg     140005364 <__pformat_xint.isra.0+0x504>
   1400052ad:	44 88 2e             	mov    %r13b,(%rsi)
   1400052b0:	48 8d 46 02          	lea    0x2(%rsi),%rax
   1400052b4:	c6 46 01 30          	movb   $0x30,0x1(%rsi)
   1400052b8:	49 39 c4             	cmp    %rax,%r12
   1400052bb:	0f 83 7d fe ff ff    	jae    14000513e <__pformat_xint.isra.0+0x2de>
   1400052c1:	8b 7b 08             	mov    0x8(%rbx),%edi
   1400052c4:	45 8d 6f ff          	lea    -0x1(%r15),%r13d
   1400052c8:	48 89 c6             	mov    %rax,%rsi
   1400052cb:	e9 e0 fd ff ff       	jmp    1400050b0 <__pformat_xint.isra.0+0x250>
   1400052d0:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   1400052d7:	81 e7 00 08 00 00    	and    $0x800,%edi
   1400052dd:	48 89 f0             	mov    %rsi,%rax
   1400052e0:	41 bf ff ff ff ff    	mov    $0xffffffff,%r15d
   1400052e6:	74 d0                	je     1400052b8 <__pformat_xint.isra.0+0x458>
   1400052e8:	44 88 2e             	mov    %r13b,(%rsi)
   1400052eb:	48 8d 46 02          	lea    0x2(%rsi),%rax
   1400052ef:	41 bf ff ff ff ff    	mov    $0xffffffff,%r15d
   1400052f5:	c6 46 01 30          	movb   $0x30,0x1(%rsi)
   1400052f9:	eb bd                	jmp    1400052b8 <__pformat_xint.isra.0+0x458>
   1400052fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005300:	8d 78 ff             	lea    -0x1(%rax),%edi
   140005303:	e9 19 fc ff ff       	jmp    140004f21 <__pformat_xint.isra.0+0xc1>
   140005308:	c6 06 30             	movb   $0x30,(%rsi)
   14000530b:	49 8d 73 02          	lea    0x2(%r11),%rsi
   14000530f:	e9 26 fc ff ff       	jmp    140004f3a <__pformat_xint.isra.0+0xda>
   140005314:	8b 7b 08             	mov    0x8(%rbx),%edi
   140005317:	eb be                	jmp    1400052d7 <__pformat_xint.isra.0+0x477>
   140005319:	89 f8                	mov    %edi,%eax
   14000531b:	25 00 06 00 00       	and    $0x600,%eax
   140005320:	3d 00 02 00 00       	cmp    $0x200,%eax
   140005325:	0f 85 2a fd ff ff    	jne    140005055 <__pformat_xint.isra.0+0x1f5>
   14000532b:	4d 63 ff             	movslq %r15d,%r15
   14000532e:	ba 30 00 00 00       	mov    $0x30,%edx
   140005333:	48 89 f1             	mov    %rsi,%rcx
   140005336:	4d 89 f8             	mov    %r15,%r8
   140005339:	e8 4a 4f 00 00       	call   14000a288 <memset>
   14000533e:	81 e7 00 08 00 00    	and    $0x800,%edi
   140005344:	4a 8d 04 3e          	lea    (%rsi,%r15,1),%rax
   140005348:	0f 84 0d ff ff ff    	je     14000525b <__pformat_xint.isra.0+0x3fb>
   14000534e:	44 88 28             	mov    %r13b,(%rax)
   140005351:	41 bf ff ff ff ff    	mov    $0xffffffff,%r15d
   140005357:	48 83 c0 02          	add    $0x2,%rax
   14000535b:	c6 40 ff 30          	movb   $0x30,-0x1(%rax)
   14000535f:	e9 54 ff ff ff       	jmp    1400052b8 <__pformat_xint.isra.0+0x458>
   140005364:	45 85 f6             	test   %r14d,%r14d
   140005367:	78 10                	js     140005379 <__pformat_xint.isra.0+0x519>
   140005369:	44 88 2e             	mov    %r13b,(%rsi)
   14000536c:	48 83 c6 02          	add    $0x2,%rsi
   140005370:	c6 46 ff 30          	movb   $0x30,-0x1(%rsi)
   140005374:	e9 dc fc ff ff       	jmp    140005055 <__pformat_xint.isra.0+0x1f5>
   140005379:	89 f8                	mov    %edi,%eax
   14000537b:	25 00 06 00 00       	and    $0x600,%eax
   140005380:	3d 00 02 00 00       	cmp    $0x200,%eax
   140005385:	75 e2                	jne    140005369 <__pformat_xint.isra.0+0x509>
   140005387:	eb a2                	jmp    14000532b <__pformat_xint.isra.0+0x4cb>
   140005389:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140005390 <__pformat_int.isra.0>:
   140005390:	55                   	push   %rbp
   140005391:	41 57                	push   %r15
   140005393:	41 56                	push   %r14
   140005395:	41 55                	push   %r13
   140005397:	41 54                	push   %r12
   140005399:	57                   	push   %rdi
   14000539a:	56                   	push   %rsi
   14000539b:	53                   	push   %rbx
   14000539c:	48 83 ec 28          	sub    $0x28,%rsp
   1400053a0:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   1400053a5:	31 c0                	xor    %eax,%eax
   1400053a7:	44 8b 72 10          	mov    0x10(%rdx),%r14d
   1400053ab:	8b 7a 08             	mov    0x8(%rdx),%edi
   1400053ae:	45 85 f6             	test   %r14d,%r14d
   1400053b1:	41 0f 49 c6          	cmovns %r14d,%eax
   1400053b5:	48 89 d3             	mov    %rdx,%rbx
   1400053b8:	83 c0 17             	add    $0x17,%eax
   1400053bb:	f7 c7 00 10 00 00    	test   $0x1000,%edi
   1400053c1:	74 0b                	je     1400053ce <__pformat_int.isra.0+0x3e>
   1400053c3:	66 83 7a 20 00       	cmpw   $0x0,0x20(%rdx)
   1400053c8:	0f 85 62 02 00 00    	jne    140005630 <__pformat_int.isra.0+0x2a0>
   1400053ce:	8b 73 0c             	mov    0xc(%rbx),%esi
   1400053d1:	39 c6                	cmp    %eax,%esi
   1400053d3:	0f 4d c6             	cmovge %esi,%eax
   1400053d6:	48 98                	cltq
   1400053d8:	48 83 c0 0f          	add    $0xf,%rax
   1400053dc:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   1400053e0:	e8 cb f4 ff ff       	call   1400048b0 <___chkstk_ms>
   1400053e5:	48 29 c4             	sub    %rax,%rsp
   1400053e8:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
   1400053ed:	40 f6 c7 80          	test   $0x80,%dil
   1400053f1:	74 10                	je     140005403 <__pformat_int.isra.0+0x73>
   1400053f3:	48 85 c9             	test   %rcx,%rcx
   1400053f6:	0f 88 74 02 00 00    	js     140005670 <__pformat_int.isra.0+0x2e0>
   1400053fc:	40 80 e7 7f          	and    $0x7f,%dil
   140005400:	89 7b 08             	mov    %edi,0x8(%rbx)
   140005403:	48 85 c9             	test   %rcx,%rcx
   140005406:	0f 84 14 03 00 00    	je     140005720 <__pformat_int.isra.0+0x390>
   14000540c:	49 bb 03 00 00 00 00 	movabs $0x8000000000000003,%r11
   140005413:	00 00 80 
   140005416:	41 89 fa             	mov    %edi,%r10d
   140005419:	4d 89 e0             	mov    %r12,%r8
   14000541c:	49 b9 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r9
   140005423:	cc cc cc 
   140005426:	41 81 e2 00 10 00 00 	and    $0x1000,%r10d
   14000542d:	0f 1f 00             	nopl   (%rax)
   140005430:	4d 39 c4             	cmp    %r8,%r12
   140005433:	74 2b                	je     140005460 <__pformat_int.isra.0+0xd0>
   140005435:	45 85 d2             	test   %r10d,%r10d
   140005438:	74 26                	je     140005460 <__pformat_int.isra.0+0xd0>
   14000543a:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
   14000543f:	74 1f                	je     140005460 <__pformat_int.isra.0+0xd0>
   140005441:	4c 89 c0             	mov    %r8,%rax
   140005444:	4c 29 e0             	sub    %r12,%rax
   140005447:	4c 21 d8             	and    %r11,%rax
   14000544a:	48 83 f8 03          	cmp    $0x3,%rax
   14000544e:	75 10                	jne    140005460 <__pformat_int.isra.0+0xd0>
   140005450:	41 c6 00 2c          	movb   $0x2c,(%r8)
   140005454:	49 83 c0 01          	add    $0x1,%r8
   140005458:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000545f:	00 
   140005460:	48 89 c8             	mov    %rcx,%rax
   140005463:	4d 8d 68 01          	lea    0x1(%r8),%r13
   140005467:	49 f7 e1             	mul    %r9
   14000546a:	48 89 c8             	mov    %rcx,%rax
   14000546d:	48 c1 ea 03          	shr    $0x3,%rdx
   140005471:	4c 8d 3c 92          	lea    (%rdx,%rdx,4),%r15
   140005475:	4d 01 ff             	add    %r15,%r15
   140005478:	4c 29 f8             	sub    %r15,%rax
   14000547b:	83 c0 30             	add    $0x30,%eax
   14000547e:	41 88 00             	mov    %al,(%r8)
   140005481:	48 83 f9 09          	cmp    $0x9,%rcx
   140005485:	76 09                	jbe    140005490 <__pformat_int.isra.0+0x100>
   140005487:	48 89 d1             	mov    %rdx,%rcx
   14000548a:	4d 89 e8             	mov    %r13,%r8
   14000548d:	eb a1                	jmp    140005430 <__pformat_int.isra.0+0xa0>
   14000548f:	90                   	nop
   140005490:	45 85 f6             	test   %r14d,%r14d
   140005493:	7e 2b                	jle    1400054c0 <__pformat_int.isra.0+0x130>
   140005495:	4c 89 e8             	mov    %r13,%rax
   140005498:	45 89 f0             	mov    %r14d,%r8d
   14000549b:	4c 29 e0             	sub    %r12,%rax
   14000549e:	41 29 c0             	sub    %eax,%r8d
   1400054a1:	45 85 c0             	test   %r8d,%r8d
   1400054a4:	0f 8e a6 01 00 00    	jle    140005650 <__pformat_int.isra.0+0x2c0>
   1400054aa:	4d 63 f8             	movslq %r8d,%r15
   1400054ad:	4c 89 e9             	mov    %r13,%rcx
   1400054b0:	ba 30 00 00 00       	mov    $0x30,%edx
   1400054b5:	4d 89 f8             	mov    %r15,%r8
   1400054b8:	4d 01 fd             	add    %r15,%r13
   1400054bb:	e8 c8 4d 00 00       	call   14000a288 <memset>
   1400054c0:	4d 39 ec             	cmp    %r13,%r12
   1400054c3:	0f 94 c0             	sete   %al
   1400054c6:	45 85 f6             	test   %r14d,%r14d
   1400054c9:	74 08                	je     1400054d3 <__pformat_int.isra.0+0x143>
   1400054cb:	84 c0                	test   %al,%al
   1400054cd:	0f 85 3f 02 00 00    	jne    140005712 <__pformat_int.isra.0+0x382>
   1400054d3:	85 f6                	test   %esi,%esi
   1400054d5:	7e 39                	jle    140005510 <__pformat_int.isra.0+0x180>
   1400054d7:	4c 89 e8             	mov    %r13,%rax
   1400054da:	4c 29 e0             	sub    %r12,%rax
   1400054dd:	29 c6                	sub    %eax,%esi
   1400054df:	89 73 0c             	mov    %esi,0xc(%rbx)
   1400054e2:	85 f6                	test   %esi,%esi
   1400054e4:	7e 2a                	jle    140005510 <__pformat_int.isra.0+0x180>
   1400054e6:	f7 c7 c0 01 00 00    	test   $0x1c0,%edi
   1400054ec:	0f 85 8e 01 00 00    	jne    140005680 <__pformat_int.isra.0+0x2f0>
   1400054f2:	45 85 f6             	test   %r14d,%r14d
   1400054f5:	0f 88 94 01 00 00    	js     14000568f <__pformat_int.isra.0+0x2ff>
   1400054fb:	f7 c7 00 04 00 00    	test   $0x400,%edi
   140005501:	0f 84 d1 01 00 00    	je     1400056d8 <__pformat_int.isra.0+0x348>
   140005507:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000550e:	00 00 
   140005510:	40 f6 c7 80          	test   $0x80,%dil
   140005514:	0f 84 d6 00 00 00    	je     1400055f0 <__pformat_int.isra.0+0x260>
   14000551a:	41 c6 45 00 2d       	movb   $0x2d,0x0(%r13)
   14000551f:	49 8d 75 01          	lea    0x1(%r13),%rsi
   140005523:	49 39 f4             	cmp    %rsi,%r12
   140005526:	72 20                	jb     140005548 <__pformat_int.isra.0+0x1b8>
   140005528:	eb 53                	jmp    14000557d <__pformat_int.isra.0+0x1ed>
   14000552a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005530:	48 63 43 24          	movslq 0x24(%rbx),%rax
   140005534:	88 0c 02             	mov    %cl,(%rdx,%rax,1)
   140005537:	8b 43 24             	mov    0x24(%rbx),%eax
   14000553a:	83 c0 01             	add    $0x1,%eax
   14000553d:	89 43 24             	mov    %eax,0x24(%rbx)
   140005540:	49 39 f4             	cmp    %rsi,%r12
   140005543:	74 38                	je     14000557d <__pformat_int.isra.0+0x1ed>
   140005545:	8b 7b 08             	mov    0x8(%rbx),%edi
   140005548:	48 83 ee 01          	sub    $0x1,%rsi
   14000554c:	f7 c7 00 40 00 00    	test   $0x4000,%edi
   140005552:	75 08                	jne    14000555c <__pformat_int.isra.0+0x1cc>
   140005554:	8b 43 24             	mov    0x24(%rbx),%eax
   140005557:	39 43 28             	cmp    %eax,0x28(%rbx)
   14000555a:	7e de                	jle    14000553a <__pformat_int.isra.0+0x1aa>
   14000555c:	81 e7 00 20 00 00    	and    $0x2000,%edi
   140005562:	0f be 0e             	movsbl (%rsi),%ecx
   140005565:	48 8b 13             	mov    (%rbx),%rdx
   140005568:	74 c6                	je     140005530 <__pformat_int.isra.0+0x1a0>
   14000556a:	e8 e1 4c 00 00       	call   14000a250 <fputc>
   14000556f:	8b 43 24             	mov    0x24(%rbx),%eax
   140005572:	83 c0 01             	add    $0x1,%eax
   140005575:	89 43 24             	mov    %eax,0x24(%rbx)
   140005578:	49 39 f4             	cmp    %rsi,%r12
   14000557b:	75 c8                	jne    140005545 <__pformat_int.isra.0+0x1b5>
   14000557d:	8b 43 0c             	mov    0xc(%rbx),%eax
   140005580:	eb 1a                	jmp    14000559c <__pformat_int.isra.0+0x20c>
   140005582:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005588:	48 63 43 24          	movslq 0x24(%rbx),%rax
   14000558c:	c6 04 02 20          	movb   $0x20,(%rdx,%rax,1)
   140005590:	8b 53 24             	mov    0x24(%rbx),%edx
   140005593:	8b 43 0c             	mov    0xc(%rbx),%eax
   140005596:	83 c2 01             	add    $0x1,%edx
   140005599:	89 53 24             	mov    %edx,0x24(%rbx)
   14000559c:	89 c2                	mov    %eax,%edx
   14000559e:	83 e8 01             	sub    $0x1,%eax
   1400055a1:	89 43 0c             	mov    %eax,0xc(%rbx)
   1400055a4:	85 d2                	test   %edx,%edx
   1400055a6:	7e 30                	jle    1400055d8 <__pformat_int.isra.0+0x248>
   1400055a8:	8b 4b 08             	mov    0x8(%rbx),%ecx
   1400055ab:	f6 c5 40             	test   $0x40,%ch
   1400055ae:	75 08                	jne    1400055b8 <__pformat_int.isra.0+0x228>
   1400055b0:	8b 53 24             	mov    0x24(%rbx),%edx
   1400055b3:	39 53 28             	cmp    %edx,0x28(%rbx)
   1400055b6:	7e de                	jle    140005596 <__pformat_int.isra.0+0x206>
   1400055b8:	48 8b 13             	mov    (%rbx),%rdx
   1400055bb:	80 e5 20             	and    $0x20,%ch
   1400055be:	74 c8                	je     140005588 <__pformat_int.isra.0+0x1f8>
   1400055c0:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400055c5:	e8 86 4c 00 00       	call   14000a250 <fputc>
   1400055ca:	8b 53 24             	mov    0x24(%rbx),%edx
   1400055cd:	8b 43 0c             	mov    0xc(%rbx),%eax
   1400055d0:	eb c4                	jmp    140005596 <__pformat_int.isra.0+0x206>
   1400055d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400055d8:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   1400055dc:	5b                   	pop    %rbx
   1400055dd:	5e                   	pop    %rsi
   1400055de:	5f                   	pop    %rdi
   1400055df:	41 5c                	pop    %r12
   1400055e1:	41 5d                	pop    %r13
   1400055e3:	41 5e                	pop    %r14
   1400055e5:	41 5f                	pop    %r15
   1400055e7:	5d                   	pop    %rbp
   1400055e8:	c3                   	ret
   1400055e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400055f0:	f7 c7 00 01 00 00    	test   $0x100,%edi
   1400055f6:	74 18                	je     140005610 <__pformat_int.isra.0+0x280>
   1400055f8:	41 c6 45 00 2b       	movb   $0x2b,0x0(%r13)
   1400055fd:	49 8d 75 01          	lea    0x1(%r13),%rsi
   140005601:	e9 1d ff ff ff       	jmp    140005523 <__pformat_int.isra.0+0x193>
   140005606:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000560d:	00 00 00 
   140005610:	4c 89 ee             	mov    %r13,%rsi
   140005613:	40 f6 c7 40          	test   $0x40,%dil
   140005617:	0f 84 06 ff ff ff    	je     140005523 <__pformat_int.isra.0+0x193>
   14000561d:	41 c6 45 00 20       	movb   $0x20,0x0(%r13)
   140005622:	48 83 c6 01          	add    $0x1,%rsi
   140005626:	e9 f8 fe ff ff       	jmp    140005523 <__pformat_int.isra.0+0x193>
   14000562b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005630:	89 c2                	mov    %eax,%edx
   140005632:	41 b8 ab aa aa aa    	mov    $0xaaaaaaab,%r8d
   140005638:	49 0f af d0          	imul   %r8,%rdx
   14000563c:	48 c1 ea 21          	shr    $0x21,%rdx
   140005640:	01 d0                	add    %edx,%eax
   140005642:	e9 87 fd ff ff       	jmp    1400053ce <__pformat_int.isra.0+0x3e>
   140005647:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000564e:	00 00 
   140005650:	4d 39 ec             	cmp    %r13,%r12
   140005653:	0f 85 7a fe ff ff    	jne    1400054d3 <__pformat_int.isra.0+0x143>
   140005659:	4c 89 e0             	mov    %r12,%rax
   14000565c:	c6 00 30             	movb   $0x30,(%rax)
   14000565f:	4c 8d 68 01          	lea    0x1(%rax),%r13
   140005663:	e9 6b fe ff ff       	jmp    1400054d3 <__pformat_int.isra.0+0x143>
   140005668:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000566f:	00 
   140005670:	48 f7 d9             	neg    %rcx
   140005673:	e9 94 fd ff ff       	jmp    14000540c <__pformat_int.isra.0+0x7c>
   140005678:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000567f:	00 
   140005680:	83 ee 01             	sub    $0x1,%esi
   140005683:	89 73 0c             	mov    %esi,0xc(%rbx)
   140005686:	45 85 f6             	test   %r14d,%r14d
   140005689:	0f 89 6c fe ff ff    	jns    1400054fb <__pformat_int.isra.0+0x16b>
   14000568f:	89 f8                	mov    %edi,%eax
   140005691:	25 00 06 00 00       	and    $0x600,%eax
   140005696:	3d 00 02 00 00       	cmp    $0x200,%eax
   14000569b:	0f 85 5a fe ff ff    	jne    1400054fb <__pformat_int.isra.0+0x16b>
   1400056a1:	8b 43 0c             	mov    0xc(%rbx),%eax
   1400056a4:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400056a7:	89 53 0c             	mov    %edx,0xc(%rbx)
   1400056aa:	85 c0                	test   %eax,%eax
   1400056ac:	0f 8e 5e fe ff ff    	jle    140005510 <__pformat_int.isra.0+0x180>
   1400056b2:	48 63 f0             	movslq %eax,%rsi
   1400056b5:	4c 89 e9             	mov    %r13,%rcx
   1400056b8:	ba 30 00 00 00       	mov    $0x30,%edx
   1400056bd:	49 89 f0             	mov    %rsi,%r8
   1400056c0:	49 01 f5             	add    %rsi,%r13
   1400056c3:	e8 c0 4b 00 00       	call   14000a288 <memset>
   1400056c8:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   1400056cf:	e9 3c fe ff ff       	jmp    140005510 <__pformat_int.isra.0+0x180>
   1400056d4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400056d8:	8b 43 0c             	mov    0xc(%rbx),%eax
   1400056db:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400056de:	89 53 0c             	mov    %edx,0xc(%rbx)
   1400056e1:	85 c0                	test   %eax,%eax
   1400056e3:	0f 8e 27 fe ff ff    	jle    140005510 <__pformat_int.isra.0+0x180>
   1400056e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400056f0:	48 89 da             	mov    %rbx,%rdx
   1400056f3:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400056f8:	e8 33 f3 ff ff       	call   140004a30 <__pformat_putc>
   1400056fd:	8b 43 0c             	mov    0xc(%rbx),%eax
   140005700:	8d 50 ff             	lea    -0x1(%rax),%edx
   140005703:	89 53 0c             	mov    %edx,0xc(%rbx)
   140005706:	85 c0                	test   %eax,%eax
   140005708:	7f e6                	jg     1400056f0 <__pformat_int.isra.0+0x360>
   14000570a:	8b 7b 08             	mov    0x8(%rbx),%edi
   14000570d:	e9 fe fd ff ff       	jmp    140005510 <__pformat_int.isra.0+0x180>
   140005712:	4c 89 e8             	mov    %r13,%rax
   140005715:	e9 42 ff ff ff       	jmp    14000565c <__pformat_int.isra.0+0x2cc>
   14000571a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005720:	4d 89 e5             	mov    %r12,%r13
   140005723:	45 89 f0             	mov    %r14d,%r8d
   140005726:	b8 01 00 00 00       	mov    $0x1,%eax
   14000572b:	45 85 f6             	test   %r14d,%r14d
   14000572e:	0f 8f 76 fd ff ff    	jg     1400054aa <__pformat_int.isra.0+0x11a>
   140005734:	e9 8d fd ff ff       	jmp    1400054c6 <__pformat_int.isra.0+0x136>
   140005739:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140005740 <__pformat_emit_radix_point>:
   140005740:	55                   	push   %rbp
   140005741:	41 54                	push   %r12
   140005743:	57                   	push   %rdi
   140005744:	56                   	push   %rsi
   140005745:	53                   	push   %rbx
   140005746:	48 83 ec 30          	sub    $0x30,%rsp
   14000574a:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   14000574f:	83 79 14 fd          	cmpl   $0xfffffffd,0x14(%rcx)
   140005753:	48 89 cb             	mov    %rcx,%rbx
   140005756:	0f 84 d4 00 00 00    	je     140005830 <__pformat_emit_radix_point+0xf0>
   14000575c:	0f b7 51 18          	movzwl 0x18(%rcx),%edx
   140005760:	66 85 d2             	test   %dx,%dx
   140005763:	0f 84 a7 00 00 00    	je     140005810 <__pformat_emit_radix_point+0xd0>
   140005769:	48 63 43 14          	movslq 0x14(%rbx),%rax
   14000576d:	48 89 e7             	mov    %rsp,%rdi
   140005770:	48 83 c0 0f          	add    $0xf,%rax
   140005774:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140005778:	e8 33 f1 ff ff       	call   1400048b0 <___chkstk_ms>
   14000577d:	48 29 c4             	sub    %rax,%rsp
   140005780:	4c 8d 45 f8          	lea    -0x8(%rbp),%r8
   140005784:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   14000578b:	00 
   14000578c:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
   140005791:	48 89 f1             	mov    %rsi,%rcx
   140005794:	e8 a7 45 00 00       	call   140009d40 <wcrtomb>
   140005799:	85 c0                	test   %eax,%eax
   14000579b:	0f 8e cf 00 00 00    	jle    140005870 <__pformat_emit_radix_point+0x130>
   1400057a1:	83 e8 01             	sub    $0x1,%eax
   1400057a4:	4c 8d 64 06 01       	lea    0x1(%rsi,%rax,1),%r12
   1400057a9:	eb 1a                	jmp    1400057c5 <__pformat_emit_radix_point+0x85>
   1400057ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400057b0:	48 63 53 24          	movslq 0x24(%rbx),%rdx
   1400057b4:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
   1400057b7:	8b 43 24             	mov    0x24(%rbx),%eax
   1400057ba:	83 c0 01             	add    $0x1,%eax
   1400057bd:	89 43 24             	mov    %eax,0x24(%rbx)
   1400057c0:	49 39 f4             	cmp    %rsi,%r12
   1400057c3:	74 36                	je     1400057fb <__pformat_emit_radix_point+0xbb>
   1400057c5:	8b 53 08             	mov    0x8(%rbx),%edx
   1400057c8:	48 83 c6 01          	add    $0x1,%rsi
   1400057cc:	f6 c6 40             	test   $0x40,%dh
   1400057cf:	75 08                	jne    1400057d9 <__pformat_emit_radix_point+0x99>
   1400057d1:	8b 43 24             	mov    0x24(%rbx),%eax
   1400057d4:	39 43 28             	cmp    %eax,0x28(%rbx)
   1400057d7:	7e e1                	jle    1400057ba <__pformat_emit_radix_point+0x7a>
   1400057d9:	0f be 4e ff          	movsbl -0x1(%rsi),%ecx
   1400057dd:	48 8b 03             	mov    (%rbx),%rax
   1400057e0:	80 e6 20             	and    $0x20,%dh
   1400057e3:	74 cb                	je     1400057b0 <__pformat_emit_radix_point+0x70>
   1400057e5:	48 89 c2             	mov    %rax,%rdx
   1400057e8:	e8 63 4a 00 00       	call   14000a250 <fputc>
   1400057ed:	8b 43 24             	mov    0x24(%rbx),%eax
   1400057f0:	83 c0 01             	add    $0x1,%eax
   1400057f3:	89 43 24             	mov    %eax,0x24(%rbx)
   1400057f6:	49 39 f4             	cmp    %rsi,%r12
   1400057f9:	75 ca                	jne    1400057c5 <__pformat_emit_radix_point+0x85>
   1400057fb:	48 89 fc             	mov    %rdi,%rsp
   1400057fe:	48 89 ec             	mov    %rbp,%rsp
   140005801:	5b                   	pop    %rbx
   140005802:	5e                   	pop    %rsi
   140005803:	5f                   	pop    %rdi
   140005804:	41 5c                	pop    %r12
   140005806:	5d                   	pop    %rbp
   140005807:	c3                   	ret
   140005808:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000580f:	00 
   140005810:	48 89 da             	mov    %rbx,%rdx
   140005813:	b9 2e 00 00 00       	mov    $0x2e,%ecx
   140005818:	e8 13 f2 ff ff       	call   140004a30 <__pformat_putc>
   14000581d:	90                   	nop
   14000581e:	48 89 ec             	mov    %rbp,%rsp
   140005821:	5b                   	pop    %rbx
   140005822:	5e                   	pop    %rsi
   140005823:	5f                   	pop    %rdi
   140005824:	41 5c                	pop    %r12
   140005826:	5d                   	pop    %rbp
   140005827:	c3                   	ret
   140005828:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000582f:	00 
   140005830:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   140005837:	00 
   140005838:	48 8d 75 f8          	lea    -0x8(%rbp),%rsi
   14000583c:	e8 27 4a 00 00       	call   14000a268 <localeconv>
   140005841:	48 8d 4d f6          	lea    -0xa(%rbp),%rcx
   140005845:	49 89 f1             	mov    %rsi,%r9
   140005848:	41 b8 10 00 00 00    	mov    $0x10,%r8d
   14000584e:	48 8b 10             	mov    (%rax),%rdx
   140005851:	e8 8a 47 00 00       	call   140009fe0 <mbrtowc>
   140005856:	85 c0                	test   %eax,%eax
   140005858:	7e 2e                	jle    140005888 <__pformat_emit_radix_point+0x148>
   14000585a:	0f b7 55 f6          	movzwl -0xa(%rbp),%edx
   14000585e:	66 89 53 18          	mov    %dx,0x18(%rbx)
   140005862:	89 43 14             	mov    %eax,0x14(%rbx)
   140005865:	e9 f6 fe ff ff       	jmp    140005760 <__pformat_emit_radix_point+0x20>
   14000586a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005870:	48 89 da             	mov    %rbx,%rdx
   140005873:	b9 2e 00 00 00       	mov    $0x2e,%ecx
   140005878:	e8 b3 f1 ff ff       	call   140004a30 <__pformat_putc>
   14000587d:	48 89 fc             	mov    %rdi,%rsp
   140005880:	e9 79 ff ff ff       	jmp    1400057fe <__pformat_emit_radix_point+0xbe>
   140005885:	0f 1f 00             	nopl   (%rax)
   140005888:	0f b7 53 18          	movzwl 0x18(%rbx),%edx
   14000588c:	eb d4                	jmp    140005862 <__pformat_emit_radix_point+0x122>
   14000588e:	66 90                	xchg   %ax,%ax

0000000140005890 <__pformat_emit_float>:
   140005890:	55                   	push   %rbp
   140005891:	57                   	push   %rdi
   140005892:	56                   	push   %rsi
   140005893:	53                   	push   %rbx
   140005894:	48 83 ec 28          	sub    $0x28,%rsp
   140005898:	41 8b 41 0c          	mov    0xc(%r9),%eax
   14000589c:	89 cd                	mov    %ecx,%ebp
   14000589e:	48 89 d7             	mov    %rdx,%rdi
   1400058a1:	44 89 c6             	mov    %r8d,%esi
   1400058a4:	4c 89 cb             	mov    %r9,%rbx
   1400058a7:	45 85 c0             	test   %r8d,%r8d
   1400058aa:	0f 8e 50 01 00 00    	jle    140005a00 <__pformat_emit_float+0x170>
   1400058b0:	41 39 c0             	cmp    %eax,%r8d
   1400058b3:	7f 6b                	jg     140005920 <__pformat_emit_float+0x90>
   1400058b5:	41 8b 51 10          	mov    0x10(%r9),%edx
   1400058b9:	44 29 c0             	sub    %r8d,%eax
   1400058bc:	39 d0                	cmp    %edx,%eax
   1400058be:	0f 8e 0c 03 00 00    	jle    140005bd0 <__pformat_emit_float+0x340>
   1400058c4:	29 d0                	sub    %edx,%eax
   1400058c6:	89 43 0c             	mov    %eax,0xc(%rbx)
   1400058c9:	85 d2                	test   %edx,%edx
   1400058cb:	0f 8e 2f 03 00 00    	jle    140005c00 <__pformat_emit_float+0x370>
   1400058d1:	83 e8 01             	sub    $0x1,%eax
   1400058d4:	89 43 0c             	mov    %eax,0xc(%rbx)
   1400058d7:	85 f6                	test   %esi,%esi
   1400058d9:	7e 0d                	jle    1400058e8 <__pformat_emit_float+0x58>
   1400058db:	f6 43 09 10          	testb  $0x10,0x9(%rbx)
   1400058df:	0f 85 02 03 00 00    	jne    140005be7 <__pformat_emit_float+0x357>
   1400058e5:	0f 1f 00             	nopl   (%rax)
   1400058e8:	85 c0                	test   %eax,%eax
   1400058ea:	7e 47                	jle    140005933 <__pformat_emit_float+0xa3>
   1400058ec:	85 ed                	test   %ebp,%ebp
   1400058ee:	0f 85 e4 01 00 00    	jne    140005ad8 <__pformat_emit_float+0x248>
   1400058f4:	8b 53 08             	mov    0x8(%rbx),%edx
   1400058f7:	f7 c2 c0 01 00 00    	test   $0x1c0,%edx
   1400058fd:	0f 84 b5 02 00 00    	je     140005bb8 <__pformat_emit_float+0x328>
   140005903:	8d 48 ff             	lea    -0x1(%rax),%ecx
   140005906:	89 4b 0c             	mov    %ecx,0xc(%rbx)
   140005909:	85 c9                	test   %ecx,%ecx
   14000590b:	74 31                	je     14000593e <__pformat_emit_float+0xae>
   14000590d:	f6 c6 06             	test   $0x6,%dh
   140005910:	75 2c                	jne    14000593e <__pformat_emit_float+0xae>
   140005912:	e9 dc 01 00 00       	jmp    140005af3 <__pformat_emit_float+0x263>
   140005917:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000591e:	00 00 
   140005920:	41 c7 41 0c ff ff ff 	movl   $0xffffffff,0xc(%r9)
   140005927:	ff 
   140005928:	41 f6 41 09 10       	testb  $0x10,0x9(%r9)
   14000592d:	0f 85 2d 02 00 00    	jne    140005b60 <__pformat_emit_float+0x2d0>
   140005933:	85 ed                	test   %ebp,%ebp
   140005935:	0f 85 f5 00 00 00    	jne    140005a30 <__pformat_emit_float+0x1a0>
   14000593b:	8b 53 08             	mov    0x8(%rbx),%edx
   14000593e:	f6 c6 01             	test   $0x1,%dh
   140005941:	0f 85 d9 01 00 00    	jne    140005b20 <__pformat_emit_float+0x290>
   140005947:	83 e2 40             	and    $0x40,%edx
   14000594a:	74 14                	je     140005960 <__pformat_emit_float+0xd0>
   14000594c:	48 89 da             	mov    %rbx,%rdx
   14000594f:	b9 20 00 00 00       	mov    $0x20,%ecx
   140005954:	e8 d7 f0 ff ff       	call   140004a30 <__pformat_putc>
   140005959:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005960:	8b 43 0c             	mov    0xc(%rbx),%eax
   140005963:	85 c0                	test   %eax,%eax
   140005965:	7e 15                	jle    14000597c <__pformat_emit_float+0xec>
   140005967:	8b 53 08             	mov    0x8(%rbx),%edx
   14000596a:	81 e2 00 06 00 00    	and    $0x600,%edx
   140005970:	81 fa 00 02 00 00    	cmp    $0x200,%edx
   140005976:	0f 84 bc 01 00 00    	je     140005b38 <__pformat_emit_float+0x2a8>
   14000597c:	85 f6                	test   %esi,%esi
   14000597e:	0f 8e 0c 01 00 00    	jle    140005a90 <__pformat_emit_float+0x200>
   140005984:	0f 1f 40 00          	nopl   0x0(%rax)
   140005988:	0f b6 07             	movzbl (%rdi),%eax
   14000598b:	b9 30 00 00 00       	mov    $0x30,%ecx
   140005990:	84 c0                	test   %al,%al
   140005992:	74 07                	je     14000599b <__pformat_emit_float+0x10b>
   140005994:	48 83 c7 01          	add    $0x1,%rdi
   140005998:	0f be c8             	movsbl %al,%ecx
   14000599b:	48 89 da             	mov    %rbx,%rdx
   14000599e:	e8 8d f0 ff ff       	call   140004a30 <__pformat_putc>
   1400059a3:	83 ee 01             	sub    $0x1,%esi
   1400059a6:	74 30                	je     1400059d8 <__pformat_emit_float+0x148>
   1400059a8:	f6 43 09 10          	testb  $0x10,0x9(%rbx)
   1400059ac:	74 da                	je     140005988 <__pformat_emit_float+0xf8>
   1400059ae:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
   1400059b3:	74 d3                	je     140005988 <__pformat_emit_float+0xf8>
   1400059b5:	69 c6 ab aa aa aa    	imul   $0xaaaaaaab,%esi,%eax
   1400059bb:	3d 55 55 55 55       	cmp    $0x55555555,%eax
   1400059c0:	77 c6                	ja     140005988 <__pformat_emit_float+0xf8>
   1400059c2:	48 8d 4b 20          	lea    0x20(%rbx),%rcx
   1400059c6:	49 89 d8             	mov    %rbx,%r8
   1400059c9:	ba 01 00 00 00       	mov    $0x1,%edx
   1400059ce:	e8 bd f0 ff ff       	call   140004a90 <__pformat_wputchars>
   1400059d3:	eb b3                	jmp    140005988 <__pformat_emit_float+0xf8>
   1400059d5:	0f 1f 00             	nopl   (%rax)
   1400059d8:	8b 43 10             	mov    0x10(%rbx),%eax
   1400059db:	85 c0                	test   %eax,%eax
   1400059dd:	7f 69                	jg     140005a48 <__pformat_emit_float+0x1b8>
   1400059df:	f6 43 09 08          	testb  $0x8,0x9(%rbx)
   1400059e3:	0f 85 bf 00 00 00    	jne    140005aa8 <__pformat_emit_float+0x218>
   1400059e9:	83 e8 01             	sub    $0x1,%eax
   1400059ec:	89 43 10             	mov    %eax,0x10(%rbx)
   1400059ef:	48 83 c4 28          	add    $0x28,%rsp
   1400059f3:	5b                   	pop    %rbx
   1400059f4:	5e                   	pop    %rsi
   1400059f5:	5f                   	pop    %rdi
   1400059f6:	5d                   	pop    %rbp
   1400059f7:	c3                   	ret
   1400059f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400059ff:	00 
   140005a00:	85 c0                	test   %eax,%eax
   140005a02:	0f 8e 18 02 00 00    	jle    140005c20 <__pformat_emit_float+0x390>
   140005a08:	41 8b 51 10          	mov    0x10(%r9),%edx
   140005a0c:	83 e8 01             	sub    $0x1,%eax
   140005a0f:	39 d0                	cmp    %edx,%eax
   140005a11:	0f 8f ad fe ff ff    	jg     1400058c4 <__pformat_emit_float+0x34>
   140005a17:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   140005a1e:	85 ed                	test   %ebp,%ebp
   140005a20:	0f 84 15 ff ff ff    	je     14000593b <__pformat_emit_float+0xab>
   140005a26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140005a2d:	00 00 00 
   140005a30:	48 89 da             	mov    %rbx,%rdx
   140005a33:	b9 2d 00 00 00       	mov    $0x2d,%ecx
   140005a38:	e8 f3 ef ff ff       	call   140004a30 <__pformat_putc>
   140005a3d:	e9 1e ff ff ff       	jmp    140005960 <__pformat_emit_float+0xd0>
   140005a42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005a48:	48 89 d9             	mov    %rbx,%rcx
   140005a4b:	e8 f0 fc ff ff       	call   140005740 <__pformat_emit_radix_point>
   140005a50:	eb 21                	jmp    140005a73 <__pformat_emit_float+0x1e3>
   140005a52:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005a58:	0f b6 07             	movzbl (%rdi),%eax
   140005a5b:	b9 30 00 00 00       	mov    $0x30,%ecx
   140005a60:	84 c0                	test   %al,%al
   140005a62:	74 07                	je     140005a6b <__pformat_emit_float+0x1db>
   140005a64:	48 83 c7 01          	add    $0x1,%rdi
   140005a68:	0f be c8             	movsbl %al,%ecx
   140005a6b:	48 89 da             	mov    %rbx,%rdx
   140005a6e:	e8 bd ef ff ff       	call   140004a30 <__pformat_putc>
   140005a73:	8b 43 10             	mov    0x10(%rbx),%eax
   140005a76:	8d 50 ff             	lea    -0x1(%rax),%edx
   140005a79:	89 53 10             	mov    %edx,0x10(%rbx)
   140005a7c:	85 c0                	test   %eax,%eax
   140005a7e:	7f d8                	jg     140005a58 <__pformat_emit_float+0x1c8>
   140005a80:	48 83 c4 28          	add    $0x28,%rsp
   140005a84:	5b                   	pop    %rbx
   140005a85:	5e                   	pop    %rsi
   140005a86:	5f                   	pop    %rdi
   140005a87:	5d                   	pop    %rbp
   140005a88:	c3                   	ret
   140005a89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005a90:	48 89 da             	mov    %rbx,%rdx
   140005a93:	b9 30 00 00 00       	mov    $0x30,%ecx
   140005a98:	e8 93 ef ff ff       	call   140004a30 <__pformat_putc>
   140005a9d:	8b 43 10             	mov    0x10(%rbx),%eax
   140005aa0:	85 c0                	test   %eax,%eax
   140005aa2:	0f 8e a7 01 00 00    	jle    140005c4f <__pformat_emit_float+0x3bf>
   140005aa8:	48 89 d9             	mov    %rbx,%rcx
   140005aab:	e8 90 fc ff ff       	call   140005740 <__pformat_emit_radix_point>
   140005ab0:	85 f6                	test   %esi,%esi
   140005ab2:	74 bf                	je     140005a73 <__pformat_emit_float+0x1e3>
   140005ab4:	8b 43 10             	mov    0x10(%rbx),%eax
   140005ab7:	01 f0                	add    %esi,%eax
   140005ab9:	89 43 10             	mov    %eax,0x10(%rbx)
   140005abc:	0f 1f 40 00          	nopl   0x0(%rax)
   140005ac0:	48 89 da             	mov    %rbx,%rdx
   140005ac3:	b9 30 00 00 00       	mov    $0x30,%ecx
   140005ac8:	e8 63 ef ff ff       	call   140004a30 <__pformat_putc>
   140005acd:	83 c6 01             	add    $0x1,%esi
   140005ad0:	75 ee                	jne    140005ac0 <__pformat_emit_float+0x230>
   140005ad2:	eb 9f                	jmp    140005a73 <__pformat_emit_float+0x1e3>
   140005ad4:	0f 1f 40 00          	nopl   0x0(%rax)
   140005ad8:	8d 50 ff             	lea    -0x1(%rax),%edx
   140005adb:	89 53 0c             	mov    %edx,0xc(%rbx)
   140005ade:	85 d2                	test   %edx,%edx
   140005ae0:	0f 84 4a ff ff ff    	je     140005a30 <__pformat_emit_float+0x1a0>
   140005ae6:	f7 43 08 00 06 00 00 	testl  $0x600,0x8(%rbx)
   140005aed:	0f 85 3d ff ff ff    	jne    140005a30 <__pformat_emit_float+0x1a0>
   140005af3:	83 e8 02             	sub    $0x2,%eax
   140005af6:	89 43 0c             	mov    %eax,0xc(%rbx)
   140005af9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005b00:	48 89 da             	mov    %rbx,%rdx
   140005b03:	b9 20 00 00 00       	mov    $0x20,%ecx
   140005b08:	e8 23 ef ff ff       	call   140004a30 <__pformat_putc>
   140005b0d:	8b 43 0c             	mov    0xc(%rbx),%eax
   140005b10:	8d 50 ff             	lea    -0x1(%rax),%edx
   140005b13:	89 53 0c             	mov    %edx,0xc(%rbx)
   140005b16:	85 c0                	test   %eax,%eax
   140005b18:	7f e6                	jg     140005b00 <__pformat_emit_float+0x270>
   140005b1a:	e9 14 fe ff ff       	jmp    140005933 <__pformat_emit_float+0xa3>
   140005b1f:	90                   	nop
   140005b20:	48 89 da             	mov    %rbx,%rdx
   140005b23:	b9 2b 00 00 00       	mov    $0x2b,%ecx
   140005b28:	e8 03 ef ff ff       	call   140004a30 <__pformat_putc>
   140005b2d:	e9 2e fe ff ff       	jmp    140005960 <__pformat_emit_float+0xd0>
   140005b32:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005b38:	83 e8 01             	sub    $0x1,%eax
   140005b3b:	89 43 0c             	mov    %eax,0xc(%rbx)
   140005b3e:	66 90                	xchg   %ax,%ax
   140005b40:	48 89 da             	mov    %rbx,%rdx
   140005b43:	b9 30 00 00 00       	mov    $0x30,%ecx
   140005b48:	e8 e3 ee ff ff       	call   140004a30 <__pformat_putc>
   140005b4d:	8b 43 0c             	mov    0xc(%rbx),%eax
   140005b50:	8d 50 ff             	lea    -0x1(%rax),%edx
   140005b53:	89 53 0c             	mov    %edx,0xc(%rbx)
   140005b56:	85 c0                	test   %eax,%eax
   140005b58:	7f e6                	jg     140005b40 <__pformat_emit_float+0x2b0>
   140005b5a:	e9 1d fe ff ff       	jmp    14000597c <__pformat_emit_float+0xec>
   140005b5f:	90                   	nop
   140005b60:	66 41 83 79 20 00    	cmpw   $0x0,0x20(%r9)
   140005b66:	0f 84 c7 fd ff ff    	je     140005933 <__pformat_emit_float+0xa3>
   140005b6c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140005b71:	ba ab aa aa aa       	mov    $0xaaaaaaab,%edx
   140005b76:	44 8d 46 02          	lea    0x2(%rsi),%r8d
   140005b7a:	4c 0f af c2          	imul   %rdx,%r8
   140005b7e:	89 c2                	mov    %eax,%edx
   140005b80:	49 c1 e8 21          	shr    $0x21,%r8
   140005b84:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
   140005b88:	29 c1                	sub    %eax,%ecx
   140005b8a:	41 83 f8 01          	cmp    $0x1,%r8d
   140005b8e:	75 18                	jne    140005ba8 <__pformat_emit_float+0x318>
   140005b90:	e9 53 fd ff ff       	jmp    1400058e8 <__pformat_emit_float+0x58>
   140005b95:	0f 1f 00             	nopl   (%rax)
   140005b98:	83 ea 01             	sub    $0x1,%edx
   140005b9b:	89 c8                	mov    %ecx,%eax
   140005b9d:	01 d0                	add    %edx,%eax
   140005b9f:	89 53 0c             	mov    %edx,0xc(%rbx)
   140005ba2:	0f 84 a0 00 00 00    	je     140005c48 <__pformat_emit_float+0x3b8>
   140005ba8:	85 d2                	test   %edx,%edx
   140005baa:	7f ec                	jg     140005b98 <__pformat_emit_float+0x308>
   140005bac:	e9 82 fd ff ff       	jmp    140005933 <__pformat_emit_float+0xa3>
   140005bb1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005bb8:	80 e6 06             	and    $0x6,%dh
   140005bbb:	0f 85 9f fd ff ff    	jne    140005960 <__pformat_emit_float+0xd0>
   140005bc1:	83 e8 01             	sub    $0x1,%eax
   140005bc4:	e9 2d ff ff ff       	jmp    140005af6 <__pformat_emit_float+0x266>
   140005bc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005bd0:	41 c7 41 0c ff ff ff 	movl   $0xffffffff,0xc(%r9)
   140005bd7:	ff 
   140005bd8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140005bdd:	f6 43 09 10          	testb  $0x10,0x9(%rbx)
   140005be1:	0f 84 01 fd ff ff    	je     1400058e8 <__pformat_emit_float+0x58>
   140005be7:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
   140005bec:	0f 84 f6 fc ff ff    	je     1400058e8 <__pformat_emit_float+0x58>
   140005bf2:	e9 7a ff ff ff       	jmp    140005b71 <__pformat_emit_float+0x2e1>
   140005bf7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140005bfe:	00 00 
   140005c00:	8b 53 08             	mov    0x8(%rbx),%edx
   140005c03:	f6 c6 08             	test   $0x8,%dh
   140005c06:	0f 85 c5 fc ff ff    	jne    1400058d1 <__pformat_emit_float+0x41>
   140005c0c:	85 f6                	test   %esi,%esi
   140005c0e:	0f 8e d8 fc ff ff    	jle    1400058ec <__pformat_emit_float+0x5c>
   140005c14:	80 e6 10             	and    $0x10,%dh
   140005c17:	75 ce                	jne    140005be7 <__pformat_emit_float+0x357>
   140005c19:	e9 ce fc ff ff       	jmp    1400058ec <__pformat_emit_float+0x5c>
   140005c1e:	66 90                	xchg   %ax,%ax
   140005c20:	0f 85 f1 fd ff ff    	jne    140005a17 <__pformat_emit_float+0x187>
   140005c26:	41 8b 41 10          	mov    0x10(%r9),%eax
   140005c2a:	85 c0                	test   %eax,%eax
   140005c2c:	0f 89 e5 fd ff ff    	jns    140005a17 <__pformat_emit_float+0x187>
   140005c32:	f7 d8                	neg    %eax
   140005c34:	41 89 41 0c          	mov    %eax,0xc(%r9)
   140005c38:	41 f6 41 09 08       	testb  $0x8,0x9(%r9)
   140005c3d:	0f 85 8e fc ff ff    	jne    1400058d1 <__pformat_emit_float+0x41>
   140005c43:	e9 a4 fc ff ff       	jmp    1400058ec <__pformat_emit_float+0x5c>
   140005c48:	89 d0                	mov    %edx,%eax
   140005c4a:	e9 99 fc ff ff       	jmp    1400058e8 <__pformat_emit_float+0x58>
   140005c4f:	f6 43 09 08          	testb  $0x8,0x9(%rbx)
   140005c53:	0f 85 4f fe ff ff    	jne    140005aa8 <__pformat_emit_float+0x218>
   140005c59:	85 f6                	test   %esi,%esi
   140005c5b:	0f 85 56 fe ff ff    	jne    140005ab7 <__pformat_emit_float+0x227>
   140005c61:	e9 83 fd ff ff       	jmp    1400059e9 <__pformat_emit_float+0x159>
   140005c66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140005c6d:	00 00 00 

0000000140005c70 <__pformat_emit_efloat>:
   140005c70:	57                   	push   %rdi
   140005c71:	56                   	push   %rsi
   140005c72:	53                   	push   %rbx
   140005c73:	48 83 ec 20          	sub    $0x20,%rsp
   140005c77:	41 ba 01 00 00 00    	mov    $0x1,%r10d
   140005c7d:	41 83 e8 01          	sub    $0x1,%r8d
   140005c81:	41 89 cb             	mov    %ecx,%r11d
   140005c84:	4c 89 ce             	mov    %r9,%rsi
   140005c87:	49 63 f8             	movslq %r8d,%rdi
   140005c8a:	41 c1 f8 1f          	sar    $0x1f,%r8d
   140005c8e:	48 69 cf 67 66 66 66 	imul   $0x66666667,%rdi,%rcx
   140005c95:	48 c1 f9 22          	sar    $0x22,%rcx
   140005c99:	44 29 c1             	sub    %r8d,%ecx
   140005c9c:	74 1d                	je     140005cbb <__pformat_emit_efloat+0x4b>
   140005c9e:	66 90                	xchg   %ax,%ax
   140005ca0:	48 63 c1             	movslq %ecx,%rax
   140005ca3:	c1 f9 1f             	sar    $0x1f,%ecx
   140005ca6:	41 83 c2 01          	add    $0x1,%r10d
   140005caa:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
   140005cb1:	48 c1 f8 22          	sar    $0x22,%rax
   140005cb5:	29 c8                	sub    %ecx,%eax
   140005cb7:	89 c1                	mov    %eax,%ecx
   140005cb9:	75 e5                	jne    140005ca0 <__pformat_emit_efloat+0x30>
   140005cbb:	8b 46 2c             	mov    0x2c(%rsi),%eax
   140005cbe:	83 f8 ff             	cmp    $0xffffffff,%eax
   140005cc1:	75 0c                	jne    140005ccf <__pformat_emit_efloat+0x5f>
   140005cc3:	c7 46 2c 02 00 00 00 	movl   $0x2,0x2c(%rsi)
   140005cca:	b8 02 00 00 00       	mov    $0x2,%eax
   140005ccf:	41 39 c2             	cmp    %eax,%r10d
   140005cd2:	44 8b 46 0c          	mov    0xc(%rsi),%r8d
   140005cd6:	49 89 f1             	mov    %rsi,%r9
   140005cd9:	41 0f 4d c2          	cmovge %r10d,%eax
   140005cdd:	8d 48 02             	lea    0x2(%rax),%ecx
   140005ce0:	89 c3                	mov    %eax,%ebx
   140005ce2:	44 89 c0             	mov    %r8d,%eax
   140005ce5:	29 c8                	sub    %ecx,%eax
   140005ce7:	41 39 c8             	cmp    %ecx,%r8d
   140005cea:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
   140005cef:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   140005cf5:	0f 4e c1             	cmovle %ecx,%eax
   140005cf8:	44 89 d9             	mov    %r11d,%ecx
   140005cfb:	89 46 0c             	mov    %eax,0xc(%rsi)
   140005cfe:	e8 8d fb ff ff       	call   140005890 <__pformat_emit_float>
   140005d03:	8b 4e 08             	mov    0x8(%rsi),%ecx
   140005d06:	8b 46 2c             	mov    0x2c(%rsi),%eax
   140005d09:	48 89 f2             	mov    %rsi,%rdx
   140005d0c:	89 46 10             	mov    %eax,0x10(%rsi)
   140005d0f:	89 c8                	mov    %ecx,%eax
   140005d11:	83 e1 20             	and    $0x20,%ecx
   140005d14:	0d c0 01 00 00       	or     $0x1c0,%eax
   140005d19:	83 c9 45             	or     $0x45,%ecx
   140005d1c:	89 46 08             	mov    %eax,0x8(%rsi)
   140005d1f:	e8 0c ed ff ff       	call   140004a30 <__pformat_putc>
   140005d24:	44 8d 53 01          	lea    0x1(%rbx),%r10d
   140005d28:	44 01 56 0c          	add    %r10d,0xc(%rsi)
   140005d2c:	48 89 f2             	mov    %rsi,%rdx
   140005d2f:	48 89 f9             	mov    %rdi,%rcx
   140005d32:	48 83 c4 20          	add    $0x20,%rsp
   140005d36:	5b                   	pop    %rbx
   140005d37:	5e                   	pop    %rsi
   140005d38:	5f                   	pop    %rdi
   140005d39:	e9 52 f6 ff ff       	jmp    140005390 <__pformat_int.isra.0>
   140005d3e:	66 90                	xchg   %ax,%ax

0000000140005d40 <__pformat_efloat>:
   140005d40:	56                   	push   %rsi
   140005d41:	53                   	push   %rbx
   140005d42:	48 83 ec 58          	sub    $0x58,%rsp
   140005d46:	44 8b 42 10          	mov    0x10(%rdx),%r8d
   140005d4a:	db 29                	fldt   (%rcx)
   140005d4c:	48 89 d3             	mov    %rdx,%rbx
   140005d4f:	45 85 c0             	test   %r8d,%r8d
   140005d52:	78 5c                	js     140005db0 <__pformat_efloat+0x70>
   140005d54:	41 83 c0 01          	add    $0x1,%r8d
   140005d58:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
   140005d5d:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
   140005d62:	b9 02 00 00 00       	mov    $0x2,%ecx
   140005d67:	db 7c 24 30          	fstpt  0x30(%rsp)
   140005d6b:	4c 8d 4c 24 4c       	lea    0x4c(%rsp),%r9
   140005d70:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140005d75:	e8 c6 eb ff ff       	call   140004940 <__pformat_cvt>
   140005d7a:	44 8b 44 24 4c       	mov    0x4c(%rsp),%r8d
   140005d7f:	48 89 c6             	mov    %rax,%rsi
   140005d82:	41 81 f8 00 80 ff ff 	cmp    $0xffff8000,%r8d
   140005d89:	74 35                	je     140005dc0 <__pformat_efloat+0x80>
   140005d8b:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140005d8f:	49 89 d9             	mov    %rbx,%r9
   140005d92:	48 89 c2             	mov    %rax,%rdx
   140005d95:	e8 d6 fe ff ff       	call   140005c70 <__pformat_emit_efloat>
   140005d9a:	48 89 f1             	mov    %rsi,%rcx
   140005d9d:	e8 ee 12 00 00       	call   140007090 <__freedtoa>
   140005da2:	90                   	nop
   140005da3:	48 83 c4 58          	add    $0x58,%rsp
   140005da7:	5b                   	pop    %rbx
   140005da8:	5e                   	pop    %rsi
   140005da9:	c3                   	ret
   140005daa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005db0:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
   140005db7:	41 b8 07 00 00 00    	mov    $0x7,%r8d
   140005dbd:	eb 99                	jmp    140005d58 <__pformat_efloat+0x18>
   140005dbf:	90                   	nop
   140005dc0:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140005dc4:	49 89 d8             	mov    %rbx,%r8
   140005dc7:	48 89 c2             	mov    %rax,%rdx
   140005dca:	e8 f1 ef ff ff       	call   140004dc0 <__pformat_emit_inf_or_nan>
   140005dcf:	48 89 f1             	mov    %rsi,%rcx
   140005dd2:	e8 b9 12 00 00       	call   140007090 <__freedtoa>
   140005dd7:	90                   	nop
   140005dd8:	48 83 c4 58          	add    $0x58,%rsp
   140005ddc:	5b                   	pop    %rbx
   140005ddd:	5e                   	pop    %rsi
   140005dde:	c3                   	ret
   140005ddf:	90                   	nop

0000000140005de0 <__pformat_float>:
   140005de0:	56                   	push   %rsi
   140005de1:	53                   	push   %rbx
   140005de2:	48 83 ec 58          	sub    $0x58,%rsp
   140005de6:	44 8b 42 10          	mov    0x10(%rdx),%r8d
   140005dea:	db 29                	fldt   (%rcx)
   140005dec:	48 89 d3             	mov    %rdx,%rbx
   140005def:	45 85 c0             	test   %r8d,%r8d
   140005df2:	79 0d                	jns    140005e01 <__pformat_float+0x21>
   140005df4:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
   140005dfb:	41 b8 06 00 00 00    	mov    $0x6,%r8d
   140005e01:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
   140005e06:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
   140005e0b:	b9 03 00 00 00       	mov    $0x3,%ecx
   140005e10:	db 7c 24 30          	fstpt  0x30(%rsp)
   140005e14:	4c 8d 4c 24 4c       	lea    0x4c(%rsp),%r9
   140005e19:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140005e1e:	e8 1d eb ff ff       	call   140004940 <__pformat_cvt>
   140005e23:	44 8b 44 24 4c       	mov    0x4c(%rsp),%r8d
   140005e28:	48 89 c6             	mov    %rax,%rsi
   140005e2b:	41 81 f8 00 80 ff ff 	cmp    $0xffff8000,%r8d
   140005e32:	74 6c                	je     140005ea0 <__pformat_float+0xc0>
   140005e34:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140005e38:	48 89 c2             	mov    %rax,%rdx
   140005e3b:	49 89 d9             	mov    %rbx,%r9
   140005e3e:	e8 4d fa ff ff       	call   140005890 <__pformat_emit_float>
   140005e43:	8b 43 0c             	mov    0xc(%rbx),%eax
   140005e46:	eb 1c                	jmp    140005e64 <__pformat_float+0x84>
   140005e48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140005e4f:	00 
   140005e50:	48 63 43 24          	movslq 0x24(%rbx),%rax
   140005e54:	c6 04 02 20          	movb   $0x20,(%rdx,%rax,1)
   140005e58:	8b 53 24             	mov    0x24(%rbx),%edx
   140005e5b:	8b 43 0c             	mov    0xc(%rbx),%eax
   140005e5e:	83 c2 01             	add    $0x1,%edx
   140005e61:	89 53 24             	mov    %edx,0x24(%rbx)
   140005e64:	89 c2                	mov    %eax,%edx
   140005e66:	83 e8 01             	sub    $0x1,%eax
   140005e69:	89 43 0c             	mov    %eax,0xc(%rbx)
   140005e6c:	85 d2                	test   %edx,%edx
   140005e6e:	7e 3f                	jle    140005eaf <__pformat_float+0xcf>
   140005e70:	8b 4b 08             	mov    0x8(%rbx),%ecx
   140005e73:	f6 c5 40             	test   $0x40,%ch
   140005e76:	75 08                	jne    140005e80 <__pformat_float+0xa0>
   140005e78:	8b 53 24             	mov    0x24(%rbx),%edx
   140005e7b:	39 53 28             	cmp    %edx,0x28(%rbx)
   140005e7e:	7e de                	jle    140005e5e <__pformat_float+0x7e>
   140005e80:	48 8b 13             	mov    (%rbx),%rdx
   140005e83:	80 e5 20             	and    $0x20,%ch
   140005e86:	74 c8                	je     140005e50 <__pformat_float+0x70>
   140005e88:	b9 20 00 00 00       	mov    $0x20,%ecx
   140005e8d:	e8 be 43 00 00       	call   14000a250 <fputc>
   140005e92:	8b 53 24             	mov    0x24(%rbx),%edx
   140005e95:	8b 43 0c             	mov    0xc(%rbx),%eax
   140005e98:	eb c4                	jmp    140005e5e <__pformat_float+0x7e>
   140005e9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005ea0:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140005ea4:	49 89 d8             	mov    %rbx,%r8
   140005ea7:	48 89 c2             	mov    %rax,%rdx
   140005eaa:	e8 11 ef ff ff       	call   140004dc0 <__pformat_emit_inf_or_nan>
   140005eaf:	48 89 f1             	mov    %rsi,%rcx
   140005eb2:	e8 d9 11 00 00       	call   140007090 <__freedtoa>
   140005eb7:	90                   	nop
   140005eb8:	48 83 c4 58          	add    $0x58,%rsp
   140005ebc:	5b                   	pop    %rbx
   140005ebd:	5e                   	pop    %rsi
   140005ebe:	c3                   	ret
   140005ebf:	90                   	nop

0000000140005ec0 <__pformat_gfloat>:
   140005ec0:	57                   	push   %rdi
   140005ec1:	56                   	push   %rsi
   140005ec2:	53                   	push   %rbx
   140005ec3:	48 83 ec 50          	sub    $0x50,%rsp
   140005ec7:	44 8b 42 10          	mov    0x10(%rdx),%r8d
   140005ecb:	db 29                	fldt   (%rcx)
   140005ecd:	48 89 d3             	mov    %rdx,%rbx
   140005ed0:	45 85 c0             	test   %r8d,%r8d
   140005ed3:	0f 88 ff 00 00 00    	js     140005fd8 <__pformat_gfloat+0x118>
   140005ed9:	0f 84 e1 00 00 00    	je     140005fc0 <__pformat_gfloat+0x100>
   140005edf:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
   140005ee4:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
   140005ee9:	b9 02 00 00 00       	mov    $0x2,%ecx
   140005eee:	db 7c 24 30          	fstpt  0x30(%rsp)
   140005ef2:	4c 8d 4c 24 4c       	lea    0x4c(%rsp),%r9
   140005ef7:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140005efc:	e8 3f ea ff ff       	call   140004940 <__pformat_cvt>
   140005f01:	8b 7c 24 4c          	mov    0x4c(%rsp),%edi
   140005f05:	48 89 c6             	mov    %rax,%rsi
   140005f08:	81 ff 00 80 ff ff    	cmp    $0xffff8000,%edi
   140005f0e:	0f 84 dc 00 00 00    	je     140005ff0 <__pformat_gfloat+0x130>
   140005f14:	8b 43 08             	mov    0x8(%rbx),%eax
   140005f17:	25 00 08 00 00       	and    $0x800,%eax
   140005f1c:	83 ff fd             	cmp    $0xfffffffd,%edi
   140005f1f:	7c 5f                	jl     140005f80 <__pformat_gfloat+0xc0>
   140005f21:	8b 53 10             	mov    0x10(%rbx),%edx
   140005f24:	39 d7                	cmp    %edx,%edi
   140005f26:	7f 58                	jg     140005f80 <__pformat_gfloat+0xc0>
   140005f28:	85 c0                	test   %eax,%eax
   140005f2a:	0f 84 e0 00 00 00    	je     140006010 <__pformat_gfloat+0x150>
   140005f30:	29 fa                	sub    %edi,%edx
   140005f32:	89 53 10             	mov    %edx,0x10(%rbx)
   140005f35:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140005f39:	49 89 d9             	mov    %rbx,%r9
   140005f3c:	41 89 f8             	mov    %edi,%r8d
   140005f3f:	48 89 f2             	mov    %rsi,%rdx
   140005f42:	e8 49 f9 ff ff       	call   140005890 <__pformat_emit_float>
   140005f47:	eb 14                	jmp    140005f5d <__pformat_gfloat+0x9d>
   140005f49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005f50:	48 89 da             	mov    %rbx,%rdx
   140005f53:	b9 20 00 00 00       	mov    $0x20,%ecx
   140005f58:	e8 d3 ea ff ff       	call   140004a30 <__pformat_putc>
   140005f5d:	8b 43 0c             	mov    0xc(%rbx),%eax
   140005f60:	8d 50 ff             	lea    -0x1(%rax),%edx
   140005f63:	89 53 0c             	mov    %edx,0xc(%rbx)
   140005f66:	85 c0                	test   %eax,%eax
   140005f68:	7f e6                	jg     140005f50 <__pformat_gfloat+0x90>
   140005f6a:	48 89 f1             	mov    %rsi,%rcx
   140005f6d:	e8 1e 11 00 00       	call   140007090 <__freedtoa>
   140005f72:	90                   	nop
   140005f73:	48 83 c4 50          	add    $0x50,%rsp
   140005f77:	5b                   	pop    %rbx
   140005f78:	5e                   	pop    %rsi
   140005f79:	5f                   	pop    %rdi
   140005f7a:	c3                   	ret
   140005f7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005f80:	85 c0                	test   %eax,%eax
   140005f82:	75 34                	jne    140005fb8 <__pformat_gfloat+0xf8>
   140005f84:	48 89 f1             	mov    %rsi,%rcx
   140005f87:	e8 14 43 00 00       	call   14000a2a0 <strlen>
   140005f8c:	83 e8 01             	sub    $0x1,%eax
   140005f8f:	89 43 10             	mov    %eax,0x10(%rbx)
   140005f92:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140005f96:	49 89 d9             	mov    %rbx,%r9
   140005f99:	41 89 f8             	mov    %edi,%r8d
   140005f9c:	48 89 f2             	mov    %rsi,%rdx
   140005f9f:	e8 cc fc ff ff       	call   140005c70 <__pformat_emit_efloat>
   140005fa4:	48 89 f1             	mov    %rsi,%rcx
   140005fa7:	e8 e4 10 00 00       	call   140007090 <__freedtoa>
   140005fac:	90                   	nop
   140005fad:	48 83 c4 50          	add    $0x50,%rsp
   140005fb1:	5b                   	pop    %rbx
   140005fb2:	5e                   	pop    %rsi
   140005fb3:	5f                   	pop    %rdi
   140005fb4:	c3                   	ret
   140005fb5:	0f 1f 00             	nopl   (%rax)
   140005fb8:	8b 43 10             	mov    0x10(%rbx),%eax
   140005fbb:	83 e8 01             	sub    $0x1,%eax
   140005fbe:	eb cf                	jmp    140005f8f <__pformat_gfloat+0xcf>
   140005fc0:	c7 42 10 01 00 00 00 	movl   $0x1,0x10(%rdx)
   140005fc7:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   140005fcd:	e9 0d ff ff ff       	jmp    140005edf <__pformat_gfloat+0x1f>
   140005fd2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005fd8:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
   140005fdf:	41 b8 06 00 00 00    	mov    $0x6,%r8d
   140005fe5:	e9 f5 fe ff ff       	jmp    140005edf <__pformat_gfloat+0x1f>
   140005fea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005ff0:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140005ff4:	49 89 d8             	mov    %rbx,%r8
   140005ff7:	48 89 c2             	mov    %rax,%rdx
   140005ffa:	e8 c1 ed ff ff       	call   140004dc0 <__pformat_emit_inf_or_nan>
   140005fff:	48 89 f1             	mov    %rsi,%rcx
   140006002:	e8 89 10 00 00       	call   140007090 <__freedtoa>
   140006007:	90                   	nop
   140006008:	48 83 c4 50          	add    $0x50,%rsp
   14000600c:	5b                   	pop    %rbx
   14000600d:	5e                   	pop    %rsi
   14000600e:	5f                   	pop    %rdi
   14000600f:	c3                   	ret
   140006010:	48 89 f1             	mov    %rsi,%rcx
   140006013:	e8 88 42 00 00       	call   14000a2a0 <strlen>
   140006018:	29 f8                	sub    %edi,%eax
   14000601a:	89 43 10             	mov    %eax,0x10(%rbx)
   14000601d:	0f 89 12 ff ff ff    	jns    140005f35 <__pformat_gfloat+0x75>
   140006023:	8b 53 0c             	mov    0xc(%rbx),%edx
   140006026:	85 d2                	test   %edx,%edx
   140006028:	0f 8e 07 ff ff ff    	jle    140005f35 <__pformat_gfloat+0x75>
   14000602e:	01 d0                	add    %edx,%eax
   140006030:	89 43 0c             	mov    %eax,0xc(%rbx)
   140006033:	e9 fd fe ff ff       	jmp    140005f35 <__pformat_gfloat+0x75>
   140006038:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000603f:	00 

0000000140006040 <__pformat_emit_xfloat.isra.0>:
   140006040:	41 55                	push   %r13
   140006042:	41 54                	push   %r12
   140006044:	55                   	push   %rbp
   140006045:	57                   	push   %rdi
   140006046:	56                   	push   %rsi
   140006047:	53                   	push   %rbx
   140006048:	48 83 ec 58          	sub    $0x58,%rsp
   14000604c:	45 8b 50 10          	mov    0x10(%r8),%r10d
   140006050:	49 89 c9             	mov    %rcx,%r9
   140006053:	4c 89 c3             	mov    %r8,%rbx
   140006056:	66 85 d2             	test   %dx,%dx
   140006059:	75 09                	jne    140006064 <__pformat_emit_xfloat.isra.0+0x24>
   14000605b:	48 85 c9             	test   %rcx,%rcx
   14000605e:	0f 84 ec 00 00 00    	je     140006150 <__pformat_emit_xfloat.isra.0+0x110>
   140006064:	44 8d 42 fd          	lea    -0x3(%rdx),%r8d
   140006068:	41 83 fa 0e          	cmp    $0xe,%r10d
   14000606c:	0f 86 96 00 00 00    	jbe    140006108 <__pformat_emit_xfloat.isra.0+0xc8>
   140006072:	49 0f bf e8          	movswq %r8w,%rbp
   140006076:	ba 10 00 00 00       	mov    $0x10,%edx
   14000607b:	4d 85 c9             	test   %r9,%r9
   14000607e:	0f 84 0c 04 00 00    	je     140006490 <__pformat_emit_xfloat.isra.0+0x450>
   140006084:	8b 4b 08             	mov    0x8(%rbx),%ecx
   140006087:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
   14000608c:	48 89 fe             	mov    %rdi,%rsi
   14000608f:	41 89 cb             	mov    %ecx,%r11d
   140006092:	41 89 cc             	mov    %ecx,%r12d
   140006095:	41 83 e3 20          	and    $0x20,%r11d
   140006099:	41 81 e4 00 08 00 00 	and    $0x800,%r12d
   1400060a0:	eb 2d                	jmp    1400060cf <__pformat_emit_xfloat.isra.0+0x8f>
   1400060a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400060a8:	4c 39 d7             	cmp    %r10,%rdi
   1400060ab:	72 0b                	jb     1400060b8 <__pformat_emit_xfloat.isra.0+0x78>
   1400060ad:	8b 73 10             	mov    0x10(%rbx),%esi
   1400060b0:	85 f6                	test   %esi,%esi
   1400060b2:	0f 88 78 03 00 00    	js     140006430 <__pformat_emit_xfloat.isra.0+0x3f0>
   1400060b8:	83 c0 30             	add    $0x30,%eax
   1400060bb:	41 88 02             	mov    %al,(%r10)
   1400060be:	49 8d 72 01          	lea    0x1(%r10),%rsi
   1400060c2:	49 c1 e9 04          	shr    $0x4,%r9
   1400060c6:	83 ea 01             	sub    $0x1,%edx
   1400060c9:	0f 84 f1 01 00 00    	je     1400062c0 <__pformat_emit_xfloat.isra.0+0x280>
   1400060cf:	44 89 c8             	mov    %r9d,%eax
   1400060d2:	83 e0 0f             	and    $0xf,%eax
   1400060d5:	83 fa 01             	cmp    $0x1,%edx
   1400060d8:	0f 84 a2 01 00 00    	je     140006280 <__pformat_emit_xfloat.isra.0+0x240>
   1400060de:	44 8b 53 10          	mov    0x10(%rbx),%r10d
   1400060e2:	45 85 d2             	test   %r10d,%r10d
   1400060e5:	7e 08                	jle    1400060ef <__pformat_emit_xfloat.isra.0+0xaf>
   1400060e7:	41 83 ea 01          	sub    $0x1,%r10d
   1400060eb:	44 89 53 10          	mov    %r10d,0x10(%rbx)
   1400060ef:	49 89 f2             	mov    %rsi,%r10
   1400060f2:	85 c0                	test   %eax,%eax
   1400060f4:	74 b2                	je     1400060a8 <__pformat_emit_xfloat.isra.0+0x68>
   1400060f6:	83 f8 09             	cmp    $0x9,%eax
   1400060f9:	76 bd                	jbe    1400060b8 <__pformat_emit_xfloat.isra.0+0x78>
   1400060fb:	83 c0 37             	add    $0x37,%eax
   1400060fe:	44 09 d8             	or     %r11d,%eax
   140006101:	eb b8                	jmp    1400060bb <__pformat_emit_xfloat.isra.0+0x7b>
   140006103:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006108:	b9 0e 00 00 00       	mov    $0xe,%ecx
   14000610d:	b8 04 00 00 00       	mov    $0x4,%eax
   140006112:	49 d1 e9             	shr    %r9
   140006115:	44 29 d1             	sub    %r10d,%ecx
   140006118:	c1 e1 02             	shl    $0x2,%ecx
   14000611b:	48 d3 e0             	shl    %cl,%rax
   14000611e:	4c 01 c8             	add    %r9,%rax
   140006121:	0f 89 59 03 00 00    	jns    140006480 <__pformat_emit_xfloat.isra.0+0x440>
   140006127:	b9 0f 00 00 00       	mov    $0xf,%ecx
   14000612c:	48 c1 e8 03          	shr    $0x3,%rax
   140006130:	44 8d 42 01          	lea    0x1(%rdx),%r8d
   140006134:	44 29 d1             	sub    %r10d,%ecx
   140006137:	49 0f bf e8          	movswq %r8w,%rbp
   14000613b:	c1 e1 02             	shl    $0x2,%ecx
   14000613e:	48 d3 e8             	shr    %cl,%rax
   140006141:	49 89 c1             	mov    %rax,%r9
   140006144:	41 8d 52 01          	lea    0x1(%r10),%edx
   140006148:	e9 37 ff ff ff       	jmp    140006084 <__pformat_emit_xfloat.isra.0+0x44>
   14000614d:	0f 1f 00             	nopl   (%rax)
   140006150:	41 83 fa 0e          	cmp    $0xe,%r10d
   140006154:	0f 87 0e 03 00 00    	ja     140006468 <__pformat_emit_xfloat.isra.0+0x428>
   14000615a:	b9 0e 00 00 00       	mov    $0xe,%ecx
   14000615f:	b8 04 00 00 00       	mov    $0x4,%eax
   140006164:	31 ed                	xor    %ebp,%ebp
   140006166:	45 31 c0             	xor    %r8d,%r8d
   140006169:	44 29 d1             	sub    %r10d,%ecx
   14000616c:	c1 e1 02             	shl    $0x2,%ecx
   14000616f:	48 d3 e0             	shl    %cl,%rax
   140006172:	b9 0f 00 00 00       	mov    $0xf,%ecx
   140006177:	48 01 c0             	add    %rax,%rax
   14000617a:	44 29 d1             	sub    %r10d,%ecx
   14000617d:	c1 e1 02             	shl    $0x2,%ecx
   140006180:	48 d3 e8             	shr    %cl,%rax
   140006183:	49 89 c1             	mov    %rax,%r9
   140006186:	48 85 c0             	test   %rax,%rax
   140006189:	75 b9                	jne    140006144 <__pformat_emit_xfloat.isra.0+0x104>
   14000618b:	45 85 d2             	test   %r10d,%r10d
   14000618e:	75 b4                	jne    140006144 <__pformat_emit_xfloat.isra.0+0x104>
   140006190:	8b 4b 08             	mov    0x8(%rbx),%ecx
   140006193:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
   140006198:	48 89 f8             	mov    %rdi,%rax
   14000619b:	f6 c5 08             	test   $0x8,%ch
   14000619e:	74 0a                	je     1400061aa <__pformat_emit_xfloat.isra.0+0x16a>
   1400061a0:	c6 44 24 30 2e       	movb   $0x2e,0x30(%rsp)
   1400061a5:	48 8d 44 24 31       	lea    0x31(%rsp),%rax
   1400061aa:	44 8b 53 0c          	mov    0xc(%rbx),%r10d
   1400061ae:	c6 00 30             	movb   $0x30,(%rax)
   1400061b1:	48 8d 70 01          	lea    0x1(%rax),%rsi
   1400061b5:	41 bc 02 00 00 00    	mov    $0x2,%r12d
   1400061bb:	45 85 d2             	test   %r10d,%r10d
   1400061be:	0f 8f 18 01 00 00    	jg     1400062dc <__pformat_emit_xfloat.isra.0+0x29c>
   1400061c4:	f6 c1 80             	test   $0x80,%cl
   1400061c7:	0f 85 d3 01 00 00    	jne    1400063a0 <__pformat_emit_xfloat.isra.0+0x360>
   1400061cd:	f6 c5 01             	test   $0x1,%ch
   1400061d0:	0f 85 7a 02 00 00    	jne    140006450 <__pformat_emit_xfloat.isra.0+0x410>
   1400061d6:	83 e1 40             	and    $0x40,%ecx
   1400061d9:	0f 85 c1 02 00 00    	jne    1400064a0 <__pformat_emit_xfloat.isra.0+0x460>
   1400061df:	48 89 da             	mov    %rbx,%rdx
   1400061e2:	b9 30 00 00 00       	mov    $0x30,%ecx
   1400061e7:	e8 44 e8 ff ff       	call   140004a30 <__pformat_putc>
   1400061ec:	8b 4b 08             	mov    0x8(%rbx),%ecx
   1400061ef:	48 89 da             	mov    %rbx,%rdx
   1400061f2:	83 e1 20             	and    $0x20,%ecx
   1400061f5:	83 c9 58             	or     $0x58,%ecx
   1400061f8:	e8 33 e8 ff ff       	call   140004a30 <__pformat_putc>
   1400061fd:	8b 43 0c             	mov    0xc(%rbx),%eax
   140006200:	85 c0                	test   %eax,%eax
   140006202:	7e 26                	jle    14000622a <__pformat_emit_xfloat.isra.0+0x1ea>
   140006204:	f6 43 09 02          	testb  $0x2,0x9(%rbx)
   140006208:	74 20                	je     14000622a <__pformat_emit_xfloat.isra.0+0x1ea>
   14000620a:	83 e8 01             	sub    $0x1,%eax
   14000620d:	89 43 0c             	mov    %eax,0xc(%rbx)
   140006210:	48 89 da             	mov    %rbx,%rdx
   140006213:	b9 30 00 00 00       	mov    $0x30,%ecx
   140006218:	e8 13 e8 ff ff       	call   140004a30 <__pformat_putc>
   14000621d:	8b 43 0c             	mov    0xc(%rbx),%eax
   140006220:	8d 50 ff             	lea    -0x1(%rax),%edx
   140006223:	89 53 0c             	mov    %edx,0xc(%rbx)
   140006226:	85 c0                	test   %eax,%eax
   140006228:	7f e6                	jg     140006210 <__pformat_emit_xfloat.isra.0+0x1d0>
   14000622a:	4c 8d 6c 24 2e       	lea    0x2e(%rsp),%r13
   14000622f:	48 39 f7             	cmp    %rsi,%rdi
   140006232:	72 27                	jb     14000625b <__pformat_emit_xfloat.isra.0+0x21b>
   140006234:	e9 8c 01 00 00       	jmp    1400063c5 <__pformat_emit_xfloat.isra.0+0x385>
   140006239:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006240:	0f b7 43 20          	movzwl 0x20(%rbx),%eax
   140006244:	66 89 44 24 2e       	mov    %ax,0x2e(%rsp)
   140006249:	66 85 c0             	test   %ax,%ax
   14000624c:	0f 85 c6 01 00 00    	jne    140006418 <__pformat_emit_xfloat.isra.0+0x3d8>
   140006252:	48 39 fe             	cmp    %rdi,%rsi
   140006255:	0f 84 6a 01 00 00    	je     1400063c5 <__pformat_emit_xfloat.isra.0+0x385>
   14000625b:	0f be 4e ff          	movsbl -0x1(%rsi),%ecx
   14000625f:	48 83 ee 01          	sub    $0x1,%rsi
   140006263:	83 f9 2e             	cmp    $0x2e,%ecx
   140006266:	0f 84 9c 01 00 00    	je     140006408 <__pformat_emit_xfloat.isra.0+0x3c8>
   14000626c:	83 f9 2c             	cmp    $0x2c,%ecx
   14000626f:	74 cf                	je     140006240 <__pformat_emit_xfloat.isra.0+0x200>
   140006271:	48 89 da             	mov    %rbx,%rdx
   140006274:	e8 b7 e7 ff ff       	call   140004a30 <__pformat_putc>
   140006279:	eb d7                	jmp    140006252 <__pformat_emit_xfloat.isra.0+0x212>
   14000627b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006280:	48 39 f7             	cmp    %rsi,%rdi
   140006283:	72 1b                	jb     1400062a0 <__pformat_emit_xfloat.isra.0+0x260>
   140006285:	45 85 e4             	test   %r12d,%r12d
   140006288:	75 16                	jne    1400062a0 <__pformat_emit_xfloat.isra.0+0x260>
   14000628a:	44 8b 53 10          	mov    0x10(%rbx),%r10d
   14000628e:	45 85 d2             	test   %r10d,%r10d
   140006291:	0f 8e 21 02 00 00    	jle    1400064b8 <__pformat_emit_xfloat.isra.0+0x478>
   140006297:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000629e:	00 00 
   1400062a0:	c6 06 2e             	movb   $0x2e,(%rsi)
   1400062a3:	4c 8d 56 01          	lea    0x1(%rsi),%r10
   1400062a7:	e9 46 fe ff ff       	jmp    1400060f2 <__pformat_emit_xfloat.isra.0+0xb2>
   1400062ac:	45 85 d2             	test   %r10d,%r10d
   1400062af:	75 0f                	jne    1400062c0 <__pformat_emit_xfloat.isra.0+0x280>
   1400062b1:	c6 06 30             	movb   $0x30,(%rsi)
   1400062b4:	48 83 c6 01          	add    $0x1,%rsi
   1400062b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400062bf:	00 
   1400062c0:	48 39 fe             	cmp    %rdi,%rsi
   1400062c3:	0f 84 07 02 00 00    	je     1400064d0 <__pformat_emit_xfloat.isra.0+0x490>
   1400062c9:	44 8b 53 0c          	mov    0xc(%rbx),%r10d
   1400062cd:	41 bc 02 00 00 00    	mov    $0x2,%r12d
   1400062d3:	45 85 d2             	test   %r10d,%r10d
   1400062d6:	0f 8e e8 fe ff ff    	jle    1400061c4 <__pformat_emit_xfloat.isra.0+0x184>
   1400062dc:	8b 53 10             	mov    0x10(%rbx),%edx
   1400062df:	49 89 f1             	mov    %rsi,%r9
   1400062e2:	41 0f bf c0          	movswl %r8w,%eax
   1400062e6:	49 29 f9             	sub    %rdi,%r9
   1400062e9:	46 8d 1c 0a          	lea    (%rdx,%r9,1),%r11d
   1400062ed:	85 d2                	test   %edx,%edx
   1400062ef:	89 ca                	mov    %ecx,%edx
   1400062f1:	45 0f 4f cb          	cmovg  %r11d,%r9d
   1400062f5:	81 e2 c0 01 00 00    	and    $0x1c0,%edx
   1400062fb:	83 fa 01             	cmp    $0x1,%edx
   1400062fe:	49 0f bf d0          	movswq %r8w,%rdx
   140006302:	41 83 d9 fa          	sbb    $0xfffffffa,%r9d
   140006306:	48 69 d2 67 66 66 66 	imul   $0x66666667,%rdx,%rdx
   14000630d:	c1 f8 1f             	sar    $0x1f,%eax
   140006310:	45 89 cb             	mov    %r9d,%r11d
   140006313:	48 c1 fa 22          	sar    $0x22,%rdx
   140006317:	29 c2                	sub    %eax,%edx
   140006319:	74 2e                	je     140006349 <__pformat_emit_xfloat.isra.0+0x309>
   14000631b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006320:	48 63 c2             	movslq %edx,%rax
   140006323:	c1 fa 1f             	sar    $0x1f,%edx
   140006326:	41 83 c3 01          	add    $0x1,%r11d
   14000632a:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
   140006331:	48 c1 f8 22          	sar    $0x22,%rax
   140006335:	29 d0                	sub    %edx,%eax
   140006337:	89 c2                	mov    %eax,%edx
   140006339:	75 e5                	jne    140006320 <__pformat_emit_xfloat.isra.0+0x2e0>
   14000633b:	45 89 dc             	mov    %r11d,%r12d
   14000633e:	45 29 cc             	sub    %r9d,%r12d
   140006341:	41 83 c4 02          	add    $0x2,%r12d
   140006345:	45 0f bf e4          	movswl %r12w,%r12d
   140006349:	45 39 da             	cmp    %r11d,%r10d
   14000634c:	0f 8e ee 00 00 00    	jle    140006440 <__pformat_emit_xfloat.isra.0+0x400>
   140006352:	45 29 da             	sub    %r11d,%r10d
   140006355:	f6 c5 06             	test   $0x6,%ch
   140006358:	0f 85 e8 00 00 00    	jne    140006446 <__pformat_emit_xfloat.isra.0+0x406>
   14000635e:	41 83 ea 01          	sub    $0x1,%r10d
   140006362:	44 89 53 0c          	mov    %r10d,0xc(%rbx)
   140006366:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000636d:	00 00 00 
   140006370:	48 89 da             	mov    %rbx,%rdx
   140006373:	b9 20 00 00 00       	mov    $0x20,%ecx
   140006378:	e8 b3 e6 ff ff       	call   140004a30 <__pformat_putc>
   14000637d:	8b 43 0c             	mov    0xc(%rbx),%eax
   140006380:	8d 50 ff             	lea    -0x1(%rax),%edx
   140006383:	89 53 0c             	mov    %edx,0xc(%rbx)
   140006386:	85 c0                	test   %eax,%eax
   140006388:	7f e6                	jg     140006370 <__pformat_emit_xfloat.isra.0+0x330>
   14000638a:	8b 4b 08             	mov    0x8(%rbx),%ecx
   14000638d:	f6 c1 80             	test   $0x80,%cl
   140006390:	0f 84 37 fe ff ff    	je     1400061cd <__pformat_emit_xfloat.isra.0+0x18d>
   140006396:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000639d:	00 00 00 
   1400063a0:	48 89 da             	mov    %rbx,%rdx
   1400063a3:	b9 2d 00 00 00       	mov    $0x2d,%ecx
   1400063a8:	e8 83 e6 ff ff       	call   140004a30 <__pformat_putc>
   1400063ad:	e9 2d fe ff ff       	jmp    1400061df <__pformat_emit_xfloat.isra.0+0x19f>
   1400063b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400063b8:	48 89 da             	mov    %rbx,%rdx
   1400063bb:	b9 30 00 00 00       	mov    $0x30,%ecx
   1400063c0:	e8 6b e6 ff ff       	call   140004a30 <__pformat_putc>
   1400063c5:	8b 43 10             	mov    0x10(%rbx),%eax
   1400063c8:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400063cb:	89 53 10             	mov    %edx,0x10(%rbx)
   1400063ce:	85 c0                	test   %eax,%eax
   1400063d0:	7f e6                	jg     1400063b8 <__pformat_emit_xfloat.isra.0+0x378>
   1400063d2:	8b 4b 08             	mov    0x8(%rbx),%ecx
   1400063d5:	48 89 da             	mov    %rbx,%rdx
   1400063d8:	83 e1 20             	and    $0x20,%ecx
   1400063db:	83 c9 50             	or     $0x50,%ecx
   1400063de:	e8 4d e6 ff ff       	call   140004a30 <__pformat_putc>
   1400063e3:	44 01 63 0c          	add    %r12d,0xc(%rbx)
   1400063e7:	48 89 da             	mov    %rbx,%rdx
   1400063ea:	48 89 e9             	mov    %rbp,%rcx
   1400063ed:	81 4b 08 c0 01 00 00 	orl    $0x1c0,0x8(%rbx)
   1400063f4:	48 83 c4 58          	add    $0x58,%rsp
   1400063f8:	5b                   	pop    %rbx
   1400063f9:	5e                   	pop    %rsi
   1400063fa:	5f                   	pop    %rdi
   1400063fb:	5d                   	pop    %rbp
   1400063fc:	41 5c                	pop    %r12
   1400063fe:	41 5d                	pop    %r13
   140006400:	e9 8b ef ff ff       	jmp    140005390 <__pformat_int.isra.0>
   140006405:	0f 1f 00             	nopl   (%rax)
   140006408:	48 89 d9             	mov    %rbx,%rcx
   14000640b:	e8 30 f3 ff ff       	call   140005740 <__pformat_emit_radix_point>
   140006410:	e9 3d fe ff ff       	jmp    140006252 <__pformat_emit_xfloat.isra.0+0x212>
   140006415:	0f 1f 00             	nopl   (%rax)
   140006418:	49 89 d8             	mov    %rbx,%r8
   14000641b:	ba 01 00 00 00       	mov    $0x1,%edx
   140006420:	4c 89 e9             	mov    %r13,%rcx
   140006423:	e8 68 e6 ff ff       	call   140004a90 <__pformat_wputchars>
   140006428:	e9 25 fe ff ff       	jmp    140006252 <__pformat_emit_xfloat.isra.0+0x212>
   14000642d:	0f 1f 00             	nopl   (%rax)
   140006430:	4c 89 d6             	mov    %r10,%rsi
   140006433:	e9 8a fc ff ff       	jmp    1400060c2 <__pformat_emit_xfloat.isra.0+0x82>
   140006438:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000643f:	00 
   140006440:	41 ba ff ff ff ff    	mov    $0xffffffff,%r10d
   140006446:	44 89 53 0c          	mov    %r10d,0xc(%rbx)
   14000644a:	e9 75 fd ff ff       	jmp    1400061c4 <__pformat_emit_xfloat.isra.0+0x184>
   14000644f:	90                   	nop
   140006450:	48 89 da             	mov    %rbx,%rdx
   140006453:	b9 2b 00 00 00       	mov    $0x2b,%ecx
   140006458:	e8 d3 e5 ff ff       	call   140004a30 <__pformat_putc>
   14000645d:	e9 7d fd ff ff       	jmp    1400061df <__pformat_emit_xfloat.isra.0+0x19f>
   140006462:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140006468:	45 85 d2             	test   %r10d,%r10d
   14000646b:	7e 73                	jle    1400064e0 <__pformat_emit_xfloat.isra.0+0x4a0>
   14000646d:	31 ed                	xor    %ebp,%ebp
   14000646f:	45 31 c0             	xor    %r8d,%r8d
   140006472:	45 31 c9             	xor    %r9d,%r9d
   140006475:	ba 10 00 00 00       	mov    $0x10,%edx
   14000647a:	e9 05 fc ff ff       	jmp    140006084 <__pformat_emit_xfloat.isra.0+0x44>
   14000647f:	90                   	nop
   140006480:	49 0f bf e8          	movswq %r8w,%rbp
   140006484:	e9 e9 fc ff ff       	jmp    140006172 <__pformat_emit_xfloat.isra.0+0x132>
   140006489:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006490:	45 85 d2             	test   %r10d,%r10d
   140006493:	0f 8f eb fb ff ff    	jg     140006084 <__pformat_emit_xfloat.isra.0+0x44>
   140006499:	e9 f2 fc ff ff       	jmp    140006190 <__pformat_emit_xfloat.isra.0+0x150>
   14000649e:	66 90                	xchg   %ax,%ax
   1400064a0:	48 89 da             	mov    %rbx,%rdx
   1400064a3:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400064a8:	e8 83 e5 ff ff       	call   140004a30 <__pformat_putc>
   1400064ad:	e9 2d fd ff ff       	jmp    1400061df <__pformat_emit_xfloat.isra.0+0x19f>
   1400064b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400064b8:	85 c0                	test   %eax,%eax
   1400064ba:	0f 84 ec fd ff ff    	je     1400062ac <__pformat_emit_xfloat.isra.0+0x26c>
   1400064c0:	49 89 f2             	mov    %rsi,%r10
   1400064c3:	e9 2e fc ff ff       	jmp    1400060f6 <__pformat_emit_xfloat.isra.0+0xb6>
   1400064c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400064cf:	00 
   1400064d0:	8b 43 10             	mov    0x10(%rbx),%eax
   1400064d3:	85 c0                	test   %eax,%eax
   1400064d5:	0f 8f c5 fc ff ff    	jg     1400061a0 <__pformat_emit_xfloat.isra.0+0x160>
   1400064db:	e9 b8 fc ff ff       	jmp    140006198 <__pformat_emit_xfloat.isra.0+0x158>
   1400064e0:	41 8b 48 08          	mov    0x8(%r8),%ecx
   1400064e4:	31 ed                	xor    %ebp,%ebp
   1400064e6:	45 31 c0             	xor    %r8d,%r8d
   1400064e9:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
   1400064ee:	e9 a5 fc ff ff       	jmp    140006198 <__pformat_emit_xfloat.isra.0+0x158>
   1400064f3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400064fa:	00 00 00 00 
   1400064fe:	66 90                	xchg   %ax,%ax

0000000140006500 <__mingw_pformat>:
   140006500:	41 57                	push   %r15
   140006502:	41 56                	push   %r14
   140006504:	41 55                	push   %r13
   140006506:	41 54                	push   %r12
   140006508:	55                   	push   %rbp
   140006509:	57                   	push   %rdi
   14000650a:	56                   	push   %rsi
   14000650b:	53                   	push   %rbx
   14000650c:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
   140006513:	4c 8b ac 24 10 01 00 	mov    0x110(%rsp),%r13
   14000651a:	00 
   14000651b:	89 cf                	mov    %ecx,%edi
   14000651d:	48 89 d5             	mov    %rdx,%rbp
   140006520:	44 89 c3             	mov    %r8d,%ebx
   140006523:	4c 89 ce             	mov    %r9,%rsi
   140006526:	e8 dd 3c 00 00       	call   14000a208 <_errno>
   14000652b:	0f be 0e             	movsbl (%rsi),%ecx
   14000652e:	81 e7 00 60 00 00    	and    $0x6000,%edi
   140006534:	31 d2                	xor    %edx,%edx
   140006536:	8b 00                	mov    (%rax),%eax
   140006538:	89 9c 24 98 00 00 00 	mov    %ebx,0x98(%rsp)
   14000653f:	48 8d 5e 01          	lea    0x1(%rsi),%rbx
   140006543:	48 89 6c 24 70       	mov    %rbp,0x70(%rsp)
   140006548:	89 44 24 30          	mov    %eax,0x30(%rsp)
   14000654c:	48 b8 ff ff ff ff fd 	movabs $0xfffffffdffffffff,%rax
   140006553:	ff ff ff 
   140006556:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
   14000655d:	00 
   14000655e:	31 c0                	xor    %eax,%eax
   140006560:	66 89 84 24 88 00 00 	mov    %ax,0x88(%rsp)
   140006567:	00 
   140006568:	89 c8                	mov    %ecx,%eax
   14000656a:	89 7c 24 78          	mov    %edi,0x78(%rsp)
   14000656e:	c7 44 24 7c ff ff ff 	movl   $0xffffffff,0x7c(%rsp)
   140006575:	ff 
   140006576:	c7 84 24 8c 00 00 00 	movl   $0x0,0x8c(%rsp)
   14000657d:	00 00 00 00 
   140006581:	66 89 94 24 90 00 00 	mov    %dx,0x90(%rsp)
   140006588:	00 
   140006589:	c7 84 24 94 00 00 00 	movl   $0x0,0x94(%rsp)
   140006590:	00 00 00 00 
   140006594:	c7 84 24 9c 00 00 00 	movl   $0xffffffff,0x9c(%rsp)
   14000659b:	ff ff ff ff 
   14000659f:	85 c9                	test   %ecx,%ecx
   1400065a1:	0f 84 10 01 00 00    	je     1400066b7 <__mingw_pformat+0x1b7>
   1400065a7:	4c 8d 7c 24 7c       	lea    0x7c(%rsp),%r15
   1400065ac:	4c 8d 25 dd 5e 00 00 	lea    0x5edd(%rip),%r12        # 14000c490 <.rdata+0x20>
   1400065b3:	eb 49                	jmp    1400065fe <__mingw_pformat+0xfe>
   1400065b5:	0f 1f 00             	nopl   (%rax)
   1400065b8:	8b 54 24 78          	mov    0x78(%rsp),%edx
   1400065bc:	8b b4 24 94 00 00 00 	mov    0x94(%rsp),%esi
   1400065c3:	f6 c6 40             	test   $0x40,%dh
   1400065c6:	75 09                	jne    1400065d1 <__mingw_pformat+0xd1>
   1400065c8:	39 b4 24 98 00 00 00 	cmp    %esi,0x98(%rsp)
   1400065cf:	7e 11                	jle    1400065e2 <__mingw_pformat+0xe2>
   1400065d1:	4c 8b 44 24 70       	mov    0x70(%rsp),%r8
   1400065d6:	80 e6 20             	and    $0x20,%dh
   1400065d9:	75 6d                	jne    140006648 <__mingw_pformat+0x148>
   1400065db:	48 63 d6             	movslq %esi,%rdx
   1400065de:	41 88 04 10          	mov    %al,(%r8,%rdx,1)
   1400065e2:	83 c6 01             	add    $0x1,%esi
   1400065e5:	89 b4 24 94 00 00 00 	mov    %esi,0x94(%rsp)
   1400065ec:	0f b6 03             	movzbl (%rbx),%eax
   1400065ef:	48 83 c3 01          	add    $0x1,%rbx
   1400065f3:	0f be c8             	movsbl %al,%ecx
   1400065f6:	85 c9                	test   %ecx,%ecx
   1400065f8:	0f 84 b2 00 00 00    	je     1400066b0 <__mingw_pformat+0x1b0>
   1400065fe:	83 f9 25             	cmp    $0x25,%ecx
   140006601:	75 b5                	jne    1400065b8 <__mingw_pformat+0xb8>
   140006603:	0f b6 03             	movzbl (%rbx),%eax
   140006606:	89 7c 24 78          	mov    %edi,0x78(%rsp)
   14000660a:	48 c7 44 24 7c ff ff 	movq   $0xffffffffffffffff,0x7c(%rsp)
   140006611:	ff ff 
   140006613:	84 c0                	test   %al,%al
   140006615:	0f 84 95 00 00 00    	je     1400066b0 <__mingw_pformat+0x1b0>
   14000661b:	48 89 de             	mov    %rbx,%rsi
   14000661e:	4d 89 fb             	mov    %r15,%r11
   140006621:	45 31 d2             	xor    %r10d,%r10d
   140006624:	45 31 f6             	xor    %r14d,%r14d
   140006627:	8d 50 e0             	lea    -0x20(%rax),%edx
   14000662a:	48 8d 6e 01          	lea    0x1(%rsi),%rbp
   14000662e:	0f be c8             	movsbl %al,%ecx
   140006631:	80 fa 5a             	cmp    $0x5a,%dl
   140006634:	77 22                	ja     140006658 <__mingw_pformat+0x158>
   140006636:	0f b6 d2             	movzbl %dl,%edx
   140006639:	49 63 14 94          	movslq (%r12,%rdx,4),%rdx
   14000663d:	4c 01 e2             	add    %r12,%rdx
   140006640:	ff e2                	jmp    *%rdx
   140006642:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140006648:	4c 89 c2             	mov    %r8,%rdx
   14000664b:	e8 00 3c 00 00       	call   14000a250 <fputc>
   140006650:	eb 90                	jmp    1400065e2 <__mingw_pformat+0xe2>
   140006652:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140006658:	83 e8 30             	sub    $0x30,%eax
   14000665b:	3c 09                	cmp    $0x9,%al
   14000665d:	0f 87 14 02 00 00    	ja     140006877 <__mingw_pformat+0x377>
   140006663:	41 83 fe 03          	cmp    $0x3,%r14d
   140006667:	0f 87 0a 02 00 00    	ja     140006877 <__mingw_pformat+0x377>
   14000666d:	45 85 f6             	test   %r14d,%r14d
   140006670:	0f 85 49 07 00 00    	jne    140006dbf <__mingw_pformat+0x8bf>
   140006676:	41 be 01 00 00 00    	mov    $0x1,%r14d
   14000667c:	4d 85 db             	test   %r11,%r11
   14000667f:	74 1f                	je     1400066a0 <__mingw_pformat+0x1a0>
   140006681:	41 8b 03             	mov    (%r11),%eax
   140006684:	85 c0                	test   %eax,%eax
   140006686:	0f 88 ec 07 00 00    	js     140006e78 <__mingw_pformat+0x978>
   14000668c:	8d 04 80             	lea    (%rax,%rax,4),%eax
   14000668f:	8d 44 41 d0          	lea    -0x30(%rcx,%rax,2),%eax
   140006693:	41 89 03             	mov    %eax,(%r11)
   140006696:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000669d:	00 00 00 
   1400066a0:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   1400066a4:	48 89 ee             	mov    %rbp,%rsi
   1400066a7:	84 c0                	test   %al,%al
   1400066a9:	0f 85 78 ff ff ff    	jne    140006627 <__mingw_pformat+0x127>
   1400066af:	90                   	nop
   1400066b0:	8b 8c 24 94 00 00 00 	mov    0x94(%rsp),%ecx
   1400066b7:	89 c8                	mov    %ecx,%eax
   1400066b9:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
   1400066c0:	5b                   	pop    %rbx
   1400066c1:	5e                   	pop    %rsi
   1400066c2:	5f                   	pop    %rdi
   1400066c3:	5d                   	pop    %rbp
   1400066c4:	41 5c                	pop    %r12
   1400066c6:	41 5d                	pop    %r13
   1400066c8:	41 5e                	pop    %r14
   1400066ca:	41 5f                	pop    %r15
   1400066cc:	c3                   	ret
   1400066cd:	0f 1f 00             	nopl   (%rax)
   1400066d0:	81 64 24 78 ff fe ff 	andl   $0xfffffeff,0x78(%rsp)
   1400066d7:	ff 
   1400066d8:	41 83 fa 03          	cmp    $0x3,%r10d
   1400066dc:	0f 84 d6 07 00 00    	je     140006eb8 <__mingw_pformat+0x9b8>
   1400066e2:	41 83 fa 02          	cmp    $0x2,%r10d
   1400066e6:	0f 84 5f 08 00 00    	je     140006f4b <__mingw_pformat+0xa4b>
   1400066ec:	41 8b 45 00          	mov    0x0(%r13),%eax
   1400066f0:	41 83 fa 01          	cmp    $0x1,%r10d
   1400066f4:	0f 84 6e 07 00 00    	je     140006e68 <__mingw_pformat+0x968>
   1400066fa:	89 c2                	mov    %eax,%edx
   1400066fc:	41 83 fa 05          	cmp    $0x5,%r10d
   140006700:	0f b6 c0             	movzbl %al,%eax
   140006703:	48 0f 45 c2          	cmovne %rdx,%rax
   140006707:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
   14000670c:	83 f9 75             	cmp    $0x75,%ecx
   14000670f:	0f 84 24 08 00 00    	je     140006f39 <__mingw_pformat+0xa39>
   140006715:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   14000671a:	48 89 c2             	mov    %rax,%rdx
   14000671d:	e8 3e e7 ff ff       	call   140004e60 <__pformat_xint.isra.0>
   140006722:	e9 a9 02 00 00       	jmp    1400069d0 <__mingw_pformat+0x4d0>
   140006727:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000672e:	00 00 
   140006730:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140006734:	41 ba 03 00 00 00    	mov    $0x3,%r10d
   14000673a:	48 89 ee             	mov    %rbp,%rsi
   14000673d:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140006743:	e9 5f ff ff ff       	jmp    1400066a7 <__mingw_pformat+0x1a7>
   140006748:	81 4c 24 78 80 00 00 	orl    $0x80,0x78(%rsp)
   14000674f:	00 
   140006750:	49 8d 5d 08          	lea    0x8(%r13),%rbx
   140006754:	41 83 fa 03          	cmp    $0x3,%r10d
   140006758:	0f 84 51 07 00 00    	je     140006eaf <__mingw_pformat+0x9af>
   14000675e:	49 63 4d 00          	movslq 0x0(%r13),%rcx
   140006762:	41 83 fa 02          	cmp    $0x2,%r10d
   140006766:	74 16                	je     14000677e <__mingw_pformat+0x27e>
   140006768:	41 83 fa 01          	cmp    $0x1,%r10d
   14000676c:	0f 84 ed 06 00 00    	je     140006e5f <__mingw_pformat+0x95f>
   140006772:	48 0f be c1          	movsbq %cl,%rax
   140006776:	41 83 fa 05          	cmp    $0x5,%r10d
   14000677a:	48 0f 44 c8          	cmove  %rax,%rcx
   14000677e:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140006783:	49 89 dd             	mov    %rbx,%r13
   140006786:	48 89 eb             	mov    %rbp,%rbx
   140006789:	e8 02 ec ff ff       	call   140005390 <__pformat_int.isra.0>
   14000678e:	e9 59 fe ff ff       	jmp    1400065ec <__mingw_pformat+0xec>
   140006793:	45 85 f6             	test   %r14d,%r14d
   140006796:	75 0a                	jne    1400067a2 <__mingw_pformat+0x2a2>
   140006798:	39 7c 24 78          	cmp    %edi,0x78(%rsp)
   14000679c:	0f 84 8b 06 00 00    	je     140006e2d <__mingw_pformat+0x92d>
   1400067a2:	49 8b 55 00          	mov    0x0(%r13),%rdx
   1400067a6:	49 8d 5d 08          	lea    0x8(%r13),%rbx
   1400067aa:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   1400067af:	b9 78 00 00 00       	mov    $0x78,%ecx
   1400067b4:	49 89 dd             	mov    %rbx,%r13
   1400067b7:	48 89 eb             	mov    %rbp,%rbx
   1400067ba:	e8 a1 e6 ff ff       	call   140004e60 <__pformat_xint.isra.0>
   1400067bf:	e9 28 fe ff ff       	jmp    1400065ec <__mingw_pformat+0xec>
   1400067c4:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   1400067c8:	3c 68                	cmp    $0x68,%al
   1400067ca:	0f 84 37 07 00 00    	je     140006f07 <__mingw_pformat+0xa07>
   1400067d0:	48 89 ee             	mov    %rbp,%rsi
   1400067d3:	41 ba 01 00 00 00    	mov    $0x1,%r10d
   1400067d9:	41 be 04 00 00 00    	mov    $0x4,%r14d
   1400067df:	e9 c3 fe ff ff       	jmp    1400066a7 <__mingw_pformat+0x1a7>
   1400067e4:	8b 4c 24 30          	mov    0x30(%rsp),%ecx
   1400067e8:	48 89 eb             	mov    %rbp,%rbx
   1400067eb:	e8 a8 3a 00 00       	call   14000a298 <strerror>
   1400067f0:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   1400067f5:	48 89 c1             	mov    %rax,%rcx
   1400067f8:	e8 73 e5 ff ff       	call   140004d70 <__pformat_puts>
   1400067fd:	e9 ea fd ff ff       	jmp    1400065ec <__mingw_pformat+0xec>
   140006802:	49 8b 55 00          	mov    0x0(%r13),%rdx
   140006806:	48 63 84 24 94 00 00 	movslq 0x94(%rsp),%rax
   14000680d:	00 
   14000680e:	41 83 fa 05          	cmp    $0x5,%r10d
   140006812:	0f 84 e8 06 00 00    	je     140006f00 <__mingw_pformat+0xa00>
   140006818:	41 83 fa 01          	cmp    $0x1,%r10d
   14000681c:	0f 84 32 07 00 00    	je     140006f54 <__mingw_pformat+0xa54>
   140006822:	41 83 fa 02          	cmp    $0x2,%r10d
   140006826:	74 0a                	je     140006832 <__mingw_pformat+0x332>
   140006828:	41 83 fa 03          	cmp    $0x3,%r10d
   14000682c:	0f 84 3e 06 00 00    	je     140006e70 <__mingw_pformat+0x970>
   140006832:	89 02                	mov    %eax,(%rdx)
   140006834:	e9 97 01 00 00       	jmp    1400069d0 <__mingw_pformat+0x4d0>
   140006839:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   14000683d:	3c 6c                	cmp    $0x6c,%al
   14000683f:	0f 84 db 06 00 00    	je     140006f20 <__mingw_pformat+0xa20>
   140006845:	48 89 ee             	mov    %rbp,%rsi
   140006848:	41 ba 02 00 00 00    	mov    $0x2,%r10d
   14000684e:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140006854:	e9 4e fe ff ff       	jmp    1400066a7 <__mingw_pformat+0x1a7>
   140006859:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   14000685d:	3c 36                	cmp    $0x36,%al
   14000685f:	0f 84 78 06 00 00    	je     140006edd <__mingw_pformat+0x9dd>
   140006865:	3c 33                	cmp    $0x33,%al
   140006867:	0f 85 a1 05 00 00    	jne    140006e0e <__mingw_pformat+0x90e>
   14000686d:	80 7e 02 32          	cmpb   $0x32,0x2(%rsi)
   140006871:	0f 84 fb 06 00 00    	je     140006f72 <__mingw_pformat+0xa72>
   140006877:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   14000687c:	b9 25 00 00 00       	mov    $0x25,%ecx
   140006881:	e8 aa e1 ff ff       	call   140004a30 <__pformat_putc>
   140006886:	e9 61 fd ff ff       	jmp    1400065ec <__mingw_pformat+0xec>
   14000688b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006890:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140006894:	83 4c 24 78 04       	orl    $0x4,0x78(%rsp)
   140006899:	48 89 ee             	mov    %rbp,%rsi
   14000689c:	41 be 04 00 00 00    	mov    $0x4,%r14d
   1400068a2:	e9 00 fe ff ff       	jmp    1400066a7 <__mingw_pformat+0x1a7>
   1400068a7:	8b 44 24 78          	mov    0x78(%rsp),%eax
   1400068ab:	49 8b 4d 00          	mov    0x0(%r13),%rcx
   1400068af:	83 c8 20             	or     $0x20,%eax
   1400068b2:	89 44 24 78          	mov    %eax,0x78(%rsp)
   1400068b6:	a8 04                	test   $0x4,%al
   1400068b8:	0f 84 fa 01 00 00    	je     140006ab8 <__mingw_pformat+0x5b8>
   1400068be:	8b 59 08             	mov    0x8(%rcx),%ebx
   1400068c1:	48 8b 09             	mov    (%rcx),%rcx
   1400068c4:	49 89 c9             	mov    %rcx,%r9
   1400068c7:	44 0f bf d3          	movswl %bx,%r10d
   1400068cb:	48 89 da             	mov    %rbx,%rdx
   1400068ce:	49 c1 e9 20          	shr    $0x20,%r9
   1400068d2:	47 8d 1c 12          	lea    (%r10,%r10,1),%r11d
   1400068d6:	41 81 e1 ff ff ff 7f 	and    $0x7fffffff,%r9d
   1400068dd:	45 0f b7 db          	movzwl %r11w,%r11d
   1400068e1:	41 09 c9             	or     %ecx,%r9d
   1400068e4:	45 89 c8             	mov    %r9d,%r8d
   1400068e7:	41 f7 d8             	neg    %r8d
   1400068ea:	45 09 c8             	or     %r9d,%r8d
   1400068ed:	41 c1 e8 1f          	shr    $0x1f,%r8d
   1400068f1:	45 09 d8             	or     %r11d,%r8d
   1400068f4:	41 bb fe ff 00 00    	mov    $0xfffe,%r11d
   1400068fa:	45 29 c3             	sub    %r8d,%r11d
   1400068fd:	41 c1 eb 10          	shr    $0x10,%r11d
   140006901:	0f 85 ca 04 00 00    	jne    140006dd1 <__mingw_pformat+0x8d1>
   140006907:	66 85 db             	test   %bx,%bx
   14000690a:	0f 88 12 05 00 00    	js     140006e22 <__mingw_pformat+0x922>
   140006910:	66 81 e2 ff 7f       	and    $0x7fff,%dx
   140006915:	0f 84 e3 04 00 00    	je     140006dfe <__mingw_pformat+0x8fe>
   14000691b:	66 81 fa ff 7f       	cmp    $0x7fff,%dx
   140006920:	75 09                	jne    14000692b <__mingw_pformat+0x42b>
   140006922:	45 85 c9             	test   %r9d,%r9d
   140006925:	0f 84 83 06 00 00    	je     140006fae <__mingw_pformat+0xaae>
   14000692b:	66 81 ea ff 3f       	sub    $0x3fff,%dx
   140006930:	e9 22 04 00 00       	jmp    140006d57 <__mingw_pformat+0x857>
   140006935:	41 83 ea 02          	sub    $0x2,%r10d
   140006939:	41 8b 45 00          	mov    0x0(%r13),%eax
   14000693d:	49 8d 5d 08          	lea    0x8(%r13),%rbx
   140006941:	c7 84 24 80 00 00 00 	movl   $0xffffffff,0x80(%rsp)
   140006948:	ff ff ff ff 
   14000694c:	41 83 fa 01          	cmp    $0x1,%r10d
   140006950:	0f 86 09 02 00 00    	jbe    140006b5f <__mingw_pformat+0x65f>
   140006956:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
   14000695b:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140006960:	88 44 24 60          	mov    %al,0x60(%rsp)
   140006964:	49 89 dd             	mov    %rbx,%r13
   140006967:	ba 01 00 00 00       	mov    $0x1,%edx
   14000696c:	48 89 eb             	mov    %rbp,%rbx
   14000696f:	e8 ac e2 ff ff       	call   140004c20 <__pformat_putchars>
   140006974:	e9 73 fc ff ff       	jmp    1400065ec <__mingw_pformat+0xec>
   140006979:	41 83 ea 02          	sub    $0x2,%r10d
   14000697d:	49 8b 4d 00          	mov    0x0(%r13),%rcx
   140006981:	49 8d 5d 08          	lea    0x8(%r13),%rbx
   140006985:	41 83 fa 01          	cmp    $0x1,%r10d
   140006989:	0f 86 db 03 00 00    	jbe    140006d6a <__mingw_pformat+0x86a>
   14000698f:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140006994:	49 89 dd             	mov    %rbx,%r13
   140006997:	48 89 eb             	mov    %rbp,%rbx
   14000699a:	e8 d1 e3 ff ff       	call   140004d70 <__pformat_puts>
   14000699f:	e9 48 fc ff ff       	jmp    1400065ec <__mingw_pformat+0xec>
   1400069a4:	8b 44 24 78          	mov    0x78(%rsp),%eax
   1400069a8:	49 8b 55 00          	mov    0x0(%r13),%rdx
   1400069ac:	83 c8 20             	or     $0x20,%eax
   1400069af:	89 44 24 78          	mov    %eax,0x78(%rsp)
   1400069b3:	a8 04                	test   $0x4,%al
   1400069b5:	0f 84 3e 02 00 00    	je     140006bf9 <__mingw_pformat+0x6f9>
   1400069bb:	db 2a                	fldt   (%rdx)
   1400069bd:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   1400069c2:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   1400069c7:	db 7c 24 40          	fstpt  0x40(%rsp)
   1400069cb:	e8 f0 f4 ff ff       	call   140005ec0 <__pformat_gfloat>
   1400069d0:	49 83 c5 08          	add    $0x8,%r13
   1400069d4:	48 89 eb             	mov    %rbp,%rbx
   1400069d7:	e9 10 fc ff ff       	jmp    1400065ec <__mingw_pformat+0xec>
   1400069dc:	8b 44 24 78          	mov    0x78(%rsp),%eax
   1400069e0:	49 8b 55 00          	mov    0x0(%r13),%rdx
   1400069e4:	83 c8 20             	or     $0x20,%eax
   1400069e7:	89 44 24 78          	mov    %eax,0x78(%rsp)
   1400069eb:	a8 04                	test   $0x4,%al
   1400069ed:	0f 84 d5 01 00 00    	je     140006bc8 <__mingw_pformat+0x6c8>
   1400069f3:	db 2a                	fldt   (%rdx)
   1400069f5:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   1400069fa:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   1400069ff:	db 7c 24 40          	fstpt  0x40(%rsp)
   140006a03:	e8 d8 f3 ff ff       	call   140005de0 <__pformat_float>
   140006a08:	eb c6                	jmp    1400069d0 <__mingw_pformat+0x4d0>
   140006a0a:	8b 44 24 78          	mov    0x78(%rsp),%eax
   140006a0e:	49 8b 55 00          	mov    0x0(%r13),%rdx
   140006a12:	83 c8 20             	or     $0x20,%eax
   140006a15:	89 44 24 78          	mov    %eax,0x78(%rsp)
   140006a19:	a8 04                	test   $0x4,%al
   140006a1b:	0f 84 76 01 00 00    	je     140006b97 <__mingw_pformat+0x697>
   140006a21:	db 2a                	fldt   (%rdx)
   140006a23:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   140006a28:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140006a2d:	db 7c 24 40          	fstpt  0x40(%rsp)
   140006a31:	e8 0a f3 ff ff       	call   140005d40 <__pformat_efloat>
   140006a36:	eb 98                	jmp    1400069d0 <__mingw_pformat+0x4d0>
   140006a38:	45 85 f6             	test   %r14d,%r14d
   140006a3b:	0f 85 5f fc ff ff    	jne    1400066a0 <__mingw_pformat+0x1a0>
   140006a41:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140006a45:	83 4c 24 78 40       	orl    $0x40,0x78(%rsp)
   140006a4a:	48 89 ee             	mov    %rbp,%rsi
   140006a4d:	e9 55 fc ff ff       	jmp    1400066a7 <__mingw_pformat+0x1a7>
   140006a52:	45 85 f6             	test   %r14d,%r14d
   140006a55:	0f 85 45 fc ff ff    	jne    1400066a0 <__mingw_pformat+0x1a0>
   140006a5b:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140006a5f:	81 4c 24 78 00 04 00 	orl    $0x400,0x78(%rsp)
   140006a66:	00 
   140006a67:	48 89 ee             	mov    %rbp,%rsi
   140006a6a:	e9 38 fc ff ff       	jmp    1400066a7 <__mingw_pformat+0x1a7>
   140006a6f:	41 83 fe 01          	cmp    $0x1,%r14d
   140006a73:	0f 86 11 04 00 00    	jbe    140006e8a <__mingw_pformat+0x98a>
   140006a79:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140006a7d:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140006a83:	48 89 ee             	mov    %rbp,%rsi
   140006a86:	e9 1c fc ff ff       	jmp    1400066a7 <__mingw_pformat+0x1a7>
   140006a8b:	45 85 f6             	test   %r14d,%r14d
   140006a8e:	0f 85 1c 03 00 00    	jne    140006db0 <__mingw_pformat+0x8b0>
   140006a94:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140006a98:	81 4c 24 78 00 02 00 	orl    $0x200,0x78(%rsp)
   140006a9f:	00 
   140006aa0:	48 89 ee             	mov    %rbp,%rsi
   140006aa3:	e9 ff fb ff ff       	jmp    1400066a7 <__mingw_pformat+0x1a7>
   140006aa8:	8b 44 24 78          	mov    0x78(%rsp),%eax
   140006aac:	49 8b 4d 00          	mov    0x0(%r13),%rcx
   140006ab0:	a8 04                	test   $0x4,%al
   140006ab2:	0f 85 06 fe ff ff    	jne    1400068be <__mingw_pformat+0x3be>
   140006ab8:	49 89 c8             	mov    %rcx,%r8
   140006abb:	89 ca                	mov    %ecx,%edx
   140006abd:	49 c1 e8 20          	shr    $0x20,%r8
   140006ac1:	f7 da                	neg    %edx
   140006ac3:	45 89 c1             	mov    %r8d,%r9d
   140006ac6:	09 ca                	or     %ecx,%edx
   140006ac8:	41 81 e1 ff ff ff 7f 	and    $0x7fffffff,%r9d
   140006acf:	c1 ea 1f             	shr    $0x1f,%edx
   140006ad2:	44 09 ca             	or     %r9d,%edx
   140006ad5:	41 b9 00 00 f0 7f    	mov    $0x7ff00000,%r9d
   140006adb:	41 39 d1             	cmp    %edx,%r9d
   140006ade:	0f 88 ed 02 00 00    	js     140006dd1 <__mingw_pformat+0x8d1>
   140006ae4:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
   140006ae9:	dd 44 24 20          	fldl   0x20(%rsp)
   140006aed:	db 7c 24 20          	fstpt  0x20(%rsp)
   140006af1:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
   140006af6:	66 85 d2             	test   %dx,%dx
   140006af9:	79 06                	jns    140006b01 <__mingw_pformat+0x601>
   140006afb:	0c 80                	or     $0x80,%al
   140006afd:	89 44 24 78          	mov    %eax,0x78(%rsp)
   140006b01:	44 89 c0             	mov    %r8d,%eax
   140006b04:	41 81 e0 00 00 f0 7f 	and    $0x7ff00000,%r8d
   140006b0b:	25 ff ff 0f 00       	and    $0xfffff,%eax
   140006b10:	41 81 f8 00 00 f0 7f 	cmp    $0x7ff00000,%r8d
   140006b17:	41 0f 95 c1          	setne  %r9b
   140006b1b:	09 c8                	or     %ecx,%eax
   140006b1d:	0f 95 c1             	setne  %cl
   140006b20:	41 08 c9             	or     %cl,%r9b
   140006b23:	0f 85 f6 01 00 00    	jne    140006d1f <__mingw_pformat+0x81f>
   140006b29:	44 09 c0             	or     %r8d,%eax
   140006b2c:	0f 84 ed 01 00 00    	je     140006d1f <__mingw_pformat+0x81f>
   140006b32:	89 d1                	mov    %edx,%ecx
   140006b34:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140006b39:	48 8d 15 4a 59 00 00 	lea    0x594a(%rip),%rdx        # 14000c48a <.rdata+0x1a>
   140006b40:	81 e1 00 80 00 00    	and    $0x8000,%ecx
   140006b46:	e8 75 e2 ff ff       	call   140004dc0 <__pformat_emit_inf_or_nan>
   140006b4b:	e9 80 fe ff ff       	jmp    1400069d0 <__mingw_pformat+0x4d0>
   140006b50:	c7 84 24 80 00 00 00 	movl   $0xffffffff,0x80(%rsp)
   140006b57:	ff ff ff ff 
   140006b5b:	49 8d 5d 08          	lea    0x8(%r13),%rbx
   140006b5f:	41 8b 45 00          	mov    0x0(%r13),%eax
   140006b63:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
   140006b68:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140006b6d:	49 89 dd             	mov    %rbx,%r13
   140006b70:	ba 01 00 00 00       	mov    $0x1,%edx
   140006b75:	48 89 eb             	mov    %rbp,%rbx
   140006b78:	66 89 44 24 60       	mov    %ax,0x60(%rsp)
   140006b7d:	e8 0e df ff ff       	call   140004a90 <__pformat_wputchars>
   140006b82:	e9 65 fa ff ff       	jmp    1400065ec <__mingw_pformat+0xec>
   140006b87:	8b 44 24 78          	mov    0x78(%rsp),%eax
   140006b8b:	49 8b 55 00          	mov    0x0(%r13),%rdx
   140006b8f:	a8 04                	test   $0x4,%al
   140006b91:	0f 85 8a fe ff ff    	jne    140006a21 <__mingw_pformat+0x521>
   140006b97:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
   140006b9c:	dd 44 24 20          	fldl   0x20(%rsp)
   140006ba0:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140006ba5:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   140006baa:	db 7c 24 40          	fstpt  0x40(%rsp)
   140006bae:	e8 8d f1 ff ff       	call   140005d40 <__pformat_efloat>
   140006bb3:	e9 18 fe ff ff       	jmp    1400069d0 <__mingw_pformat+0x4d0>
   140006bb8:	8b 44 24 78          	mov    0x78(%rsp),%eax
   140006bbc:	49 8b 55 00          	mov    0x0(%r13),%rdx
   140006bc0:	a8 04                	test   $0x4,%al
   140006bc2:	0f 85 2b fe ff ff    	jne    1400069f3 <__mingw_pformat+0x4f3>
   140006bc8:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
   140006bcd:	dd 44 24 20          	fldl   0x20(%rsp)
   140006bd1:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140006bd6:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   140006bdb:	db 7c 24 40          	fstpt  0x40(%rsp)
   140006bdf:	e8 fc f1 ff ff       	call   140005de0 <__pformat_float>
   140006be4:	e9 e7 fd ff ff       	jmp    1400069d0 <__mingw_pformat+0x4d0>
   140006be9:	8b 44 24 78          	mov    0x78(%rsp),%eax
   140006bed:	49 8b 55 00          	mov    0x0(%r13),%rdx
   140006bf1:	a8 04                	test   $0x4,%al
   140006bf3:	0f 85 c2 fd ff ff    	jne    1400069bb <__mingw_pformat+0x4bb>
   140006bf9:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
   140006bfe:	dd 44 24 20          	fldl   0x20(%rsp)
   140006c02:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140006c07:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   140006c0c:	db 7c 24 40          	fstpt  0x40(%rsp)
   140006c10:	e8 ab f2 ff ff       	call   140005ec0 <__pformat_gfloat>
   140006c15:	e9 b6 fd ff ff       	jmp    1400069d0 <__mingw_pformat+0x4d0>
   140006c1a:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140006c1f:	b9 25 00 00 00       	mov    $0x25,%ecx
   140006c24:	48 89 eb             	mov    %rbp,%rbx
   140006c27:	e8 04 de ff ff       	call   140004a30 <__pformat_putc>
   140006c2c:	e9 bb f9 ff ff       	jmp    1400065ec <__mingw_pformat+0xec>
   140006c31:	45 85 f6             	test   %r14d,%r14d
   140006c34:	0f 85 66 fa ff ff    	jne    1400066a0 <__mingw_pformat+0x1a0>
   140006c3a:	4c 8d 4c 24 60       	lea    0x60(%rsp),%r9
   140006c3f:	4c 89 5c 24 38       	mov    %r11,0x38(%rsp)
   140006c44:	44 89 54 24 34       	mov    %r10d,0x34(%rsp)
   140006c49:	81 4c 24 78 00 10 00 	orl    $0x1000,0x78(%rsp)
   140006c50:	00 
   140006c51:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
   140006c56:	c7 44 24 60 00 00 00 	movl   $0x0,0x60(%rsp)
   140006c5d:	00 
   140006c5e:	e8 05 36 00 00       	call   14000a268 <localeconv>
   140006c63:	4c 8b 4c 24 20       	mov    0x20(%rsp),%r9
   140006c68:	48 8d 4c 24 5e       	lea    0x5e(%rsp),%rcx
   140006c6d:	41 b8 10 00 00 00    	mov    $0x10,%r8d
   140006c73:	48 8b 50 08          	mov    0x8(%rax),%rdx
   140006c77:	e8 64 33 00 00       	call   140009fe0 <mbrtowc>
   140006c7c:	44 8b 54 24 34       	mov    0x34(%rsp),%r10d
   140006c81:	4c 8b 5c 24 38       	mov    0x38(%rsp),%r11
   140006c86:	85 c0                	test   %eax,%eax
   140006c88:	7e 0d                	jle    140006c97 <__mingw_pformat+0x797>
   140006c8a:	0f b7 54 24 5e       	movzwl 0x5e(%rsp),%edx
   140006c8f:	66 89 94 24 90 00 00 	mov    %dx,0x90(%rsp)
   140006c96:	00 
   140006c97:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%rsp)
   140006c9e:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140006ca2:	48 89 ee             	mov    %rbp,%rsi
   140006ca5:	e9 fd f9 ff ff       	jmp    1400066a7 <__mingw_pformat+0x1a7>
   140006caa:	4d 85 db             	test   %r11,%r11
   140006cad:	0f 84 c6 fd ff ff    	je     140006a79 <__mingw_pformat+0x579>
   140006cb3:	41 f7 c6 fd ff ff ff 	test   $0xfffffffd,%r14d
   140006cba:	0f 85 29 01 00 00    	jne    140006de9 <__mingw_pformat+0x8e9>
   140006cc0:	41 8b 45 00          	mov    0x0(%r13),%eax
   140006cc4:	49 8d 55 08          	lea    0x8(%r13),%rdx
   140006cc8:	41 89 03             	mov    %eax,(%r11)
   140006ccb:	85 c0                	test   %eax,%eax
   140006ccd:	0f 88 89 02 00 00    	js     140006f5c <__mingw_pformat+0xa5c>
   140006cd3:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140006cd7:	49 89 d5             	mov    %rdx,%r13
   140006cda:	48 89 ee             	mov    %rbp,%rsi
   140006cdd:	45 31 db             	xor    %r11d,%r11d
   140006ce0:	e9 c2 f9 ff ff       	jmp    1400066a7 <__mingw_pformat+0x1a7>
   140006ce5:	45 85 f6             	test   %r14d,%r14d
   140006ce8:	0f 85 b2 f9 ff ff    	jne    1400066a0 <__mingw_pformat+0x1a0>
   140006cee:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140006cf2:	81 4c 24 78 00 01 00 	orl    $0x100,0x78(%rsp)
   140006cf9:	00 
   140006cfa:	48 89 ee             	mov    %rbp,%rsi
   140006cfd:	e9 a5 f9 ff ff       	jmp    1400066a7 <__mingw_pformat+0x1a7>
   140006d02:	45 85 f6             	test   %r14d,%r14d
   140006d05:	0f 85 95 f9 ff ff    	jne    1400066a0 <__mingw_pformat+0x1a0>
   140006d0b:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140006d0f:	81 4c 24 78 00 08 00 	orl    $0x800,0x78(%rsp)
   140006d16:	00 
   140006d17:	48 89 ee             	mov    %rbp,%rsi
   140006d1a:	e9 88 f9 ff ff       	jmp    1400066a7 <__mingw_pformat+0x1a7>
   140006d1f:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   140006d24:	66 81 e2 ff 7f       	and    $0x7fff,%dx
   140006d29:	0f 84 20 01 00 00    	je     140006e4f <__mingw_pformat+0x94f>
   140006d2f:	66 81 fa 00 3c       	cmp    $0x3c00,%dx
   140006d34:	0f 8f 0c 01 00 00    	jg     140006e46 <__mingw_pformat+0x946>
   140006d3a:	44 0f bf c2          	movswl %dx,%r8d
   140006d3e:	b9 01 3c 00 00       	mov    $0x3c01,%ecx
   140006d43:	44 29 c1             	sub    %r8d,%ecx
   140006d46:	48 d3 e8             	shr    %cl,%rax
   140006d49:	01 ca                	add    %ecx,%edx
   140006d4b:	66 81 ea fc 3f       	sub    $0x3ffc,%dx
   140006d50:	48 c1 e8 03          	shr    $0x3,%rax
   140006d54:	48 89 c1             	mov    %rax,%rcx
   140006d57:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140006d5c:	e8 df f2 ff ff       	call   140006040 <__pformat_emit_xfloat.isra.0>
   140006d61:	e9 6a fc ff ff       	jmp    1400069d0 <__mingw_pformat+0x4d0>
   140006d66:	49 8d 5d 08          	lea    0x8(%r13),%rbx
   140006d6a:	49 8b 75 00          	mov    0x0(%r13),%rsi
   140006d6e:	48 8d 05 03 57 00 00 	lea    0x5703(%rip),%rax        # 14000c478 <.rdata+0x8>
   140006d75:	48 85 f6             	test   %rsi,%rsi
   140006d78:	48 0f 44 f0          	cmove  %rax,%rsi
   140006d7c:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
   140006d83:	85 c0                	test   %eax,%eax
   140006d85:	0f 88 36 01 00 00    	js     140006ec1 <__mingw_pformat+0x9c1>
   140006d8b:	48 63 d0             	movslq %eax,%rdx
   140006d8e:	48 89 f1             	mov    %rsi,%rcx
   140006d91:	e8 2a 2a 00 00       	call   1400097c0 <wcsnlen>
   140006d96:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140006d9b:	48 89 f1             	mov    %rsi,%rcx
   140006d9e:	89 c2                	mov    %eax,%edx
   140006da0:	e8 eb dc ff ff       	call   140004a90 <__pformat_wputchars>
   140006da5:	49 89 dd             	mov    %rbx,%r13
   140006da8:	48 89 eb             	mov    %rbp,%rbx
   140006dab:	e9 3c f8 ff ff       	jmp    1400065ec <__mingw_pformat+0xec>
   140006db0:	41 83 fe 03          	cmp    $0x3,%r14d
   140006db4:	0f 87 bd fa ff ff    	ja     140006877 <__mingw_pformat+0x377>
   140006dba:	b9 30 00 00 00       	mov    $0x30,%ecx
   140006dbf:	41 83 fe 02          	cmp    $0x2,%r14d
   140006dc3:	b8 03 00 00 00       	mov    $0x3,%eax
   140006dc8:	44 0f 44 f0          	cmove  %eax,%r14d
   140006dcc:	e9 ab f8 ff ff       	jmp    14000667c <__mingw_pformat+0x17c>
   140006dd1:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140006dd6:	48 8d 15 a9 56 00 00 	lea    0x56a9(%rip),%rdx        # 14000c486 <.rdata+0x16>
   140006ddd:	31 c9                	xor    %ecx,%ecx
   140006ddf:	e8 dc df ff ff       	call   140004dc0 <__pformat_emit_inf_or_nan>
   140006de4:	e9 e7 fb ff ff       	jmp    1400069d0 <__mingw_pformat+0x4d0>
   140006de9:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140006ded:	45 31 db             	xor    %r11d,%r11d
   140006df0:	48 89 ee             	mov    %rbp,%rsi
   140006df3:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140006df9:	e9 a9 f8 ff ff       	jmp    1400066a7 <__mingw_pformat+0x1a7>
   140006dfe:	48 85 c9             	test   %rcx,%rcx
   140006e01:	b8 02 c0 ff ff       	mov    $0xffffc002,%eax
   140006e06:	0f 45 d0             	cmovne %eax,%edx
   140006e09:	e9 49 ff ff ff       	jmp    140006d57 <__mingw_pformat+0x857>
   140006e0e:	48 89 ee             	mov    %rbp,%rsi
   140006e11:	41 ba 03 00 00 00    	mov    $0x3,%r10d
   140006e17:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140006e1d:	e9 85 f8 ff ff       	jmp    1400066a7 <__mingw_pformat+0x1a7>
   140006e22:	0c 80                	or     $0x80,%al
   140006e24:	89 44 24 78          	mov    %eax,0x78(%rsp)
   140006e28:	e9 e3 fa ff ff       	jmp    140006910 <__mingw_pformat+0x410>
   140006e2d:	c7 84 24 80 00 00 00 	movl   $0x10,0x80(%rsp)
   140006e34:	10 00 00 00 
   140006e38:	89 f8                	mov    %edi,%eax
   140006e3a:	80 cc 02             	or     $0x2,%ah
   140006e3d:	89 44 24 78          	mov    %eax,0x78(%rsp)
   140006e41:	e9 5c f9 ff ff       	jmp    1400067a2 <__mingw_pformat+0x2a2>
   140006e46:	66 85 d2             	test   %dx,%dx
   140006e49:	0f 85 fc fe ff ff    	jne    140006d4b <__mingw_pformat+0x84b>
   140006e4f:	48 85 c0             	test   %rax,%rax
   140006e52:	b9 05 fc ff ff       	mov    $0xfffffc05,%ecx
   140006e57:	0f 45 d1             	cmovne %ecx,%edx
   140006e5a:	e9 f1 fe ff ff       	jmp    140006d50 <__mingw_pformat+0x850>
   140006e5f:	48 0f bf c9          	movswq %cx,%rcx
   140006e63:	e9 16 f9 ff ff       	jmp    14000677e <__mingw_pformat+0x27e>
   140006e68:	0f b7 c0             	movzwl %ax,%eax
   140006e6b:	e9 97 f8 ff ff       	jmp    140006707 <__mingw_pformat+0x207>
   140006e70:	48 89 02             	mov    %rax,(%rdx)
   140006e73:	e9 58 fb ff ff       	jmp    1400069d0 <__mingw_pformat+0x4d0>
   140006e78:	83 e9 30             	sub    $0x30,%ecx
   140006e7b:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140006e7f:	48 89 ee             	mov    %rbp,%rsi
   140006e82:	41 89 0b             	mov    %ecx,(%r11)
   140006e85:	e9 1d f8 ff ff       	jmp    1400066a7 <__mingw_pformat+0x1a7>
   140006e8a:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140006e8e:	41 be 02 00 00 00    	mov    $0x2,%r14d
   140006e94:	48 89 ee             	mov    %rbp,%rsi
   140006e97:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
   140006e9e:	00 00 00 00 
   140006ea2:	4c 8d 9c 24 80 00 00 	lea    0x80(%rsp),%r11
   140006ea9:	00 
   140006eaa:	e9 f8 f7 ff ff       	jmp    1400066a7 <__mingw_pformat+0x1a7>
   140006eaf:	49 8b 4d 00          	mov    0x0(%r13),%rcx
   140006eb3:	e9 c6 f8 ff ff       	jmp    14000677e <__mingw_pformat+0x27e>
   140006eb8:	49 8b 45 00          	mov    0x0(%r13),%rax
   140006ebc:	e9 46 f8 ff ff       	jmp    140006707 <__mingw_pformat+0x207>
   140006ec1:	48 89 f1             	mov    %rsi,%rcx
   140006ec4:	e8 ef 33 00 00       	call   14000a2b8 <wcslen>
   140006ec9:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140006ece:	48 89 f1             	mov    %rsi,%rcx
   140006ed1:	89 c2                	mov    %eax,%edx
   140006ed3:	e8 b8 db ff ff       	call   140004a90 <__pformat_wputchars>
   140006ed8:	e9 c8 fe ff ff       	jmp    140006da5 <__mingw_pformat+0x8a5>
   140006edd:	80 7e 02 34          	cmpb   $0x34,0x2(%rsi)
   140006ee1:	0f 85 90 f9 ff ff    	jne    140006877 <__mingw_pformat+0x377>
   140006ee7:	0f b6 46 03          	movzbl 0x3(%rsi),%eax
   140006eeb:	41 ba 03 00 00 00    	mov    $0x3,%r10d
   140006ef1:	48 83 c6 03          	add    $0x3,%rsi
   140006ef5:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140006efb:	e9 a7 f7 ff ff       	jmp    1400066a7 <__mingw_pformat+0x1a7>
   140006f00:	88 02                	mov    %al,(%rdx)
   140006f02:	e9 c9 fa ff ff       	jmp    1400069d0 <__mingw_pformat+0x4d0>
   140006f07:	0f b6 46 02          	movzbl 0x2(%rsi),%eax
   140006f0b:	41 ba 05 00 00 00    	mov    $0x5,%r10d
   140006f11:	48 83 c6 02          	add    $0x2,%rsi
   140006f15:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140006f1b:	e9 87 f7 ff ff       	jmp    1400066a7 <__mingw_pformat+0x1a7>
   140006f20:	0f b6 46 02          	movzbl 0x2(%rsi),%eax
   140006f24:	41 ba 03 00 00 00    	mov    $0x3,%r10d
   140006f2a:	48 83 c6 02          	add    $0x2,%rsi
   140006f2e:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140006f34:	e9 6e f7 ff ff       	jmp    1400066a7 <__mingw_pformat+0x1a7>
   140006f39:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140006f3e:	48 89 c1             	mov    %rax,%rcx
   140006f41:	e8 4a e4 ff ff       	call   140005390 <__pformat_int.isra.0>
   140006f46:	e9 85 fa ff ff       	jmp    1400069d0 <__mingw_pformat+0x4d0>
   140006f4b:	41 8b 45 00          	mov    0x0(%r13),%eax
   140006f4f:	e9 b3 f7 ff ff       	jmp    140006707 <__mingw_pformat+0x207>
   140006f54:	66 89 02             	mov    %ax,(%rdx)
   140006f57:	e9 74 fa ff ff       	jmp    1400069d0 <__mingw_pformat+0x4d0>
   140006f5c:	45 85 f6             	test   %r14d,%r14d
   140006f5f:	75 2a                	jne    140006f8b <__mingw_pformat+0xa8b>
   140006f61:	81 4c 24 78 00 04 00 	orl    $0x400,0x78(%rsp)
   140006f68:	00 
   140006f69:	f7 5c 24 7c          	negl   0x7c(%rsp)
   140006f6d:	e9 61 fd ff ff       	jmp    140006cd3 <__mingw_pformat+0x7d3>
   140006f72:	0f b6 46 03          	movzbl 0x3(%rsi),%eax
   140006f76:	41 ba 02 00 00 00    	mov    $0x2,%r10d
   140006f7c:	48 83 c6 03          	add    $0x3,%rsi
   140006f80:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140006f86:	e9 1c f7 ff ff       	jmp    1400066a7 <__mingw_pformat+0x1a7>
   140006f8b:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140006f8f:	49 89 d5             	mov    %rdx,%r13
   140006f92:	48 89 ee             	mov    %rbp,%rsi
   140006f95:	45 31 db             	xor    %r11d,%r11d
   140006f98:	c7 84 24 80 00 00 00 	movl   $0xffffffff,0x80(%rsp)
   140006f9f:	ff ff ff ff 
   140006fa3:	41 be 02 00 00 00    	mov    $0x2,%r14d
   140006fa9:	e9 f9 f6 ff ff       	jmp    1400066a7 <__mingw_pformat+0x1a7>
   140006fae:	44 89 d1             	mov    %r10d,%ecx
   140006fb1:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140006fb6:	48 8d 15 cd 54 00 00 	lea    0x54cd(%rip),%rdx        # 14000c48a <.rdata+0x1a>
   140006fbd:	81 e1 00 80 00 00    	and    $0x8000,%ecx
   140006fc3:	e8 f8 dd ff ff       	call   140004dc0 <__pformat_emit_inf_or_nan>
   140006fc8:	e9 03 fa ff ff       	jmp    1400069d0 <__mingw_pformat+0x4d0>
   140006fcd:	90                   	nop
   140006fce:	90                   	nop
   140006fcf:	90                   	nop

0000000140006fd0 <__rv_alloc_D2A>:
   140006fd0:	53                   	push   %rbx
   140006fd1:	48 83 ec 20          	sub    $0x20,%rsp
   140006fd5:	31 db                	xor    %ebx,%ebx
   140006fd7:	83 f9 1b             	cmp    $0x1b,%ecx
   140006fda:	7e 18                	jle    140006ff4 <__rv_alloc_D2A+0x24>
   140006fdc:	b8 04 00 00 00       	mov    $0x4,%eax
   140006fe1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006fe8:	01 c0                	add    %eax,%eax
   140006fea:	83 c3 01             	add    $0x1,%ebx
   140006fed:	8d 50 17             	lea    0x17(%rax),%edx
   140006ff0:	39 ca                	cmp    %ecx,%edx
   140006ff2:	7c f4                	jl     140006fe8 <__rv_alloc_D2A+0x18>
   140006ff4:	89 d9                	mov    %ebx,%ecx
   140006ff6:	e8 45 1c 00 00       	call   140008c40 <__Balloc_D2A>
   140006ffb:	89 18                	mov    %ebx,(%rax)
   140006ffd:	48 83 c0 04          	add    $0x4,%rax
   140007001:	48 83 c4 20          	add    $0x20,%rsp
   140007005:	5b                   	pop    %rbx
   140007006:	c3                   	ret
   140007007:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000700e:	00 00 

0000000140007010 <__nrv_alloc_D2A>:
   140007010:	57                   	push   %rdi
   140007011:	56                   	push   %rsi
   140007012:	53                   	push   %rbx
   140007013:	48 83 ec 20          	sub    $0x20,%rsp
   140007017:	48 89 ce             	mov    %rcx,%rsi
   14000701a:	48 89 d7             	mov    %rdx,%rdi
   14000701d:	41 83 f8 1b          	cmp    $0x1b,%r8d
   140007021:	7e 65                	jle    140007088 <__nrv_alloc_D2A+0x78>
   140007023:	b8 04 00 00 00       	mov    $0x4,%eax
   140007028:	31 db                	xor    %ebx,%ebx
   14000702a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140007030:	01 c0                	add    %eax,%eax
   140007032:	83 c3 01             	add    $0x1,%ebx
   140007035:	8d 50 17             	lea    0x17(%rax),%edx
   140007038:	41 39 d0             	cmp    %edx,%r8d
   14000703b:	7f f3                	jg     140007030 <__nrv_alloc_D2A+0x20>
   14000703d:	89 d9                	mov    %ebx,%ecx
   14000703f:	e8 fc 1b 00 00       	call   140008c40 <__Balloc_D2A>
   140007044:	48 8d 56 01          	lea    0x1(%rsi),%rdx
   140007048:	89 18                	mov    %ebx,(%rax)
   14000704a:	0f b6 0e             	movzbl (%rsi),%ecx
   14000704d:	4c 8d 40 04          	lea    0x4(%rax),%r8
   140007051:	88 48 04             	mov    %cl,0x4(%rax)
   140007054:	4c 89 c0             	mov    %r8,%rax
   140007057:	84 c9                	test   %cl,%cl
   140007059:	74 16                	je     140007071 <__nrv_alloc_D2A+0x61>
   14000705b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007060:	0f b6 0a             	movzbl (%rdx),%ecx
   140007063:	48 83 c0 01          	add    $0x1,%rax
   140007067:	48 83 c2 01          	add    $0x1,%rdx
   14000706b:	88 08                	mov    %cl,(%rax)
   14000706d:	84 c9                	test   %cl,%cl
   14000706f:	75 ef                	jne    140007060 <__nrv_alloc_D2A+0x50>
   140007071:	48 85 ff             	test   %rdi,%rdi
   140007074:	74 03                	je     140007079 <__nrv_alloc_D2A+0x69>
   140007076:	48 89 07             	mov    %rax,(%rdi)
   140007079:	4c 89 c0             	mov    %r8,%rax
   14000707c:	48 83 c4 20          	add    $0x20,%rsp
   140007080:	5b                   	pop    %rbx
   140007081:	5e                   	pop    %rsi
   140007082:	5f                   	pop    %rdi
   140007083:	c3                   	ret
   140007084:	0f 1f 40 00          	nopl   0x0(%rax)
   140007088:	31 db                	xor    %ebx,%ebx
   14000708a:	eb b1                	jmp    14000703d <__nrv_alloc_D2A+0x2d>
   14000708c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140007090 <__freedtoa>:
   140007090:	ba 01 00 00 00       	mov    $0x1,%edx
   140007095:	48 89 c8             	mov    %rcx,%rax
   140007098:	8b 49 fc             	mov    -0x4(%rcx),%ecx
   14000709b:	d3 e2                	shl    %cl,%edx
   14000709d:	66 0f 6e c1          	movd   %ecx,%xmm0
   1400070a1:	48 8d 48 fc          	lea    -0x4(%rax),%rcx
   1400070a5:	66 0f 6e ca          	movd   %edx,%xmm1
   1400070a9:	66 0f 62 c1          	punpckldq %xmm1,%xmm0
   1400070ad:	66 0f d6 40 04       	movq   %xmm0,0x4(%rax)
   1400070b2:	e9 79 1c 00 00       	jmp    140008d30 <__Bfree_D2A>
   1400070b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400070be:	00 00 

00000001400070c0 <__quorem_D2A>:
   1400070c0:	41 57                	push   %r15
   1400070c2:	41 56                	push   %r14
   1400070c4:	41 55                	push   %r13
   1400070c6:	41 54                	push   %r12
   1400070c8:	55                   	push   %rbp
   1400070c9:	57                   	push   %rdi
   1400070ca:	56                   	push   %rsi
   1400070cb:	53                   	push   %rbx
   1400070cc:	48 83 ec 38          	sub    $0x38,%rsp
   1400070d0:	31 c0                	xor    %eax,%eax
   1400070d2:	8b 72 14             	mov    0x14(%rdx),%esi
   1400070d5:	49 89 cc             	mov    %rcx,%r12
   1400070d8:	49 89 d3             	mov    %rdx,%r11
   1400070db:	39 71 14             	cmp    %esi,0x14(%rcx)
   1400070de:	0f 8c f0 00 00 00    	jl     1400071d4 <__quorem_D2A+0x114>
   1400070e4:	83 ee 01             	sub    $0x1,%esi
   1400070e7:	48 8d 5a 18          	lea    0x18(%rdx),%rbx
   1400070eb:	48 8d 69 18          	lea    0x18(%rcx),%rbp
   1400070ef:	31 d2                	xor    %edx,%edx
   1400070f1:	4c 63 d6             	movslq %esi,%r10
   1400070f4:	49 c1 e2 02          	shl    $0x2,%r10
   1400070f8:	4a 8d 3c 13          	lea    (%rbx,%r10,1),%rdi
   1400070fc:	49 01 ea             	add    %rbp,%r10
   1400070ff:	8b 07                	mov    (%rdi),%eax
   140007101:	45 8b 02             	mov    (%r10),%r8d
   140007104:	8d 48 01             	lea    0x1(%rax),%ecx
   140007107:	44 89 c0             	mov    %r8d,%eax
   14000710a:	f7 f1                	div    %ecx
   14000710c:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
   140007110:	41 89 c5             	mov    %eax,%r13d
   140007113:	41 39 c8             	cmp    %ecx,%r8d
   140007116:	72 5e                	jb     140007176 <__quorem_D2A+0xb6>
   140007118:	41 89 c7             	mov    %eax,%r15d
   14000711b:	49 89 d9             	mov    %rbx,%r9
   14000711e:	49 89 e8             	mov    %rbp,%r8
   140007121:	45 31 f6             	xor    %r14d,%r14d
   140007124:	31 c9                	xor    %ecx,%ecx
   140007126:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000712d:	00 00 00 
   140007130:	41 8b 01             	mov    (%r9),%eax
   140007133:	41 8b 10             	mov    (%r8),%edx
   140007136:	49 83 c1 04          	add    $0x4,%r9
   14000713a:	49 83 c0 04          	add    $0x4,%r8
   14000713e:	49 0f af c7          	imul   %r15,%rax
   140007142:	4c 01 f0             	add    %r14,%rax
   140007145:	49 89 c6             	mov    %rax,%r14
   140007148:	89 c0                	mov    %eax,%eax
   14000714a:	48 29 c2             	sub    %rax,%rdx
   14000714d:	49 c1 ee 20          	shr    $0x20,%r14
   140007151:	48 89 d0             	mov    %rdx,%rax
   140007154:	48 29 c8             	sub    %rcx,%rax
   140007157:	48 89 c1             	mov    %rax,%rcx
   14000715a:	41 89 40 fc          	mov    %eax,-0x4(%r8)
   14000715e:	48 c1 e9 20          	shr    $0x20,%rcx
   140007162:	83 e1 01             	and    $0x1,%ecx
   140007165:	4c 39 cf             	cmp    %r9,%rdi
   140007168:	73 c6                	jae    140007130 <__quorem_D2A+0x70>
   14000716a:	45 8b 0a             	mov    (%r10),%r9d
   14000716d:	45 85 c9             	test   %r9d,%r9d
   140007170:	0f 84 a5 00 00 00    	je     14000721b <__quorem_D2A+0x15b>
   140007176:	4c 89 da             	mov    %r11,%rdx
   140007179:	4c 89 e1             	mov    %r12,%rcx
   14000717c:	e8 8f 21 00 00       	call   140009310 <__cmp_D2A>
   140007181:	85 c0                	test   %eax,%eax
   140007183:	78 4b                	js     1400071d0 <__quorem_D2A+0x110>
   140007185:	48 89 e9             	mov    %rbp,%rcx
   140007188:	31 d2                	xor    %edx,%edx
   14000718a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140007190:	8b 01                	mov    (%rcx),%eax
   140007192:	44 8b 03             	mov    (%rbx),%r8d
   140007195:	48 83 c3 04          	add    $0x4,%rbx
   140007199:	48 83 c1 04          	add    $0x4,%rcx
   14000719d:	4c 29 c0             	sub    %r8,%rax
   1400071a0:	48 29 d0             	sub    %rdx,%rax
   1400071a3:	48 89 c2             	mov    %rax,%rdx
   1400071a6:	89 41 fc             	mov    %eax,-0x4(%rcx)
   1400071a9:	48 c1 ea 20          	shr    $0x20,%rdx
   1400071ad:	83 e2 01             	and    $0x1,%edx
   1400071b0:	48 39 df             	cmp    %rbx,%rdi
   1400071b3:	73 db                	jae    140007190 <__quorem_D2A+0xd0>
   1400071b5:	48 63 c6             	movslq %esi,%rax
   1400071b8:	48 8d 44 85 00       	lea    0x0(%rbp,%rax,4),%rax
   1400071bd:	8b 08                	mov    (%rax),%ecx
   1400071bf:	85 c9                	test   %ecx,%ecx
   1400071c1:	74 2e                	je     1400071f1 <__quorem_D2A+0x131>
   1400071c3:	41 8d 45 01          	lea    0x1(%r13),%eax
   1400071c7:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
   1400071cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400071d0:	8b 44 24 2c          	mov    0x2c(%rsp),%eax
   1400071d4:	48 83 c4 38          	add    $0x38,%rsp
   1400071d8:	5b                   	pop    %rbx
   1400071d9:	5e                   	pop    %rsi
   1400071da:	5f                   	pop    %rdi
   1400071db:	5d                   	pop    %rbp
   1400071dc:	41 5c                	pop    %r12
   1400071de:	41 5d                	pop    %r13
   1400071e0:	41 5e                	pop    %r14
   1400071e2:	41 5f                	pop    %r15
   1400071e4:	c3                   	ret
   1400071e5:	0f 1f 00             	nopl   (%rax)
   1400071e8:	8b 10                	mov    (%rax),%edx
   1400071ea:	85 d2                	test   %edx,%edx
   1400071ec:	75 0c                	jne    1400071fa <__quorem_D2A+0x13a>
   1400071ee:	83 ee 01             	sub    $0x1,%esi
   1400071f1:	48 83 e8 04          	sub    $0x4,%rax
   1400071f5:	48 39 c5             	cmp    %rax,%rbp
   1400071f8:	72 ee                	jb     1400071e8 <__quorem_D2A+0x128>
   1400071fa:	41 8d 45 01          	lea    0x1(%r13),%eax
   1400071fe:	41 89 74 24 14       	mov    %esi,0x14(%r12)
   140007203:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
   140007207:	eb c7                	jmp    1400071d0 <__quorem_D2A+0x110>
   140007209:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007210:	45 8b 02             	mov    (%r10),%r8d
   140007213:	45 85 c0             	test   %r8d,%r8d
   140007216:	75 0c                	jne    140007224 <__quorem_D2A+0x164>
   140007218:	83 ee 01             	sub    $0x1,%esi
   14000721b:	49 83 ea 04          	sub    $0x4,%r10
   14000721f:	4c 39 d5             	cmp    %r10,%rbp
   140007222:	72 ec                	jb     140007210 <__quorem_D2A+0x150>
   140007224:	41 89 74 24 14       	mov    %esi,0x14(%r12)
   140007229:	4c 89 da             	mov    %r11,%rdx
   14000722c:	4c 89 e1             	mov    %r12,%rcx
   14000722f:	e8 dc 20 00 00       	call   140009310 <__cmp_D2A>
   140007234:	85 c0                	test   %eax,%eax
   140007236:	0f 89 49 ff ff ff    	jns    140007185 <__quorem_D2A+0xc5>
   14000723c:	eb 92                	jmp    1400071d0 <__quorem_D2A+0x110>
   14000723e:	90                   	nop
   14000723f:	90                   	nop

0000000140007240 <__gdtoa>:
   140007240:	41 57                	push   %r15
   140007242:	41 56                	push   %r14
   140007244:	41 55                	push   %r13
   140007246:	41 54                	push   %r12
   140007248:	55                   	push   %rbp
   140007249:	57                   	push   %rdi
   14000724a:	56                   	push   %rsi
   14000724b:	53                   	push   %rbx
   14000724c:	48 81 ec b8 00 00 00 	sub    $0xb8,%rsp
   140007253:	8b 84 24 20 01 00 00 	mov    0x120(%rsp),%eax
   14000725a:	41 8b 29             	mov    (%r9),%ebp
   14000725d:	89 44 24 30          	mov    %eax,0x30(%rsp)
   140007261:	49 89 cd             	mov    %rcx,%r13
   140007264:	4c 89 c7             	mov    %r8,%rdi
   140007267:	4d 89 cf             	mov    %r9,%r15
   14000726a:	8b 84 24 28 01 00 00 	mov    0x128(%rsp),%eax
   140007271:	89 54 24 38          	mov    %edx,0x38(%rsp)
   140007275:	89 44 24 50          	mov    %eax,0x50(%rsp)
   140007279:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
   140007280:	00 
   140007281:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140007286:	48 8b 84 24 38 01 00 	mov    0x138(%rsp),%rax
   14000728d:	00 
   14000728e:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140007293:	89 e8                	mov    %ebp,%eax
   140007295:	83 e0 cf             	and    $0xffffffcf,%eax
   140007298:	41 89 01             	mov    %eax,(%r9)
   14000729b:	89 e8                	mov    %ebp,%eax
   14000729d:	83 e0 07             	and    $0x7,%eax
   1400072a0:	83 f8 03             	cmp    $0x3,%eax
   1400072a3:	0f 84 b7 02 00 00    	je     140007560 <__gdtoa+0x320>
   1400072a9:	89 eb                	mov    %ebp,%ebx
   1400072ab:	83 e3 04             	and    $0x4,%ebx
   1400072ae:	89 5c 24 40          	mov    %ebx,0x40(%rsp)
   1400072b2:	0f 85 20 02 00 00    	jne    1400074d8 <__gdtoa+0x298>
   1400072b8:	85 c0                	test   %eax,%eax
   1400072ba:	0f 84 60 02 00 00    	je     140007520 <__gdtoa+0x2e0>
   1400072c0:	44 8b 21             	mov    (%rcx),%r12d
   1400072c3:	b8 20 00 00 00       	mov    $0x20,%eax
   1400072c8:	31 c9                	xor    %ecx,%ecx
   1400072ca:	41 83 fc 20          	cmp    $0x20,%r12d
   1400072ce:	7e 0a                	jle    1400072da <__gdtoa+0x9a>
   1400072d0:	01 c0                	add    %eax,%eax
   1400072d2:	83 c1 01             	add    $0x1,%ecx
   1400072d5:	41 39 c4             	cmp    %eax,%r12d
   1400072d8:	7f f6                	jg     1400072d0 <__gdtoa+0x90>
   1400072da:	e8 61 19 00 00       	call   140008c40 <__Balloc_D2A>
   1400072df:	45 8d 44 24 ff       	lea    -0x1(%r12),%r8d
   1400072e4:	41 c1 f8 05          	sar    $0x5,%r8d
   1400072e8:	48 89 c6             	mov    %rax,%rsi
   1400072eb:	48 8d 50 18          	lea    0x18(%rax),%rdx
   1400072ef:	48 89 f8             	mov    %rdi,%rax
   1400072f2:	4d 63 c0             	movslq %r8d,%r8
   1400072f5:	4a 8d 0c 87          	lea    (%rdi,%r8,4),%rcx
   1400072f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007300:	44 8b 08             	mov    (%rax),%r9d
   140007303:	48 83 c0 04          	add    $0x4,%rax
   140007307:	48 83 c2 04          	add    $0x4,%rdx
   14000730b:	44 89 4a fc          	mov    %r9d,-0x4(%rdx)
   14000730f:	48 39 c1             	cmp    %rax,%rcx
   140007312:	73 ec                	jae    140007300 <__gdtoa+0xc0>
   140007314:	48 8d 57 01          	lea    0x1(%rdi),%rdx
   140007318:	48 83 c1 01          	add    $0x1,%rcx
   14000731c:	4a 8d 04 85 04 00 00 	lea    0x4(,%r8,4),%rax
   140007323:	00 
   140007324:	48 39 d1             	cmp    %rdx,%rcx
   140007327:	ba 04 00 00 00       	mov    $0x4,%edx
   14000732c:	48 0f 42 c2          	cmovb  %rdx,%rax
   140007330:	49 89 c6             	mov    %rax,%r14
   140007333:	48 01 f0             	add    %rsi,%rax
   140007336:	49 c1 fe 02          	sar    $0x2,%r14
   14000733a:	eb 11                	jmp    14000734d <__gdtoa+0x10d>
   14000733c:	0f 1f 40 00          	nopl   0x0(%rax)
   140007340:	48 83 e8 04          	sub    $0x4,%rax
   140007344:	45 85 f6             	test   %r14d,%r14d
   140007347:	0f 84 3b 02 00 00    	je     140007588 <__gdtoa+0x348>
   14000734d:	8b 48 14             	mov    0x14(%rax),%ecx
   140007350:	44 89 f2             	mov    %r14d,%edx
   140007353:	41 83 ee 01          	sub    $0x1,%r14d
   140007357:	85 c9                	test   %ecx,%ecx
   140007359:	74 e5                	je     140007340 <__gdtoa+0x100>
   14000735b:	4d 63 f6             	movslq %r14d,%r14
   14000735e:	89 56 14             	mov    %edx,0x14(%rsi)
   140007361:	c1 e2 05             	shl    $0x5,%edx
   140007364:	42 0f bd 44 b6 18    	bsr    0x18(%rsi,%r14,4),%eax
   14000736a:	83 f0 1f             	xor    $0x1f,%eax
   14000736d:	29 c2                	sub    %eax,%edx
   14000736f:	41 89 d6             	mov    %edx,%r14d
   140007372:	48 89 f1             	mov    %rsi,%rcx
   140007375:	e8 56 17 00 00       	call   140008ad0 <__trailz_D2A>
   14000737a:	8b 5c 24 38          	mov    0x38(%rsp),%ebx
   14000737e:	89 84 24 ac 00 00 00 	mov    %eax,0xac(%rsp)
   140007385:	89 5c 24 58          	mov    %ebx,0x58(%rsp)
   140007389:	85 c0                	test   %eax,%eax
   14000738b:	0f 85 07 02 00 00    	jne    140007598 <__gdtoa+0x358>
   140007391:	8b 46 14             	mov    0x14(%rsi),%eax
   140007394:	85 c0                	test   %eax,%eax
   140007396:	0f 84 7c 01 00 00    	je     140007518 <__gdtoa+0x2d8>
   14000739c:	48 8d 94 24 ac 00 00 	lea    0xac(%rsp),%rdx
   1400073a3:	00 
   1400073a4:	48 89 f1             	mov    %rsi,%rcx
   1400073a7:	e8 94 21 00 00       	call   140009540 <__b2d_D2A>
   1400073ac:	8b 44 24 58          	mov    0x58(%rsp),%eax
   1400073b0:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400073b4:	66 48 0f 7e c2       	movq   %xmm0,%rdx
   1400073b9:	46 8d 04 30          	lea    (%rax,%r14,1),%r8d
   1400073bd:	48 89 d0             	mov    %rdx,%rax
   1400073c0:	89 d2                	mov    %edx,%edx
   1400073c2:	48 c1 e8 20          	shr    $0x20,%rax
   1400073c6:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
   1400073ca:	25 ff ff 0f 00       	and    $0xfffff,%eax
   1400073cf:	f2 0f 2a c9          	cvtsi2sd %ecx,%xmm1
   1400073d3:	f2 0f 59 0d 4d 52 00 	mulsd  0x524d(%rip),%xmm1        # 14000c628 <.rdata+0x28>
   1400073da:	00 
   1400073db:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
   1400073e0:	49 89 c1             	mov    %rax,%r9
   1400073e3:	49 c1 e1 20          	shl    $0x20,%r9
   1400073e7:	4c 09 ca             	or     %r9,%rdx
   1400073ea:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   1400073f0:	45 29 c1             	sub    %r8d,%r9d
   1400073f3:	66 48 0f 6e c2       	movq   %rdx,%xmm0
   1400073f8:	85 c9                	test   %ecx,%ecx
   1400073fa:	f2 0f 5c 05 0e 52 00 	subsd  0x520e(%rip),%xmm0        # 14000c610 <.rdata+0x10>
   140007401:	00 
   140007402:	f2 0f 59 05 0e 52 00 	mulsd  0x520e(%rip),%xmm0        # 14000c618 <.rdata+0x18>
   140007409:	00 
   14000740a:	44 0f 49 c9          	cmovns %ecx,%r9d
   14000740e:	f2 0f 58 05 0a 52 00 	addsd  0x520a(%rip),%xmm0        # 14000c620 <.rdata+0x20>
   140007415:	00 
   140007416:	41 81 e9 35 04 00 00 	sub    $0x435,%r9d
   14000741d:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
   140007421:	45 85 c9             	test   %r9d,%r9d
   140007424:	7e 15                	jle    14000743b <__gdtoa+0x1fb>
   140007426:	66 0f ef c9          	pxor   %xmm1,%xmm1
   14000742a:	f2 41 0f 2a c9       	cvtsi2sd %r9d,%xmm1
   14000742f:	f2 0f 59 0d f9 51 00 	mulsd  0x51f9(%rip),%xmm1        # 14000c630 <.rdata+0x30>
   140007436:	00 
   140007437:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
   14000743b:	66 0f ef c9          	pxor   %xmm1,%xmm1
   14000743f:	f2 44 0f 2c d0       	cvttsd2si %xmm0,%r10d
   140007444:	66 0f 2f c8          	comisd %xmm0,%xmm1
   140007448:	0f 87 02 08 00 00    	ja     140007c50 <__gdtoa+0xa10>
   14000744e:	41 89 c9             	mov    %ecx,%r9d
   140007451:	89 d2                	mov    %edx,%edx
   140007453:	41 c1 e1 14          	shl    $0x14,%r9d
   140007457:	44 01 c8             	add    %r9d,%eax
   14000745a:	89 c0                	mov    %eax,%eax
   14000745c:	48 c1 e0 20          	shl    $0x20,%rax
   140007460:	48 09 c2             	or     %rax,%rdx
   140007463:	44 89 f0             	mov    %r14d,%eax
   140007466:	29 c8                	sub    %ecx,%eax
   140007468:	48 89 94 24 80 00 00 	mov    %rdx,0x80(%rsp)
   14000746f:	00 
   140007470:	44 8d 58 ff          	lea    -0x1(%rax),%r11d
   140007474:	41 83 fa 16          	cmp    $0x16,%r10d
   140007478:	0f 87 42 01 00 00    	ja     1400075c0 <__gdtoa+0x380>
   14000747e:	4c 8b 0d 0b 55 00 00 	mov    0x550b(%rip),%r9        # 14000c990 <.refptr.__tens_D2A>
   140007485:	49 63 ca             	movslq %r10d,%rcx
   140007488:	66 48 0f 6e ea       	movq   %rdx,%xmm5
   14000748d:	f2 41 0f 10 04 c9    	movsd  (%r9,%rcx,8),%xmm0
   140007493:	66 0f 2f c5          	comisd %xmm5,%xmm0
   140007497:	0f 87 eb 07 00 00    	ja     140007c88 <__gdtoa+0xa48>
   14000749d:	c7 44 24 7c 00 00 00 	movl   $0x0,0x7c(%rsp)
   1400074a4:	00 
   1400074a5:	c7 44 24 60 00 00 00 	movl   $0x0,0x60(%rsp)
   1400074ac:	00 
   1400074ad:	85 c0                	test   %eax,%eax
   1400074af:	7f 0f                	jg     1400074c0 <__gdtoa+0x280>
   1400074b1:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400074b6:	45 31 db             	xor    %r11d,%r11d
   1400074b9:	29 c1                	sub    %eax,%ecx
   1400074bb:	89 4c 24 60          	mov    %ecx,0x60(%rsp)
   1400074bf:	90                   	nop
   1400074c0:	44 89 54 24 68       	mov    %r10d,0x68(%rsp)
   1400074c5:	45 01 d3             	add    %r10d,%r11d
   1400074c8:	c7 44 24 70 00 00 00 	movl   $0x0,0x70(%rsp)
   1400074cf:	00 
   1400074d0:	e9 2d 01 00 00       	jmp    140007602 <__gdtoa+0x3c2>
   1400074d5:	0f 1f 00             	nopl   (%rax)
   1400074d8:	31 ff                	xor    %edi,%edi
   1400074da:	83 f8 04             	cmp    $0x4,%eax
   1400074dd:	75 66                	jne    140007545 <__gdtoa+0x305>
   1400074df:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   1400074e4:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
   1400074e9:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   1400074ef:	48 8d 0d 13 51 00 00 	lea    0x5113(%rip),%rcx        # 14000c609 <.rdata+0x9>
   1400074f6:	c7 00 00 80 ff ff    	movl   $0xffff8000,(%rax)
   1400074fc:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
   140007503:	5b                   	pop    %rbx
   140007504:	5e                   	pop    %rsi
   140007505:	5f                   	pop    %rdi
   140007506:	5d                   	pop    %rbp
   140007507:	41 5c                	pop    %r12
   140007509:	41 5d                	pop    %r13
   14000750b:	41 5e                	pop    %r14
   14000750d:	41 5f                	pop    %r15
   14000750f:	e9 fc fa ff ff       	jmp    140007010 <__nrv_alloc_D2A>
   140007514:	0f 1f 40 00          	nopl   0x0(%rax)
   140007518:	48 89 f1             	mov    %rsi,%rcx
   14000751b:	e8 10 18 00 00       	call   140008d30 <__Bfree_D2A>
   140007520:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   140007525:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
   14000752a:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   140007530:	48 8d 0d d6 50 00 00 	lea    0x50d6(%rip),%rcx        # 14000c60d <.rdata+0xd>
   140007537:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000753d:	e8 ce fa ff ff       	call   140007010 <__nrv_alloc_D2A>
   140007542:	48 89 c7             	mov    %rax,%rdi
   140007545:	48 89 f8             	mov    %rdi,%rax
   140007548:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
   14000754f:	5b                   	pop    %rbx
   140007550:	5e                   	pop    %rsi
   140007551:	5f                   	pop    %rdi
   140007552:	5d                   	pop    %rbp
   140007553:	41 5c                	pop    %r12
   140007555:	41 5d                	pop    %r13
   140007557:	41 5e                	pop    %r14
   140007559:	41 5f                	pop    %r15
   14000755b:	c3                   	ret
   14000755c:	0f 1f 40 00          	nopl   0x0(%rax)
   140007560:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   140007565:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
   14000756a:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140007570:	48 8d 0d 89 50 00 00 	lea    0x5089(%rip),%rcx        # 14000c600 <.rdata>
   140007577:	c7 00 00 80 ff ff    	movl   $0xffff8000,(%rax)
   14000757d:	e9 7a ff ff ff       	jmp    1400074fc <__gdtoa+0x2bc>
   140007582:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140007588:	c7 46 14 00 00 00 00 	movl   $0x0,0x14(%rsi)
   14000758f:	e9 de fd ff ff       	jmp    140007372 <__gdtoa+0x132>
   140007594:	0f 1f 40 00          	nopl   0x0(%rax)
   140007598:	89 c2                	mov    %eax,%edx
   14000759a:	48 89 f1             	mov    %rsi,%rcx
   14000759d:	e8 2e 14 00 00       	call   1400089d0 <__rshift_D2A>
   1400075a2:	8b 84 24 ac 00 00 00 	mov    0xac(%rsp),%eax
   1400075a9:	8b 5c 24 38          	mov    0x38(%rsp),%ebx
   1400075ad:	01 c3                	add    %eax,%ebx
   1400075af:	41 29 c6             	sub    %eax,%r14d
   1400075b2:	89 5c 24 58          	mov    %ebx,0x58(%rsp)
   1400075b6:	e9 d6 fd ff ff       	jmp    140007391 <__gdtoa+0x151>
   1400075bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400075c0:	c7 44 24 7c 01 00 00 	movl   $0x1,0x7c(%rsp)
   1400075c7:	00 
   1400075c8:	c7 44 24 60 00 00 00 	movl   $0x0,0x60(%rsp)
   1400075cf:	00 
   1400075d0:	45 85 db             	test   %r11d,%r11d
   1400075d3:	79 0e                	jns    1400075e3 <__gdtoa+0x3a3>
   1400075d5:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400075da:	45 31 db             	xor    %r11d,%r11d
   1400075dd:	29 c1                	sub    %eax,%ecx
   1400075df:	89 4c 24 60          	mov    %ecx,0x60(%rsp)
   1400075e3:	45 85 d2             	test   %r10d,%r10d
   1400075e6:	0f 89 d4 fe ff ff    	jns    1400074c0 <__gdtoa+0x280>
   1400075ec:	44 89 d0             	mov    %r10d,%eax
   1400075ef:	44 29 54 24 60       	sub    %r10d,0x60(%rsp)
   1400075f4:	f7 d8                	neg    %eax
   1400075f6:	44 89 54 24 68       	mov    %r10d,0x68(%rsp)
   1400075fb:	45 31 d2             	xor    %r10d,%r10d
   1400075fe:	89 44 24 70          	mov    %eax,0x70(%rsp)
   140007602:	8b 44 24 30          	mov    0x30(%rsp),%eax
   140007606:	83 f8 09             	cmp    $0x9,%eax
   140007609:	0f 87 91 02 00 00    	ja     1400078a0 <__gdtoa+0x660>
   14000760f:	83 f8 05             	cmp    $0x5,%eax
   140007612:	0f 8f 88 06 00 00    	jg     140007ca0 <__gdtoa+0xa60>
   140007618:	41 81 c0 fd 03 00 00 	add    $0x3fd,%r8d
   14000761f:	31 c0                	xor    %eax,%eax
   140007621:	41 81 f8 f7 07 00 00 	cmp    $0x7f7,%r8d
   140007628:	0f 96 c0             	setbe  %al
   14000762b:	89 84 24 9c 00 00 00 	mov    %eax,0x9c(%rsp)
   140007632:	8b 44 24 30          	mov    0x30(%rsp),%eax
   140007636:	83 f8 04             	cmp    $0x4,%eax
   140007639:	0f 84 9b 06 00 00    	je     140007cda <__gdtoa+0xa9a>
   14000763f:	83 f8 05             	cmp    $0x5,%eax
   140007642:	0f 84 1a 0b 00 00    	je     140008162 <__gdtoa+0xf22>
   140007648:	c7 44 24 78 00 00 00 	movl   $0x0,0x78(%rsp)
   14000764f:	00 
   140007650:	83 f8 02             	cmp    $0x2,%eax
   140007653:	0f 84 89 06 00 00    	je     140007ce2 <__gdtoa+0xaa2>
   140007659:	83 f8 03             	cmp    $0x3,%eax
   14000765c:	0f 85 46 02 00 00    	jne    1400078a8 <__gdtoa+0x668>
   140007662:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
   140007666:	8b 44 24 68          	mov    0x68(%rsp),%eax
   14000766a:	01 d8                	add    %ebx,%eax
   14000766c:	8d 58 01             	lea    0x1(%rax),%ebx
   14000766f:	89 84 24 98 00 00 00 	mov    %eax,0x98(%rsp)
   140007676:	b8 01 00 00 00       	mov    $0x1,%eax
   14000767b:	85 db                	test   %ebx,%ebx
   14000767d:	89 5c 24 48          	mov    %ebx,0x48(%rsp)
   140007681:	0f 4f c3             	cmovg  %ebx,%eax
   140007684:	89 c1                	mov    %eax,%ecx
   140007686:	48 89 94 24 90 00 00 	mov    %rdx,0x90(%rsp)
   14000768d:	00 
   14000768e:	44 89 9c 24 8c 00 00 	mov    %r11d,0x8c(%rsp)
   140007695:	00 
   140007696:	44 89 94 24 88 00 00 	mov    %r10d,0x88(%rsp)
   14000769d:	00 
   14000769e:	89 84 24 ac 00 00 00 	mov    %eax,0xac(%rsp)
   1400076a5:	e8 26 f9 ff ff       	call   140006fd0 <__rv_alloc_D2A>
   1400076aa:	44 8b 94 24 88 00 00 	mov    0x88(%rsp),%r10d
   1400076b1:	00 
   1400076b2:	44 8b 9c 24 8c 00 00 	mov    0x8c(%rsp),%r11d
   1400076b9:	00 
   1400076ba:	48 89 c3             	mov    %rax,%rbx
   1400076bd:	41 8b 45 0c          	mov    0xc(%r13),%eax
   1400076c1:	48 8b 94 24 90 00 00 	mov    0x90(%rsp),%rdx
   1400076c8:	00 
   1400076c9:	83 e8 01             	sub    $0x1,%eax
   1400076cc:	89 44 24 54          	mov    %eax,0x54(%rsp)
   1400076d0:	74 24                	je     1400076f6 <__gdtoa+0x4b6>
   1400076d2:	b8 02 00 00 00       	mov    $0x2,%eax
   1400076d7:	0f 49 44 24 54       	cmovns 0x54(%rsp),%eax
   1400076dc:	83 e5 08             	and    $0x8,%ebp
   1400076df:	89 44 24 54          	mov    %eax,0x54(%rsp)
   1400076e3:	89 c1                	mov    %eax,%ecx
   1400076e5:	0f 84 2f 02 00 00    	je     14000791a <__gdtoa+0x6da>
   1400076eb:	b8 03 00 00 00       	mov    $0x3,%eax
   1400076f0:	29 c8                	sub    %ecx,%eax
   1400076f2:	89 44 24 54          	mov    %eax,0x54(%rsp)
   1400076f6:	83 7c 24 48 0e       	cmpl   $0xe,0x48(%rsp)
   1400076fb:	41 0f 96 c0          	setbe  %r8b
   1400076ff:	44 22 84 24 9c 00 00 	and    0x9c(%rsp),%r8b
   140007706:	00 
   140007707:	45 84 c0             	test   %r8b,%r8b
   14000770a:	0f 84 0a 02 00 00    	je     14000791a <__gdtoa+0x6da>
   140007710:	8b 44 24 68          	mov    0x68(%rsp),%eax
   140007714:	0b 44 24 54          	or     0x54(%rsp),%eax
   140007718:	0f 85 fc 01 00 00    	jne    14000791a <__gdtoa+0x6da>
   14000771e:	c7 84 24 ac 00 00 00 	movl   $0x0,0xac(%rsp)
   140007725:	00 00 00 00 
   140007729:	8b 6c 24 7c          	mov    0x7c(%rsp),%ebp
   14000772d:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140007734:	00 00 
   140007736:	85 ed                	test   %ebp,%ebp
   140007738:	74 12                	je     14000774c <__gdtoa+0x50c>
   14000773a:	f2 0f 10 25 fe 4e 00 	movsd  0x4efe(%rip),%xmm4        # 14000c640 <.rdata+0x40>
   140007741:	00 
   140007742:	66 0f 2f e0          	comisd %xmm0,%xmm4
   140007746:	0f 87 b8 0e 00 00    	ja     140008604 <__gdtoa+0x13c4>
   14000774c:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140007750:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
   140007754:	f2 0f 58 0d fc 4e 00 	addsd  0x4efc(%rip),%xmm1        # 14000c658 <.rdata+0x58>
   14000775b:	00 
   14000775c:	66 48 0f 7e c8       	movq   %xmm1,%rax
   140007761:	48 89 c1             	mov    %rax,%rcx
   140007764:	89 c0                	mov    %eax,%eax
   140007766:	48 c1 e9 20          	shr    $0x20,%rcx
   14000776a:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
   140007770:	48 c1 e1 20          	shl    $0x20,%rcx
   140007774:	48 09 c8             	or     %rcx,%rax
   140007777:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   14000777b:	85 c9                	test   %ecx,%ecx
   14000777d:	0f 84 d8 0b 00 00    	je     14000835b <__gdtoa+0x111b>
   140007783:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
   14000778a:	00 
   14000778b:	8b 6c 24 48          	mov    0x48(%rsp),%ebp
   14000778f:	48 8b 0d fa 51 00 00 	mov    0x51fa(%rip),%rcx        # 14000c990 <.refptr.__tens_D2A>
   140007796:	66 48 0f 6e d0       	movq   %rax,%xmm2
   14000779b:	8d 45 ff             	lea    -0x1(%rbp),%eax
   14000779e:	48 98                	cltq
   1400077a0:	f2 0f 10 1c c1       	movsd  (%rcx,%rax,8),%xmm3
   1400077a5:	8b 44 24 78          	mov    0x78(%rsp),%eax
   1400077a9:	85 c0                	test   %eax,%eax
   1400077ab:	0f 84 be 09 00 00    	je     14000816f <__gdtoa+0xf2f>
   1400077b1:	f2 0f 10 0d c7 4e 00 	movsd  0x4ec7(%rip),%xmm1        # 14000c680 <.rdata+0x80>
   1400077b8:	00 
   1400077b9:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
   1400077bd:	48 8d 53 01          	lea    0x1(%rbx),%rdx
   1400077c1:	f2 0f 5e cb          	divsd  %xmm3,%xmm1
   1400077c5:	f2 0f 5c ca          	subsd  %xmm2,%xmm1
   1400077c9:	66 0f ef d2          	pxor   %xmm2,%xmm2
   1400077cd:	f2 0f 2a d0          	cvtsi2sd %eax,%xmm2
   1400077d1:	83 c0 30             	add    $0x30,%eax
   1400077d4:	88 03                	mov    %al,(%rbx)
   1400077d6:	f2 0f 5c c2          	subsd  %xmm2,%xmm0
   1400077da:	66 0f 2f c8          	comisd %xmm0,%xmm1
   1400077de:	0f 87 10 10 00 00    	ja     1400087f4 <__gdtoa+0x15b4>
   1400077e4:	f2 0f 10 25 54 4e 00 	movsd  0x4e54(%rip),%xmm4        # 14000c640 <.rdata+0x40>
   1400077eb:	00 
   1400077ec:	f2 0f 10 1d 54 4e 00 	movsd  0x4e54(%rip),%xmm3        # 14000c648 <.rdata+0x48>
   1400077f3:	00 
   1400077f4:	eb 4f                	jmp    140007845 <__gdtoa+0x605>
   1400077f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400077fd:	00 00 00 
   140007800:	8b 84 24 ac 00 00 00 	mov    0xac(%rsp),%eax
   140007807:	83 c0 01             	add    $0x1,%eax
   14000780a:	89 84 24 ac 00 00 00 	mov    %eax,0xac(%rsp)
   140007811:	39 e8                	cmp    %ebp,%eax
   140007813:	0f 8d 6b 0b 00 00    	jge    140008384 <__gdtoa+0x1144>
   140007819:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
   14000781d:	66 0f ef d2          	pxor   %xmm2,%xmm2
   140007821:	48 83 c2 01          	add    $0x1,%rdx
   140007825:	f2 0f 59 cb          	mulsd  %xmm3,%xmm1
   140007829:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
   14000782d:	f2 0f 2a d0          	cvtsi2sd %eax,%xmm2
   140007831:	83 c0 30             	add    $0x30,%eax
   140007834:	88 42 ff             	mov    %al,-0x1(%rdx)
   140007837:	f2 0f 5c c2          	subsd  %xmm2,%xmm0
   14000783b:	66 0f 2f c8          	comisd %xmm0,%xmm1
   14000783f:	0f 87 af 0f 00 00    	ja     1400087f4 <__gdtoa+0x15b4>
   140007845:	66 0f 28 d4          	movapd %xmm4,%xmm2
   140007849:	f2 0f 5c d0          	subsd  %xmm0,%xmm2
   14000784d:	66 0f 2f ca          	comisd %xmm2,%xmm1
   140007851:	76 ad                	jbe    140007800 <__gdtoa+0x5c0>
   140007853:	48 89 df             	mov    %rbx,%rdi
   140007856:	0f b6 4a ff          	movzbl -0x1(%rdx),%ecx
   14000785a:	48 89 d3             	mov    %rdx,%rbx
   14000785d:	eb 11                	jmp    140007870 <__gdtoa+0x630>
   14000785f:	90                   	nop
   140007860:	48 39 f8             	cmp    %rdi,%rax
   140007863:	0f 84 af 0e 00 00    	je     140008718 <__gdtoa+0x14d8>
   140007869:	0f b6 48 ff          	movzbl -0x1(%rax),%ecx
   14000786d:	48 89 c3             	mov    %rax,%rbx
   140007870:	48 8d 43 ff          	lea    -0x1(%rbx),%rax
   140007874:	80 f9 39             	cmp    $0x39,%cl
   140007877:	74 e7                	je     140007860 <__gdtoa+0x620>
   140007879:	83 c1 01             	add    $0x1,%ecx
   14000787c:	88 08                	mov    %cl,(%rax)
   14000787e:	8b 44 24 54          	mov    0x54(%rsp),%eax
   140007882:	c7 44 24 40 20 00 00 	movl   $0x20,0x40(%rsp)
   140007889:	00 
   14000788a:	83 c0 01             	add    $0x1,%eax
   14000788d:	89 44 24 50          	mov    %eax,0x50(%rsp)
   140007891:	e9 6f 03 00 00       	jmp    140007c05 <__gdtoa+0x9c5>
   140007896:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000789d:	00 00 00 
   1400078a0:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%rsp)
   1400078a7:	00 
   1400078a8:	66 0f ef c0          	pxor   %xmm0,%xmm0
   1400078ac:	44 89 9c 24 8c 00 00 	mov    %r11d,0x8c(%rsp)
   1400078b3:	00 
   1400078b4:	f2 41 0f 2a c4       	cvtsi2sd %r12d,%xmm0
   1400078b9:	f2 0f 59 05 77 4d 00 	mulsd  0x4d77(%rip),%xmm0        # 14000c638 <.rdata+0x38>
   1400078c0:	00 
   1400078c1:	44 89 94 24 88 00 00 	mov    %r10d,0x88(%rsp)
   1400078c8:	00 
   1400078c9:	f2 0f 2c c8          	cvttsd2si %xmm0,%ecx
   1400078cd:	83 c1 03             	add    $0x3,%ecx
   1400078d0:	89 8c 24 ac 00 00 00 	mov    %ecx,0xac(%rsp)
   1400078d7:	e8 f4 f6 ff ff       	call   140006fd0 <__rv_alloc_D2A>
   1400078dc:	c7 44 24 50 00 00 00 	movl   $0x0,0x50(%rsp)
   1400078e3:	00 
   1400078e4:	44 8b 94 24 88 00 00 	mov    0x88(%rsp),%r10d
   1400078eb:	00 
   1400078ec:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
   1400078f3:	00 
   1400078f4:	44 8b 9c 24 8c 00 00 	mov    0x8c(%rsp),%r11d
   1400078fb:	00 
   1400078fc:	48 89 c3             	mov    %rax,%rbx
   1400078ff:	c7 44 24 78 01 00 00 	movl   $0x1,0x78(%rsp)
   140007906:	00 
   140007907:	c7 84 24 98 00 00 00 	movl   $0xffffffff,0x98(%rsp)
   14000790e:	ff ff ff ff 
   140007912:	c7 44 24 48 ff ff ff 	movl   $0xffffffff,0x48(%rsp)
   140007919:	ff 
   14000791a:	8b 44 24 58          	mov    0x58(%rsp),%eax
   14000791e:	85 c0                	test   %eax,%eax
   140007920:	78 6e                	js     140007990 <__gdtoa+0x750>
   140007922:	48 63 44 24 68       	movslq 0x68(%rsp),%rax
   140007927:	41 3b 45 14          	cmp    0x14(%r13),%eax
   14000792b:	7f 63                	jg     140007990 <__gdtoa+0x750>
   14000792d:	48 8b 15 5c 50 00 00 	mov    0x505c(%rip),%rdx        # 14000c990 <.refptr.__tens_D2A>
   140007934:	44 8b 64 24 50       	mov    0x50(%rsp),%r12d
   140007939:	f2 0f 10 14 c2       	movsd  (%rdx,%rax,8),%xmm2
   14000793e:	45 85 e4             	test   %r12d,%r12d
   140007941:	0f 89 fd 08 00 00    	jns    140008244 <__gdtoa+0x1004>
   140007947:	8b 44 24 48          	mov    0x48(%rsp),%eax
   14000794b:	85 c0                	test   %eax,%eax
   14000794d:	0f 8f f1 08 00 00    	jg     140008244 <__gdtoa+0x1004>
   140007953:	0f 85 ad 03 00 00    	jne    140007d06 <__gdtoa+0xac6>
   140007959:	f2 0f 59 15 ff 4c 00 	mulsd  0x4cff(%rip),%xmm2        # 14000c660 <.rdata+0x60>
   140007960:	00 
   140007961:	66 0f 2f 94 24 80 00 	comisd 0x80(%rsp),%xmm2
   140007968:	00 00 
   14000796a:	0f 83 96 03 00 00    	jae    140007d06 <__gdtoa+0xac6>
   140007970:	8b 44 24 68          	mov    0x68(%rsp),%eax
   140007974:	48 89 df             	mov    %rbx,%rdi
   140007977:	45 31 c9             	xor    %r9d,%r9d
   14000797a:	31 ed                	xor    %ebp,%ebp
   14000797c:	83 c0 02             	add    $0x2,%eax
   14000797f:	89 44 24 50          	mov    %eax,0x50(%rsp)
   140007983:	e9 59 02 00 00       	jmp    140007be1 <__gdtoa+0x9a1>
   140007988:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000798f:	00 
   140007990:	8b 6c 24 78          	mov    0x78(%rsp),%ebp
   140007994:	85 ed                	test   %ebp,%ebp
   140007996:	0f 84 d4 02 00 00    	je     140007c70 <__gdtoa+0xa30>
   14000799c:	44 8b 44 24 58       	mov    0x58(%rsp),%r8d
   1400079a1:	45 29 f4             	sub    %r14d,%r12d
   1400079a4:	41 8b 55 04          	mov    0x4(%r13),%edx
   1400079a8:	41 8d 44 24 01       	lea    0x1(%r12),%eax
   1400079ad:	44 89 c1             	mov    %r8d,%ecx
   1400079b0:	89 84 24 ac 00 00 00 	mov    %eax,0xac(%rsp)
   1400079b7:	44 29 e1             	sub    %r12d,%ecx
   1400079ba:	39 d1                	cmp    %edx,%ecx
   1400079bc:	0f 8d 56 07 00 00    	jge    140008118 <__gdtoa+0xed8>
   1400079c2:	8b 4c 24 30          	mov    0x30(%rsp),%ecx
   1400079c6:	8d 41 fd             	lea    -0x3(%rcx),%eax
   1400079c9:	83 e0 fd             	and    $0xfffffffd,%eax
   1400079cc:	0f 84 51 07 00 00    	je     140008123 <__gdtoa+0xee3>
   1400079d2:	44 89 c0             	mov    %r8d,%eax
   1400079d5:	44 8b 44 24 48       	mov    0x48(%rsp),%r8d
   1400079da:	29 d0                	sub    %edx,%eax
   1400079dc:	83 c0 01             	add    $0x1,%eax
   1400079df:	83 f9 01             	cmp    $0x1,%ecx
   1400079e2:	0f 9f c1             	setg   %cl
   1400079e5:	45 85 c0             	test   %r8d,%r8d
   1400079e8:	89 84 24 ac 00 00 00 	mov    %eax,0xac(%rsp)
   1400079ef:	0f 9f c2             	setg   %dl
   1400079f2:	84 d1                	test   %dl,%cl
   1400079f4:	74 09                	je     1400079ff <__gdtoa+0x7bf>
   1400079f6:	44 39 c0             	cmp    %r8d,%eax
   1400079f9:	0f 8f dd 0e 00 00    	jg     1400088dc <__gdtoa+0x169c>
   1400079ff:	8b 54 24 60          	mov    0x60(%rsp),%edx
   140007a03:	41 01 c3             	add    %eax,%r11d
   140007a06:	44 8b 64 24 70       	mov    0x70(%rsp),%r12d
   140007a0b:	01 d0                	add    %edx,%eax
   140007a0d:	89 54 24 58          	mov    %edx,0x58(%rsp)
   140007a11:	89 44 24 60          	mov    %eax,0x60(%rsp)
   140007a15:	b9 01 00 00 00       	mov    $0x1,%ecx
   140007a1a:	44 89 9c 24 88 00 00 	mov    %r11d,0x88(%rsp)
   140007a21:	00 
   140007a22:	44 89 94 24 80 00 00 	mov    %r10d,0x80(%rsp)
   140007a29:	00 
   140007a2a:	e8 31 14 00 00       	call   140008e60 <__i2b_D2A>
   140007a2f:	44 8b 94 24 80 00 00 	mov    0x80(%rsp),%r10d
   140007a36:	00 
   140007a37:	44 8b 9c 24 88 00 00 	mov    0x88(%rsp),%r11d
   140007a3e:	00 
   140007a3f:	48 89 c5             	mov    %rax,%rbp
   140007a42:	8b 4c 24 58          	mov    0x58(%rsp),%ecx
   140007a46:	85 c9                	test   %ecx,%ecx
   140007a48:	7e 22                	jle    140007a6c <__gdtoa+0x82c>
   140007a4a:	45 85 db             	test   %r11d,%r11d
   140007a4d:	7e 1d                	jle    140007a6c <__gdtoa+0x82c>
   140007a4f:	44 39 d9             	cmp    %r11d,%ecx
   140007a52:	89 c8                	mov    %ecx,%eax
   140007a54:	41 0f 4f c3          	cmovg  %r11d,%eax
   140007a58:	29 44 24 60          	sub    %eax,0x60(%rsp)
   140007a5c:	29 c1                	sub    %eax,%ecx
   140007a5e:	89 84 24 ac 00 00 00 	mov    %eax,0xac(%rsp)
   140007a65:	41 29 c3             	sub    %eax,%r11d
   140007a68:	89 4c 24 58          	mov    %ecx,0x58(%rsp)
   140007a6c:	44 8b 4c 24 70       	mov    0x70(%rsp),%r9d
   140007a71:	45 85 c9             	test   %r9d,%r9d
   140007a74:	74 4a                	je     140007ac0 <__gdtoa+0x880>
   140007a76:	44 8b 44 24 78       	mov    0x78(%rsp),%r8d
   140007a7b:	45 85 c0             	test   %r8d,%r8d
   140007a7e:	0f 84 0d 09 00 00    	je     140008391 <__gdtoa+0x1151>
   140007a84:	45 85 e4             	test   %r12d,%r12d
   140007a87:	0f 85 c0 09 00 00    	jne    14000844d <__gdtoa+0x120d>
   140007a8d:	8b 54 24 70          	mov    0x70(%rsp),%edx
   140007a91:	48 89 f1             	mov    %rsi,%rcx
   140007a94:	44 89 9c 24 88 00 00 	mov    %r11d,0x88(%rsp)
   140007a9b:	00 
   140007a9c:	44 89 94 24 80 00 00 	mov    %r10d,0x80(%rsp)
   140007aa3:	00 
   140007aa4:	e8 d7 15 00 00       	call   140009080 <__pow5mult_D2A>
   140007aa9:	44 8b 94 24 80 00 00 	mov    0x80(%rsp),%r10d
   140007ab0:	00 
   140007ab1:	44 8b 9c 24 88 00 00 	mov    0x88(%rsp),%r11d
   140007ab8:	00 
   140007ab9:	48 89 c6             	mov    %rax,%rsi
   140007abc:	0f 1f 40 00          	nopl   0x0(%rax)
   140007ac0:	b9 01 00 00 00       	mov    $0x1,%ecx
   140007ac5:	44 89 9c 24 80 00 00 	mov    %r11d,0x80(%rsp)
   140007acc:	00 
   140007acd:	44 89 54 24 70       	mov    %r10d,0x70(%rsp)
   140007ad2:	e8 89 13 00 00       	call   140008e60 <__i2b_D2A>
   140007ad7:	44 8b 54 24 70       	mov    0x70(%rsp),%r10d
   140007adc:	44 8b 9c 24 80 00 00 	mov    0x80(%rsp),%r11d
   140007ae3:	00 
   140007ae4:	49 89 c1             	mov    %rax,%r9
   140007ae7:	45 85 d2             	test   %r10d,%r10d
   140007aea:	0f 85 b0 05 00 00    	jne    1400080a0 <__gdtoa+0xe60>
   140007af0:	83 7c 24 30 01       	cmpl   $0x1,0x30(%rsp)
   140007af5:	0f 8e e5 05 00 00    	jle    1400080e0 <__gdtoa+0xea0>
   140007afb:	41 bc 1f 00 00 00    	mov    $0x1f,%r12d
   140007b01:	45 29 dc             	sub    %r11d,%r12d
   140007b04:	8b 44 24 60          	mov    0x60(%rsp),%eax
   140007b08:	41 83 ec 04          	sub    $0x4,%r12d
   140007b0c:	41 83 e4 1f          	and    $0x1f,%r12d
   140007b10:	44 01 e0             	add    %r12d,%eax
   140007b13:	44 89 a4 24 ac 00 00 	mov    %r12d,0xac(%rsp)
   140007b1a:	00 
   140007b1b:	44 89 e2             	mov    %r12d,%edx
   140007b1e:	85 c0                	test   %eax,%eax
   140007b20:	7e 32                	jle    140007b54 <__gdtoa+0x914>
   140007b22:	89 c2                	mov    %eax,%edx
   140007b24:	48 89 f1             	mov    %rsi,%rcx
   140007b27:	4c 89 4c 24 70       	mov    %r9,0x70(%rsp)
   140007b2c:	44 89 5c 24 60       	mov    %r11d,0x60(%rsp)
   140007b31:	44 89 54 24 38       	mov    %r10d,0x38(%rsp)
   140007b36:	e8 c5 16 00 00       	call   140009200 <__lshift_D2A>
   140007b3b:	4c 8b 4c 24 70       	mov    0x70(%rsp),%r9
   140007b40:	44 8b 5c 24 60       	mov    0x60(%rsp),%r11d
   140007b45:	8b 94 24 ac 00 00 00 	mov    0xac(%rsp),%edx
   140007b4c:	44 8b 54 24 38       	mov    0x38(%rsp),%r10d
   140007b51:	48 89 c6             	mov    %rax,%rsi
   140007b54:	44 01 da             	add    %r11d,%edx
   140007b57:	85 d2                	test   %edx,%edx
   140007b59:	7e 15                	jle    140007b70 <__gdtoa+0x930>
   140007b5b:	4c 89 c9             	mov    %r9,%rcx
   140007b5e:	44 89 54 24 38       	mov    %r10d,0x38(%rsp)
   140007b63:	e8 98 16 00 00       	call   140009200 <__lshift_D2A>
   140007b68:	44 8b 54 24 38       	mov    0x38(%rsp),%r10d
   140007b6d:	49 89 c1             	mov    %rax,%r9
   140007b70:	8b 4c 24 7c          	mov    0x7c(%rsp),%ecx
   140007b74:	83 7c 24 30 02       	cmpl   $0x2,0x30(%rsp)
   140007b79:	41 0f 9f c5          	setg   %r13b
   140007b7d:	85 c9                	test   %ecx,%ecx
   140007b7f:	0f 85 bb 03 00 00    	jne    140007f40 <__gdtoa+0xd00>
   140007b85:	8b 44 24 48          	mov    0x48(%rsp),%eax
   140007b89:	85 c0                	test   %eax,%eax
   140007b8b:	0f 8f 97 01 00 00    	jg     140007d28 <__gdtoa+0xae8>
   140007b91:	45 84 ed             	test   %r13b,%r13b
   140007b94:	0f 84 8e 01 00 00    	je     140007d28 <__gdtoa+0xae8>
   140007b9a:	8b 44 24 48          	mov    0x48(%rsp),%eax
   140007b9e:	85 c0                	test   %eax,%eax
   140007ba0:	0f 85 65 01 00 00    	jne    140007d0b <__gdtoa+0xacb>
   140007ba6:	4c 89 c9             	mov    %r9,%rcx
   140007ba9:	45 31 c0             	xor    %r8d,%r8d
   140007bac:	ba 05 00 00 00       	mov    $0x5,%edx
   140007bb1:	e8 ea 11 00 00       	call   140008da0 <__multadd_D2A>
   140007bb6:	48 89 f1             	mov    %rsi,%rcx
   140007bb9:	48 89 c2             	mov    %rax,%rdx
   140007bbc:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
   140007bc1:	e8 4a 17 00 00       	call   140009310 <__cmp_D2A>
   140007bc6:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
   140007bcb:	85 c0                	test   %eax,%eax
   140007bcd:	0f 8e 38 01 00 00    	jle    140007d0b <__gdtoa+0xacb>
   140007bd3:	8b 44 24 68          	mov    0x68(%rsp),%eax
   140007bd7:	48 89 df             	mov    %rbx,%rdi
   140007bda:	83 c0 02             	add    $0x2,%eax
   140007bdd:	89 44 24 50          	mov    %eax,0x50(%rsp)
   140007be1:	c6 07 31             	movb   $0x31,(%rdi)
   140007be4:	48 83 c3 01          	add    $0x1,%rbx
   140007be8:	c7 44 24 40 20 00 00 	movl   $0x20,0x40(%rsp)
   140007bef:	00 
   140007bf0:	4c 89 c9             	mov    %r9,%rcx
   140007bf3:	e8 38 11 00 00       	call   140008d30 <__Bfree_D2A>
   140007bf8:	48 85 ed             	test   %rbp,%rbp
   140007bfb:	74 08                	je     140007c05 <__gdtoa+0x9c5>
   140007bfd:	48 89 e9             	mov    %rbp,%rcx
   140007c00:	e8 2b 11 00 00       	call   140008d30 <__Bfree_D2A>
   140007c05:	48 39 df             	cmp    %rbx,%rdi
   140007c08:	72 0f                	jb     140007c19 <__gdtoa+0x9d9>
   140007c0a:	eb 13                	jmp    140007c1f <__gdtoa+0x9df>
   140007c0c:	0f 1f 40 00          	nopl   0x0(%rax)
   140007c10:	48 83 eb 01          	sub    $0x1,%rbx
   140007c14:	48 39 fb             	cmp    %rdi,%rbx
   140007c17:	74 06                	je     140007c1f <__gdtoa+0x9df>
   140007c19:	80 7b ff 30          	cmpb   $0x30,-0x1(%rbx)
   140007c1d:	74 f1                	je     140007c10 <__gdtoa+0x9d0>
   140007c1f:	48 89 f1             	mov    %rsi,%rcx
   140007c22:	e8 09 11 00 00       	call   140008d30 <__Bfree_D2A>
   140007c27:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   140007c2c:	8b 74 24 50          	mov    0x50(%rsp),%esi
   140007c30:	c6 03 00             	movb   $0x0,(%rbx)
   140007c33:	89 30                	mov    %esi,(%rax)
   140007c35:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   140007c3a:	48 85 c0             	test   %rax,%rax
   140007c3d:	74 03                	je     140007c42 <__gdtoa+0xa02>
   140007c3f:	48 89 18             	mov    %rbx,(%rax)
   140007c42:	8b 44 24 40          	mov    0x40(%rsp),%eax
   140007c46:	41 09 07             	or     %eax,(%r15)
   140007c49:	e9 f7 f8 ff ff       	jmp    140007545 <__gdtoa+0x305>
   140007c4e:	66 90                	xchg   %ax,%ax
   140007c50:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140007c54:	f2 41 0f 2a ca       	cvtsi2sd %r10d,%xmm1
   140007c59:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
   140007c5d:	7a 06                	jp     140007c65 <__gdtoa+0xa25>
   140007c5f:	0f 84 e9 f7 ff ff    	je     14000744e <__gdtoa+0x20e>
   140007c65:	41 83 ea 01          	sub    $0x1,%r10d
   140007c69:	e9 e0 f7 ff ff       	jmp    14000744e <__gdtoa+0x20e>
   140007c6e:	66 90                	xchg   %ax,%ax
   140007c70:	8b 44 24 60          	mov    0x60(%rsp),%eax
   140007c74:	44 8b 64 24 70       	mov    0x70(%rsp),%r12d
   140007c79:	31 ed                	xor    %ebp,%ebp
   140007c7b:	89 44 24 58          	mov    %eax,0x58(%rsp)
   140007c7f:	e9 be fd ff ff       	jmp    140007a42 <__gdtoa+0x802>
   140007c84:	0f 1f 40 00          	nopl   0x0(%rax)
   140007c88:	c7 44 24 7c 00 00 00 	movl   $0x0,0x7c(%rsp)
   140007c8f:	00 
   140007c90:	41 83 ea 01          	sub    $0x1,%r10d
   140007c94:	e9 2f f9 ff ff       	jmp    1400075c8 <__gdtoa+0x388>
   140007c99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007ca0:	c7 84 24 9c 00 00 00 	movl   $0x0,0x9c(%rsp)
   140007ca7:	00 00 00 00 
   140007cab:	83 e8 04             	sub    $0x4,%eax
   140007cae:	89 44 24 30          	mov    %eax,0x30(%rsp)
   140007cb2:	83 f8 04             	cmp    $0x4,%eax
   140007cb5:	74 23                	je     140007cda <__gdtoa+0xa9a>
   140007cb7:	83 f8 05             	cmp    $0x5,%eax
   140007cba:	0f 84 a2 04 00 00    	je     140008162 <__gdtoa+0xf22>
   140007cc0:	c7 44 24 78 00 00 00 	movl   $0x0,0x78(%rsp)
   140007cc7:	00 
   140007cc8:	83 f8 02             	cmp    $0x2,%eax
   140007ccb:	74 15                	je     140007ce2 <__gdtoa+0xaa2>
   140007ccd:	c7 44 24 30 03 00 00 	movl   $0x3,0x30(%rsp)
   140007cd4:	00 
   140007cd5:	e9 88 f9 ff ff       	jmp    140007662 <__gdtoa+0x422>
   140007cda:	c7 44 24 78 01 00 00 	movl   $0x1,0x78(%rsp)
   140007ce1:	00 
   140007ce2:	8b 44 24 50          	mov    0x50(%rsp),%eax
   140007ce6:	b9 01 00 00 00       	mov    $0x1,%ecx
   140007ceb:	85 c0                	test   %eax,%eax
   140007ced:	0f 4f c8             	cmovg  %eax,%ecx
   140007cf0:	89 8c 24 98 00 00 00 	mov    %ecx,0x98(%rsp)
   140007cf7:	89 c8                	mov    %ecx,%eax
   140007cf9:	89 4c 24 48          	mov    %ecx,0x48(%rsp)
   140007cfd:	89 4c 24 50          	mov    %ecx,0x50(%rsp)
   140007d01:	e9 80 f9 ff ff       	jmp    140007686 <__gdtoa+0x446>
   140007d06:	45 31 c9             	xor    %r9d,%r9d
   140007d09:	31 ed                	xor    %ebp,%ebp
   140007d0b:	8b 44 24 50          	mov    0x50(%rsp),%eax
   140007d0f:	c7 44 24 40 10 00 00 	movl   $0x10,0x40(%rsp)
   140007d16:	00 
   140007d17:	48 89 df             	mov    %rbx,%rdi
   140007d1a:	f7 d8                	neg    %eax
   140007d1c:	89 44 24 50          	mov    %eax,0x50(%rsp)
   140007d20:	e9 cb fe ff ff       	jmp    140007bf0 <__gdtoa+0x9b0>
   140007d25:	0f 1f 00             	nopl   (%rax)
   140007d28:	8b 44 24 68          	mov    0x68(%rsp),%eax
   140007d2c:	83 c0 01             	add    $0x1,%eax
   140007d2f:	89 44 24 50          	mov    %eax,0x50(%rsp)
   140007d33:	8b 44 24 78          	mov    0x78(%rsp),%eax
   140007d37:	85 c0                	test   %eax,%eax
   140007d39:	0f 84 91 02 00 00    	je     140007fd0 <__gdtoa+0xd90>
   140007d3f:	8b 54 24 58          	mov    0x58(%rsp),%edx
   140007d43:	44 01 e2             	add    %r12d,%edx
   140007d46:	85 d2                	test   %edx,%edx
   140007d48:	7e 1f                	jle    140007d69 <__gdtoa+0xb29>
   140007d4a:	48 89 e9             	mov    %rbp,%rcx
   140007d4d:	4c 89 4c 24 58       	mov    %r9,0x58(%rsp)
   140007d52:	44 89 54 24 38       	mov    %r10d,0x38(%rsp)
   140007d57:	e8 a4 14 00 00       	call   140009200 <__lshift_D2A>
   140007d5c:	4c 8b 4c 24 58       	mov    0x58(%rsp),%r9
   140007d61:	44 8b 54 24 38       	mov    0x38(%rsp),%r10d
   140007d66:	48 89 c5             	mov    %rax,%rbp
   140007d69:	49 89 ed             	mov    %rbp,%r13
   140007d6c:	45 85 d2             	test   %r10d,%r10d
   140007d6f:	0f 85 f5 08 00 00    	jne    14000866a <__gdtoa+0x142a>
   140007d75:	4c 89 7c 24 70       	mov    %r15,0x70(%rsp)
   140007d7a:	b8 01 00 00 00       	mov    $0x1,%eax
   140007d7f:	49 89 ff             	mov    %rdi,%r15
   140007d82:	48 89 df             	mov    %rbx,%rdi
   140007d85:	4c 89 4c 24 38       	mov    %r9,0x38(%rsp)
   140007d8a:	48 89 5c 24 68       	mov    %rbx,0x68(%rsp)
   140007d8f:	e9 a6 00 00 00       	jmp    140007e3a <__gdtoa+0xbfa>
   140007d94:	0f 1f 40 00          	nopl   0x0(%rax)
   140007d98:	48 89 d1             	mov    %rdx,%rcx
   140007d9b:	e8 90 0f 00 00       	call   140008d30 <__Bfree_D2A>
   140007da0:	ba 01 00 00 00       	mov    $0x1,%edx
   140007da5:	45 85 e4             	test   %r12d,%r12d
   140007da8:	0f 88 72 07 00 00    	js     140008520 <__gdtoa+0x12e0>
   140007dae:	44 0b 64 24 30       	or     0x30(%rsp),%r12d
   140007db3:	75 0a                	jne    140007dbf <__gdtoa+0xb7f>
   140007db5:	41 f6 07 01          	testb  $0x1,(%r15)
   140007db9:	0f 84 61 07 00 00    	je     140008520 <__gdtoa+0x12e0>
   140007dbf:	4c 8d 67 01          	lea    0x1(%rdi),%r12
   140007dc3:	4d 89 e6             	mov    %r12,%r14
   140007dc6:	85 d2                	test   %edx,%edx
   140007dc8:	7e 0b                	jle    140007dd5 <__gdtoa+0xb95>
   140007dca:	83 7c 24 54 02       	cmpl   $0x2,0x54(%rsp)
   140007dcf:	0f 85 ed 08 00 00    	jne    1400086c2 <__gdtoa+0x1482>
   140007dd5:	41 88 5c 24 ff       	mov    %bl,-0x1(%r12)
   140007dda:	8b 44 24 48          	mov    0x48(%rsp),%eax
   140007dde:	39 84 24 ac 00 00 00 	cmp    %eax,0xac(%rsp)
   140007de5:	0f 84 10 09 00 00    	je     1400086fb <__gdtoa+0x14bb>
   140007deb:	48 89 f1             	mov    %rsi,%rcx
   140007dee:	45 31 c0             	xor    %r8d,%r8d
   140007df1:	ba 0a 00 00 00       	mov    $0xa,%edx
   140007df6:	e8 a5 0f 00 00       	call   140008da0 <__multadd_D2A>
   140007dfb:	45 31 c0             	xor    %r8d,%r8d
   140007dfe:	ba 0a 00 00 00       	mov    $0xa,%edx
   140007e03:	48 89 e9             	mov    %rbp,%rcx
   140007e06:	48 89 c6             	mov    %rax,%rsi
   140007e09:	4c 39 ed             	cmp    %r13,%rbp
   140007e0c:	0f 84 1e 01 00 00    	je     140007f30 <__gdtoa+0xcf0>
   140007e12:	e8 89 0f 00 00       	call   140008da0 <__multadd_D2A>
   140007e17:	4c 89 e9             	mov    %r13,%rcx
   140007e1a:	45 31 c0             	xor    %r8d,%r8d
   140007e1d:	ba 0a 00 00 00       	mov    $0xa,%edx
   140007e22:	48 89 c5             	mov    %rax,%rbp
   140007e25:	e8 76 0f 00 00       	call   140008da0 <__multadd_D2A>
   140007e2a:	49 89 c5             	mov    %rax,%r13
   140007e2d:	8b 84 24 ac 00 00 00 	mov    0xac(%rsp),%eax
   140007e34:	4c 89 e7             	mov    %r12,%rdi
   140007e37:	83 c0 01             	add    $0x1,%eax
   140007e3a:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   140007e3f:	48 89 f1             	mov    %rsi,%rcx
   140007e42:	89 84 24 ac 00 00 00 	mov    %eax,0xac(%rsp)
   140007e49:	e8 72 f2 ff ff       	call   1400070c0 <__quorem_D2A>
   140007e4e:	48 89 ea             	mov    %rbp,%rdx
   140007e51:	48 89 f1             	mov    %rsi,%rcx
   140007e54:	41 89 c6             	mov    %eax,%r14d
   140007e57:	8d 58 30             	lea    0x30(%rax),%ebx
   140007e5a:	e8 b1 14 00 00       	call   140009310 <__cmp_D2A>
   140007e5f:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
   140007e64:	4c 89 ea             	mov    %r13,%rdx
   140007e67:	41 89 c4             	mov    %eax,%r12d
   140007e6a:	e8 f1 14 00 00       	call   140009360 <__diff_D2A>
   140007e6f:	48 89 c2             	mov    %rax,%rdx
   140007e72:	8b 40 10             	mov    0x10(%rax),%eax
   140007e75:	85 c0                	test   %eax,%eax
   140007e77:	0f 85 1b ff ff ff    	jne    140007d98 <__gdtoa+0xb58>
   140007e7d:	48 89 f1             	mov    %rsi,%rcx
   140007e80:	48 89 54 24 60       	mov    %rdx,0x60(%rsp)
   140007e85:	e8 86 14 00 00       	call   140009310 <__cmp_D2A>
   140007e8a:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140007e8f:	89 44 24 58          	mov    %eax,0x58(%rsp)
   140007e93:	e8 98 0e 00 00       	call   140008d30 <__Bfree_D2A>
   140007e98:	8b 54 24 58          	mov    0x58(%rsp),%edx
   140007e9c:	8b 44 24 30          	mov    0x30(%rsp),%eax
   140007ea0:	09 c2                	or     %eax,%edx
   140007ea2:	0f 85 7f 04 00 00    	jne    140008327 <__gdtoa+0x10e7>
   140007ea8:	41 8b 07             	mov    (%r15),%eax
   140007eab:	83 e0 01             	and    $0x1,%eax
   140007eae:	0b 44 24 54          	or     0x54(%rsp),%eax
   140007eb2:	0f 85 ed fe ff ff    	jne    140007da5 <__gdtoa+0xb65>
   140007eb8:	41 89 d8             	mov    %ebx,%r8d
   140007ebb:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
   140007ec0:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
   140007ec5:	49 89 fa             	mov    %rdi,%r10
   140007ec8:	4c 8b 7c 24 70       	mov    0x70(%rsp),%r15
   140007ecd:	41 83 f8 39          	cmp    $0x39,%r8d
   140007ed1:	0f 84 60 0a 00 00    	je     140008937 <__gdtoa+0x16f7>
   140007ed7:	45 85 e4             	test   %r12d,%r12d
   140007eda:	0f 8e c1 0a 00 00    	jle    1400089a1 <__gdtoa+0x1761>
   140007ee0:	c7 44 24 40 20 00 00 	movl   $0x20,0x40(%rsp)
   140007ee7:	00 
   140007ee8:	45 8d 46 31          	lea    0x31(%r14),%r8d
   140007eec:	45 88 02             	mov    %r8b,(%r10)
   140007eef:	48 89 ef             	mov    %rbp,%rdi
   140007ef2:	4d 8d 62 01          	lea    0x1(%r10),%r12
   140007ef6:	4c 89 ed             	mov    %r13,%rbp
   140007ef9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007f00:	4c 89 c9             	mov    %r9,%rcx
   140007f03:	e8 28 0e 00 00       	call   140008d30 <__Bfree_D2A>
   140007f08:	48 85 ed             	test   %rbp,%rbp
   140007f0b:	0f 84 b4 04 00 00    	je     1400083c5 <__gdtoa+0x1185>
   140007f11:	48 85 ff             	test   %rdi,%rdi
   140007f14:	74 0d                	je     140007f23 <__gdtoa+0xce3>
   140007f16:	48 39 ef             	cmp    %rbp,%rdi
   140007f19:	74 08                	je     140007f23 <__gdtoa+0xce3>
   140007f1b:	48 89 f9             	mov    %rdi,%rcx
   140007f1e:	e8 0d 0e 00 00       	call   140008d30 <__Bfree_D2A>
   140007f23:	48 89 df             	mov    %rbx,%rdi
   140007f26:	4c 89 e3             	mov    %r12,%rbx
   140007f29:	e9 cf fc ff ff       	jmp    140007bfd <__gdtoa+0x9bd>
   140007f2e:	66 90                	xchg   %ax,%ax
   140007f30:	e8 6b 0e 00 00       	call   140008da0 <__multadd_D2A>
   140007f35:	48 89 c5             	mov    %rax,%rbp
   140007f38:	49 89 c5             	mov    %rax,%r13
   140007f3b:	e9 ed fe ff ff       	jmp    140007e2d <__gdtoa+0xbed>
   140007f40:	4c 89 ca             	mov    %r9,%rdx
   140007f43:	48 89 f1             	mov    %rsi,%rcx
   140007f46:	44 89 54 24 60       	mov    %r10d,0x60(%rsp)
   140007f4b:	4c 89 4c 24 38       	mov    %r9,0x38(%rsp)
   140007f50:	e8 bb 13 00 00       	call   140009310 <__cmp_D2A>
   140007f55:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
   140007f5a:	44 8b 54 24 60       	mov    0x60(%rsp),%r10d
   140007f5f:	85 c0                	test   %eax,%eax
   140007f61:	0f 89 1e fc ff ff    	jns    140007b85 <__gdtoa+0x945>
   140007f67:	8b 44 24 68          	mov    0x68(%rsp),%eax
   140007f6b:	45 31 c0             	xor    %r8d,%r8d
   140007f6e:	ba 0a 00 00 00       	mov    $0xa,%edx
   140007f73:	48 89 f1             	mov    %rsi,%rcx
   140007f76:	4c 89 4c 24 48       	mov    %r9,0x48(%rsp)
   140007f7b:	44 89 54 24 38       	mov    %r10d,0x38(%rsp)
   140007f80:	44 8d 70 ff          	lea    -0x1(%rax),%r14d
   140007f84:	e8 17 0e 00 00       	call   140008da0 <__multadd_D2A>
   140007f89:	8b 54 24 78          	mov    0x78(%rsp),%edx
   140007f8d:	4c 8b 4c 24 48       	mov    0x48(%rsp),%r9
   140007f92:	48 89 c6             	mov    %rax,%rsi
   140007f95:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
   140007f9c:	85 c0                	test   %eax,%eax
   140007f9e:	0f 9e c0             	setle  %al
   140007fa1:	41 21 c5             	and    %eax,%r13d
   140007fa4:	85 d2                	test   %edx,%edx
   140007fa6:	0f 85 c0 08 00 00    	jne    14000886c <__gdtoa+0x162c>
   140007fac:	45 84 ed             	test   %r13b,%r13b
   140007faf:	0f 85 2a 08 00 00    	jne    1400087df <__gdtoa+0x159f>
   140007fb5:	8b 44 24 68          	mov    0x68(%rsp),%eax
   140007fb9:	89 44 24 50          	mov    %eax,0x50(%rsp)
   140007fbd:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
   140007fc4:	89 44 24 48          	mov    %eax,0x48(%rsp)
   140007fc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140007fcf:	00 
   140007fd0:	44 8b 64 24 48       	mov    0x48(%rsp),%r12d
   140007fd5:	49 89 de             	mov    %rbx,%r14
   140007fd8:	b8 01 00 00 00       	mov    $0x1,%eax
   140007fdd:	4c 89 cf             	mov    %r9,%rdi
   140007fe0:	eb 23                	jmp    140008005 <__gdtoa+0xdc5>
   140007fe2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140007fe8:	48 89 f1             	mov    %rsi,%rcx
   140007feb:	45 31 c0             	xor    %r8d,%r8d
   140007fee:	ba 0a 00 00 00       	mov    $0xa,%edx
   140007ff3:	e8 a8 0d 00 00       	call   140008da0 <__multadd_D2A>
   140007ff8:	48 89 c6             	mov    %rax,%rsi
   140007ffb:	8b 84 24 ac 00 00 00 	mov    0xac(%rsp),%eax
   140008002:	83 c0 01             	add    $0x1,%eax
   140008005:	48 89 fa             	mov    %rdi,%rdx
   140008008:	48 89 f1             	mov    %rsi,%rcx
   14000800b:	89 84 24 ac 00 00 00 	mov    %eax,0xac(%rsp)
   140008012:	49 83 c6 01          	add    $0x1,%r14
   140008016:	e8 a5 f0 ff ff       	call   1400070c0 <__quorem_D2A>
   14000801b:	44 8d 40 30          	lea    0x30(%rax),%r8d
   14000801f:	45 88 46 ff          	mov    %r8b,-0x1(%r14)
   140008023:	44 39 a4 24 ac 00 00 	cmp    %r12d,0xac(%rsp)
   14000802a:	00 
   14000802b:	7c bb                	jl     140007fe8 <__gdtoa+0xda8>
   14000802d:	49 89 f9             	mov    %rdi,%r9
   140008030:	31 ff                	xor    %edi,%edi
   140008032:	8b 54 24 54          	mov    0x54(%rsp),%edx
   140008036:	85 d2                	test   %edx,%edx
   140008038:	0f 84 7b 04 00 00    	je     1400084b9 <__gdtoa+0x1279>
   14000803e:	8b 46 14             	mov    0x14(%rsi),%eax
   140008041:	83 fa 02             	cmp    $0x2,%edx
   140008044:	0f 84 b4 04 00 00    	je     1400084fe <__gdtoa+0x12be>
   14000804a:	83 f8 01             	cmp    $0x1,%eax
   14000804d:	7f 2a                	jg     140008079 <__gdtoa+0xe39>
   14000804f:	8b 46 18             	mov    0x18(%rsi),%eax
   140008052:	85 c0                	test   %eax,%eax
   140008054:	75 23                	jne    140008079 <__gdtoa+0xe39>
   140008056:	85 c0                	test   %eax,%eax
   140008058:	4d 89 f4             	mov    %r14,%r12
   14000805b:	0f 95 c0             	setne  %al
   14000805e:	0f b6 c0             	movzbl %al,%eax
   140008061:	c1 e0 04             	shl    $0x4,%eax
   140008064:	89 44 24 40          	mov    %eax,0x40(%rsp)
   140008068:	e9 93 fe ff ff       	jmp    140007f00 <__gdtoa+0xcc0>
   14000806d:	0f 1f 00             	nopl   (%rax)
   140008070:	49 39 de             	cmp    %rbx,%r14
   140008073:	0f 84 bf 03 00 00    	je     140008438 <__gdtoa+0x11f8>
   140008079:	4d 89 f4             	mov    %r14,%r12
   14000807c:	4d 8d 76 ff          	lea    -0x1(%r14),%r14
   140008080:	41 0f b6 44 24 ff    	movzbl -0x1(%r12),%eax
   140008086:	3c 39                	cmp    $0x39,%al
   140008088:	74 e6                	je     140008070 <__gdtoa+0xe30>
   14000808a:	83 c0 01             	add    $0x1,%eax
   14000808d:	c7 44 24 40 20 00 00 	movl   $0x20,0x40(%rsp)
   140008094:	00 
   140008095:	41 88 06             	mov    %al,(%r14)
   140008098:	e9 63 fe ff ff       	jmp    140007f00 <__gdtoa+0xcc0>
   14000809d:	0f 1f 00             	nopl   (%rax)
   1400080a0:	44 89 d2             	mov    %r10d,%edx
   1400080a3:	48 89 c1             	mov    %rax,%rcx
   1400080a6:	44 89 5c 24 70       	mov    %r11d,0x70(%rsp)
   1400080ab:	e8 d0 0f 00 00       	call   140009080 <__pow5mult_D2A>
   1400080b0:	83 7c 24 30 01       	cmpl   $0x1,0x30(%rsp)
   1400080b5:	44 8b 5c 24 70       	mov    0x70(%rsp),%r11d
   1400080ba:	49 89 c1             	mov    %rax,%r9
   1400080bd:	0f 8e 40 03 00 00    	jle    140008403 <__gdtoa+0x11c3>
   1400080c3:	45 31 d2             	xor    %r10d,%r10d
   1400080c6:	41 8b 41 14          	mov    0x14(%r9),%eax
   1400080ca:	83 e8 01             	sub    $0x1,%eax
   1400080cd:	48 98                	cltq
   1400080cf:	45 0f bd 64 81 18    	bsr    0x18(%r9,%rax,4),%r12d
   1400080d5:	41 83 f4 1f          	xor    $0x1f,%r12d
   1400080d9:	e9 23 fa ff ff       	jmp    140007b01 <__gdtoa+0x8c1>
   1400080de:	66 90                	xchg   %ax,%ax
   1400080e0:	41 83 fe 01          	cmp    $0x1,%r14d
   1400080e4:	0f 85 11 fa ff ff    	jne    140007afb <__gdtoa+0x8bb>
   1400080ea:	41 8b 45 04          	mov    0x4(%r13),%eax
   1400080ee:	8b 54 24 38          	mov    0x38(%rsp),%edx
   1400080f2:	83 c0 01             	add    $0x1,%eax
   1400080f5:	39 d0                	cmp    %edx,%eax
   1400080f7:	0f 8d fe f9 ff ff    	jge    140007afb <__gdtoa+0x8bb>
   1400080fd:	83 44 24 60 01       	addl   $0x1,0x60(%rsp)
   140008102:	41 83 c3 01          	add    $0x1,%r11d
   140008106:	41 ba 01 00 00 00    	mov    $0x1,%r10d
   14000810c:	e9 ea f9 ff ff       	jmp    140007afb <__gdtoa+0x8bb>
   140008111:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140008118:	83 7c 24 30 01       	cmpl   $0x1,0x30(%rsp)
   14000811d:	0f 8e dc f8 ff ff    	jle    1400079ff <__gdtoa+0x7bf>
   140008123:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140008127:	8b 54 24 70          	mov    0x70(%rsp),%edx
   14000812b:	8d 41 ff             	lea    -0x1(%rcx),%eax
   14000812e:	39 c2                	cmp    %eax,%edx
   140008130:	0f 8c 9a 02 00 00    	jl     1400083d0 <__gdtoa+0x1190>
   140008136:	41 89 d4             	mov    %edx,%r12d
   140008139:	41 29 c4             	sub    %eax,%r12d
   14000813c:	85 c9                	test   %ecx,%ecx
   14000813e:	0f 89 09 07 00 00    	jns    14000884d <__gdtoa+0x160d>
   140008144:	8b 44 24 60          	mov    0x60(%rsp),%eax
   140008148:	8b 54 24 48          	mov    0x48(%rsp),%edx
   14000814c:	c7 84 24 ac 00 00 00 	movl   $0x0,0xac(%rsp)
   140008153:	00 00 00 00 
   140008157:	29 d0                	sub    %edx,%eax
   140008159:	89 44 24 58          	mov    %eax,0x58(%rsp)
   14000815d:	e9 b3 f8 ff ff       	jmp    140007a15 <__gdtoa+0x7d5>
   140008162:	c7 44 24 78 01 00 00 	movl   $0x1,0x78(%rsp)
   140008169:	00 
   14000816a:	e9 f3 f4 ff ff       	jmp    140007662 <__gdtoa+0x422>
   14000816f:	f2 0f 59 da          	mulsd  %xmm2,%xmm3
   140008173:	66 48 0f 6e c2       	movq   %rdx,%xmm0
   140008178:	49 89 d9             	mov    %rbx,%r9
   14000817b:	45 31 e4             	xor    %r12d,%r12d
   14000817e:	c7 84 24 ac 00 00 00 	movl   $0x1,0xac(%rsp)
   140008185:	01 00 00 00 
   140008189:	f2 0f 10 0d b7 44 00 	movsd  0x44b7(%rip),%xmm1        # 14000c648 <.rdata+0x48>
   140008190:	00 
   140008191:	eb 16                	jmp    1400081a9 <__gdtoa+0xf69>
   140008193:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140008198:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
   14000819c:	83 c0 01             	add    $0x1,%eax
   14000819f:	45 89 c4             	mov    %r8d,%r12d
   1400081a2:	89 84 24 ac 00 00 00 	mov    %eax,0xac(%rsp)
   1400081a9:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
   1400081ad:	85 c0                	test   %eax,%eax
   1400081af:	74 0f                	je     1400081c0 <__gdtoa+0xf80>
   1400081b1:	66 0f ef d2          	pxor   %xmm2,%xmm2
   1400081b5:	45 89 c4             	mov    %r8d,%r12d
   1400081b8:	f2 0f 2a d0          	cvtsi2sd %eax,%xmm2
   1400081bc:	f2 0f 5c c2          	subsd  %xmm2,%xmm0
   1400081c0:	8d 48 30             	lea    0x30(%rax),%ecx
   1400081c3:	49 83 c1 01          	add    $0x1,%r9
   1400081c7:	41 88 49 ff          	mov    %cl,-0x1(%r9)
   1400081cb:	8b 84 24 ac 00 00 00 	mov    0xac(%rsp),%eax
   1400081d2:	39 e8                	cmp    %ebp,%eax
   1400081d4:	75 c2                	jne    140008198 <__gdtoa+0xf58>
   1400081d6:	45 84 e4             	test   %r12b,%r12b
   1400081d9:	75 05                	jne    1400081e0 <__gdtoa+0xfa0>
   1400081db:	66 48 0f 6e c2       	movq   %rdx,%xmm0
   1400081e0:	f2 0f 10 0d 98 44 00 	movsd  0x4498(%rip),%xmm1        # 14000c680 <.rdata+0x80>
   1400081e7:	00 
   1400081e8:	66 0f 28 d3          	movapd %xmm3,%xmm2
   1400081ec:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
   1400081f0:	66 0f 2f c2          	comisd %xmm2,%xmm0
   1400081f4:	0f 87 2c 06 00 00    	ja     140008826 <__gdtoa+0x15e6>
   1400081fa:	f2 0f 5c cb          	subsd  %xmm3,%xmm1
   1400081fe:	66 0f 2f c8          	comisd %xmm0,%xmm1
   140008202:	0f 87 a2 06 00 00    	ja     1400088aa <__gdtoa+0x166a>
   140008208:	8b 44 24 58          	mov    0x58(%rsp),%eax
   14000820c:	85 c0                	test   %eax,%eax
   14000820e:	0f 88 1d 06 00 00    	js     140008831 <__gdtoa+0x15f1>
   140008214:	41 8b 45 14          	mov    0x14(%r13),%eax
   140008218:	85 c0                	test   %eax,%eax
   14000821a:	0f 88 11 06 00 00    	js     140008831 <__gdtoa+0x15f1>
   140008220:	48 8b 05 69 47 00 00 	mov    0x4769(%rip),%rax        # 14000c990 <.refptr.__tens_D2A>
   140008227:	8b 54 24 50          	mov    0x50(%rsp),%edx
   14000822b:	f2 0f 10 10          	movsd  (%rax),%xmm2
   14000822f:	85 d2                	test   %edx,%edx
   140008231:	79 0b                	jns    14000823e <__gdtoa+0xffe>
   140008233:	83 7c 24 48 00       	cmpl   $0x0,0x48(%rsp)
   140008238:	0f 8e 1b f7 ff ff    	jle    140007959 <__gdtoa+0x719>
   14000823e:	31 c0                	xor    %eax,%eax
   140008240:	89 44 24 54          	mov    %eax,0x54(%rsp)
   140008244:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   14000824b:	00 00 
   14000824d:	8b 7c 24 68          	mov    0x68(%rsp),%edi
   140008251:	48 8d 43 01          	lea    0x1(%rbx),%rax
   140008255:	c7 84 24 ac 00 00 00 	movl   $0x1,0xac(%rsp)
   14000825c:	01 00 00 00 
   140008260:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140008264:	83 c7 01             	add    $0x1,%edi
   140008267:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
   14000826b:	89 7c 24 50          	mov    %edi,0x50(%rsp)
   14000826f:	f2 0f 2c d1          	cvttsd2si %xmm1,%edx
   140008273:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140008277:	f2 0f 2a ca          	cvtsi2sd %edx,%xmm1
   14000827b:	8d 4a 30             	lea    0x30(%rdx),%ecx
   14000827e:	88 0b                	mov    %cl,(%rbx)
   140008280:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
   140008284:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
   140008288:	66 0f ef c9          	pxor   %xmm1,%xmm1
   14000828c:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
   140008290:	7a 06                	jp     140008298 <__gdtoa+0x1058>
   140008292:	0f 84 16 02 00 00    	je     1400084ae <__gdtoa+0x126e>
   140008298:	f2 0f 10 25 a8 43 00 	movsd  0x43a8(%rip),%xmm4        # 14000c648 <.rdata+0x48>
   14000829f:	00 
   1400082a0:	66 0f ef db          	pxor   %xmm3,%xmm3
   1400082a4:	eb 4a                	jmp    1400082f0 <__gdtoa+0x10b0>
   1400082a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400082ad:	00 00 00 
   1400082b0:	f2 0f 59 c4          	mulsd  %xmm4,%xmm0
   1400082b4:	83 c1 01             	add    $0x1,%ecx
   1400082b7:	48 83 c0 01          	add    $0x1,%rax
   1400082bb:	89 8c 24 ac 00 00 00 	mov    %ecx,0xac(%rsp)
   1400082c2:	66 0f 28 c8          	movapd %xmm0,%xmm1
   1400082c6:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
   1400082ca:	f2 0f 2c d1          	cvttsd2si %xmm1,%edx
   1400082ce:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400082d2:	f2 0f 2a ca          	cvtsi2sd %edx,%xmm1
   1400082d6:	8d 4a 30             	lea    0x30(%rdx),%ecx
   1400082d9:	88 48 ff             	mov    %cl,-0x1(%rax)
   1400082dc:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
   1400082e0:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
   1400082e4:	66 0f 2e c3          	ucomisd %xmm3,%xmm0
   1400082e8:	7a 06                	jp     1400082f0 <__gdtoa+0x10b0>
   1400082ea:	0f 84 be 01 00 00    	je     1400084ae <__gdtoa+0x126e>
   1400082f0:	8b 8c 24 ac 00 00 00 	mov    0xac(%rsp),%ecx
   1400082f7:	8b 7c 24 48          	mov    0x48(%rsp),%edi
   1400082fb:	39 f9                	cmp    %edi,%ecx
   1400082fd:	75 b1                	jne    1400082b0 <__gdtoa+0x1070>
   1400082ff:	8b 7c 24 54          	mov    0x54(%rsp),%edi
   140008303:	85 ff                	test   %edi,%edi
   140008305:	0f 84 9a 04 00 00    	je     1400087a5 <__gdtoa+0x1565>
   14000830b:	83 ff 01             	cmp    $0x1,%edi
   14000830e:	0f 84 b4 04 00 00    	je     1400087c8 <__gdtoa+0x1588>
   140008314:	48 89 df             	mov    %rbx,%rdi
   140008317:	c7 44 24 40 10 00 00 	movl   $0x10,0x40(%rsp)
   14000831e:	00 
   14000831f:	48 89 c3             	mov    %rax,%rbx
   140008322:	e9 de f8 ff ff       	jmp    140007c05 <__gdtoa+0x9c5>
   140008327:	8b 54 24 58          	mov    0x58(%rsp),%edx
   14000832b:	e9 75 fa ff ff       	jmp    140007da5 <__gdtoa+0xb65>
   140008330:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140008334:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
   140008338:	f2 0f 58 0d 18 43 00 	addsd  0x4318(%rip),%xmm1        # 14000c658 <.rdata+0x58>
   14000833f:	00 
   140008340:	66 48 0f 7e c8       	movq   %xmm1,%rax
   140008345:	48 89 c2             	mov    %rax,%rdx
   140008348:	89 c0                	mov    %eax,%eax
   14000834a:	48 c1 ea 20          	shr    $0x20,%rdx
   14000834e:	81 ea 00 00 40 03    	sub    $0x3400000,%edx
   140008354:	48 c1 e2 20          	shl    $0x20,%rdx
   140008358:	48 09 d0             	or     %rdx,%rax
   14000835b:	f2 0f 5c 05 fd 42 00 	subsd  0x42fd(%rip),%xmm0        # 14000c660 <.rdata+0x60>
   140008362:	00 
   140008363:	66 48 0f 6e c8       	movq   %rax,%xmm1
   140008368:	66 0f 2f c1          	comisd %xmm1,%xmm0
   14000836c:	0f 87 3b 03 00 00    	ja     1400086ad <__gdtoa+0x146d>
   140008372:	66 0f 57 0d f6 42 00 	xorpd  0x42f6(%rip),%xmm1        # 14000c670 <.rdata+0x70>
   140008379:	00 
   14000837a:	66 0f 2f c8          	comisd %xmm0,%xmm1
   14000837e:	0f 87 82 f9 ff ff    	ja     140007d06 <__gdtoa+0xac6>
   140008384:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
   14000838b:	00 
   14000838c:	e9 89 f5 ff ff       	jmp    14000791a <__gdtoa+0x6da>
   140008391:	8b 54 24 70          	mov    0x70(%rsp),%edx
   140008395:	48 89 f1             	mov    %rsi,%rcx
   140008398:	44 89 9c 24 88 00 00 	mov    %r11d,0x88(%rsp)
   14000839f:	00 
   1400083a0:	44 89 94 24 80 00 00 	mov    %r10d,0x80(%rsp)
   1400083a7:	00 
   1400083a8:	e8 d3 0c 00 00       	call   140009080 <__pow5mult_D2A>
   1400083ad:	44 8b 9c 24 88 00 00 	mov    0x88(%rsp),%r11d
   1400083b4:	00 
   1400083b5:	44 8b 94 24 80 00 00 	mov    0x80(%rsp),%r10d
   1400083bc:	00 
   1400083bd:	48 89 c6             	mov    %rax,%rsi
   1400083c0:	e9 fb f6 ff ff       	jmp    140007ac0 <__gdtoa+0x880>
   1400083c5:	48 89 df             	mov    %rbx,%rdi
   1400083c8:	4c 89 e3             	mov    %r12,%rbx
   1400083cb:	e9 35 f8 ff ff       	jmp    140007c05 <__gdtoa+0x9c5>
   1400083d0:	8b 4c 24 70          	mov    0x70(%rsp),%ecx
   1400083d4:	89 c2                	mov    %eax,%edx
   1400083d6:	89 44 24 70          	mov    %eax,0x70(%rsp)
   1400083da:	45 31 e4             	xor    %r12d,%r12d
   1400083dd:	29 ca                	sub    %ecx,%edx
   1400083df:	8b 4c 24 60          	mov    0x60(%rsp),%ecx
   1400083e3:	41 01 d2             	add    %edx,%r10d
   1400083e6:	8b 54 24 48          	mov    0x48(%rsp),%edx
   1400083ea:	89 4c 24 58          	mov    %ecx,0x58(%rsp)
   1400083ee:	89 94 24 ac 00 00 00 	mov    %edx,0xac(%rsp)
   1400083f5:	41 01 d3             	add    %edx,%r11d
   1400083f8:	01 ca                	add    %ecx,%edx
   1400083fa:	89 54 24 60          	mov    %edx,0x60(%rsp)
   1400083fe:	e9 12 f6 ff ff       	jmp    140007a15 <__gdtoa+0x7d5>
   140008403:	41 83 fe 01          	cmp    $0x1,%r14d
   140008407:	0f 85 b6 fc ff ff    	jne    1400080c3 <__gdtoa+0xe83>
   14000840d:	41 8b 45 04          	mov    0x4(%r13),%eax
   140008411:	8b 54 24 38          	mov    0x38(%rsp),%edx
   140008415:	83 c0 01             	add    $0x1,%eax
   140008418:	39 d0                	cmp    %edx,%eax
   14000841a:	0f 8d a3 fc ff ff    	jge    1400080c3 <__gdtoa+0xe83>
   140008420:	83 44 24 60 01       	addl   $0x1,0x60(%rsp)
   140008425:	41 83 c3 01          	add    $0x1,%r11d
   140008429:	41 ba 01 00 00 00    	mov    $0x1,%r10d
   14000842f:	e9 92 fc ff ff       	jmp    1400080c6 <__gdtoa+0xe86>
   140008434:	0f 1f 40 00          	nopl   0x0(%rax)
   140008438:	83 44 24 50 01       	addl   $0x1,0x50(%rsp)
   14000843d:	c6 03 31             	movb   $0x31,(%rbx)
   140008440:	c7 44 24 40 20 00 00 	movl   $0x20,0x40(%rsp)
   140008447:	00 
   140008448:	e9 b3 fa ff ff       	jmp    140007f00 <__gdtoa+0xcc0>
   14000844d:	48 89 e9             	mov    %rbp,%rcx
   140008450:	44 89 e2             	mov    %r12d,%edx
   140008453:	44 89 9c 24 8c 00 00 	mov    %r11d,0x8c(%rsp)
   14000845a:	00 
   14000845b:	44 89 94 24 88 00 00 	mov    %r10d,0x88(%rsp)
   140008462:	00 
   140008463:	e8 18 0c 00 00       	call   140009080 <__pow5mult_D2A>
   140008468:	48 89 f2             	mov    %rsi,%rdx
   14000846b:	48 89 c1             	mov    %rax,%rcx
   14000846e:	48 89 c5             	mov    %rax,%rbp
   140008471:	e8 aa 0a 00 00       	call   140008f20 <__mult_D2A>
   140008476:	48 89 f1             	mov    %rsi,%rcx
   140008479:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
   140008480:	00 
   140008481:	e8 aa 08 00 00       	call   140008d30 <__Bfree_D2A>
   140008486:	44 29 64 24 70       	sub    %r12d,0x70(%rsp)
   14000848b:	48 8b b4 24 80 00 00 	mov    0x80(%rsp),%rsi
   140008492:	00 
   140008493:	44 8b 94 24 88 00 00 	mov    0x88(%rsp),%r10d
   14000849a:	00 
   14000849b:	44 8b 9c 24 8c 00 00 	mov    0x8c(%rsp),%r11d
   1400084a2:	00 
   1400084a3:	0f 84 17 f6 ff ff    	je     140007ac0 <__gdtoa+0x880>
   1400084a9:	e9 df f5 ff ff       	jmp    140007a8d <__gdtoa+0x84d>
   1400084ae:	48 89 df             	mov    %rbx,%rdi
   1400084b1:	48 89 c3             	mov    %rax,%rbx
   1400084b4:	e9 4c f7 ff ff       	jmp    140007c05 <__gdtoa+0x9c5>
   1400084b9:	48 89 f1             	mov    %rsi,%rcx
   1400084bc:	ba 01 00 00 00       	mov    $0x1,%edx
   1400084c1:	4c 89 4c 24 30       	mov    %r9,0x30(%rsp)
   1400084c6:	44 89 44 24 38       	mov    %r8d,0x38(%rsp)
   1400084cb:	e8 30 0d 00 00       	call   140009200 <__lshift_D2A>
   1400084d0:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
   1400084d5:	48 89 c1             	mov    %rax,%rcx
   1400084d8:	48 89 c6             	mov    %rax,%rsi
   1400084db:	e8 30 0e 00 00       	call   140009310 <__cmp_D2A>
   1400084e0:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
   1400084e5:	85 c0                	test   %eax,%eax
   1400084e7:	0f 8f 8c fb ff ff    	jg     140008079 <__gdtoa+0xe39>
   1400084ed:	75 0f                	jne    1400084fe <__gdtoa+0x12be>
   1400084ef:	44 8b 44 24 38       	mov    0x38(%rsp),%r8d
   1400084f4:	41 83 e0 01          	and    $0x1,%r8d
   1400084f8:	0f 85 7b fb ff ff    	jne    140008079 <__gdtoa+0xe39>
   1400084fe:	83 7e 14 01          	cmpl   $0x1,0x14(%rsi)
   140008502:	c7 44 24 40 10 00 00 	movl   $0x10,0x40(%rsp)
   140008509:	00 
   14000850a:	4d 89 f4             	mov    %r14,%r12
   14000850d:	0f 8f ed f9 ff ff    	jg     140007f00 <__gdtoa+0xcc0>
   140008513:	8b 46 18             	mov    0x18(%rsi),%eax
   140008516:	e9 3b fb ff ff       	jmp    140008056 <__gdtoa+0xe16>
   14000851b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140008520:	49 89 fa             	mov    %rdi,%r10
   140008523:	8b 7c 24 54          	mov    0x54(%rsp),%edi
   140008527:	41 89 d8             	mov    %ebx,%r8d
   14000852a:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
   14000852f:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
   140008534:	4c 8b 7c 24 70       	mov    0x70(%rsp),%r15
   140008539:	85 ff                	test   %edi,%edi
   14000853b:	0f 84 e6 01 00 00    	je     140008727 <__gdtoa+0x14e7>
   140008541:	83 7e 14 01          	cmpl   $0x1,0x14(%rsi)
   140008545:	0f 8e c8 03 00 00    	jle    140008913 <__gdtoa+0x16d3>
   14000854b:	83 7c 24 54 02       	cmpl   $0x2,0x54(%rsp)
   140008550:	0f 84 38 02 00 00    	je     14000878e <__gdtoa+0x154e>
   140008556:	48 89 5c 24 30       	mov    %rbx,0x30(%rsp)
   14000855b:	45 89 c6             	mov    %r8d,%r14d
   14000855e:	4d 89 d4             	mov    %r10,%r12
   140008561:	4c 89 cb             	mov    %r9,%rbx
   140008564:	4c 89 7c 24 38       	mov    %r15,0x38(%rsp)
   140008569:	eb 4b                	jmp    1400085b6 <__gdtoa+0x1376>
   14000856b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140008570:	45 88 77 ff          	mov    %r14b,-0x1(%r15)
   140008574:	45 31 c0             	xor    %r8d,%r8d
   140008577:	4c 89 e9             	mov    %r13,%rcx
   14000857a:	ba 0a 00 00 00       	mov    $0xa,%edx
   14000857f:	4d 89 fc             	mov    %r15,%r12
   140008582:	e8 19 08 00 00       	call   140008da0 <__multadd_D2A>
   140008587:	4c 39 ed             	cmp    %r13,%rbp
   14000858a:	48 89 f1             	mov    %rsi,%rcx
   14000858d:	ba 0a 00 00 00       	mov    $0xa,%edx
   140008592:	48 0f 44 e8          	cmove  %rax,%rbp
   140008596:	45 31 c0             	xor    %r8d,%r8d
   140008599:	48 89 c7             	mov    %rax,%rdi
   14000859c:	e8 ff 07 00 00       	call   140008da0 <__multadd_D2A>
   1400085a1:	48 89 da             	mov    %rbx,%rdx
   1400085a4:	49 89 fd             	mov    %rdi,%r13
   1400085a7:	48 89 c1             	mov    %rax,%rcx
   1400085aa:	48 89 c6             	mov    %rax,%rsi
   1400085ad:	e8 0e eb ff ff       	call   1400070c0 <__quorem_D2A>
   1400085b2:	44 8d 70 30          	lea    0x30(%rax),%r14d
   1400085b6:	4c 89 ea             	mov    %r13,%rdx
   1400085b9:	48 89 d9             	mov    %rbx,%rcx
   1400085bc:	4d 8d 7c 24 01       	lea    0x1(%r12),%r15
   1400085c1:	e8 4a 0d 00 00       	call   140009310 <__cmp_D2A>
   1400085c6:	85 c0                	test   %eax,%eax
   1400085c8:	7f a6                	jg     140008570 <__gdtoa+0x1330>
   1400085ca:	4d 89 e2             	mov    %r12,%r10
   1400085cd:	49 89 d9             	mov    %rbx,%r9
   1400085d0:	4d 89 fc             	mov    %r15,%r12
   1400085d3:	48 8b 5c 24 30       	mov    0x30(%rsp),%rbx
   1400085d8:	4c 8b 7c 24 38       	mov    0x38(%rsp),%r15
   1400085dd:	45 89 f0             	mov    %r14d,%r8d
   1400085e0:	41 83 fe 39          	cmp    $0x39,%r14d
   1400085e4:	0f 84 51 03 00 00    	je     14000893b <__gdtoa+0x16fb>
   1400085ea:	c7 44 24 40 20 00 00 	movl   $0x20,0x40(%rsp)
   1400085f1:	00 
   1400085f2:	48 89 ef             	mov    %rbp,%rdi
   1400085f5:	41 83 c0 01          	add    $0x1,%r8d
   1400085f9:	4c 89 ed             	mov    %r13,%rbp
   1400085fc:	45 88 02             	mov    %r8b,(%r10)
   1400085ff:	e9 fc f8 ff ff       	jmp    140007f00 <__gdtoa+0xcc0>
   140008604:	44 8b 4c 24 48       	mov    0x48(%rsp),%r9d
   140008609:	45 85 c9             	test   %r9d,%r9d
   14000860c:	0f 84 1e fd ff ff    	je     140008330 <__gdtoa+0x10f0>
   140008612:	8b ac 24 98 00 00 00 	mov    0x98(%rsp),%ebp
   140008619:	85 ed                	test   %ebp,%ebp
   14000861b:	0f 8e 63 fd ff ff    	jle    140008384 <__gdtoa+0x1144>
   140008621:	f2 0f 59 05 1f 40 00 	mulsd  0x401f(%rip),%xmm0        # 14000c648 <.rdata+0x48>
   140008628:	00 
   140008629:	f2 0f 10 0d 1f 40 00 	movsd  0x401f(%rip),%xmm1        # 14000c650 <.rdata+0x50>
   140008630:	00 
   140008631:	c7 44 24 54 ff ff ff 	movl   $0xffffffff,0x54(%rsp)
   140008638:	ff 
   140008639:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
   14000863d:	66 48 0f 7e c2       	movq   %xmm0,%rdx
   140008642:	f2 0f 58 0d 0e 40 00 	addsd  0x400e(%rip),%xmm1        # 14000c658 <.rdata+0x58>
   140008649:	00 
   14000864a:	66 48 0f 7e c8       	movq   %xmm1,%rax
   14000864f:	48 89 c1             	mov    %rax,%rcx
   140008652:	89 c0                	mov    %eax,%eax
   140008654:	48 c1 e9 20          	shr    $0x20,%rcx
   140008658:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
   14000865e:	48 c1 e1 20          	shl    $0x20,%rcx
   140008662:	48 09 c8             	or     %rcx,%rax
   140008665:	e9 25 f1 ff ff       	jmp    14000778f <__gdtoa+0x54f>
   14000866a:	8b 4d 08             	mov    0x8(%rbp),%ecx
   14000866d:	4c 89 4c 24 38       	mov    %r9,0x38(%rsp)
   140008672:	e8 c9 05 00 00       	call   140008c40 <__Balloc_D2A>
   140008677:	48 8d 55 10          	lea    0x10(%rbp),%rdx
   14000867b:	48 8d 48 10          	lea    0x10(%rax),%rcx
   14000867f:	49 89 c4             	mov    %rax,%r12
   140008682:	48 63 45 14          	movslq 0x14(%rbp),%rax
   140008686:	4c 8d 04 85 08 00 00 	lea    0x8(,%rax,4),%r8
   14000868d:	00 
   14000868e:	e8 e5 1b 00 00       	call   14000a278 <memcpy>
   140008693:	ba 01 00 00 00       	mov    $0x1,%edx
   140008698:	4c 89 e1             	mov    %r12,%rcx
   14000869b:	e8 60 0b 00 00       	call   140009200 <__lshift_D2A>
   1400086a0:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
   1400086a5:	49 89 c5             	mov    %rax,%r13
   1400086a8:	e9 c8 f6 ff ff       	jmp    140007d75 <__gdtoa+0xb35>
   1400086ad:	c7 44 24 50 02 00 00 	movl   $0x2,0x50(%rsp)
   1400086b4:	00 
   1400086b5:	48 89 df             	mov    %rbx,%rdi
   1400086b8:	45 31 c9             	xor    %r9d,%r9d
   1400086bb:	31 ed                	xor    %ebp,%ebp
   1400086bd:	e9 1f f5 ff ff       	jmp    140007be1 <__gdtoa+0x9a1>
   1400086c2:	41 89 d8             	mov    %ebx,%r8d
   1400086c5:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
   1400086ca:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
   1400086cf:	49 89 fa             	mov    %rdi,%r10
   1400086d2:	4c 8b 7c 24 70       	mov    0x70(%rsp),%r15
   1400086d7:	41 83 f8 39          	cmp    $0x39,%r8d
   1400086db:	0f 84 5a 02 00 00    	je     14000893b <__gdtoa+0x16fb>
   1400086e1:	41 83 c0 01          	add    $0x1,%r8d
   1400086e5:	c7 44 24 40 20 00 00 	movl   $0x20,0x40(%rsp)
   1400086ec:	00 
   1400086ed:	44 88 07             	mov    %r8b,(%rdi)
   1400086f0:	48 89 ef             	mov    %rbp,%rdi
   1400086f3:	4c 89 ed             	mov    %r13,%rbp
   1400086f6:	e9 05 f8 ff ff       	jmp    140007f00 <__gdtoa+0xcc0>
   1400086fb:	41 89 d8             	mov    %ebx,%r8d
   1400086fe:	48 89 ef             	mov    %rbp,%rdi
   140008701:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
   140008706:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
   14000870b:	4c 8b 7c 24 70       	mov    0x70(%rsp),%r15
   140008710:	4c 89 ed             	mov    %r13,%rbp
   140008713:	e9 1a f9 ff ff       	jmp    140008032 <__gdtoa+0xdf2>
   140008718:	83 44 24 54 01       	addl   $0x1,0x54(%rsp)
   14000871d:	b9 31 00 00 00       	mov    $0x31,%ecx
   140008722:	e9 55 f1 ff ff       	jmp    14000787c <__gdtoa+0x63c>
   140008727:	85 d2                	test   %edx,%edx
   140008729:	7e 59                	jle    140008784 <__gdtoa+0x1544>
   14000872b:	48 89 f1             	mov    %rsi,%rcx
   14000872e:	ba 01 00 00 00       	mov    $0x1,%edx
   140008733:	4c 89 4c 24 30       	mov    %r9,0x30(%rsp)
   140008738:	4c 89 54 24 40       	mov    %r10,0x40(%rsp)
   14000873d:	44 89 44 24 38       	mov    %r8d,0x38(%rsp)
   140008742:	e8 b9 0a 00 00       	call   140009200 <__lshift_D2A>
   140008747:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
   14000874c:	48 89 c1             	mov    %rax,%rcx
   14000874f:	48 89 c6             	mov    %rax,%rsi
   140008752:	e8 b9 0b 00 00       	call   140009310 <__cmp_D2A>
   140008757:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
   14000875c:	44 8b 44 24 38       	mov    0x38(%rsp),%r8d
   140008761:	85 c0                	test   %eax,%eax
   140008763:	4c 8b 54 24 40       	mov    0x40(%rsp),%r10
   140008768:	0f 8e fd 01 00 00    	jle    14000896b <__gdtoa+0x172b>
   14000876e:	41 83 f8 39          	cmp    $0x39,%r8d
   140008772:	0f 84 0c 02 00 00    	je     140008984 <__gdtoa+0x1744>
   140008778:	c7 44 24 54 20 00 00 	movl   $0x20,0x54(%rsp)
   14000877f:	00 
   140008780:	45 8d 46 31          	lea    0x31(%r14),%r8d
   140008784:	83 7e 14 01          	cmpl   $0x1,0x14(%rsi)
   140008788:	0f 8e bf 01 00 00    	jle    14000894d <__gdtoa+0x170d>
   14000878e:	48 89 ef             	mov    %rbp,%rdi
   140008791:	c7 44 24 40 10 00 00 	movl   $0x10,0x40(%rsp)
   140008798:	00 
   140008799:	4c 89 ed             	mov    %r13,%rbp
   14000879c:	4d 8d 62 01          	lea    0x1(%r10),%r12
   1400087a0:	e9 57 fe ff ff       	jmp    1400085fc <__gdtoa+0x13bc>
   1400087a5:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
   1400087a9:	66 0f 2f c2          	comisd %xmm2,%xmm0
   1400087ad:	77 19                	ja     1400087c8 <__gdtoa+0x1588>
   1400087af:	66 0f 2e c2          	ucomisd %xmm2,%xmm0
   1400087b3:	0f 8a 5b fb ff ff    	jp     140008314 <__gdtoa+0x10d4>
   1400087b9:	0f 85 55 fb ff ff    	jne    140008314 <__gdtoa+0x10d4>
   1400087bf:	80 e2 01             	and    $0x1,%dl
   1400087c2:	0f 84 4c fb ff ff    	je     140008314 <__gdtoa+0x10d4>
   1400087c8:	0f b6 48 ff          	movzbl -0x1(%rax),%ecx
   1400087cc:	48 89 df             	mov    %rbx,%rdi
   1400087cf:	48 89 c3             	mov    %rax,%rbx
   1400087d2:	8b 44 24 68          	mov    0x68(%rsp),%eax
   1400087d6:	89 44 24 54          	mov    %eax,0x54(%rsp)
   1400087da:	e9 91 f0 ff ff       	jmp    140007870 <__gdtoa+0x630>
   1400087df:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
   1400087e6:	44 89 74 24 68       	mov    %r14d,0x68(%rsp)
   1400087eb:	89 44 24 48          	mov    %eax,0x48(%rsp)
   1400087ef:	e9 a6 f3 ff ff       	jmp    140007b9a <__gdtoa+0x95a>
   1400087f4:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400087f8:	31 c0                	xor    %eax,%eax
   1400087fa:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400087ff:	48 89 df             	mov    %rbx,%rdi
   140008802:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
   140008806:	48 89 d3             	mov    %rdx,%rbx
   140008809:	0f 9a c0             	setp   %al
   14000880c:	0f 45 c1             	cmovne %ecx,%eax
   14000880f:	c1 e0 04             	shl    $0x4,%eax
   140008812:	89 44 24 40          	mov    %eax,0x40(%rsp)
   140008816:	8b 44 24 54          	mov    0x54(%rsp),%eax
   14000881a:	83 c0 01             	add    $0x1,%eax
   14000881d:	89 44 24 50          	mov    %eax,0x50(%rsp)
   140008821:	e9 df f3 ff ff       	jmp    140007c05 <__gdtoa+0x9c5>
   140008826:	48 89 df             	mov    %rbx,%rdi
   140008829:	4c 89 cb             	mov    %r9,%rbx
   14000882c:	e9 3f f0 ff ff       	jmp    140007870 <__gdtoa+0x630>
   140008831:	8b 44 24 60          	mov    0x60(%rsp),%eax
   140008835:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
   14000883c:	00 
   14000883d:	31 ed                	xor    %ebp,%ebp
   14000883f:	44 8b 64 24 70       	mov    0x70(%rsp),%r12d
   140008844:	89 44 24 58          	mov    %eax,0x58(%rsp)
   140008848:	e9 f5 f1 ff ff       	jmp    140007a42 <__gdtoa+0x802>
   14000884d:	8b 54 24 60          	mov    0x60(%rsp),%edx
   140008851:	89 c8                	mov    %ecx,%eax
   140008853:	89 8c 24 ac 00 00 00 	mov    %ecx,0xac(%rsp)
   14000885a:	41 01 cb             	add    %ecx,%r11d
   14000885d:	01 d0                	add    %edx,%eax
   14000885f:	89 54 24 58          	mov    %edx,0x58(%rsp)
   140008863:	89 44 24 60          	mov    %eax,0x60(%rsp)
   140008867:	e9 a9 f1 ff ff       	jmp    140007a15 <__gdtoa+0x7d5>
   14000886c:	45 31 c0             	xor    %r8d,%r8d
   14000886f:	48 89 e9             	mov    %rbp,%rcx
   140008872:	ba 0a 00 00 00       	mov    $0xa,%edx
   140008877:	e8 24 05 00 00       	call   140008da0 <__multadd_D2A>
   14000887c:	45 84 ed             	test   %r13b,%r13b
   14000887f:	4c 8b 4c 24 48       	mov    0x48(%rsp),%r9
   140008884:	48 89 c5             	mov    %rax,%rbp
   140008887:	0f 85 52 ff ff ff    	jne    1400087df <__gdtoa+0x159f>
   14000888d:	8b 44 24 68          	mov    0x68(%rsp),%eax
   140008891:	44 8b 54 24 38       	mov    0x38(%rsp),%r10d
   140008896:	89 44 24 50          	mov    %eax,0x50(%rsp)
   14000889a:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
   1400088a1:	89 44 24 48          	mov    %eax,0x48(%rsp)
   1400088a5:	e9 95 f4 ff ff       	jmp    140007d3f <__gdtoa+0xaff>
   1400088aa:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400088ae:	31 c0                	xor    %eax,%eax
   1400088b0:	ba 01 00 00 00       	mov    $0x1,%edx
   1400088b5:	48 89 df             	mov    %rbx,%rdi
   1400088b8:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
   1400088bc:	4c 89 cb             	mov    %r9,%rbx
   1400088bf:	0f 9a c0             	setp   %al
   1400088c2:	0f 45 c2             	cmovne %edx,%eax
   1400088c5:	c1 e0 04             	shl    $0x4,%eax
   1400088c8:	89 44 24 40          	mov    %eax,0x40(%rsp)
   1400088cc:	8b 44 24 54          	mov    0x54(%rsp),%eax
   1400088d0:	83 c0 01             	add    $0x1,%eax
   1400088d3:	89 44 24 50          	mov    %eax,0x50(%rsp)
   1400088d7:	e9 29 f3 ff ff       	jmp    140007c05 <__gdtoa+0x9c5>
   1400088dc:	8b 54 24 48          	mov    0x48(%rsp),%edx
   1400088e0:	8b 4c 24 70          	mov    0x70(%rsp),%ecx
   1400088e4:	8d 42 ff             	lea    -0x1(%rdx),%eax
   1400088e7:	39 c1                	cmp    %eax,%ecx
   1400088e9:	0f 8c e1 fa ff ff    	jl     1400083d0 <__gdtoa+0x1190>
   1400088ef:	29 c1                	sub    %eax,%ecx
   1400088f1:	89 94 24 ac 00 00 00 	mov    %edx,0xac(%rsp)
   1400088f8:	89 d0                	mov    %edx,%eax
   1400088fa:	41 01 d3             	add    %edx,%r11d
   1400088fd:	8b 54 24 60          	mov    0x60(%rsp),%edx
   140008901:	41 89 cc             	mov    %ecx,%r12d
   140008904:	01 d0                	add    %edx,%eax
   140008906:	89 54 24 58          	mov    %edx,0x58(%rsp)
   14000890a:	89 44 24 60          	mov    %eax,0x60(%rsp)
   14000890e:	e9 02 f1 ff ff       	jmp    140007a15 <__gdtoa+0x7d5>
   140008913:	44 8b 5e 18          	mov    0x18(%rsi),%r11d
   140008917:	45 85 db             	test   %r11d,%r11d
   14000891a:	0f 85 2b fc ff ff    	jne    14000854b <__gdtoa+0x130b>
   140008920:	85 d2                	test   %edx,%edx
   140008922:	0f 8f 03 fe ff ff    	jg     14000872b <__gdtoa+0x14eb>
   140008928:	48 89 ef             	mov    %rbp,%rdi
   14000892b:	4d 8d 62 01          	lea    0x1(%r10),%r12
   14000892f:	4c 89 ed             	mov    %r13,%rbp
   140008932:	e9 c5 fc ff ff       	jmp    1400085fc <__gdtoa+0x13bc>
   140008937:	4c 8d 67 01          	lea    0x1(%rdi),%r12
   14000893b:	48 89 ef             	mov    %rbp,%rdi
   14000893e:	4c 89 ed             	mov    %r13,%rbp
   140008941:	41 c6 02 39          	movb   $0x39,(%r10)
   140008945:	4d 89 e6             	mov    %r12,%r14
   140008948:	e9 2c f7 ff ff       	jmp    140008079 <__gdtoa+0xe39>
   14000894d:	8b 4e 18             	mov    0x18(%rsi),%ecx
   140008950:	48 89 ef             	mov    %rbp,%rdi
   140008953:	4c 89 ed             	mov    %r13,%rbp
   140008956:	85 c9                	test   %ecx,%ecx
   140008958:	74 36                	je     140008990 <__gdtoa+0x1750>
   14000895a:	c7 44 24 40 10 00 00 	movl   $0x10,0x40(%rsp)
   140008961:	00 
   140008962:	4d 8d 62 01          	lea    0x1(%r10),%r12
   140008966:	e9 91 fc ff ff       	jmp    1400085fc <__gdtoa+0x13bc>
   14000896b:	75 0a                	jne    140008977 <__gdtoa+0x1737>
   14000896d:	41 f6 c0 01          	test   $0x1,%r8b
   140008971:	0f 85 f7 fd ff ff    	jne    14000876e <__gdtoa+0x152e>
   140008977:	c7 44 24 54 20 00 00 	movl   $0x20,0x54(%rsp)
   14000897e:	00 
   14000897f:	e9 00 fe ff ff       	jmp    140008784 <__gdtoa+0x1544>
   140008984:	48 89 ef             	mov    %rbp,%rdi
   140008987:	4d 8d 62 01          	lea    0x1(%r10),%r12
   14000898b:	4c 89 ed             	mov    %r13,%rbp
   14000898e:	eb b1                	jmp    140008941 <__gdtoa+0x1701>
   140008990:	8b 44 24 54          	mov    0x54(%rsp),%eax
   140008994:	4d 8d 62 01          	lea    0x1(%r10),%r12
   140008998:	89 44 24 40          	mov    %eax,0x40(%rsp)
   14000899c:	e9 5b fc ff ff       	jmp    1400085fc <__gdtoa+0x13bc>
   1400089a1:	83 7e 14 01          	cmpl   $0x1,0x14(%rsi)
   1400089a5:	c7 44 24 40 10 00 00 	movl   $0x10,0x40(%rsp)
   1400089ac:	00 
   1400089ad:	0f 8f 39 f5 ff ff    	jg     140007eec <__gdtoa+0xcac>
   1400089b3:	31 c0                	xor    %eax,%eax
   1400089b5:	83 7e 18 00          	cmpl   $0x0,0x18(%rsi)
   1400089b9:	0f 95 c0             	setne  %al
   1400089bc:	c1 e0 04             	shl    $0x4,%eax
   1400089bf:	89 44 24 40          	mov    %eax,0x40(%rsp)
   1400089c3:	e9 24 f5 ff ff       	jmp    140007eec <__gdtoa+0xcac>
   1400089c8:	90                   	nop
   1400089c9:	90                   	nop
   1400089ca:	90                   	nop
   1400089cb:	90                   	nop
   1400089cc:	90                   	nop
   1400089cd:	90                   	nop
   1400089ce:	90                   	nop
   1400089cf:	90                   	nop

00000001400089d0 <__rshift_D2A>:
   1400089d0:	41 54                	push   %r12
   1400089d2:	55                   	push   %rbp
   1400089d3:	57                   	push   %rdi
   1400089d4:	56                   	push   %rsi
   1400089d5:	53                   	push   %rbx
   1400089d6:	48 63 59 14          	movslq 0x14(%rcx),%rbx
   1400089da:	89 d5                	mov    %edx,%ebp
   1400089dc:	49 89 ca             	mov    %rcx,%r10
   1400089df:	c1 fd 05             	sar    $0x5,%ebp
   1400089e2:	39 eb                	cmp    %ebp,%ebx
   1400089e4:	7f 1a                	jg     140008a00 <__rshift_D2A+0x30>
   1400089e6:	41 c7 42 14 00 00 00 	movl   $0x0,0x14(%r10)
   1400089ed:	00 
   1400089ee:	41 c7 42 18 00 00 00 	movl   $0x0,0x18(%r10)
   1400089f5:	00 
   1400089f6:	5b                   	pop    %rbx
   1400089f7:	5e                   	pop    %rsi
   1400089f8:	5f                   	pop    %rdi
   1400089f9:	5d                   	pop    %rbp
   1400089fa:	41 5c                	pop    %r12
   1400089fc:	c3                   	ret
   1400089fd:	0f 1f 00             	nopl   (%rax)
   140008a00:	4c 8d 61 18          	lea    0x18(%rcx),%r12
   140008a04:	48 63 ed             	movslq %ebp,%rbp
   140008a07:	4d 8d 1c 9c          	lea    (%r12,%rbx,4),%r11
   140008a0b:	49 8d 34 ac          	lea    (%r12,%rbp,4),%rsi
   140008a0f:	83 e2 1f             	and    $0x1f,%edx
   140008a12:	74 64                	je     140008a78 <__rshift_D2A+0xa8>
   140008a14:	44 8b 0e             	mov    (%rsi),%r9d
   140008a17:	bf 20 00 00 00       	mov    $0x20,%edi
   140008a1c:	89 d1                	mov    %edx,%ecx
   140008a1e:	4c 8d 46 04          	lea    0x4(%rsi),%r8
   140008a22:	29 d7                	sub    %edx,%edi
   140008a24:	41 d3 e9             	shr    %cl,%r9d
   140008a27:	4d 39 d8             	cmp    %r11,%r8
   140008a2a:	0f 83 80 00 00 00    	jae    140008ab0 <__rshift_D2A+0xe0>
   140008a30:	4c 89 e6             	mov    %r12,%rsi
   140008a33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140008a38:	41 8b 00             	mov    (%r8),%eax
   140008a3b:	89 f9                	mov    %edi,%ecx
   140008a3d:	48 83 c6 04          	add    $0x4,%rsi
   140008a41:	49 83 c0 04          	add    $0x4,%r8
   140008a45:	d3 e0                	shl    %cl,%eax
   140008a47:	89 d1                	mov    %edx,%ecx
   140008a49:	44 09 c8             	or     %r9d,%eax
   140008a4c:	89 46 fc             	mov    %eax,-0x4(%rsi)
   140008a4f:	45 8b 48 fc          	mov    -0x4(%r8),%r9d
   140008a53:	41 d3 e9             	shr    %cl,%r9d
   140008a56:	4d 39 d8             	cmp    %r11,%r8
   140008a59:	72 dd                	jb     140008a38 <__rshift_D2A+0x68>
   140008a5b:	48 29 eb             	sub    %rbp,%rbx
   140008a5e:	49 8d 44 9c fc       	lea    -0x4(%r12,%rbx,4),%rax
   140008a63:	44 89 08             	mov    %r9d,(%rax)
   140008a66:	45 85 c9             	test   %r9d,%r9d
   140008a69:	74 2a                	je     140008a95 <__rshift_D2A+0xc5>
   140008a6b:	48 83 c0 04          	add    $0x4,%rax
   140008a6f:	eb 24                	jmp    140008a95 <__rshift_D2A+0xc5>
   140008a71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140008a78:	4c 89 e7             	mov    %r12,%rdi
   140008a7b:	4c 39 de             	cmp    %r11,%rsi
   140008a7e:	0f 83 62 ff ff ff    	jae    1400089e6 <__rshift_D2A+0x16>
   140008a84:	0f 1f 40 00          	nopl   0x0(%rax)
   140008a88:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
   140008a89:	4c 39 de             	cmp    %r11,%rsi
   140008a8c:	72 fa                	jb     140008a88 <__rshift_D2A+0xb8>
   140008a8e:	48 29 eb             	sub    %rbp,%rbx
   140008a91:	49 8d 04 9c          	lea    (%r12,%rbx,4),%rax
   140008a95:	4c 29 e0             	sub    %r12,%rax
   140008a98:	48 c1 f8 02          	sar    $0x2,%rax
   140008a9c:	41 89 42 14          	mov    %eax,0x14(%r10)
   140008aa0:	85 c0                	test   %eax,%eax
   140008aa2:	0f 84 46 ff ff ff    	je     1400089ee <__rshift_D2A+0x1e>
   140008aa8:	5b                   	pop    %rbx
   140008aa9:	5e                   	pop    %rsi
   140008aaa:	5f                   	pop    %rdi
   140008aab:	5d                   	pop    %rbp
   140008aac:	41 5c                	pop    %r12
   140008aae:	c3                   	ret
   140008aaf:	90                   	nop
   140008ab0:	45 89 4a 18          	mov    %r9d,0x18(%r10)
   140008ab4:	45 85 c9             	test   %r9d,%r9d
   140008ab7:	0f 84 29 ff ff ff    	je     1400089e6 <__rshift_D2A+0x16>
   140008abd:	4c 89 e0             	mov    %r12,%rax
   140008ac0:	eb a9                	jmp    140008a6b <__rshift_D2A+0x9b>
   140008ac2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140008ac9:	00 00 00 00 
   140008acd:	0f 1f 00             	nopl   (%rax)

0000000140008ad0 <__trailz_D2A>:
   140008ad0:	48 63 51 14          	movslq 0x14(%rcx),%rdx
   140008ad4:	48 8d 41 18          	lea    0x18(%rcx),%rax
   140008ad8:	48 8d 0c 90          	lea    (%rax,%rdx,4),%rcx
   140008adc:	31 d2                	xor    %edx,%edx
   140008ade:	48 39 c8             	cmp    %rcx,%rax
   140008ae1:	72 11                	jb     140008af4 <__trailz_D2A+0x24>
   140008ae3:	eb 22                	jmp    140008b07 <__trailz_D2A+0x37>
   140008ae5:	0f 1f 00             	nopl   (%rax)
   140008ae8:	48 83 c0 04          	add    $0x4,%rax
   140008aec:	83 c2 20             	add    $0x20,%edx
   140008aef:	48 39 c8             	cmp    %rcx,%rax
   140008af2:	73 13                	jae    140008b07 <__trailz_D2A+0x37>
   140008af4:	44 8b 00             	mov    (%rax),%r8d
   140008af7:	45 85 c0             	test   %r8d,%r8d
   140008afa:	74 ec                	je     140008ae8 <__trailz_D2A+0x18>
   140008afc:	48 39 c8             	cmp    %rcx,%rax
   140008aff:	73 06                	jae    140008b07 <__trailz_D2A+0x37>
   140008b01:	f3 0f bc 00          	tzcnt  (%rax),%eax
   140008b05:	01 c2                	add    %eax,%edx
   140008b07:	89 d0                	mov    %edx,%eax
   140008b09:	c3                   	ret
   140008b0a:	90                   	nop
   140008b0b:	90                   	nop
   140008b0c:	90                   	nop
   140008b0d:	90                   	nop
   140008b0e:	90                   	nop
   140008b0f:	90                   	nop

0000000140008b10 <dtoa_lock>:
   140008b10:	57                   	push   %rdi
   140008b11:	56                   	push   %rsi
   140008b12:	53                   	push   %rbx
   140008b13:	48 83 ec 20          	sub    $0x20,%rsp
   140008b17:	8b 05 73 80 00 00    	mov    0x8073(%rip),%eax        # 140010b90 <dtoa_CS_init>
   140008b1d:	89 ce                	mov    %ecx,%esi
   140008b1f:	83 f8 02             	cmp    $0x2,%eax
   140008b22:	0f 84 b8 00 00 00    	je     140008be0 <dtoa_lock+0xd0>
   140008b28:	85 c0                	test   %eax,%eax
   140008b2a:	74 3c                	je     140008b68 <dtoa_lock+0x58>
   140008b2c:	83 f8 01             	cmp    $0x1,%eax
   140008b2f:	75 2a                	jne    140008b5b <dtoa_lock+0x4b>
   140008b31:	48 8b 1d 38 88 00 00 	mov    0x8838(%rip),%rbx        # 140011370 <__imp_Sleep>
   140008b38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140008b3f:	00 
   140008b40:	b9 01 00 00 00       	mov    $0x1,%ecx
   140008b45:	ff d3                	call   *%rbx
   140008b47:	8b 05 43 80 00 00    	mov    0x8043(%rip),%eax        # 140010b90 <dtoa_CS_init>
   140008b4d:	83 f8 01             	cmp    $0x1,%eax
   140008b50:	74 ee                	je     140008b40 <dtoa_lock+0x30>
   140008b52:	83 f8 02             	cmp    $0x2,%eax
   140008b55:	0f 84 85 00 00 00    	je     140008be0 <dtoa_lock+0xd0>
   140008b5b:	48 83 c4 20          	add    $0x20,%rsp
   140008b5f:	5b                   	pop    %rbx
   140008b60:	5e                   	pop    %rsi
   140008b61:	5f                   	pop    %rdi
   140008b62:	c3                   	ret
   140008b63:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140008b68:	b8 01 00 00 00       	mov    $0x1,%eax
   140008b6d:	87 05 1d 80 00 00    	xchg   %eax,0x801d(%rip)        # 140010b90 <dtoa_CS_init>
   140008b73:	85 c0                	test   %eax,%eax
   140008b75:	75 49                	jne    140008bc0 <dtoa_lock+0xb0>
   140008b77:	48 8d 1d 22 80 00 00 	lea    0x8022(%rip),%rbx        # 140010ba0 <dtoa_CritSec>
   140008b7e:	48 8b 3d c3 87 00 00 	mov    0x87c3(%rip),%rdi        # 140011348 <__imp_InitializeCriticalSection>
   140008b85:	48 89 d9             	mov    %rbx,%rcx
   140008b88:	ff d7                	call   *%rdi
   140008b8a:	48 8d 4b 28          	lea    0x28(%rbx),%rcx
   140008b8e:	ff d7                	call   *%rdi
   140008b90:	48 8d 0d 59 00 00 00 	lea    0x59(%rip),%rcx        # 140008bf0 <dtoa_lock_cleanup>
   140008b97:	e8 74 88 ff ff       	call   140001410 <atexit>
   140008b9c:	c7 05 ea 7f 00 00 02 	movl   $0x2,0x7fea(%rip)        # 140010b90 <dtoa_CS_init>
   140008ba3:	00 00 00 
   140008ba6:	48 89 f1             	mov    %rsi,%rcx
   140008ba9:	48 f7 d9             	neg    %rcx
   140008bac:	83 e1 28             	and    $0x28,%ecx
   140008baf:	48 01 d9             	add    %rbx,%rcx
   140008bb2:	48 83 c4 20          	add    $0x20,%rsp
   140008bb6:	5b                   	pop    %rbx
   140008bb7:	5e                   	pop    %rsi
   140008bb8:	5f                   	pop    %rdi
   140008bb9:	48 ff 25 78 87 00 00 	rex.W jmp *0x8778(%rip)        # 140011338 <__imp_EnterCriticalSection>
   140008bc0:	48 8d 1d d9 7f 00 00 	lea    0x7fd9(%rip),%rbx        # 140010ba0 <dtoa_CritSec>
   140008bc7:	83 f8 02             	cmp    $0x2,%eax
   140008bca:	74 d0                	je     140008b9c <dtoa_lock+0x8c>
   140008bcc:	8b 05 be 7f 00 00    	mov    0x7fbe(%rip),%eax        # 140010b90 <dtoa_CS_init>
   140008bd2:	83 f8 01             	cmp    $0x1,%eax
   140008bd5:	0f 84 56 ff ff ff    	je     140008b31 <dtoa_lock+0x21>
   140008bdb:	e9 72 ff ff ff       	jmp    140008b52 <dtoa_lock+0x42>
   140008be0:	48 8d 1d b9 7f 00 00 	lea    0x7fb9(%rip),%rbx        # 140010ba0 <dtoa_CritSec>
   140008be7:	eb bd                	jmp    140008ba6 <dtoa_lock+0x96>
   140008be9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140008bf0 <dtoa_lock_cleanup>:
   140008bf0:	53                   	push   %rbx
   140008bf1:	48 83 ec 20          	sub    $0x20,%rsp
   140008bf5:	b8 03 00 00 00       	mov    $0x3,%eax
   140008bfa:	87 05 90 7f 00 00    	xchg   %eax,0x7f90(%rip)        # 140010b90 <dtoa_CS_init>
   140008c00:	83 f8 02             	cmp    $0x2,%eax
   140008c03:	74 0b                	je     140008c10 <dtoa_lock_cleanup+0x20>
   140008c05:	48 83 c4 20          	add    $0x20,%rsp
   140008c09:	5b                   	pop    %rbx
   140008c0a:	c3                   	ret
   140008c0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140008c10:	48 8b 1d 19 87 00 00 	mov    0x8719(%rip),%rbx        # 140011330 <__imp_DeleteCriticalSection>
   140008c17:	48 8d 0d 82 7f 00 00 	lea    0x7f82(%rip),%rcx        # 140010ba0 <dtoa_CritSec>
   140008c1e:	ff d3                	call   *%rbx
   140008c20:	48 8d 0d a1 7f 00 00 	lea    0x7fa1(%rip),%rcx        # 140010bc8 <dtoa_CritSec+0x28>
   140008c27:	48 89 d8             	mov    %rbx,%rax
   140008c2a:	48 83 c4 20          	add    $0x20,%rsp
   140008c2e:	5b                   	pop    %rbx
   140008c2f:	48 ff e0             	rex.W jmp *%rax
   140008c32:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140008c39:	00 00 00 00 
   140008c3d:	0f 1f 00             	nopl   (%rax)

0000000140008c40 <__Balloc_D2A>:
   140008c40:	56                   	push   %rsi
   140008c41:	53                   	push   %rbx
   140008c42:	48 83 ec 38          	sub    $0x38,%rsp
   140008c46:	89 cb                	mov    %ecx,%ebx
   140008c48:	31 c9                	xor    %ecx,%ecx
   140008c4a:	e8 c1 fe ff ff       	call   140008b10 <dtoa_lock>
   140008c4f:	83 fb 09             	cmp    $0x9,%ebx
   140008c52:	7f 3c                	jg     140008c90 <__Balloc_D2A+0x50>
   140008c54:	48 8d 15 e5 7e 00 00 	lea    0x7ee5(%rip),%rdx        # 140010b40 <freelist>
   140008c5b:	48 63 cb             	movslq %ebx,%rcx
   140008c5e:	48 8b 04 ca          	mov    (%rdx,%rcx,8),%rax
   140008c62:	48 85 c0             	test   %rax,%rax
   140008c65:	74 79                	je     140008ce0 <__Balloc_D2A+0xa0>
   140008c67:	4c 8b 00             	mov    (%rax),%r8
   140008c6a:	83 3d 1f 7f 00 00 02 	cmpl   $0x2,0x7f1f(%rip)        # 140010b90 <dtoa_CS_init>
   140008c71:	4c 89 04 ca          	mov    %r8,(%rdx,%rcx,8)
   140008c75:	75 52                	jne    140008cc9 <__Balloc_D2A+0x89>
   140008c77:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140008c7c:	48 8d 0d 1d 7f 00 00 	lea    0x7f1d(%rip),%rcx        # 140010ba0 <dtoa_CritSec>
   140008c83:	ff 15 cf 86 00 00    	call   *0x86cf(%rip)        # 140011358 <__imp_LeaveCriticalSection>
   140008c89:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   140008c8e:	eb 39                	jmp    140008cc9 <__Balloc_D2A+0x89>
   140008c90:	89 d9                	mov    %ebx,%ecx
   140008c92:	be 01 00 00 00       	mov    $0x1,%esi
   140008c97:	d3 e6                	shl    %cl,%esi
   140008c99:	8d 46 ff             	lea    -0x1(%rsi),%eax
   140008c9c:	48 98                	cltq
   140008c9e:	48 8d 0c 85 27 00 00 	lea    0x27(,%rax,4),%rcx
   140008ca5:	00 
   140008ca6:	48 c1 e9 03          	shr    $0x3,%rcx
   140008caa:	89 c9                	mov    %ecx,%ecx
   140008cac:	48 c1 e1 03          	shl    $0x3,%rcx
   140008cb0:	e8 bb 15 00 00       	call   14000a270 <malloc>
   140008cb5:	48 85 c0             	test   %rax,%rax
   140008cb8:	74 17                	je     140008cd1 <__Balloc_D2A+0x91>
   140008cba:	83 3d cf 7e 00 00 02 	cmpl   $0x2,0x7ecf(%rip)        # 140010b90 <dtoa_CS_init>
   140008cc1:	89 58 08             	mov    %ebx,0x8(%rax)
   140008cc4:	89 70 0c             	mov    %esi,0xc(%rax)
   140008cc7:	74 ae                	je     140008c77 <__Balloc_D2A+0x37>
   140008cc9:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
   140008cd0:	00 
   140008cd1:	48 83 c4 38          	add    $0x38,%rsp
   140008cd5:	5b                   	pop    %rbx
   140008cd6:	5e                   	pop    %rsi
   140008cd7:	c3                   	ret
   140008cd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140008cdf:	00 
   140008ce0:	89 d9                	mov    %ebx,%ecx
   140008ce2:	be 01 00 00 00       	mov    $0x1,%esi
   140008ce7:	4c 8d 05 52 75 00 00 	lea    0x7552(%rip),%r8        # 140010240 <private_mem>
   140008cee:	d3 e6                	shl    %cl,%esi
   140008cf0:	8d 46 ff             	lea    -0x1(%rsi),%eax
   140008cf3:	48 98                	cltq
   140008cf5:	48 8d 0c 85 27 00 00 	lea    0x27(,%rax,4),%rcx
   140008cfc:	00 
   140008cfd:	48 8b 05 6c 24 00 00 	mov    0x246c(%rip),%rax        # 14000b170 <pmem_next>
   140008d04:	48 c1 e9 03          	shr    $0x3,%rcx
   140008d08:	48 89 c2             	mov    %rax,%rdx
   140008d0b:	4c 29 c2             	sub    %r8,%rdx
   140008d0e:	48 c1 fa 03          	sar    $0x3,%rdx
   140008d12:	48 01 ca             	add    %rcx,%rdx
   140008d15:	48 81 fa 20 01 00 00 	cmp    $0x120,%rdx
   140008d1c:	77 8e                	ja     140008cac <__Balloc_D2A+0x6c>
   140008d1e:	48 8d 14 c8          	lea    (%rax,%rcx,8),%rdx
   140008d22:	48 89 15 47 24 00 00 	mov    %rdx,0x2447(%rip)        # 14000b170 <pmem_next>
   140008d29:	eb 8f                	jmp    140008cba <__Balloc_D2A+0x7a>
   140008d2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000140008d30 <__Bfree_D2A>:
   140008d30:	53                   	push   %rbx
   140008d31:	48 83 ec 20          	sub    $0x20,%rsp
   140008d35:	48 89 cb             	mov    %rcx,%rbx
   140008d38:	48 85 c9             	test   %rcx,%rcx
   140008d3b:	74 39                	je     140008d76 <__Bfree_D2A+0x46>
   140008d3d:	83 79 08 09          	cmpl   $0x9,0x8(%rcx)
   140008d41:	7e 0d                	jle    140008d50 <__Bfree_D2A+0x20>
   140008d43:	48 83 c4 20          	add    $0x20,%rsp
   140008d47:	5b                   	pop    %rbx
   140008d48:	e9 0b 15 00 00       	jmp    14000a258 <free>
   140008d4d:	0f 1f 00             	nopl   (%rax)
   140008d50:	31 c9                	xor    %ecx,%ecx
   140008d52:	e8 b9 fd ff ff       	call   140008b10 <dtoa_lock>
   140008d57:	48 63 53 08          	movslq 0x8(%rbx),%rdx
   140008d5b:	48 8d 05 de 7d 00 00 	lea    0x7dde(%rip),%rax        # 140010b40 <freelist>
   140008d62:	83 3d 27 7e 00 00 02 	cmpl   $0x2,0x7e27(%rip)        # 140010b90 <dtoa_CS_init>
   140008d69:	48 8b 0c d0          	mov    (%rax,%rdx,8),%rcx
   140008d6d:	48 89 1c d0          	mov    %rbx,(%rax,%rdx,8)
   140008d71:	48 89 0b             	mov    %rcx,(%rbx)
   140008d74:	74 0a                	je     140008d80 <__Bfree_D2A+0x50>
   140008d76:	48 83 c4 20          	add    $0x20,%rsp
   140008d7a:	5b                   	pop    %rbx
   140008d7b:	c3                   	ret
   140008d7c:	0f 1f 40 00          	nopl   0x0(%rax)
   140008d80:	48 8d 0d 19 7e 00 00 	lea    0x7e19(%rip),%rcx        # 140010ba0 <dtoa_CritSec>
   140008d87:	48 83 c4 20          	add    $0x20,%rsp
   140008d8b:	5b                   	pop    %rbx
   140008d8c:	48 ff 25 c5 85 00 00 	rex.W jmp *0x85c5(%rip)        # 140011358 <__imp_LeaveCriticalSection>
   140008d93:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140008d9a:	00 00 00 00 
   140008d9e:	66 90                	xchg   %ax,%ax

0000000140008da0 <__multadd_D2A>:
   140008da0:	55                   	push   %rbp
   140008da1:	57                   	push   %rdi
   140008da2:	56                   	push   %rsi
   140008da3:	53                   	push   %rbx
   140008da4:	48 83 ec 28          	sub    $0x28,%rsp
   140008da8:	8b 79 14             	mov    0x14(%rcx),%edi
   140008dab:	48 89 cb             	mov    %rcx,%rbx
   140008dae:	49 63 f0             	movslq %r8d,%rsi
   140008db1:	48 63 d2             	movslq %edx,%rdx
   140008db4:	31 c9                	xor    %ecx,%ecx
   140008db6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140008dbd:	00 00 00 
   140008dc0:	8b 44 8b 18          	mov    0x18(%rbx,%rcx,4),%eax
   140008dc4:	48 0f af c2          	imul   %rdx,%rax
   140008dc8:	48 01 f0             	add    %rsi,%rax
   140008dcb:	89 44 8b 18          	mov    %eax,0x18(%rbx,%rcx,4)
   140008dcf:	48 89 c6             	mov    %rax,%rsi
   140008dd2:	48 83 c1 01          	add    $0x1,%rcx
   140008dd6:	48 c1 ee 20          	shr    $0x20,%rsi
   140008dda:	39 cf                	cmp    %ecx,%edi
   140008ddc:	7f e2                	jg     140008dc0 <__multadd_D2A+0x20>
   140008dde:	48 89 dd             	mov    %rbx,%rbp
   140008de1:	48 85 f6             	test   %rsi,%rsi
   140008de4:	74 15                	je     140008dfb <__multadd_D2A+0x5b>
   140008de6:	39 7b 0c             	cmp    %edi,0xc(%rbx)
   140008de9:	7e 25                	jle    140008e10 <__multadd_D2A+0x70>
   140008deb:	48 63 c7             	movslq %edi,%rax
   140008dee:	83 c7 01             	add    $0x1,%edi
   140008df1:	48 89 dd             	mov    %rbx,%rbp
   140008df4:	89 74 83 18          	mov    %esi,0x18(%rbx,%rax,4)
   140008df8:	89 7b 14             	mov    %edi,0x14(%rbx)
   140008dfb:	48 89 e8             	mov    %rbp,%rax
   140008dfe:	48 83 c4 28          	add    $0x28,%rsp
   140008e02:	5b                   	pop    %rbx
   140008e03:	5e                   	pop    %rsi
   140008e04:	5f                   	pop    %rdi
   140008e05:	5d                   	pop    %rbp
   140008e06:	c3                   	ret
   140008e07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140008e0e:	00 00 
   140008e10:	8b 43 08             	mov    0x8(%rbx),%eax
   140008e13:	8d 48 01             	lea    0x1(%rax),%ecx
   140008e16:	e8 25 fe ff ff       	call   140008c40 <__Balloc_D2A>
   140008e1b:	48 89 c5             	mov    %rax,%rbp
   140008e1e:	48 85 c0             	test   %rax,%rax
   140008e21:	74 d8                	je     140008dfb <__multadd_D2A+0x5b>
   140008e23:	48 8d 48 10          	lea    0x10(%rax),%rcx
   140008e27:	48 63 43 14          	movslq 0x14(%rbx),%rax
   140008e2b:	48 8d 53 10          	lea    0x10(%rbx),%rdx
   140008e2f:	4c 8d 04 85 08 00 00 	lea    0x8(,%rax,4),%r8
   140008e36:	00 
   140008e37:	e8 3c 14 00 00       	call   14000a278 <memcpy>
   140008e3c:	48 89 d9             	mov    %rbx,%rcx
   140008e3f:	48 89 eb             	mov    %rbp,%rbx
   140008e42:	e8 e9 fe ff ff       	call   140008d30 <__Bfree_D2A>
   140008e47:	48 63 c7             	movslq %edi,%rax
   140008e4a:	83 c7 01             	add    $0x1,%edi
   140008e4d:	48 89 dd             	mov    %rbx,%rbp
   140008e50:	89 74 83 18          	mov    %esi,0x18(%rbx,%rax,4)
   140008e54:	89 7b 14             	mov    %edi,0x14(%rbx)
   140008e57:	eb a2                	jmp    140008dfb <__multadd_D2A+0x5b>
   140008e59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140008e60 <__i2b_D2A>:
   140008e60:	53                   	push   %rbx
   140008e61:	48 83 ec 30          	sub    $0x30,%rsp
   140008e65:	89 cb                	mov    %ecx,%ebx
   140008e67:	31 c9                	xor    %ecx,%ecx
   140008e69:	e8 a2 fc ff ff       	call   140008b10 <dtoa_lock>
   140008e6e:	48 8b 05 d3 7c 00 00 	mov    0x7cd3(%rip),%rax        # 140010b48 <freelist+0x8>
   140008e75:	48 85 c0             	test   %rax,%rax
   140008e78:	74 2e                	je     140008ea8 <__i2b_D2A+0x48>
   140008e7a:	48 8b 10             	mov    (%rax),%rdx
   140008e7d:	83 3d 0c 7d 00 00 02 	cmpl   $0x2,0x7d0c(%rip)        # 140010b90 <dtoa_CS_init>
   140008e84:	48 89 15 bd 7c 00 00 	mov    %rdx,0x7cbd(%rip)        # 140010b48 <freelist+0x8>
   140008e8b:	74 63                	je     140008ef0 <__i2b_D2A+0x90>
   140008e8d:	48 8b 15 5c 39 00 00 	mov    0x395c(%rip),%rdx        # 14000c7f0 <__bigtens_D2A+0x30>
   140008e94:	89 58 18             	mov    %ebx,0x18(%rax)
   140008e97:	48 89 50 10          	mov    %rdx,0x10(%rax)
   140008e9b:	48 83 c4 30          	add    $0x30,%rsp
   140008e9f:	5b                   	pop    %rbx
   140008ea0:	c3                   	ret
   140008ea1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140008ea8:	48 8b 05 c1 22 00 00 	mov    0x22c1(%rip),%rax        # 14000b170 <pmem_next>
   140008eaf:	48 8d 0d 8a 73 00 00 	lea    0x738a(%rip),%rcx        # 140010240 <private_mem>
   140008eb6:	48 89 c2             	mov    %rax,%rdx
   140008eb9:	48 29 ca             	sub    %rcx,%rdx
   140008ebc:	48 c1 fa 03          	sar    $0x3,%rdx
   140008ec0:	48 83 c2 05          	add    $0x5,%rdx
   140008ec4:	48 81 fa 20 01 00 00 	cmp    $0x120,%rdx
   140008ecb:	76 43                	jbe    140008f10 <__i2b_D2A+0xb0>
   140008ecd:	b9 28 00 00 00       	mov    $0x28,%ecx
   140008ed2:	e8 99 13 00 00       	call   14000a270 <malloc>
   140008ed7:	48 85 c0             	test   %rax,%rax
   140008eda:	74 bf                	je     140008e9b <__i2b_D2A+0x3b>
   140008edc:	48 8b 15 05 39 00 00 	mov    0x3905(%rip),%rdx        # 14000c7e8 <__bigtens_D2A+0x28>
   140008ee3:	83 3d a6 7c 00 00 02 	cmpl   $0x2,0x7ca6(%rip)        # 140010b90 <dtoa_CS_init>
   140008eea:	48 89 50 08          	mov    %rdx,0x8(%rax)
   140008eee:	75 9d                	jne    140008e8d <__i2b_D2A+0x2d>
   140008ef0:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140008ef5:	48 8d 0d a4 7c 00 00 	lea    0x7ca4(%rip),%rcx        # 140010ba0 <dtoa_CritSec>
   140008efc:	ff 15 56 84 00 00    	call   *0x8456(%rip)        # 140011358 <__imp_LeaveCriticalSection>
   140008f02:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   140008f07:	eb 84                	jmp    140008e8d <__i2b_D2A+0x2d>
   140008f09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140008f10:	48 8d 50 28          	lea    0x28(%rax),%rdx
   140008f14:	48 89 15 55 22 00 00 	mov    %rdx,0x2255(%rip)        # 14000b170 <pmem_next>
   140008f1b:	eb bf                	jmp    140008edc <__i2b_D2A+0x7c>
   140008f1d:	0f 1f 00             	nopl   (%rax)

0000000140008f20 <__mult_D2A>:
   140008f20:	41 57                	push   %r15
   140008f22:	41 56                	push   %r14
   140008f24:	41 55                	push   %r13
   140008f26:	41 54                	push   %r12
   140008f28:	55                   	push   %rbp
   140008f29:	57                   	push   %rdi
   140008f2a:	56                   	push   %rsi
   140008f2b:	53                   	push   %rbx
   140008f2c:	48 83 ec 28          	sub    $0x28,%rsp
   140008f30:	4c 63 61 14          	movslq 0x14(%rcx),%r12
   140008f34:	48 63 6a 14          	movslq 0x14(%rdx),%rbp
   140008f38:	49 89 cd             	mov    %rcx,%r13
   140008f3b:	49 89 d7             	mov    %rdx,%r15
   140008f3e:	41 39 ec             	cmp    %ebp,%r12d
   140008f41:	7c 0e                	jl     140008f51 <__mult_D2A+0x31>
   140008f43:	89 e8                	mov    %ebp,%eax
   140008f45:	49 89 cf             	mov    %rcx,%r15
   140008f48:	49 63 ec             	movslq %r12d,%rbp
   140008f4b:	49 89 d5             	mov    %rdx,%r13
   140008f4e:	4c 63 e0             	movslq %eax,%r12
   140008f51:	41 8b 4f 08          	mov    0x8(%r15),%ecx
   140008f55:	42 8d 5c 25 00       	lea    0x0(%rbp,%r12,1),%ebx
   140008f5a:	41 39 5f 0c          	cmp    %ebx,0xc(%r15)
   140008f5e:	7d 03                	jge    140008f63 <__mult_D2A+0x43>
   140008f60:	83 c1 01             	add    $0x1,%ecx
   140008f63:	e8 d8 fc ff ff       	call   140008c40 <__Balloc_D2A>
   140008f68:	48 89 c7             	mov    %rax,%rdi
   140008f6b:	48 85 c0             	test   %rax,%rax
   140008f6e:	0f 84 ef 00 00 00    	je     140009063 <__mult_D2A+0x143>
   140008f74:	4c 8d 58 18          	lea    0x18(%rax),%r11
   140008f78:	48 63 c3             	movslq %ebx,%rax
   140008f7b:	49 8d 34 83          	lea    (%r11,%rax,4),%rsi
   140008f7f:	49 39 f3             	cmp    %rsi,%r11
   140008f82:	73 23                	jae    140008fa7 <__mult_D2A+0x87>
   140008f84:	48 89 f0             	mov    %rsi,%rax
   140008f87:	4c 89 d9             	mov    %r11,%rcx
   140008f8a:	31 d2                	xor    %edx,%edx
   140008f8c:	48 29 f8             	sub    %rdi,%rax
   140008f8f:	48 83 e8 19          	sub    $0x19,%rax
   140008f93:	48 c1 e8 02          	shr    $0x2,%rax
   140008f97:	4c 8d 04 85 04 00 00 	lea    0x4(,%rax,4),%r8
   140008f9e:	00 
   140008f9f:	e8 e4 12 00 00       	call   14000a288 <memset>
   140008fa4:	49 89 c3             	mov    %rax,%r11
   140008fa7:	4d 8d 4d 18          	lea    0x18(%r13),%r9
   140008fab:	4d 8d 77 18          	lea    0x18(%r15),%r14
   140008faf:	4f 8d 24 a1          	lea    (%r9,%r12,4),%r12
   140008fb3:	49 8d 2c ae          	lea    (%r14,%rbp,4),%rbp
   140008fb7:	4d 39 e1             	cmp    %r12,%r9
   140008fba:	0f 83 83 00 00 00    	jae    140009043 <__mult_D2A+0x123>
   140008fc0:	48 89 e8             	mov    %rbp,%rax
   140008fc3:	4c 29 f8             	sub    %r15,%rax
   140008fc6:	49 83 c7 19          	add    $0x19,%r15
   140008fca:	48 83 e8 19          	sub    $0x19,%rax
   140008fce:	48 c1 e8 02          	shr    $0x2,%rax
   140008fd2:	4c 39 fd             	cmp    %r15,%rbp
   140008fd5:	4c 8d 2c 85 04 00 00 	lea    0x4(,%rax,4),%r13
   140008fdc:	00 
   140008fdd:	b8 04 00 00 00       	mov    $0x4,%eax
   140008fe2:	4c 0f 42 e8          	cmovb  %rax,%r13
   140008fe6:	eb 11                	jmp    140008ff9 <__mult_D2A+0xd9>
   140008fe8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140008fef:	00 
   140008ff0:	49 83 c3 04          	add    $0x4,%r11
   140008ff4:	4d 39 e1             	cmp    %r12,%r9
   140008ff7:	73 4a                	jae    140009043 <__mult_D2A+0x123>
   140008ff9:	45 8b 11             	mov    (%r9),%r10d
   140008ffc:	49 83 c1 04          	add    $0x4,%r9
   140009000:	45 85 d2             	test   %r10d,%r10d
   140009003:	74 eb                	je     140008ff0 <__mult_D2A+0xd0>
   140009005:	4c 89 d9             	mov    %r11,%rcx
   140009008:	4c 89 f2             	mov    %r14,%rdx
   14000900b:	45 31 c0             	xor    %r8d,%r8d
   14000900e:	66 90                	xchg   %ax,%ax
   140009010:	8b 02                	mov    (%rdx),%eax
   140009012:	44 8b 39             	mov    (%rcx),%r15d
   140009015:	48 83 c2 04          	add    $0x4,%rdx
   140009019:	48 83 c1 04          	add    $0x4,%rcx
   14000901d:	49 0f af c2          	imul   %r10,%rax
   140009021:	4c 01 f8             	add    %r15,%rax
   140009024:	4c 01 c0             	add    %r8,%rax
   140009027:	49 89 c0             	mov    %rax,%r8
   14000902a:	89 41 fc             	mov    %eax,-0x4(%rcx)
   14000902d:	49 c1 e8 20          	shr    $0x20,%r8
   140009031:	48 39 ea             	cmp    %rbp,%rdx
   140009034:	72 da                	jb     140009010 <__mult_D2A+0xf0>
   140009036:	47 89 04 2b          	mov    %r8d,(%r11,%r13,1)
   14000903a:	49 83 c3 04          	add    $0x4,%r11
   14000903e:	4d 39 e1             	cmp    %r12,%r9
   140009041:	72 b6                	jb     140008ff9 <__mult_D2A+0xd9>
   140009043:	85 db                	test   %ebx,%ebx
   140009045:	7f 0e                	jg     140009055 <__mult_D2A+0x135>
   140009047:	eb 17                	jmp    140009060 <__mult_D2A+0x140>
   140009049:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140009050:	83 eb 01             	sub    $0x1,%ebx
   140009053:	74 0b                	je     140009060 <__mult_D2A+0x140>
   140009055:	8b 46 fc             	mov    -0x4(%rsi),%eax
   140009058:	48 83 ee 04          	sub    $0x4,%rsi
   14000905c:	85 c0                	test   %eax,%eax
   14000905e:	74 f0                	je     140009050 <__mult_D2A+0x130>
   140009060:	89 5f 14             	mov    %ebx,0x14(%rdi)
   140009063:	48 89 f8             	mov    %rdi,%rax
   140009066:	48 83 c4 28          	add    $0x28,%rsp
   14000906a:	5b                   	pop    %rbx
   14000906b:	5e                   	pop    %rsi
   14000906c:	5f                   	pop    %rdi
   14000906d:	5d                   	pop    %rbp
   14000906e:	41 5c                	pop    %r12
   140009070:	41 5d                	pop    %r13
   140009072:	41 5e                	pop    %r14
   140009074:	41 5f                	pop    %r15
   140009076:	c3                   	ret
   140009077:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000907e:	00 00 

0000000140009080 <__pow5mult_D2A>:
   140009080:	55                   	push   %rbp
   140009081:	57                   	push   %rdi
   140009082:	56                   	push   %rsi
   140009083:	53                   	push   %rbx
   140009084:	48 83 ec 28          	sub    $0x28,%rsp
   140009088:	89 d0                	mov    %edx,%eax
   14000908a:	48 89 ce             	mov    %rcx,%rsi
   14000908d:	89 d3                	mov    %edx,%ebx
   14000908f:	83 e0 03             	and    $0x3,%eax
   140009092:	0f 85 b8 00 00 00    	jne    140009150 <__pow5mult_D2A+0xd0>
   140009098:	c1 fb 02             	sar    $0x2,%ebx
   14000909b:	48 89 f5             	mov    %rsi,%rbp
   14000909e:	74 52                	je     1400090f2 <__pow5mult_D2A+0x72>
   1400090a0:	48 8b 3d 79 71 00 00 	mov    0x7179(%rip),%rdi        # 140010220 <p5s>
   1400090a7:	48 85 ff             	test   %rdi,%rdi
   1400090aa:	0f 84 d0 00 00 00    	je     140009180 <__pow5mult_D2A+0x100>
   1400090b0:	48 89 f5             	mov    %rsi,%rbp
   1400090b3:	eb 12                	jmp    1400090c7 <__pow5mult_D2A+0x47>
   1400090b5:	0f 1f 00             	nopl   (%rax)
   1400090b8:	d1 fb                	sar    %ebx
   1400090ba:	74 36                	je     1400090f2 <__pow5mult_D2A+0x72>
   1400090bc:	48 8b 37             	mov    (%rdi),%rsi
   1400090bf:	48 85 f6             	test   %rsi,%rsi
   1400090c2:	74 3c                	je     140009100 <__pow5mult_D2A+0x80>
   1400090c4:	48 89 f7             	mov    %rsi,%rdi
   1400090c7:	f6 c3 01             	test   $0x1,%bl
   1400090ca:	74 ec                	je     1400090b8 <__pow5mult_D2A+0x38>
   1400090cc:	48 89 fa             	mov    %rdi,%rdx
   1400090cf:	48 89 e9             	mov    %rbp,%rcx
   1400090d2:	e8 49 fe ff ff       	call   140008f20 <__mult_D2A>
   1400090d7:	48 89 c6             	mov    %rax,%rsi
   1400090da:	48 85 c0             	test   %rax,%rax
   1400090dd:	0f 84 90 00 00 00    	je     140009173 <__pow5mult_D2A+0xf3>
   1400090e3:	48 89 e9             	mov    %rbp,%rcx
   1400090e6:	48 89 f5             	mov    %rsi,%rbp
   1400090e9:	e8 42 fc ff ff       	call   140008d30 <__Bfree_D2A>
   1400090ee:	d1 fb                	sar    %ebx
   1400090f0:	75 ca                	jne    1400090bc <__pow5mult_D2A+0x3c>
   1400090f2:	48 89 e8             	mov    %rbp,%rax
   1400090f5:	48 83 c4 28          	add    $0x28,%rsp
   1400090f9:	5b                   	pop    %rbx
   1400090fa:	5e                   	pop    %rsi
   1400090fb:	5f                   	pop    %rdi
   1400090fc:	5d                   	pop    %rbp
   1400090fd:	c3                   	ret
   1400090fe:	66 90                	xchg   %ax,%ax
   140009100:	b9 01 00 00 00       	mov    $0x1,%ecx
   140009105:	e8 06 fa ff ff       	call   140008b10 <dtoa_lock>
   14000910a:	48 8b 37             	mov    (%rdi),%rsi
   14000910d:	48 85 f6             	test   %rsi,%rsi
   140009110:	74 1e                	je     140009130 <__pow5mult_D2A+0xb0>
   140009112:	83 3d 77 7a 00 00 02 	cmpl   $0x2,0x7a77(%rip)        # 140010b90 <dtoa_CS_init>
   140009119:	75 a9                	jne    1400090c4 <__pow5mult_D2A+0x44>
   14000911b:	48 8d 0d a6 7a 00 00 	lea    0x7aa6(%rip),%rcx        # 140010bc8 <dtoa_CritSec+0x28>
   140009122:	ff 15 30 82 00 00    	call   *0x8230(%rip)        # 140011358 <__imp_LeaveCriticalSection>
   140009128:	eb 9a                	jmp    1400090c4 <__pow5mult_D2A+0x44>
   14000912a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140009130:	48 89 fa             	mov    %rdi,%rdx
   140009133:	48 89 f9             	mov    %rdi,%rcx
   140009136:	e8 e5 fd ff ff       	call   140008f20 <__mult_D2A>
   14000913b:	48 89 07             	mov    %rax,(%rdi)
   14000913e:	48 89 c6             	mov    %rax,%rsi
   140009141:	48 85 c0             	test   %rax,%rax
   140009144:	74 2d                	je     140009173 <__pow5mult_D2A+0xf3>
   140009146:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   14000914d:	eb c3                	jmp    140009112 <__pow5mult_D2A+0x92>
   14000914f:	90                   	nop
   140009150:	83 e8 01             	sub    $0x1,%eax
   140009153:	48 8d 15 46 35 00 00 	lea    0x3546(%rip),%rdx        # 14000c6a0 <p05.0>
   14000915a:	45 31 c0             	xor    %r8d,%r8d
   14000915d:	48 98                	cltq
   14000915f:	8b 14 82             	mov    (%rdx,%rax,4),%edx
   140009162:	e8 39 fc ff ff       	call   140008da0 <__multadd_D2A>
   140009167:	48 89 c6             	mov    %rax,%rsi
   14000916a:	48 85 c0             	test   %rax,%rax
   14000916d:	0f 85 25 ff ff ff    	jne    140009098 <__pow5mult_D2A+0x18>
   140009173:	31 ed                	xor    %ebp,%ebp
   140009175:	e9 78 ff ff ff       	jmp    1400090f2 <__pow5mult_D2A+0x72>
   14000917a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140009180:	b9 01 00 00 00       	mov    $0x1,%ecx
   140009185:	e8 86 f9 ff ff       	call   140008b10 <dtoa_lock>
   14000918a:	48 8b 3d 8f 70 00 00 	mov    0x708f(%rip),%rdi        # 140010220 <p5s>
   140009191:	48 85 ff             	test   %rdi,%rdi
   140009194:	74 1f                	je     1400091b5 <__pow5mult_D2A+0x135>
   140009196:	83 3d f3 79 00 00 02 	cmpl   $0x2,0x79f3(%rip)        # 140010b90 <dtoa_CS_init>
   14000919d:	0f 85 0d ff ff ff    	jne    1400090b0 <__pow5mult_D2A+0x30>
   1400091a3:	48 8d 0d 1e 7a 00 00 	lea    0x7a1e(%rip),%rcx        # 140010bc8 <dtoa_CritSec+0x28>
   1400091aa:	ff 15 a8 81 00 00    	call   *0x81a8(%rip)        # 140011358 <__imp_LeaveCriticalSection>
   1400091b0:	e9 fb fe ff ff       	jmp    1400090b0 <__pow5mult_D2A+0x30>
   1400091b5:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400091ba:	e8 81 fa ff ff       	call   140008c40 <__Balloc_D2A>
   1400091bf:	48 89 c7             	mov    %rax,%rdi
   1400091c2:	48 85 c0             	test   %rax,%rax
   1400091c5:	74 1e                	je     1400091e5 <__pow5mult_D2A+0x165>
   1400091c7:	48 b8 01 00 00 00 71 	movabs $0x27100000001,%rax
   1400091ce:	02 00 00 
   1400091d1:	48 89 3d 48 70 00 00 	mov    %rdi,0x7048(%rip)        # 140010220 <p5s>
   1400091d8:	48 89 47 14          	mov    %rax,0x14(%rdi)
   1400091dc:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
   1400091e3:	eb b1                	jmp    140009196 <__pow5mult_D2A+0x116>
   1400091e5:	48 c7 05 30 70 00 00 	movq   $0x0,0x7030(%rip)        # 140010220 <p5s>
   1400091ec:	00 00 00 00 
   1400091f0:	31 ed                	xor    %ebp,%ebp
   1400091f2:	e9 fb fe ff ff       	jmp    1400090f2 <__pow5mult_D2A+0x72>
   1400091f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400091fe:	00 00 

0000000140009200 <__lshift_D2A>:
   140009200:	41 56                	push   %r14
   140009202:	41 55                	push   %r13
   140009204:	41 54                	push   %r12
   140009206:	55                   	push   %rbp
   140009207:	57                   	push   %rdi
   140009208:	56                   	push   %rsi
   140009209:	53                   	push   %rbx
   14000920a:	48 83 ec 20          	sub    $0x20,%rsp
   14000920e:	49 89 cc             	mov    %rcx,%r12
   140009211:	89 d6                	mov    %edx,%esi
   140009213:	8b 49 08             	mov    0x8(%rcx),%ecx
   140009216:	41 89 d5             	mov    %edx,%r13d
   140009219:	41 8b 5c 24 14       	mov    0x14(%r12),%ebx
   14000921e:	c1 fe 05             	sar    $0x5,%esi
   140009221:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
   140009226:	01 f3                	add    %esi,%ebx
   140009228:	8d 6b 01             	lea    0x1(%rbx),%ebp
   14000922b:	39 c5                	cmp    %eax,%ebp
   14000922d:	7e 0a                	jle    140009239 <__lshift_D2A+0x39>
   14000922f:	90                   	nop
   140009230:	01 c0                	add    %eax,%eax
   140009232:	83 c1 01             	add    $0x1,%ecx
   140009235:	39 c5                	cmp    %eax,%ebp
   140009237:	7f f7                	jg     140009230 <__lshift_D2A+0x30>
   140009239:	e8 02 fa ff ff       	call   140008c40 <__Balloc_D2A>
   14000923e:	49 89 c6             	mov    %rax,%r14
   140009241:	48 85 c0             	test   %rax,%rax
   140009244:	0f 84 a4 00 00 00    	je     1400092ee <__lshift_D2A+0xee>
   14000924a:	48 8d 78 18          	lea    0x18(%rax),%rdi
   14000924e:	85 f6                	test   %esi,%esi
   140009250:	7e 14                	jle    140009266 <__lshift_D2A+0x66>
   140009252:	48 c1 e6 02          	shl    $0x2,%rsi
   140009256:	48 89 f9             	mov    %rdi,%rcx
   140009259:	31 d2                	xor    %edx,%edx
   14000925b:	49 89 f0             	mov    %rsi,%r8
   14000925e:	48 01 f7             	add    %rsi,%rdi
   140009261:	e8 22 10 00 00       	call   14000a288 <memset>
   140009266:	49 63 44 24 14       	movslq 0x14(%r12),%rax
   14000926b:	49 8d 74 24 18       	lea    0x18(%r12),%rsi
   140009270:	4c 8d 0c 86          	lea    (%rsi,%rax,4),%r9
   140009274:	41 83 e5 1f          	and    $0x1f,%r13d
   140009278:	0f 84 82 00 00 00    	je     140009300 <__lshift_D2A+0x100>
   14000927e:	41 ba 20 00 00 00    	mov    $0x20,%r10d
   140009284:	49 89 f8             	mov    %rdi,%r8
   140009287:	31 d2                	xor    %edx,%edx
   140009289:	45 29 ea             	sub    %r13d,%r10d
   14000928c:	0f 1f 40 00          	nopl   0x0(%rax)
   140009290:	8b 06                	mov    (%rsi),%eax
   140009292:	44 89 e9             	mov    %r13d,%ecx
   140009295:	49 83 c0 04          	add    $0x4,%r8
   140009299:	48 83 c6 04          	add    $0x4,%rsi
   14000929d:	d3 e0                	shl    %cl,%eax
   14000929f:	44 89 d1             	mov    %r10d,%ecx
   1400092a2:	09 d0                	or     %edx,%eax
   1400092a4:	41 89 40 fc          	mov    %eax,-0x4(%r8)
   1400092a8:	8b 56 fc             	mov    -0x4(%rsi),%edx
   1400092ab:	d3 ea                	shr    %cl,%edx
   1400092ad:	4c 39 ce             	cmp    %r9,%rsi
   1400092b0:	72 de                	jb     140009290 <__lshift_D2A+0x90>
   1400092b2:	4c 89 c8             	mov    %r9,%rax
   1400092b5:	49 8d 4c 24 19       	lea    0x19(%r12),%rcx
   1400092ba:	4c 29 e0             	sub    %r12,%rax
   1400092bd:	48 83 e8 19          	sub    $0x19,%rax
   1400092c1:	48 c1 e8 02          	shr    $0x2,%rax
   1400092c5:	49 39 c9             	cmp    %rcx,%r9
   1400092c8:	b9 04 00 00 00       	mov    $0x4,%ecx
   1400092cd:	48 8d 04 85 04 00 00 	lea    0x4(,%rax,4),%rax
   1400092d4:	00 
   1400092d5:	48 0f 42 c1          	cmovb  %rcx,%rax
   1400092d9:	89 14 07             	mov    %edx,(%rdi,%rax,1)
   1400092dc:	85 d2                	test   %edx,%edx
   1400092de:	75 02                	jne    1400092e2 <__lshift_D2A+0xe2>
   1400092e0:	89 dd                	mov    %ebx,%ebp
   1400092e2:	41 89 6e 14          	mov    %ebp,0x14(%r14)
   1400092e6:	4c 89 e1             	mov    %r12,%rcx
   1400092e9:	e8 42 fa ff ff       	call   140008d30 <__Bfree_D2A>
   1400092ee:	4c 89 f0             	mov    %r14,%rax
   1400092f1:	48 83 c4 20          	add    $0x20,%rsp
   1400092f5:	5b                   	pop    %rbx
   1400092f6:	5e                   	pop    %rsi
   1400092f7:	5f                   	pop    %rdi
   1400092f8:	5d                   	pop    %rbp
   1400092f9:	41 5c                	pop    %r12
   1400092fb:	41 5d                	pop    %r13
   1400092fd:	41 5e                	pop    %r14
   1400092ff:	c3                   	ret
   140009300:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
   140009301:	4c 39 ce             	cmp    %r9,%rsi
   140009304:	73 da                	jae    1400092e0 <__lshift_D2A+0xe0>
   140009306:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
   140009307:	4c 39 ce             	cmp    %r9,%rsi
   14000930a:	72 f4                	jb     140009300 <__lshift_D2A+0x100>
   14000930c:	eb d2                	jmp    1400092e0 <__lshift_D2A+0xe0>
   14000930e:	66 90                	xchg   %ax,%ax

0000000140009310 <__cmp_D2A>:
   140009310:	48 63 42 14          	movslq 0x14(%rdx),%rax
   140009314:	44 8b 49 14          	mov    0x14(%rcx),%r9d
   140009318:	41 29 c1             	sub    %eax,%r9d
   14000931b:	75 37                	jne    140009354 <__cmp_D2A+0x44>
   14000931d:	4c 8d 04 85 00 00 00 	lea    0x0(,%rax,4),%r8
   140009324:	00 
   140009325:	48 83 c1 18          	add    $0x18,%rcx
   140009329:	4a 8d 04 01          	lea    (%rcx,%r8,1),%rax
   14000932d:	4a 8d 54 02 18       	lea    0x18(%rdx,%r8,1),%rdx
   140009332:	eb 09                	jmp    14000933d <__cmp_D2A+0x2d>
   140009334:	0f 1f 40 00          	nopl   0x0(%rax)
   140009338:	48 39 c1             	cmp    %rax,%rcx
   14000933b:	73 17                	jae    140009354 <__cmp_D2A+0x44>
   14000933d:	48 83 e8 04          	sub    $0x4,%rax
   140009341:	48 83 ea 04          	sub    $0x4,%rdx
   140009345:	44 8b 12             	mov    (%rdx),%r10d
   140009348:	44 39 10             	cmp    %r10d,(%rax)
   14000934b:	74 eb                	je     140009338 <__cmp_D2A+0x28>
   14000934d:	45 19 c9             	sbb    %r9d,%r9d
   140009350:	41 83 c9 01          	or     $0x1,%r9d
   140009354:	44 89 c8             	mov    %r9d,%eax
   140009357:	c3                   	ret
   140009358:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000935f:	00 

0000000140009360 <__diff_D2A>:
   140009360:	41 55                	push   %r13
   140009362:	41 54                	push   %r12
   140009364:	55                   	push   %rbp
   140009365:	57                   	push   %rdi
   140009366:	56                   	push   %rsi
   140009367:	53                   	push   %rbx
   140009368:	48 83 ec 28          	sub    $0x28,%rsp
   14000936c:	48 63 42 14          	movslq 0x14(%rdx),%rax
   140009370:	48 89 cb             	mov    %rcx,%rbx
   140009373:	48 89 d6             	mov    %rdx,%rsi
   140009376:	39 41 14             	cmp    %eax,0x14(%rcx)
   140009379:	0f 85 59 01 00 00    	jne    1400094d8 <__diff_D2A+0x178>
   14000937f:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   140009386:	00 
   140009387:	48 8d 49 18          	lea    0x18(%rcx),%rcx
   14000938b:	48 8d 04 11          	lea    (%rcx,%rdx,1),%rax
   14000938f:	48 8d 54 16 18       	lea    0x18(%rsi,%rdx,1),%rdx
   140009394:	eb 13                	jmp    1400093a9 <__diff_D2A+0x49>
   140009396:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000939d:	00 00 00 
   1400093a0:	48 39 c1             	cmp    %rax,%rcx
   1400093a3:	0f 83 47 01 00 00    	jae    1400094f0 <__diff_D2A+0x190>
   1400093a9:	48 83 e8 04          	sub    $0x4,%rax
   1400093ad:	48 83 ea 04          	sub    $0x4,%rdx
   1400093b1:	8b 3a                	mov    (%rdx),%edi
   1400093b3:	39 38                	cmp    %edi,(%rax)
   1400093b5:	74 e9                	je     1400093a0 <__diff_D2A+0x40>
   1400093b7:	bf 01 00 00 00       	mov    $0x1,%edi
   1400093bc:	72 0b                	jb     1400093c9 <__diff_D2A+0x69>
   1400093be:	48 89 f0             	mov    %rsi,%rax
   1400093c1:	31 ff                	xor    %edi,%edi
   1400093c3:	48 89 de             	mov    %rbx,%rsi
   1400093c6:	48 89 c3             	mov    %rax,%rbx
   1400093c9:	8b 4e 08             	mov    0x8(%rsi),%ecx
   1400093cc:	e8 6f f8 ff ff       	call   140008c40 <__Balloc_D2A>
   1400093d1:	49 89 c2             	mov    %rax,%r10
   1400093d4:	48 85 c0             	test   %rax,%rax
   1400093d7:	0f 84 e6 00 00 00    	je     1400094c3 <__diff_D2A+0x163>
   1400093dd:	89 78 10             	mov    %edi,0x10(%rax)
   1400093e0:	48 63 46 14          	movslq 0x14(%rsi),%rax
   1400093e4:	4c 8d 4e 18          	lea    0x18(%rsi),%r9
   1400093e8:	4d 8d 62 18          	lea    0x18(%r10),%r12
   1400093ec:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400093f1:	31 d2                	xor    %edx,%edx
   1400093f3:	49 89 c3             	mov    %rax,%r11
   1400093f6:	49 8d 3c 81          	lea    (%r9,%rax,4),%rdi
   1400093fa:	48 63 43 14          	movslq 0x14(%rbx),%rax
   1400093fe:	4c 8d 44 83 18       	lea    0x18(%rbx,%rax,4),%r8
   140009403:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140009408:	8b 2c 0b             	mov    (%rbx,%rcx,1),%ebp
   14000940b:	8b 04 0e             	mov    (%rsi,%rcx,1),%eax
   14000940e:	48 29 e8             	sub    %rbp,%rax
   140009411:	48 29 d0             	sub    %rdx,%rax
   140009414:	41 89 04 0a          	mov    %eax,(%r10,%rcx,1)
   140009418:	48 89 c2             	mov    %rax,%rdx
   14000941b:	48 83 c1 04          	add    $0x4,%rcx
   14000941f:	89 c5                	mov    %eax,%ebp
   140009421:	48 c1 ea 20          	shr    $0x20,%rdx
   140009425:	48 8d 04 19          	lea    (%rcx,%rbx,1),%rax
   140009429:	83 e2 01             	and    $0x1,%edx
   14000942c:	4c 39 c0             	cmp    %r8,%rax
   14000942f:	72 d7                	jb     140009408 <__diff_D2A+0xa8>
   140009431:	48 8d 43 19          	lea    0x19(%rbx),%rax
   140009435:	b9 04 00 00 00       	mov    $0x4,%ecx
   14000943a:	49 39 c0             	cmp    %rax,%r8
   14000943d:	40 0f 93 c6          	setae  %sil
   140009441:	49 29 d8             	sub    %rbx,%r8
   140009444:	4d 8d 68 e7          	lea    -0x19(%r8),%r13
   140009448:	49 c1 ed 02          	shr    $0x2,%r13
   14000944c:	40 84 f6             	test   %sil,%sil
   14000944f:	4a 8d 04 ad 04 00 00 	lea    0x4(,%r13,4),%rax
   140009456:	00 
   140009457:	48 0f 44 c1          	cmove  %rcx,%rax
   14000945b:	49 8d 1c 01          	lea    (%r9,%rax,1),%rbx
   14000945f:	4d 8d 04 04          	lea    (%r12,%rax,1),%r8
   140009463:	4d 89 c1             	mov    %r8,%r9
   140009466:	48 89 d9             	mov    %rbx,%rcx
   140009469:	48 39 fb             	cmp    %rdi,%rbx
   14000946c:	0f 83 ae 00 00 00    	jae    140009520 <__diff_D2A+0x1c0>
   140009472:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140009478:	8b 01                	mov    (%rcx),%eax
   14000947a:	48 83 c1 04          	add    $0x4,%rcx
   14000947e:	49 83 c1 04          	add    $0x4,%r9
   140009482:	48 29 d0             	sub    %rdx,%rax
   140009485:	48 89 c2             	mov    %rax,%rdx
   140009488:	41 89 41 fc          	mov    %eax,-0x4(%r9)
   14000948c:	89 c5                	mov    %eax,%ebp
   14000948e:	48 c1 ea 20          	shr    $0x20,%rdx
   140009492:	83 e2 01             	and    $0x1,%edx
   140009495:	48 39 f9             	cmp    %rdi,%rcx
   140009498:	72 de                	jb     140009478 <__diff_D2A+0x118>
   14000949a:	48 83 ef 01          	sub    $0x1,%rdi
   14000949e:	48 29 df             	sub    %rbx,%rdi
   1400094a1:	48 83 e7 fc          	and    $0xfffffffffffffffc,%rdi
   1400094a5:	49 8d 04 38          	lea    (%r8,%rdi,1),%rax
   1400094a9:	85 ed                	test   %ebp,%ebp
   1400094ab:	75 12                	jne    1400094bf <__diff_D2A+0x15f>
   1400094ad:	0f 1f 00             	nopl   (%rax)
   1400094b0:	8b 50 fc             	mov    -0x4(%rax),%edx
   1400094b3:	48 83 e8 04          	sub    $0x4,%rax
   1400094b7:	41 83 eb 01          	sub    $0x1,%r11d
   1400094bb:	85 d2                	test   %edx,%edx
   1400094bd:	74 f1                	je     1400094b0 <__diff_D2A+0x150>
   1400094bf:	45 89 5a 14          	mov    %r11d,0x14(%r10)
   1400094c3:	4c 89 d0             	mov    %r10,%rax
   1400094c6:	48 83 c4 28          	add    $0x28,%rsp
   1400094ca:	5b                   	pop    %rbx
   1400094cb:	5e                   	pop    %rsi
   1400094cc:	5f                   	pop    %rdi
   1400094cd:	5d                   	pop    %rbp
   1400094ce:	41 5c                	pop    %r12
   1400094d0:	41 5d                	pop    %r13
   1400094d2:	c3                   	ret
   1400094d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400094d8:	bf 01 00 00 00       	mov    $0x1,%edi
   1400094dd:	0f 89 db fe ff ff    	jns    1400093be <__diff_D2A+0x5e>
   1400094e3:	e9 e1 fe ff ff       	jmp    1400093c9 <__diff_D2A+0x69>
   1400094e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400094ef:	00 
   1400094f0:	31 c9                	xor    %ecx,%ecx
   1400094f2:	e8 49 f7 ff ff       	call   140008c40 <__Balloc_D2A>
   1400094f7:	49 89 c2             	mov    %rax,%r10
   1400094fa:	48 85 c0             	test   %rax,%rax
   1400094fd:	74 c4                	je     1400094c3 <__diff_D2A+0x163>
   1400094ff:	48 c7 40 14 01 00 00 	movq   $0x1,0x14(%rax)
   140009506:	00 
   140009507:	4c 89 d0             	mov    %r10,%rax
   14000950a:	48 83 c4 28          	add    $0x28,%rsp
   14000950e:	5b                   	pop    %rbx
   14000950f:	5e                   	pop    %rsi
   140009510:	5f                   	pop    %rdi
   140009511:	5d                   	pop    %rbp
   140009512:	41 5c                	pop    %r12
   140009514:	41 5d                	pop    %r13
   140009516:	c3                   	ret
   140009517:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000951e:	00 00 
   140009520:	31 c0                	xor    %eax,%eax
   140009522:	49 c1 e5 02          	shl    $0x2,%r13
   140009526:	40 84 f6             	test   %sil,%sil
   140009529:	4c 0f 44 e8          	cmove  %rax,%r13
   14000952d:	4b 8d 04 2c          	lea    (%r12,%r13,1),%rax
   140009531:	e9 73 ff ff ff       	jmp    1400094a9 <__diff_D2A+0x149>
   140009536:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000953d:	00 00 00 

0000000140009540 <__b2d_D2A>:
   140009540:	57                   	push   %rdi
   140009541:	56                   	push   %rsi
   140009542:	53                   	push   %rbx
   140009543:	48 63 41 14          	movslq 0x14(%rcx),%rax
   140009547:	4c 8d 51 18          	lea    0x18(%rcx),%r10
   14000954b:	49 8d 1c 82          	lea    (%r10,%rax,4),%rbx
   14000954f:	44 8b 5b fc          	mov    -0x4(%rbx),%r11d
   140009553:	48 8d 73 fc          	lea    -0x4(%rbx),%rsi
   140009557:	41 0f bd cb          	bsr    %r11d,%ecx
   14000955b:	89 cf                	mov    %ecx,%edi
   14000955d:	b9 20 00 00 00       	mov    $0x20,%ecx
   140009562:	83 f7 1f             	xor    $0x1f,%edi
   140009565:	41 89 c8             	mov    %ecx,%r8d
   140009568:	41 29 f8             	sub    %edi,%r8d
   14000956b:	44 89 02             	mov    %r8d,(%rdx)
   14000956e:	83 ff 0a             	cmp    $0xa,%edi
   140009571:	7e 7d                	jle    1400095f0 <__b2d_D2A+0xb0>
   140009573:	44 8d 4f f5          	lea    -0xb(%rdi),%r9d
   140009577:	49 39 f2             	cmp    %rsi,%r10
   14000957a:	73 54                	jae    1400095d0 <__b2d_D2A+0x90>
   14000957c:	8b 53 f8             	mov    -0x8(%rbx),%edx
   14000957f:	45 85 c9             	test   %r9d,%r9d
   140009582:	74 53                	je     1400095d7 <__b2d_D2A+0x97>
   140009584:	44 29 c9             	sub    %r9d,%ecx
   140009587:	44 89 d8             	mov    %r11d,%eax
   14000958a:	89 d6                	mov    %edx,%esi
   14000958c:	41 89 c8             	mov    %ecx,%r8d
   14000958f:	44 89 c9             	mov    %r9d,%ecx
   140009592:	d3 e0                	shl    %cl,%eax
   140009594:	44 89 c1             	mov    %r8d,%ecx
   140009597:	d3 ee                	shr    %cl,%esi
   140009599:	44 89 c9             	mov    %r9d,%ecx
   14000959c:	09 f0                	or     %esi,%eax
   14000959e:	d3 e2                	shl    %cl,%edx
   1400095a0:	48 8d 4b f8          	lea    -0x8(%rbx),%rcx
   1400095a4:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
   1400095a9:	48 c1 e0 20          	shl    $0x20,%rax
   1400095ad:	49 39 ca             	cmp    %rcx,%r10
   1400095b0:	73 31                	jae    1400095e3 <__b2d_D2A+0xa3>
   1400095b2:	44 8b 4b f4          	mov    -0xc(%rbx),%r9d
   1400095b6:	44 89 c1             	mov    %r8d,%ecx
   1400095b9:	41 d3 e9             	shr    %cl,%r9d
   1400095bc:	44 09 ca             	or     %r9d,%edx
   1400095bf:	48 09 d0             	or     %rdx,%rax
   1400095c2:	66 48 0f 6e c0       	movq   %rax,%xmm0
   1400095c7:	5b                   	pop    %rbx
   1400095c8:	5e                   	pop    %rsi
   1400095c9:	5f                   	pop    %rdi
   1400095ca:	c3                   	ret
   1400095cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400095d0:	31 d2                	xor    %edx,%edx
   1400095d2:	83 ff 0b             	cmp    $0xb,%edi
   1400095d5:	75 59                	jne    140009630 <__b2d_D2A+0xf0>
   1400095d7:	44 89 d8             	mov    %r11d,%eax
   1400095da:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
   1400095df:	48 c1 e0 20          	shl    $0x20,%rax
   1400095e3:	48 09 d0             	or     %rdx,%rax
   1400095e6:	66 48 0f 6e c0       	movq   %rax,%xmm0
   1400095eb:	5b                   	pop    %rbx
   1400095ec:	5e                   	pop    %rsi
   1400095ed:	5f                   	pop    %rdi
   1400095ee:	c3                   	ret
   1400095ef:	90                   	nop
   1400095f0:	b9 0b 00 00 00       	mov    $0xb,%ecx
   1400095f5:	44 89 d8             	mov    %r11d,%eax
   1400095f8:	45 31 c0             	xor    %r8d,%r8d
   1400095fb:	29 f9                	sub    %edi,%ecx
   1400095fd:	d3 e8                	shr    %cl,%eax
   1400095ff:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
   140009604:	48 c1 e0 20          	shl    $0x20,%rax
   140009608:	49 39 f2             	cmp    %rsi,%r10
   14000960b:	73 07                	jae    140009614 <__b2d_D2A+0xd4>
   14000960d:	44 8b 43 f8          	mov    -0x8(%rbx),%r8d
   140009611:	41 d3 e8             	shr    %cl,%r8d
   140009614:	8d 4f 15             	lea    0x15(%rdi),%ecx
   140009617:	44 89 da             	mov    %r11d,%edx
   14000961a:	d3 e2                	shl    %cl,%edx
   14000961c:	44 09 c2             	or     %r8d,%edx
   14000961f:	48 09 d0             	or     %rdx,%rax
   140009622:	66 48 0f 6e c0       	movq   %rax,%xmm0
   140009627:	5b                   	pop    %rbx
   140009628:	5e                   	pop    %rsi
   140009629:	5f                   	pop    %rdi
   14000962a:	c3                   	ret
   14000962b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140009630:	44 89 d8             	mov    %r11d,%eax
   140009633:	44 89 c9             	mov    %r9d,%ecx
   140009636:	31 d2                	xor    %edx,%edx
   140009638:	d3 e0                	shl    %cl,%eax
   14000963a:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
   14000963f:	48 c1 e0 20          	shl    $0x20,%rax
   140009643:	48 09 d0             	or     %rdx,%rax
   140009646:	66 48 0f 6e c0       	movq   %rax,%xmm0
   14000964b:	5b                   	pop    %rbx
   14000964c:	5e                   	pop    %rsi
   14000964d:	5f                   	pop    %rdi
   14000964e:	c3                   	ret
   14000964f:	90                   	nop

0000000140009650 <__d2b_D2A>:
   140009650:	57                   	push   %rdi
   140009651:	56                   	push   %rsi
   140009652:	53                   	push   %rbx
   140009653:	48 83 ec 20          	sub    $0x20,%rsp
   140009657:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000965c:	48 89 d7             	mov    %rdx,%rdi
   14000965f:	66 48 0f 7e c3       	movq   %xmm0,%rbx
   140009664:	4c 89 c6             	mov    %r8,%rsi
   140009667:	e8 d4 f5 ff ff       	call   140008c40 <__Balloc_D2A>
   14000966c:	48 89 c2             	mov    %rax,%rdx
   14000966f:	48 85 c0             	test   %rax,%rax
   140009672:	0f 84 90 00 00 00    	je     140009708 <__d2b_D2A+0xb8>
   140009678:	48 89 d9             	mov    %rbx,%rcx
   14000967b:	48 89 d8             	mov    %rbx,%rax
   14000967e:	48 c1 e9 20          	shr    $0x20,%rcx
   140009682:	41 89 c9             	mov    %ecx,%r9d
   140009685:	c1 e9 14             	shr    $0x14,%ecx
   140009688:	41 81 e1 ff ff 0f 00 	and    $0xfffff,%r9d
   14000968f:	45 89 c8             	mov    %r9d,%r8d
   140009692:	41 81 c8 00 00 10 00 	or     $0x100000,%r8d
   140009699:	81 e1 ff 07 00 00    	and    $0x7ff,%ecx
   14000969f:	45 0f 45 c8          	cmovne %r8d,%r9d
   1400096a3:	41 89 ca             	mov    %ecx,%r10d
   1400096a6:	85 db                	test   %ebx,%ebx
   1400096a8:	74 6e                	je     140009718 <__d2b_D2A+0xc8>
   1400096aa:	45 31 c0             	xor    %r8d,%r8d
   1400096ad:	f3 44 0f bc c3       	tzcnt  %ebx,%r8d
   1400096b2:	44 89 c1             	mov    %r8d,%ecx
   1400096b5:	d3 e8                	shr    %cl,%eax
   1400096b7:	45 85 c0             	test   %r8d,%r8d
   1400096ba:	74 15                	je     1400096d1 <__d2b_D2A+0x81>
   1400096bc:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400096c1:	44 89 cb             	mov    %r9d,%ebx
   1400096c4:	44 29 c1             	sub    %r8d,%ecx
   1400096c7:	d3 e3                	shl    %cl,%ebx
   1400096c9:	44 89 c1             	mov    %r8d,%ecx
   1400096cc:	09 d8                	or     %ebx,%eax
   1400096ce:	41 d3 e9             	shr    %cl,%r9d
   1400096d1:	89 42 18             	mov    %eax,0x18(%rdx)
   1400096d4:	41 83 f9 01          	cmp    $0x1,%r9d
   1400096d8:	b8 01 00 00 00       	mov    $0x1,%eax
   1400096dd:	83 d8 ff             	sbb    $0xffffffff,%eax
   1400096e0:	44 89 4a 1c          	mov    %r9d,0x1c(%rdx)
   1400096e4:	89 42 14             	mov    %eax,0x14(%rdx)
   1400096e7:	45 85 d2             	test   %r10d,%r10d
   1400096ea:	75 4b                	jne    140009737 <__d2b_D2A+0xe7>
   1400096ec:	48 63 c8             	movslq %eax,%rcx
   1400096ef:	41 81 e8 32 04 00 00 	sub    $0x432,%r8d
   1400096f6:	0f bd 4c 8a 14       	bsr    0x14(%rdx,%rcx,4),%ecx
   1400096fb:	c1 e0 05             	shl    $0x5,%eax
   1400096fe:	44 89 07             	mov    %r8d,(%rdi)
   140009701:	83 f1 1f             	xor    $0x1f,%ecx
   140009704:	29 c8                	sub    %ecx,%eax
   140009706:	89 06                	mov    %eax,(%rsi)
   140009708:	48 89 d0             	mov    %rdx,%rax
   14000970b:	48 83 c4 20          	add    $0x20,%rsp
   14000970f:	5b                   	pop    %rbx
   140009710:	5e                   	pop    %rsi
   140009711:	5f                   	pop    %rdi
   140009712:	c3                   	ret
   140009713:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140009718:	31 c9                	xor    %ecx,%ecx
   14000971a:	b8 01 00 00 00       	mov    $0x1,%eax
   14000971f:	f3 41 0f bc c9       	tzcnt  %r9d,%ecx
   140009724:	89 42 14             	mov    %eax,0x14(%rdx)
   140009727:	41 d3 e9             	shr    %cl,%r9d
   14000972a:	44 8d 41 20          	lea    0x20(%rcx),%r8d
   14000972e:	44 89 4a 18          	mov    %r9d,0x18(%rdx)
   140009732:	45 85 d2             	test   %r10d,%r10d
   140009735:	74 b5                	je     1400096ec <__d2b_D2A+0x9c>
   140009737:	43 8d 84 02 cd fb ff 	lea    -0x433(%r10,%r8,1),%eax
   14000973e:	ff 
   14000973f:	89 07                	mov    %eax,(%rdi)
   140009741:	b8 35 00 00 00       	mov    $0x35,%eax
   140009746:	44 29 c0             	sub    %r8d,%eax
   140009749:	89 06                	mov    %eax,(%rsi)
   14000974b:	48 89 d0             	mov    %rdx,%rax
   14000974e:	48 83 c4 20          	add    $0x20,%rsp
   140009752:	5b                   	pop    %rbx
   140009753:	5e                   	pop    %rsi
   140009754:	5f                   	pop    %rdi
   140009755:	c3                   	ret
   140009756:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000975d:	00 00 00 

0000000140009760 <__strcp_D2A>:
   140009760:	48 89 c8             	mov    %rcx,%rax
   140009763:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
   140009767:	0f b6 12             	movzbl (%rdx),%edx
   14000976a:	88 10                	mov    %dl,(%rax)
   14000976c:	84 d2                	test   %dl,%dl
   14000976e:	74 11                	je     140009781 <__strcp_D2A+0x21>
   140009770:	0f b6 11             	movzbl (%rcx),%edx
   140009773:	48 83 c0 01          	add    $0x1,%rax
   140009777:	48 83 c1 01          	add    $0x1,%rcx
   14000977b:	88 10                	mov    %dl,(%rax)
   14000977d:	84 d2                	test   %dl,%dl
   14000977f:	75 ef                	jne    140009770 <__strcp_D2A+0x10>
   140009781:	c3                   	ret
   140009782:	90                   	nop
   140009783:	90                   	nop
   140009784:	90                   	nop
   140009785:	90                   	nop
   140009786:	90                   	nop
   140009787:	90                   	nop
   140009788:	90                   	nop
   140009789:	90                   	nop
   14000978a:	90                   	nop
   14000978b:	90                   	nop
   14000978c:	90                   	nop
   14000978d:	90                   	nop
   14000978e:	90                   	nop
   14000978f:	90                   	nop

0000000140009790 <strnlen>:
   140009790:	45 31 c0             	xor    %r8d,%r8d
   140009793:	48 89 c8             	mov    %rcx,%rax
   140009796:	48 85 d2             	test   %rdx,%rdx
   140009799:	75 14                	jne    1400097af <strnlen+0x1f>
   14000979b:	eb 17                	jmp    1400097b4 <strnlen+0x24>
   14000979d:	0f 1f 00             	nopl   (%rax)
   1400097a0:	48 83 c0 01          	add    $0x1,%rax
   1400097a4:	49 89 c0             	mov    %rax,%r8
   1400097a7:	49 29 c8             	sub    %rcx,%r8
   1400097aa:	49 39 d0             	cmp    %rdx,%r8
   1400097ad:	73 05                	jae    1400097b4 <strnlen+0x24>
   1400097af:	80 38 00             	cmpb   $0x0,(%rax)
   1400097b2:	75 ec                	jne    1400097a0 <strnlen+0x10>
   1400097b4:	4c 89 c0             	mov    %r8,%rax
   1400097b7:	c3                   	ret
   1400097b8:	90                   	nop
   1400097b9:	90                   	nop
   1400097ba:	90                   	nop
   1400097bb:	90                   	nop
   1400097bc:	90                   	nop
   1400097bd:	90                   	nop
   1400097be:	90                   	nop
   1400097bf:	90                   	nop

00000001400097c0 <wcsnlen>:
   1400097c0:	45 31 c0             	xor    %r8d,%r8d
   1400097c3:	48 89 d0             	mov    %rdx,%rax
   1400097c6:	48 85 d2             	test   %rdx,%rdx
   1400097c9:	75 0e                	jne    1400097d9 <wcsnlen+0x19>
   1400097cb:	eb 17                	jmp    1400097e4 <wcsnlen+0x24>
   1400097cd:	0f 1f 00             	nopl   (%rax)
   1400097d0:	49 83 c0 01          	add    $0x1,%r8
   1400097d4:	4c 39 c0             	cmp    %r8,%rax
   1400097d7:	74 0b                	je     1400097e4 <wcsnlen+0x24>
   1400097d9:	66 42 83 3c 41 00    	cmpw   $0x0,(%rcx,%r8,2)
   1400097df:	75 ef                	jne    1400097d0 <wcsnlen+0x10>
   1400097e1:	4c 89 c0             	mov    %r8,%rax
   1400097e4:	c3                   	ret
   1400097e5:	90                   	nop
   1400097e6:	90                   	nop
   1400097e7:	90                   	nop
   1400097e8:	90                   	nop
   1400097e9:	90                   	nop
   1400097ea:	90                   	nop
   1400097eb:	90                   	nop
   1400097ec:	90                   	nop
   1400097ed:	90                   	nop
   1400097ee:	90                   	nop
   1400097ef:	90                   	nop

00000001400097f0 <__p__fmode>:
   1400097f0:	48 8b 05 19 31 00 00 	mov    0x3119(%rip),%rax        # 14000c910 <.refptr.__imp__fmode>
   1400097f7:	48 8b 00             	mov    (%rax),%rax
   1400097fa:	c3                   	ret
   1400097fb:	90                   	nop
   1400097fc:	90                   	nop
   1400097fd:	90                   	nop
   1400097fe:	90                   	nop
   1400097ff:	90                   	nop

0000000140009800 <__p__commode>:
   140009800:	48 8b 05 f9 30 00 00 	mov    0x30f9(%rip),%rax        # 14000c900 <.refptr.__imp__commode>
   140009807:	48 8b 00             	mov    (%rax),%rax
   14000980a:	c3                   	ret
   14000980b:	90                   	nop
   14000980c:	90                   	nop
   14000980d:	90                   	nop
   14000980e:	90                   	nop
   14000980f:	90                   	nop

0000000140009810 <_lock_file>:
   140009810:	53                   	push   %rbx
   140009811:	48 83 ec 20          	sub    $0x20,%rsp
   140009815:	48 89 cb             	mov    %rcx,%rbx
   140009818:	31 c9                	xor    %ecx,%ecx
   14000981a:	e8 71 04 00 00       	call   140009c90 <__acrt_iob_func>
   14000981f:	48 39 c3             	cmp    %rax,%rbx
   140009822:	72 0f                	jb     140009833 <_lock_file+0x23>
   140009824:	b9 13 00 00 00       	mov    $0x13,%ecx
   140009829:	e8 62 04 00 00       	call   140009c90 <__acrt_iob_func>
   14000982e:	48 39 c3             	cmp    %rax,%rbx
   140009831:	76 15                	jbe    140009848 <_lock_file+0x38>
   140009833:	48 8d 4b 30          	lea    0x30(%rbx),%rcx
   140009837:	48 83 c4 20          	add    $0x20,%rsp
   14000983b:	5b                   	pop    %rbx
   14000983c:	48 ff 25 f5 7a 00 00 	rex.W jmp *0x7af5(%rip)        # 140011338 <__imp_EnterCriticalSection>
   140009843:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140009848:	31 c9                	xor    %ecx,%ecx
   14000984a:	e8 41 04 00 00       	call   140009c90 <__acrt_iob_func>
   14000984f:	48 89 c2             	mov    %rax,%rdx
   140009852:	48 89 d8             	mov    %rbx,%rax
   140009855:	48 29 d0             	sub    %rdx,%rax
   140009858:	48 c1 f8 04          	sar    $0x4,%rax
   14000985c:	69 c0 ab aa aa aa    	imul   $0xaaaaaaab,%eax,%eax
   140009862:	8d 48 10             	lea    0x10(%rax),%ecx
   140009865:	e8 ae 09 00 00       	call   14000a218 <_lock>
   14000986a:	81 4b 18 00 80 00 00 	orl    $0x8000,0x18(%rbx)
   140009871:	48 83 c4 20          	add    $0x20,%rsp
   140009875:	5b                   	pop    %rbx
   140009876:	c3                   	ret
   140009877:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000987e:	00 00 

0000000140009880 <_unlock_file>:
   140009880:	53                   	push   %rbx
   140009881:	48 83 ec 20          	sub    $0x20,%rsp
   140009885:	48 89 cb             	mov    %rcx,%rbx
   140009888:	31 c9                	xor    %ecx,%ecx
   14000988a:	e8 01 04 00 00       	call   140009c90 <__acrt_iob_func>
   14000988f:	48 39 c3             	cmp    %rax,%rbx
   140009892:	72 0f                	jb     1400098a3 <_unlock_file+0x23>
   140009894:	b9 13 00 00 00       	mov    $0x13,%ecx
   140009899:	e8 f2 03 00 00       	call   140009c90 <__acrt_iob_func>
   14000989e:	48 39 c3             	cmp    %rax,%rbx
   1400098a1:	76 15                	jbe    1400098b8 <_unlock_file+0x38>
   1400098a3:	48 8d 4b 30          	lea    0x30(%rbx),%rcx
   1400098a7:	48 83 c4 20          	add    $0x20,%rsp
   1400098ab:	5b                   	pop    %rbx
   1400098ac:	48 ff 25 a5 7a 00 00 	rex.W jmp *0x7aa5(%rip)        # 140011358 <__imp_LeaveCriticalSection>
   1400098b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400098b8:	81 63 18 ff 7f ff ff 	andl   $0xffff7fff,0x18(%rbx)
   1400098bf:	31 c9                	xor    %ecx,%ecx
   1400098c1:	e8 ca 03 00 00       	call   140009c90 <__acrt_iob_func>
   1400098c6:	48 29 c3             	sub    %rax,%rbx
   1400098c9:	48 c1 fb 04          	sar    $0x4,%rbx
   1400098cd:	69 db ab aa aa aa    	imul   $0xaaaaaaab,%ebx,%ebx
   1400098d3:	8d 4b 10             	lea    0x10(%rbx),%ecx
   1400098d6:	48 83 c4 20          	add    $0x20,%rsp
   1400098da:	5b                   	pop    %rbx
   1400098db:	e9 48 09 00 00       	jmp    14000a228 <_unlock>

00000001400098e0 <_get_invalid_parameter_handler>:
   1400098e0:	48 8b 05 19 73 00 00 	mov    0x7319(%rip),%rax        # 140010c00 <handler>
   1400098e7:	c3                   	ret
   1400098e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400098ef:	00 

00000001400098f0 <_set_invalid_parameter_handler>:
   1400098f0:	48 89 c8             	mov    %rcx,%rax
   1400098f3:	48 87 05 06 73 00 00 	xchg   %rax,0x7306(%rip)        # 140010c00 <handler>
   1400098fa:	c3                   	ret
   1400098fb:	90                   	nop
   1400098fc:	90                   	nop
   1400098fd:	90                   	nop
   1400098fe:	90                   	nop
   1400098ff:	90                   	nop

0000000140009900 <sin>:
   140009900:	48 83 ec 78          	sub    $0x78,%rsp
   140009904:	0f 11 74 24 60       	movups %xmm6,0x60(%rsp)
   140009909:	f2 0f 11 84 24 80 00 	movsd  %xmm0,0x80(%rsp)
   140009910:	00 00 
   140009912:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140009919:	00 
   14000991a:	48 89 c8             	mov    %rcx,%rax
   14000991d:	48 c1 e8 20          	shr    $0x20,%rax
   140009921:	89 c2                	mov    %eax,%edx
   140009923:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
   140009928:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
   14000992e:	09 ca                	or     %ecx,%edx
   140009930:	89 d1                	mov    %edx,%ecx
   140009932:	09 c1                	or     %eax,%ecx
   140009934:	0f 94 c1             	sete   %cl
   140009937:	85 c0                	test   %eax,%eax
   140009939:	41 0f 94 c0          	sete   %r8b
   14000993d:	44 08 c1             	or     %r8b,%cl
   140009940:	75 07                	jne    140009949 <sin+0x49>
   140009942:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
   140009947:	74 37                	je     140009980 <sin+0x80>
   140009949:	dd 84 24 80 00 00 00 	fldl   0x80(%rsp)
   140009950:	48 8d 4c 24 50       	lea    0x50(%rsp),%rcx
   140009955:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
   14000995a:	db 7c 24 40          	fstpt  0x40(%rsp)
   14000995e:	e8 fd 09 00 00       	call   14000a360 <__sinl_internal>
   140009963:	db 6c 24 50          	fldt   0x50(%rsp)
   140009967:	0f 10 74 24 60       	movups 0x60(%rsp),%xmm6
   14000996c:	dd 5c 24 38          	fstpl  0x38(%rsp)
   140009970:	f2 0f 10 44 24 38    	movsd  0x38(%rsp),%xmm0
   140009976:	48 83 c4 78          	add    $0x78,%rsp
   14000997a:	c3                   	ret
   14000997b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140009980:	85 d2                	test   %edx,%edx
   140009982:	74 4c                	je     1400099d0 <sin+0xd0>
   140009984:	e8 7f 08 00 00       	call   14000a208 <_errno>
   140009989:	66 0f ef db          	pxor   %xmm3,%xmm3
   14000998d:	b9 01 00 00 00       	mov    $0x1,%ecx
   140009992:	f2 0f 10 8c 24 80 00 	movsd  0x80(%rsp),%xmm1
   140009999:	00 00 
   14000999b:	c7 00 21 00 00 00    	movl   $0x21,(%rax)
   1400099a1:	48 8d 15 58 2e 00 00 	lea    0x2e58(%rip),%rdx        # 14000c800 <.rdata>
   1400099a8:	f2 0f 11 4c 24 20    	movsd  %xmm1,0x20(%rsp)
   1400099ae:	66 0f 28 d1          	movapd %xmm1,%xmm2
   1400099b2:	e8 79 a5 ff ff       	call   140003f30 <__mingw_raise_matherr>
   1400099b7:	90                   	nop
   1400099b8:	0f 10 74 24 60       	movups 0x60(%rsp),%xmm6
   1400099bd:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   1400099c4:	00 00 
   1400099c6:	48 83 c4 78          	add    $0x78,%rsp
   1400099ca:	c3                   	ret
   1400099cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400099d0:	e8 33 08 00 00       	call   14000a208 <_errno>
   1400099d5:	66 0f ef db          	pxor   %xmm3,%xmm3
   1400099d9:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400099de:	f2 0f 10 35 22 2e 00 	movsd  0x2e22(%rip),%xmm6        # 14000c808 <.rdata+0x8>
   1400099e5:	00 
   1400099e6:	c7 00 21 00 00 00    	movl   $0x21,(%rax)
   1400099ec:	48 8d 15 0d 2e 00 00 	lea    0x2e0d(%rip),%rdx        # 14000c800 <.rdata>
   1400099f3:	f2 0f 10 94 24 80 00 	movsd  0x80(%rsp),%xmm2
   1400099fa:	00 00 
   1400099fc:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   140009a02:	e8 29 a5 ff ff       	call   140003f30 <__mingw_raise_matherr>
   140009a07:	66 0f 28 c6          	movapd %xmm6,%xmm0
   140009a0b:	0f 10 74 24 60       	movups 0x60(%rsp),%xmm6
   140009a10:	48 83 c4 78          	add    $0x78,%rsp
   140009a14:	c3                   	ret
   140009a15:	90                   	nop
   140009a16:	90                   	nop
   140009a17:	90                   	nop
   140009a18:	90                   	nop
   140009a19:	90                   	nop
   140009a1a:	90                   	nop
   140009a1b:	90                   	nop
   140009a1c:	90                   	nop
   140009a1d:	90                   	nop
   140009a1e:	90                   	nop
   140009a1f:	90                   	nop

0000000140009a20 <cos>:
   140009a20:	48 83 ec 78          	sub    $0x78,%rsp
   140009a24:	0f 11 74 24 60       	movups %xmm6,0x60(%rsp)
   140009a29:	f2 0f 11 84 24 80 00 	movsd  %xmm0,0x80(%rsp)
   140009a30:	00 00 
   140009a32:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140009a39:	00 
   140009a3a:	48 89 c8             	mov    %rcx,%rax
   140009a3d:	48 c1 e8 20          	shr    $0x20,%rax
   140009a41:	89 c2                	mov    %eax,%edx
   140009a43:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
   140009a48:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
   140009a4e:	09 ca                	or     %ecx,%edx
   140009a50:	89 d1                	mov    %edx,%ecx
   140009a52:	09 c1                	or     %eax,%ecx
   140009a54:	0f 94 c1             	sete   %cl
   140009a57:	85 c0                	test   %eax,%eax
   140009a59:	41 0f 94 c0          	sete   %r8b
   140009a5d:	44 08 c1             	or     %r8b,%cl
   140009a60:	75 07                	jne    140009a69 <cos+0x49>
   140009a62:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
   140009a67:	74 37                	je     140009aa0 <cos+0x80>
   140009a69:	dd 84 24 80 00 00 00 	fldl   0x80(%rsp)
   140009a70:	48 8d 4c 24 50       	lea    0x50(%rsp),%rcx
   140009a75:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
   140009a7a:	db 7c 24 40          	fstpt  0x40(%rsp)
   140009a7e:	e8 ad 08 00 00       	call   14000a330 <__cosl_internal>
   140009a83:	db 6c 24 50          	fldt   0x50(%rsp)
   140009a87:	0f 10 74 24 60       	movups 0x60(%rsp),%xmm6
   140009a8c:	dd 5c 24 38          	fstpl  0x38(%rsp)
   140009a90:	f2 0f 10 44 24 38    	movsd  0x38(%rsp),%xmm0
   140009a96:	48 83 c4 78          	add    $0x78,%rsp
   140009a9a:	c3                   	ret
   140009a9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140009aa0:	85 d2                	test   %edx,%edx
   140009aa2:	74 4c                	je     140009af0 <cos+0xd0>
   140009aa4:	e8 5f 07 00 00       	call   14000a208 <_errno>
   140009aa9:	66 0f ef db          	pxor   %xmm3,%xmm3
   140009aad:	b9 01 00 00 00       	mov    $0x1,%ecx
   140009ab2:	f2 0f 10 8c 24 80 00 	movsd  0x80(%rsp),%xmm1
   140009ab9:	00 00 
   140009abb:	c7 00 21 00 00 00    	movl   $0x21,(%rax)
   140009ac1:	48 8d 15 48 2d 00 00 	lea    0x2d48(%rip),%rdx        # 14000c810 <.rdata>
   140009ac8:	f2 0f 11 4c 24 20    	movsd  %xmm1,0x20(%rsp)
   140009ace:	66 0f 28 d1          	movapd %xmm1,%xmm2
   140009ad2:	e8 59 a4 ff ff       	call   140003f30 <__mingw_raise_matherr>
   140009ad7:	90                   	nop
   140009ad8:	0f 10 74 24 60       	movups 0x60(%rsp),%xmm6
   140009add:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140009ae4:	00 00 
   140009ae6:	48 83 c4 78          	add    $0x78,%rsp
   140009aea:	c3                   	ret
   140009aeb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140009af0:	e8 13 07 00 00       	call   14000a208 <_errno>
   140009af5:	66 0f ef db          	pxor   %xmm3,%xmm3
   140009af9:	b9 01 00 00 00       	mov    $0x1,%ecx
   140009afe:	f2 0f 10 35 12 2d 00 	movsd  0x2d12(%rip),%xmm6        # 14000c818 <.rdata+0x8>
   140009b05:	00 
   140009b06:	c7 00 21 00 00 00    	movl   $0x21,(%rax)
   140009b0c:	48 8d 15 fd 2c 00 00 	lea    0x2cfd(%rip),%rdx        # 14000c810 <.rdata>
   140009b13:	f2 0f 10 94 24 80 00 	movsd  0x80(%rsp),%xmm2
   140009b1a:	00 00 
   140009b1c:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   140009b22:	e8 09 a4 ff ff       	call   140003f30 <__mingw_raise_matherr>
   140009b27:	66 0f 28 c6          	movapd %xmm6,%xmm0
   140009b2b:	0f 10 74 24 60       	movups 0x60(%rsp),%xmm6
   140009b30:	48 83 c4 78          	add    $0x78,%rsp
   140009b34:	c3                   	ret
   140009b35:	90                   	nop
   140009b36:	90                   	nop
   140009b37:	90                   	nop
   140009b38:	90                   	nop
   140009b39:	90                   	nop
   140009b3a:	90                   	nop
   140009b3b:	90                   	nop
   140009b3c:	90                   	nop
   140009b3d:	90                   	nop
   140009b3e:	90                   	nop
   140009b3f:	90                   	nop

0000000140009b40 <sqrt>:
   140009b40:	48 83 ec 58          	sub    $0x58,%rsp
   140009b44:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   140009b49:	66 48 0f 7e c1       	movq   %xmm0,%rcx
   140009b4e:	66 0f 28 d0          	movapd %xmm0,%xmm2
   140009b52:	48 89 ca             	mov    %rcx,%rdx
   140009b55:	48 c1 ea 20          	shr    $0x20,%rdx
   140009b59:	89 d0                	mov    %edx,%eax
   140009b5b:	25 ff ff 0f 00       	and    $0xfffff,%eax
   140009b60:	09 c8                	or     %ecx,%eax
   140009b62:	89 d1                	mov    %edx,%ecx
   140009b64:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
   140009b6a:	41 89 c0             	mov    %eax,%r8d
   140009b6d:	41 09 c8             	or     %ecx,%r8d
   140009b70:	0f 84 aa 00 00 00    	je     140009c20 <sqrt+0xe0>
   140009b76:	85 c9                	test   %ecx,%ecx
   140009b78:	74 08                	je     140009b82 <sqrt+0x42>
   140009b7a:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
   140009b80:	74 3e                	je     140009bc0 <sqrt+0x80>
   140009b82:	85 d2                	test   %edx,%edx
   140009b84:	78 4a                	js     140009bd0 <sqrt+0x90>
   140009b86:	66 0f 2e 15 b2 2c 00 	ucomisd 0x2cb2(%rip),%xmm2        # 14000c840 <.rdata+0x20>
   140009b8d:	00 
   140009b8e:	7a 06                	jp     140009b96 <sqrt+0x56>
   140009b90:	66 0f 28 c2          	movapd %xmm2,%xmm0
   140009b94:	74 16                	je     140009bac <sqrt+0x6c>
   140009b96:	f2 0f 11 54 24 38    	movsd  %xmm2,0x38(%rsp)
   140009b9c:	dd 44 24 38          	fldl   0x38(%rsp)
   140009ba0:	d9 fa                	fsqrt
   140009ba2:	dd 5c 24 38          	fstpl  0x38(%rsp)
   140009ba6:	f2 0f 10 44 24 38    	movsd  0x38(%rsp),%xmm0
   140009bac:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   140009bb1:	48 83 c4 58          	add    $0x58,%rsp
   140009bb5:	c3                   	ret
   140009bb6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140009bbd:	00 00 00 
   140009bc0:	85 c0                	test   %eax,%eax
   140009bc2:	75 7c                	jne    140009c40 <sqrt+0x100>
   140009bc4:	f2 0f 10 05 6c 2c 00 	movsd  0x2c6c(%rip),%xmm0        # 14000c838 <.rdata+0x18>
   140009bcb:	00 
   140009bcc:	85 d2                	test   %edx,%edx
   140009bce:	79 dc                	jns    140009bac <sqrt+0x6c>
   140009bd0:	f2 0f 11 54 24 60    	movsd  %xmm2,0x60(%rsp)
   140009bd6:	e8 2d 06 00 00       	call   14000a208 <_errno>
   140009bdb:	f2 0f 10 54 24 60    	movsd  0x60(%rsp),%xmm2
   140009be1:	66 0f ef db          	pxor   %xmm3,%xmm3
   140009be5:	f2 0f 10 35 43 2c 00 	movsd  0x2c43(%rip),%xmm6        # 14000c830 <.rdata+0x10>
   140009bec:	00 
   140009bed:	c7 00 21 00 00 00    	movl   $0x21,(%rax)
   140009bf3:	48 8d 15 26 2c 00 00 	lea    0x2c26(%rip),%rdx        # 14000c820 <.rdata>
   140009bfa:	b9 01 00 00 00       	mov    $0x1,%ecx
   140009bff:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   140009c05:	e8 26 a3 ff ff       	call   140003f30 <__mingw_raise_matherr>
   140009c0a:	66 0f 28 c6          	movapd %xmm6,%xmm0
   140009c0e:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   140009c13:	48 83 c4 58          	add    $0x58,%rsp
   140009c17:	c3                   	ret
   140009c18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140009c1f:	00 
   140009c20:	f2 0f 10 05 00 2c 00 	movsd  0x2c00(%rip),%xmm0        # 14000c828 <.rdata+0x8>
   140009c27:	00 
   140009c28:	85 d2                	test   %edx,%edx
   140009c2a:	75 80                	jne    140009bac <sqrt+0x6c>
   140009c2c:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   140009c31:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140009c35:	48 83 c4 58          	add    $0x58,%rsp
   140009c39:	c3                   	ret
   140009c3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140009c40:	f2 0f 11 44 24 60    	movsd  %xmm0,0x60(%rsp)
   140009c46:	e8 bd 05 00 00       	call   14000a208 <_errno>
   140009c4b:	f2 0f 10 54 24 60    	movsd  0x60(%rsp),%xmm2
   140009c51:	66 0f ef db          	pxor   %xmm3,%xmm3
   140009c55:	48 8d 15 c4 2b 00 00 	lea    0x2bc4(%rip),%rdx        # 14000c820 <.rdata>
   140009c5c:	c7 00 21 00 00 00    	movl   $0x21,(%rax)
   140009c62:	b9 01 00 00 00       	mov    $0x1,%ecx
   140009c67:	f2 0f 11 54 24 20    	movsd  %xmm2,0x20(%rsp)
   140009c6d:	e8 be a2 ff ff       	call   140003f30 <__mingw_raise_matherr>
   140009c72:	f2 0f 10 54 24 60    	movsd  0x60(%rsp),%xmm2
   140009c78:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   140009c7d:	66 0f 28 c2          	movapd %xmm2,%xmm0
   140009c81:	48 83 c4 58          	add    $0x58,%rsp
   140009c85:	c3                   	ret
   140009c86:	90                   	nop
   140009c87:	90                   	nop
   140009c88:	90                   	nop
   140009c89:	90                   	nop
   140009c8a:	90                   	nop
   140009c8b:	90                   	nop
   140009c8c:	90                   	nop
   140009c8d:	90                   	nop
   140009c8e:	90                   	nop
   140009c8f:	90                   	nop

0000000140009c90 <__acrt_iob_func>:
   140009c90:	53                   	push   %rbx
   140009c91:	48 83 ec 20          	sub    $0x20,%rsp
   140009c95:	89 cb                	mov    %ecx,%ebx
   140009c97:	e8 44 05 00 00       	call   14000a1e0 <__iob_func>
   140009c9c:	89 d9                	mov    %ebx,%ecx
   140009c9e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   140009ca2:	48 c1 e2 04          	shl    $0x4,%rdx
   140009ca6:	48 01 d0             	add    %rdx,%rax
   140009ca9:	48 83 c4 20          	add    $0x20,%rsp
   140009cad:	5b                   	pop    %rbx
   140009cae:	c3                   	ret
   140009caf:	90                   	nop

0000000140009cb0 <__wcrtomb_cp>:
   140009cb0:	48 83 ec 58          	sub    $0x58,%rsp
   140009cb4:	48 89 c8             	mov    %rcx,%rax
   140009cb7:	66 89 54 24 68       	mov    %dx,0x68(%rsp)
   140009cbc:	44 89 c1             	mov    %r8d,%ecx
   140009cbf:	45 85 c0             	test   %r8d,%r8d
   140009cc2:	75 1c                	jne    140009ce0 <__wcrtomb_cp+0x30>
   140009cc4:	66 81 fa ff 00       	cmp    $0xff,%dx
   140009cc9:	77 59                	ja     140009d24 <__wcrtomb_cp+0x74>
   140009ccb:	88 10                	mov    %dl,(%rax)
   140009ccd:	b8 01 00 00 00       	mov    $0x1,%eax
   140009cd2:	48 83 c4 58          	add    $0x58,%rsp
   140009cd6:	c3                   	ret
   140009cd7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140009cde:	00 00 
   140009ce0:	48 8d 54 24 4c       	lea    0x4c(%rsp),%rdx
   140009ce5:	44 89 4c 24 28       	mov    %r9d,0x28(%rsp)
   140009cea:	4c 8d 44 24 68       	lea    0x68(%rsp),%r8
   140009cef:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   140009cf5:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
   140009cfa:	31 d2                	xor    %edx,%edx
   140009cfc:	c7 44 24 4c 00 00 00 	movl   $0x0,0x4c(%rsp)
   140009d03:	00 
   140009d04:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140009d0b:	00 00 
   140009d0d:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140009d12:	ff 15 78 76 00 00    	call   *0x7678(%rip)        # 140011390 <__imp_WideCharToMultiByte>
   140009d18:	85 c0                	test   %eax,%eax
   140009d1a:	74 08                	je     140009d24 <__wcrtomb_cp+0x74>
   140009d1c:	8b 54 24 4c          	mov    0x4c(%rsp),%edx
   140009d20:	85 d2                	test   %edx,%edx
   140009d22:	74 ae                	je     140009cd2 <__wcrtomb_cp+0x22>
   140009d24:	e8 df 04 00 00       	call   14000a208 <_errno>
   140009d29:	c7 00 2a 00 00 00    	movl   $0x2a,(%rax)
   140009d2f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140009d34:	48 83 c4 58          	add    $0x58,%rsp
   140009d38:	c3                   	ret
   140009d39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140009d40 <wcrtomb>:
   140009d40:	57                   	push   %rdi
   140009d41:	56                   	push   %rsi
   140009d42:	53                   	push   %rbx
   140009d43:	48 83 ec 30          	sub    $0x30,%rsp
   140009d47:	48 85 c9             	test   %rcx,%rcx
   140009d4a:	48 89 cb             	mov    %rcx,%rbx
   140009d4d:	48 8d 44 24 2b       	lea    0x2b(%rsp),%rax
   140009d52:	89 d6                	mov    %edx,%esi
   140009d54:	48 0f 44 d8          	cmove  %rax,%rbx
   140009d58:	e8 73 04 00 00       	call   14000a1d0 <___mb_cur_max_func>
   140009d5d:	89 c7                	mov    %eax,%edi
   140009d5f:	e8 64 04 00 00       	call   14000a1c8 <___lc_codepage_func>
   140009d64:	0f b7 d6             	movzwl %si,%edx
   140009d67:	41 89 f9             	mov    %edi,%r9d
   140009d6a:	48 89 d9             	mov    %rbx,%rcx
   140009d6d:	41 89 c0             	mov    %eax,%r8d
   140009d70:	e8 3b ff ff ff       	call   140009cb0 <__wcrtomb_cp>
   140009d75:	48 98                	cltq
   140009d77:	48 83 c4 30          	add    $0x30,%rsp
   140009d7b:	5b                   	pop    %rbx
   140009d7c:	5e                   	pop    %rsi
   140009d7d:	5f                   	pop    %rdi
   140009d7e:	c3                   	ret
   140009d7f:	90                   	nop

0000000140009d80 <wcsrtombs>:
   140009d80:	41 56                	push   %r14
   140009d82:	41 55                	push   %r13
   140009d84:	41 54                	push   %r12
   140009d86:	55                   	push   %rbp
   140009d87:	57                   	push   %rdi
   140009d88:	56                   	push   %rsi
   140009d89:	53                   	push   %rbx
   140009d8a:	48 83 ec 30          	sub    $0x30,%rsp
   140009d8e:	45 31 f6             	xor    %r14d,%r14d
   140009d91:	49 89 d4             	mov    %rdx,%r12
   140009d94:	48 89 cb             	mov    %rcx,%rbx
   140009d97:	4c 89 c5             	mov    %r8,%rbp
   140009d9a:	e8 29 04 00 00       	call   14000a1c8 <___lc_codepage_func>
   140009d9f:	89 c6                	mov    %eax,%esi
   140009da1:	e8 2a 04 00 00       	call   14000a1d0 <___mb_cur_max_func>
   140009da6:	4d 8b 2c 24          	mov    (%r12),%r13
   140009daa:	89 c7                	mov    %eax,%edi
   140009dac:	4d 85 ed             	test   %r13,%r13
   140009daf:	74 48                	je     140009df9 <wcsrtombs+0x79>
   140009db1:	48 85 db             	test   %rbx,%rbx
   140009db4:	74 5a                	je     140009e10 <wcsrtombs+0x90>
   140009db6:	48 85 ed             	test   %rbp,%rbp
   140009db9:	75 20                	jne    140009ddb <wcsrtombs+0x5b>
   140009dbb:	e9 90 00 00 00       	jmp    140009e50 <wcsrtombs+0xd0>
   140009dc0:	48 98                	cltq
   140009dc2:	48 01 c3             	add    %rax,%rbx
   140009dc5:	49 01 c6             	add    %rax,%r14
   140009dc8:	80 7b ff 00          	cmpb   $0x0,-0x1(%rbx)
   140009dcc:	0f 84 8e 00 00 00    	je     140009e60 <wcsrtombs+0xe0>
   140009dd2:	49 83 c5 02          	add    $0x2,%r13
   140009dd6:	49 39 ee             	cmp    %rbp,%r14
   140009dd9:	73 75                	jae    140009e50 <wcsrtombs+0xd0>
   140009ddb:	41 0f b7 55 00       	movzwl 0x0(%r13),%edx
   140009de0:	41 89 f9             	mov    %edi,%r9d
   140009de3:	41 89 f0             	mov    %esi,%r8d
   140009de6:	48 89 d9             	mov    %rbx,%rcx
   140009de9:	e8 c2 fe ff ff       	call   140009cb0 <__wcrtomb_cp>
   140009dee:	85 c0                	test   %eax,%eax
   140009df0:	7f ce                	jg     140009dc0 <wcsrtombs+0x40>
   140009df2:	49 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%r14
   140009df9:	4c 89 f0             	mov    %r14,%rax
   140009dfc:	48 83 c4 30          	add    $0x30,%rsp
   140009e00:	5b                   	pop    %rbx
   140009e01:	5e                   	pop    %rsi
   140009e02:	5f                   	pop    %rdi
   140009e03:	5d                   	pop    %rbp
   140009e04:	41 5c                	pop    %r12
   140009e06:	41 5d                	pop    %r13
   140009e08:	41 5e                	pop    %r14
   140009e0a:	c3                   	ret
   140009e0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140009e10:	48 8d 6c 24 2b       	lea    0x2b(%rsp),%rbp
   140009e15:	eb 1f                	jmp    140009e36 <wcsrtombs+0xb6>
   140009e17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140009e1e:	00 00 
   140009e20:	48 63 d0             	movslq %eax,%rdx
   140009e23:	83 e8 01             	sub    $0x1,%eax
   140009e26:	48 98                	cltq
   140009e28:	49 01 d6             	add    %rdx,%r14
   140009e2b:	80 7c 04 2b 00       	cmpb   $0x0,0x2b(%rsp,%rax,1)
   140009e30:	74 3e                	je     140009e70 <wcsrtombs+0xf0>
   140009e32:	49 83 c5 02          	add    $0x2,%r13
   140009e36:	41 0f b7 55 00       	movzwl 0x0(%r13),%edx
   140009e3b:	41 89 f9             	mov    %edi,%r9d
   140009e3e:	41 89 f0             	mov    %esi,%r8d
   140009e41:	48 89 e9             	mov    %rbp,%rcx
   140009e44:	e8 67 fe ff ff       	call   140009cb0 <__wcrtomb_cp>
   140009e49:	85 c0                	test   %eax,%eax
   140009e4b:	7f d3                	jg     140009e20 <wcsrtombs+0xa0>
   140009e4d:	eb a3                	jmp    140009df2 <wcsrtombs+0x72>
   140009e4f:	90                   	nop
   140009e50:	4d 89 2c 24          	mov    %r13,(%r12)
   140009e54:	eb a3                	jmp    140009df9 <wcsrtombs+0x79>
   140009e56:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140009e5d:	00 00 00 
   140009e60:	49 c7 04 24 00 00 00 	movq   $0x0,(%r12)
   140009e67:	00 
   140009e68:	49 83 ee 01          	sub    $0x1,%r14
   140009e6c:	eb 8b                	jmp    140009df9 <wcsrtombs+0x79>
   140009e6e:	66 90                	xchg   %ax,%ax
   140009e70:	49 83 ee 01          	sub    $0x1,%r14
   140009e74:	eb 83                	jmp    140009df9 <wcsrtombs+0x79>
   140009e76:	90                   	nop
   140009e77:	90                   	nop
   140009e78:	90                   	nop
   140009e79:	90                   	nop
   140009e7a:	90                   	nop
   140009e7b:	90                   	nop
   140009e7c:	90                   	nop
   140009e7d:	90                   	nop
   140009e7e:	90                   	nop
   140009e7f:	90                   	nop

0000000140009e80 <__mbrtowc_cp>:
   140009e80:	57                   	push   %rdi
   140009e81:	53                   	push   %rbx
   140009e82:	48 83 ec 48          	sub    $0x48,%rsp
   140009e86:	48 89 cf             	mov    %rcx,%rdi
   140009e89:	48 89 d3             	mov    %rdx,%rbx
   140009e8c:	48 85 d2             	test   %rdx,%rdx
   140009e8f:	0f 84 c8 00 00 00    	je     140009f5d <__mbrtowc_cp+0xdd>
   140009e95:	4d 85 c0             	test   %r8,%r8
   140009e98:	0f 84 36 01 00 00    	je     140009fd4 <__mbrtowc_cp+0x154>
   140009e9e:	41 8b 01             	mov    (%r9),%eax
   140009ea1:	0f b6 12             	movzbl (%rdx),%edx
   140009ea4:	41 c7 01 00 00 00 00 	movl   $0x0,(%r9)
   140009eab:	89 44 24 3c          	mov    %eax,0x3c(%rsp)
   140009eaf:	84 d2                	test   %dl,%dl
   140009eb1:	0f 84 a1 00 00 00    	je     140009f58 <__mbrtowc_cp+0xd8>
   140009eb7:	83 bc 24 88 00 00 00 	cmpl   $0x1,0x88(%rsp)
   140009ebe:	01 
   140009ebf:	76 77                	jbe    140009f38 <__mbrtowc_cp+0xb8>
   140009ec1:	84 c0                	test   %al,%al
   140009ec3:	0f 85 a7 00 00 00    	jne    140009f70 <__mbrtowc_cp+0xf0>
   140009ec9:	4c 89 4c 24 78       	mov    %r9,0x78(%rsp)
   140009ece:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
   140009ed5:	4c 89 44 24 70       	mov    %r8,0x70(%rsp)
   140009eda:	ff 15 70 74 00 00    	call   *0x7470(%rip)        # 140011350 <__imp_IsDBCSLeadByteEx>
   140009ee0:	85 c0                	test   %eax,%eax
   140009ee2:	74 54                	je     140009f38 <__mbrtowc_cp+0xb8>
   140009ee4:	4c 8b 44 24 70       	mov    0x70(%rsp),%r8
   140009ee9:	4c 8b 4c 24 78       	mov    0x78(%rsp),%r9
   140009eee:	49 83 f8 01          	cmp    $0x1,%r8
   140009ef2:	0f 84 d6 00 00 00    	je     140009fce <__mbrtowc_cp+0x14e>
   140009ef8:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
   140009efd:	41 b9 02 00 00 00    	mov    $0x2,%r9d
   140009f03:	49 89 d8             	mov    %rbx,%r8
   140009f06:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
   140009f0d:	00 
   140009f0e:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
   140009f15:	ba 08 00 00 00       	mov    $0x8,%edx
   140009f1a:	ff 15 40 74 00 00    	call   *0x7440(%rip)        # 140011360 <__imp_MultiByteToWideChar>
   140009f20:	85 c0                	test   %eax,%eax
   140009f22:	0f 84 94 00 00 00    	je     140009fbc <__mbrtowc_cp+0x13c>
   140009f28:	b8 02 00 00 00       	mov    $0x2,%eax
   140009f2d:	48 83 c4 48          	add    $0x48,%rsp
   140009f31:	5b                   	pop    %rbx
   140009f32:	5f                   	pop    %rdi
   140009f33:	c3                   	ret
   140009f34:	0f 1f 40 00          	nopl   0x0(%rax)
   140009f38:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
   140009f3f:	85 c0                	test   %eax,%eax
   140009f41:	75 4d                	jne    140009f90 <__mbrtowc_cp+0x110>
   140009f43:	0f b6 03             	movzbl (%rbx),%eax
   140009f46:	66 89 07             	mov    %ax,(%rdi)
   140009f49:	b8 01 00 00 00       	mov    $0x1,%eax
   140009f4e:	48 83 c4 48          	add    $0x48,%rsp
   140009f52:	5b                   	pop    %rbx
   140009f53:	5f                   	pop    %rdi
   140009f54:	c3                   	ret
   140009f55:	0f 1f 00             	nopl   (%rax)
   140009f58:	31 d2                	xor    %edx,%edx
   140009f5a:	66 89 11             	mov    %dx,(%rcx)
   140009f5d:	31 c0                	xor    %eax,%eax
   140009f5f:	48 83 c4 48          	add    $0x48,%rsp
   140009f63:	5b                   	pop    %rbx
   140009f64:	5f                   	pop    %rdi
   140009f65:	c3                   	ret
   140009f66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140009f6d:	00 00 00 
   140009f70:	88 54 24 3d          	mov    %dl,0x3d(%rsp)
   140009f74:	41 b9 02 00 00 00    	mov    $0x2,%r9d
   140009f7a:	4c 8d 44 24 3c       	lea    0x3c(%rsp),%r8
   140009f7f:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
   140009f86:	00 
   140009f87:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
   140009f8c:	eb 80                	jmp    140009f0e <__mbrtowc_cp+0x8e>
   140009f8e:	66 90                	xchg   %ax,%ax
   140009f90:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
   140009f97:	00 
   140009f98:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
   140009f9f:	49 89 d8             	mov    %rbx,%r8
   140009fa2:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   140009fa8:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
   140009fad:	ba 08 00 00 00       	mov    $0x8,%edx
   140009fb2:	ff 15 a8 73 00 00    	call   *0x73a8(%rip)        # 140011360 <__imp_MultiByteToWideChar>
   140009fb8:	85 c0                	test   %eax,%eax
   140009fba:	75 8d                	jne    140009f49 <__mbrtowc_cp+0xc9>
   140009fbc:	e8 47 02 00 00       	call   14000a208 <_errno>
   140009fc1:	c7 00 2a 00 00 00    	movl   $0x2a,(%rax)
   140009fc7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140009fcc:	eb 91                	jmp    140009f5f <__mbrtowc_cp+0xdf>
   140009fce:	0f b6 03             	movzbl (%rbx),%eax
   140009fd1:	41 88 01             	mov    %al,(%r9)
   140009fd4:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
   140009fd9:	eb 84                	jmp    140009f5f <__mbrtowc_cp+0xdf>
   140009fdb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000140009fe0 <mbrtowc>:
   140009fe0:	41 54                	push   %r12
   140009fe2:	55                   	push   %rbp
   140009fe3:	57                   	push   %rdi
   140009fe4:	56                   	push   %rsi
   140009fe5:	53                   	push   %rbx
   140009fe6:	48 83 ec 40          	sub    $0x40,%rsp
   140009fea:	31 c0                	xor    %eax,%eax
   140009fec:	48 89 cb             	mov    %rcx,%rbx
   140009fef:	48 85 c9             	test   %rcx,%rcx
   140009ff2:	66 89 44 24 3e       	mov    %ax,0x3e(%rsp)
   140009ff7:	48 8d 44 24 3e       	lea    0x3e(%rsp),%rax
   140009ffc:	4c 89 ce             	mov    %r9,%rsi
   140009fff:	48 0f 44 d8          	cmove  %rax,%rbx
   14000a003:	48 89 d7             	mov    %rdx,%rdi
   14000a006:	4c 89 c5             	mov    %r8,%rbp
   14000a009:	e8 c2 01 00 00       	call   14000a1d0 <___mb_cur_max_func>
   14000a00e:	41 89 c4             	mov    %eax,%r12d
   14000a011:	e8 b2 01 00 00       	call   14000a1c8 <___lc_codepage_func>
   14000a016:	48 85 f6             	test   %rsi,%rsi
   14000a019:	44 89 64 24 28       	mov    %r12d,0x28(%rsp)
   14000a01e:	49 89 e8             	mov    %rbp,%r8
   14000a021:	89 44 24 20          	mov    %eax,0x20(%rsp)
   14000a025:	4c 8d 0d ec 6b 00 00 	lea    0x6bec(%rip),%r9        # 140010c18 <internal_mbstate.2>
   14000a02c:	48 89 fa             	mov    %rdi,%rdx
   14000a02f:	48 89 d9             	mov    %rbx,%rcx
   14000a032:	4c 0f 45 ce          	cmovne %rsi,%r9
   14000a036:	e8 45 fe ff ff       	call   140009e80 <__mbrtowc_cp>
   14000a03b:	48 98                	cltq
   14000a03d:	48 83 c4 40          	add    $0x40,%rsp
   14000a041:	5b                   	pop    %rbx
   14000a042:	5e                   	pop    %rsi
   14000a043:	5f                   	pop    %rdi
   14000a044:	5d                   	pop    %rbp
   14000a045:	41 5c                	pop    %r12
   14000a047:	c3                   	ret
   14000a048:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000a04f:	00 

000000014000a050 <mbsrtowcs>:
   14000a050:	41 56                	push   %r14
   14000a052:	41 55                	push   %r13
   14000a054:	41 54                	push   %r12
   14000a056:	55                   	push   %rbp
   14000a057:	57                   	push   %rdi
   14000a058:	56                   	push   %rsi
   14000a059:	53                   	push   %rbx
   14000a05a:	48 83 ec 40          	sub    $0x40,%rsp
   14000a05e:	48 8d 05 af 6b 00 00 	lea    0x6baf(%rip),%rax        # 140010c14 <internal_mbstate.1>
   14000a065:	4c 89 ce             	mov    %r9,%rsi
   14000a068:	4d 85 c9             	test   %r9,%r9
   14000a06b:	49 89 ce             	mov    %rcx,%r14
   14000a06e:	48 89 d3             	mov    %rdx,%rbx
   14000a071:	48 0f 44 f0          	cmove  %rax,%rsi
   14000a075:	4c 89 c7             	mov    %r8,%rdi
   14000a078:	e8 4b 01 00 00       	call   14000a1c8 <___lc_codepage_func>
   14000a07d:	41 89 c4             	mov    %eax,%r12d
   14000a080:	e8 4b 01 00 00       	call   14000a1d0 <___mb_cur_max_func>
   14000a085:	89 c5                	mov    %eax,%ebp
   14000a087:	48 85 db             	test   %rbx,%rbx
   14000a08a:	0f 84 c0 00 00 00    	je     14000a150 <mbsrtowcs+0x100>
   14000a090:	48 8b 13             	mov    (%rbx),%rdx
   14000a093:	48 85 d2             	test   %rdx,%rdx
   14000a096:	0f 84 b4 00 00 00    	je     14000a150 <mbsrtowcs+0x100>
   14000a09c:	4d 85 f6             	test   %r14,%r14
   14000a09f:	74 6f                	je     14000a110 <mbsrtowcs+0xc0>
   14000a0a1:	45 31 ed             	xor    %r13d,%r13d
   14000a0a4:	48 85 ff             	test   %rdi,%rdi
   14000a0a7:	75 1e                	jne    14000a0c7 <mbsrtowcs+0x77>
   14000a0a9:	eb 4a                	jmp    14000a0f5 <mbsrtowcs+0xa5>
   14000a0ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   14000a0b0:	48 8b 13             	mov    (%rbx),%rdx
   14000a0b3:	48 98                	cltq
   14000a0b5:	49 83 c6 02          	add    $0x2,%r14
   14000a0b9:	49 01 c5             	add    %rax,%r13
   14000a0bc:	48 01 c2             	add    %rax,%rdx
   14000a0bf:	48 89 13             	mov    %rdx,(%rbx)
   14000a0c2:	49 39 fd             	cmp    %rdi,%r13
   14000a0c5:	73 2e                	jae    14000a0f5 <mbsrtowcs+0xa5>
   14000a0c7:	89 6c 24 28          	mov    %ebp,0x28(%rsp)
   14000a0cb:	49 89 f8             	mov    %rdi,%r8
   14000a0ce:	49 89 f1             	mov    %rsi,%r9
   14000a0d1:	4c 89 f1             	mov    %r14,%rcx
   14000a0d4:	44 89 64 24 20       	mov    %r12d,0x20(%rsp)
   14000a0d9:	4d 29 e8             	sub    %r13,%r8
   14000a0dc:	e8 9f fd ff ff       	call   140009e80 <__mbrtowc_cp>
   14000a0e1:	85 c0                	test   %eax,%eax
   14000a0e3:	7f cb                	jg     14000a0b0 <mbsrtowcs+0x60>
   14000a0e5:	49 39 fd             	cmp    %rdi,%r13
   14000a0e8:	73 0b                	jae    14000a0f5 <mbsrtowcs+0xa5>
   14000a0ea:	85 c0                	test   %eax,%eax
   14000a0ec:	75 07                	jne    14000a0f5 <mbsrtowcs+0xa5>
   14000a0ee:	48 c7 03 00 00 00 00 	movq   $0x0,(%rbx)
   14000a0f5:	4c 89 e8             	mov    %r13,%rax
   14000a0f8:	48 83 c4 40          	add    $0x40,%rsp
   14000a0fc:	5b                   	pop    %rbx
   14000a0fd:	5e                   	pop    %rsi
   14000a0fe:	5f                   	pop    %rdi
   14000a0ff:	5d                   	pop    %rbp
   14000a100:	41 5c                	pop    %r12
   14000a102:	41 5d                	pop    %r13
   14000a104:	41 5e                	pop    %r14
   14000a106:	c3                   	ret
   14000a107:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000a10e:	00 00 
   14000a110:	31 c0                	xor    %eax,%eax
   14000a112:	41 89 ee             	mov    %ebp,%r14d
   14000a115:	48 8d 7c 24 3e       	lea    0x3e(%rsp),%rdi
   14000a11a:	45 31 ed             	xor    %r13d,%r13d
   14000a11d:	66 89 44 24 3e       	mov    %ax,0x3e(%rsp)
   14000a122:	eb 0c                	jmp    14000a130 <mbsrtowcs+0xe0>
   14000a124:	0f 1f 40 00          	nopl   0x0(%rax)
   14000a128:	48 98                	cltq
   14000a12a:	48 8b 13             	mov    (%rbx),%rdx
   14000a12d:	49 01 c5             	add    %rax,%r13
   14000a130:	89 6c 24 28          	mov    %ebp,0x28(%rsp)
   14000a134:	4c 01 ea             	add    %r13,%rdx
   14000a137:	49 89 f1             	mov    %rsi,%r9
   14000a13a:	4d 89 f0             	mov    %r14,%r8
   14000a13d:	44 89 64 24 20       	mov    %r12d,0x20(%rsp)
   14000a142:	48 89 f9             	mov    %rdi,%rcx
   14000a145:	e8 36 fd ff ff       	call   140009e80 <__mbrtowc_cp>
   14000a14a:	85 c0                	test   %eax,%eax
   14000a14c:	7f da                	jg     14000a128 <mbsrtowcs+0xd8>
   14000a14e:	eb a5                	jmp    14000a0f5 <mbsrtowcs+0xa5>
   14000a150:	45 31 ed             	xor    %r13d,%r13d
   14000a153:	eb a0                	jmp    14000a0f5 <mbsrtowcs+0xa5>
   14000a155:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000a15c:	00 00 00 00 

000000014000a160 <mbrlen>:
   14000a160:	55                   	push   %rbp
   14000a161:	57                   	push   %rdi
   14000a162:	56                   	push   %rsi
   14000a163:	53                   	push   %rbx
   14000a164:	48 83 ec 48          	sub    $0x48,%rsp
   14000a168:	31 c0                	xor    %eax,%eax
   14000a16a:	48 89 ce             	mov    %rcx,%rsi
   14000a16d:	48 89 d7             	mov    %rdx,%rdi
   14000a170:	4c 89 c3             	mov    %r8,%rbx
   14000a173:	66 89 44 24 3e       	mov    %ax,0x3e(%rsp)
   14000a178:	e8 53 00 00 00       	call   14000a1d0 <___mb_cur_max_func>
   14000a17d:	89 c5                	mov    %eax,%ebp
   14000a17f:	e8 44 00 00 00       	call   14000a1c8 <___lc_codepage_func>
   14000a184:	48 85 db             	test   %rbx,%rbx
   14000a187:	89 6c 24 28          	mov    %ebp,0x28(%rsp)
   14000a18b:	49 89 f8             	mov    %rdi,%r8
   14000a18e:	48 8d 15 7b 6a 00 00 	lea    0x6a7b(%rip),%rdx        # 140010c10 <s_mbstate.0>
   14000a195:	89 44 24 20          	mov    %eax,0x20(%rsp)
   14000a199:	48 8d 4c 24 3e       	lea    0x3e(%rsp),%rcx
   14000a19e:	48 0f 44 da          	cmove  %rdx,%rbx
   14000a1a2:	48 89 f2             	mov    %rsi,%rdx
   14000a1a5:	49 89 d9             	mov    %rbx,%r9
   14000a1a8:	e8 d3 fc ff ff       	call   140009e80 <__mbrtowc_cp>
   14000a1ad:	48 98                	cltq
   14000a1af:	48 83 c4 48          	add    $0x48,%rsp
   14000a1b3:	5b                   	pop    %rbx
   14000a1b4:	5e                   	pop    %rsi
   14000a1b5:	5f                   	pop    %rdi
   14000a1b6:	5d                   	pop    %rbp
   14000a1b7:	c3                   	ret
   14000a1b8:	90                   	nop
   14000a1b9:	90                   	nop
   14000a1ba:	90                   	nop
   14000a1bb:	90                   	nop
   14000a1bc:	90                   	nop
   14000a1bd:	90                   	nop
   14000a1be:	90                   	nop
   14000a1bf:	90                   	nop

000000014000a1c0 <__C_specific_handler>:
   14000a1c0:	ff 25 da 71 00 00    	jmp    *0x71da(%rip)        # 1400113a0 <__imp___C_specific_handler>
   14000a1c6:	90                   	nop
   14000a1c7:	90                   	nop

000000014000a1c8 <___lc_codepage_func>:
   14000a1c8:	ff 25 da 71 00 00    	jmp    *0x71da(%rip)        # 1400113a8 <__imp____lc_codepage_func>
   14000a1ce:	90                   	nop
   14000a1cf:	90                   	nop

000000014000a1d0 <___mb_cur_max_func>:
   14000a1d0:	ff 25 da 71 00 00    	jmp    *0x71da(%rip)        # 1400113b0 <__imp____mb_cur_max_func>
   14000a1d6:	90                   	nop
   14000a1d7:	90                   	nop

000000014000a1d8 <__getmainargs>:
   14000a1d8:	ff 25 da 71 00 00    	jmp    *0x71da(%rip)        # 1400113b8 <__imp___getmainargs>
   14000a1de:	90                   	nop
   14000a1df:	90                   	nop

000000014000a1e0 <__iob_func>:
   14000a1e0:	ff 25 e2 71 00 00    	jmp    *0x71e2(%rip)        # 1400113c8 <__imp___iob_func>
   14000a1e6:	90                   	nop
   14000a1e7:	90                   	nop

000000014000a1e8 <__set_app_type>:
   14000a1e8:	ff 25 e2 71 00 00    	jmp    *0x71e2(%rip)        # 1400113d0 <__imp___set_app_type>
   14000a1ee:	90                   	nop
   14000a1ef:	90                   	nop

000000014000a1f0 <__setusermatherr>:
   14000a1f0:	ff 25 e2 71 00 00    	jmp    *0x71e2(%rip)        # 1400113d8 <__imp___setusermatherr>
   14000a1f6:	90                   	nop
   14000a1f7:	90                   	nop

000000014000a1f8 <_amsg_exit>:
   14000a1f8:	ff 25 e2 71 00 00    	jmp    *0x71e2(%rip)        # 1400113e0 <__imp__amsg_exit>
   14000a1fe:	90                   	nop
   14000a1ff:	90                   	nop

000000014000a200 <_cexit>:
   14000a200:	ff 25 e2 71 00 00    	jmp    *0x71e2(%rip)        # 1400113e8 <__imp__cexit>
   14000a206:	90                   	nop
   14000a207:	90                   	nop

000000014000a208 <_errno>:
   14000a208:	ff 25 ea 71 00 00    	jmp    *0x71ea(%rip)        # 1400113f8 <__imp__errno>
   14000a20e:	90                   	nop
   14000a20f:	90                   	nop

000000014000a210 <_initterm>:
   14000a210:	ff 25 f2 71 00 00    	jmp    *0x71f2(%rip)        # 140011408 <__imp__initterm>
   14000a216:	90                   	nop
   14000a217:	90                   	nop

000000014000a218 <_lock>:
   14000a218:	ff 25 f2 71 00 00    	jmp    *0x71f2(%rip)        # 140011410 <__imp__lock>
   14000a21e:	90                   	nop
   14000a21f:	90                   	nop

000000014000a220 <_onexit>:
   14000a220:	ff 25 f2 71 00 00    	jmp    *0x71f2(%rip)        # 140011418 <__imp__onexit>
   14000a226:	90                   	nop
   14000a227:	90                   	nop

000000014000a228 <_unlock>:
   14000a228:	ff 25 f2 71 00 00    	jmp    *0x71f2(%rip)        # 140011420 <__imp__unlock>
   14000a22e:	90                   	nop
   14000a22f:	90                   	nop

000000014000a230 <abort>:
   14000a230:	ff 25 f2 71 00 00    	jmp    *0x71f2(%rip)        # 140011428 <__imp_abort>
   14000a236:	90                   	nop
   14000a237:	90                   	nop

000000014000a238 <calloc>:
   14000a238:	ff 25 f2 71 00 00    	jmp    *0x71f2(%rip)        # 140011430 <__imp_calloc>
   14000a23e:	90                   	nop
   14000a23f:	90                   	nop

000000014000a240 <exit>:
   14000a240:	ff 25 f2 71 00 00    	jmp    *0x71f2(%rip)        # 140011438 <__imp_exit>
   14000a246:	90                   	nop
   14000a247:	90                   	nop

000000014000a248 <fprintf>:
   14000a248:	ff 25 f2 71 00 00    	jmp    *0x71f2(%rip)        # 140011440 <__imp_fprintf>
   14000a24e:	90                   	nop
   14000a24f:	90                   	nop

000000014000a250 <fputc>:
   14000a250:	ff 25 f2 71 00 00    	jmp    *0x71f2(%rip)        # 140011448 <__imp_fputc>
   14000a256:	90                   	nop
   14000a257:	90                   	nop

000000014000a258 <free>:
   14000a258:	ff 25 f2 71 00 00    	jmp    *0x71f2(%rip)        # 140011450 <__imp_free>
   14000a25e:	90                   	nop
   14000a25f:	90                   	nop

000000014000a260 <fwrite>:
   14000a260:	ff 25 f2 71 00 00    	jmp    *0x71f2(%rip)        # 140011458 <__imp_fwrite>
   14000a266:	90                   	nop
   14000a267:	90                   	nop

000000014000a268 <localeconv>:
   14000a268:	ff 25 f2 71 00 00    	jmp    *0x71f2(%rip)        # 140011460 <__imp_localeconv>
   14000a26e:	90                   	nop
   14000a26f:	90                   	nop

000000014000a270 <malloc>:
   14000a270:	ff 25 f2 71 00 00    	jmp    *0x71f2(%rip)        # 140011468 <__imp_malloc>
   14000a276:	90                   	nop
   14000a277:	90                   	nop

000000014000a278 <memcpy>:
   14000a278:	ff 25 f2 71 00 00    	jmp    *0x71f2(%rip)        # 140011470 <__imp_memcpy>
   14000a27e:	90                   	nop
   14000a27f:	90                   	nop

000000014000a280 <memmove>:
   14000a280:	ff 25 f2 71 00 00    	jmp    *0x71f2(%rip)        # 140011478 <__imp_memmove>
   14000a286:	90                   	nop
   14000a287:	90                   	nop

000000014000a288 <memset>:
   14000a288:	ff 25 f2 71 00 00    	jmp    *0x71f2(%rip)        # 140011480 <__imp_memset>
   14000a28e:	90                   	nop
   14000a28f:	90                   	nop

000000014000a290 <signal>:
   14000a290:	ff 25 f2 71 00 00    	jmp    *0x71f2(%rip)        # 140011488 <__imp_signal>
   14000a296:	90                   	nop
   14000a297:	90                   	nop

000000014000a298 <strerror>:
   14000a298:	ff 25 f2 71 00 00    	jmp    *0x71f2(%rip)        # 140011490 <__imp_strerror>
   14000a29e:	90                   	nop
   14000a29f:	90                   	nop

000000014000a2a0 <strlen>:
   14000a2a0:	ff 25 f2 71 00 00    	jmp    *0x71f2(%rip)        # 140011498 <__imp_strlen>
   14000a2a6:	90                   	nop
   14000a2a7:	90                   	nop

000000014000a2a8 <strncmp>:
   14000a2a8:	ff 25 f2 71 00 00    	jmp    *0x71f2(%rip)        # 1400114a0 <__imp_strncmp>
   14000a2ae:	90                   	nop
   14000a2af:	90                   	nop

000000014000a2b0 <vfprintf>:
   14000a2b0:	ff 25 f2 71 00 00    	jmp    *0x71f2(%rip)        # 1400114a8 <__imp_vfprintf>
   14000a2b6:	90                   	nop
   14000a2b7:	90                   	nop

000000014000a2b8 <wcslen>:
   14000a2b8:	ff 25 f2 71 00 00    	jmp    *0x71f2(%rip)        # 1400114b0 <__imp_wcslen>
   14000a2be:	90                   	nop
   14000a2bf:	90                   	nop

000000014000a2c0 <WideCharToMultiByte>:
   14000a2c0:	ff 25 ca 70 00 00    	jmp    *0x70ca(%rip)        # 140011390 <__imp_WideCharToMultiByte>
   14000a2c6:	90                   	nop
   14000a2c7:	90                   	nop

000000014000a2c8 <VirtualQuery>:
   14000a2c8:	ff 25 ba 70 00 00    	jmp    *0x70ba(%rip)        # 140011388 <__imp_VirtualQuery>
   14000a2ce:	90                   	nop
   14000a2cf:	90                   	nop

000000014000a2d0 <VirtualProtect>:
   14000a2d0:	ff 25 aa 70 00 00    	jmp    *0x70aa(%rip)        # 140011380 <__imp_VirtualProtect>
   14000a2d6:	90                   	nop
   14000a2d7:	90                   	nop

000000014000a2d8 <TlsGetValue>:
   14000a2d8:	ff 25 9a 70 00 00    	jmp    *0x709a(%rip)        # 140011378 <__imp_TlsGetValue>
   14000a2de:	90                   	nop
   14000a2df:	90                   	nop

000000014000a2e0 <Sleep>:
   14000a2e0:	ff 25 8a 70 00 00    	jmp    *0x708a(%rip)        # 140011370 <__imp_Sleep>
   14000a2e6:	90                   	nop
   14000a2e7:	90                   	nop

000000014000a2e8 <SetUnhandledExceptionFilter>:
   14000a2e8:	ff 25 7a 70 00 00    	jmp    *0x707a(%rip)        # 140011368 <__imp_SetUnhandledExceptionFilter>
   14000a2ee:	90                   	nop
   14000a2ef:	90                   	nop

000000014000a2f0 <MultiByteToWideChar>:
   14000a2f0:	ff 25 6a 70 00 00    	jmp    *0x706a(%rip)        # 140011360 <__imp_MultiByteToWideChar>
   14000a2f6:	90                   	nop
   14000a2f7:	90                   	nop

000000014000a2f8 <LeaveCriticalSection>:
   14000a2f8:	ff 25 5a 70 00 00    	jmp    *0x705a(%rip)        # 140011358 <__imp_LeaveCriticalSection>
   14000a2fe:	90                   	nop
   14000a2ff:	90                   	nop

000000014000a300 <IsDBCSLeadByteEx>:
   14000a300:	ff 25 4a 70 00 00    	jmp    *0x704a(%rip)        # 140011350 <__imp_IsDBCSLeadByteEx>
   14000a306:	90                   	nop
   14000a307:	90                   	nop

000000014000a308 <InitializeCriticalSection>:
   14000a308:	ff 25 3a 70 00 00    	jmp    *0x703a(%rip)        # 140011348 <__imp_InitializeCriticalSection>
   14000a30e:	90                   	nop
   14000a30f:	90                   	nop

000000014000a310 <GetLastError>:
   14000a310:	ff 25 2a 70 00 00    	jmp    *0x702a(%rip)        # 140011340 <__imp_GetLastError>
   14000a316:	90                   	nop
   14000a317:	90                   	nop

000000014000a318 <EnterCriticalSection>:
   14000a318:	ff 25 1a 70 00 00    	jmp    *0x701a(%rip)        # 140011338 <__imp_EnterCriticalSection>
   14000a31e:	90                   	nop
   14000a31f:	90                   	nop

000000014000a320 <DeleteCriticalSection>:
   14000a320:	ff 25 0a 70 00 00    	jmp    *0x700a(%rip)        # 140011330 <__imp_DeleteCriticalSection>
   14000a326:	90                   	nop
   14000a327:	90                   	nop
   14000a328:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000a32f:	00 

000000014000a330 <__cosl_internal>:
   14000a330:	db 2a                	fldt   (%rdx)
   14000a332:	d9 ff                	fcos
   14000a334:	df e0                	fnstsw %ax
   14000a336:	a9 00 04 00 00       	test   $0x400,%eax
   14000a33b:	74 15                	je     14000a352 <__cosl_internal+0x22>
   14000a33d:	d9 eb                	fldpi
   14000a33f:	d8 c0                	fadd   %st(0),%st
   14000a341:	d9 c9                	fxch   %st(1)
   14000a343:	d9 f5                	fprem1
   14000a345:	df e0                	fnstsw %ax
   14000a347:	a9 00 04 00 00       	test   $0x400,%eax
   14000a34c:	75 f5                	jne    14000a343 <__cosl_internal+0x13>
   14000a34e:	dd d9                	fstp   %st(1)
   14000a350:	d9 ff                	fcos
   14000a352:	48 89 c8             	mov    %rcx,%rax
   14000a355:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
   14000a35c:	00 
   14000a35d:	db 39                	fstpt  (%rcx)
   14000a35f:	c3                   	ret

000000014000a360 <__sinl_internal>:
   14000a360:	db 2a                	fldt   (%rdx)
   14000a362:	d9 fe                	fsin
   14000a364:	df e0                	fnstsw %ax
   14000a366:	a9 00 04 00 00       	test   $0x400,%eax
   14000a36b:	75 0e                	jne    14000a37b <__sinl_internal+0x1b>
   14000a36d:	48 89 c8             	mov    %rcx,%rax
   14000a370:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
   14000a377:	00 
   14000a378:	db 39                	fstpt  (%rcx)
   14000a37a:	c3                   	ret
   14000a37b:	d9 eb                	fldpi
   14000a37d:	d8 c0                	fadd   %st(0),%st
   14000a37f:	d9 c9                	fxch   %st(1)
   14000a381:	d9 f5                	fprem1
   14000a383:	df e0                	fnstsw %ax
   14000a385:	a9 00 04 00 00       	test   $0x400,%eax
   14000a38a:	75 f5                	jne    14000a381 <__sinl_internal+0x21>
   14000a38c:	dd d9                	fstp   %st(1)
   14000a38e:	d9 fe                	fsin
   14000a390:	48 89 c8             	mov    %rcx,%rax
   14000a393:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
   14000a39a:	00 
   14000a39b:	db 39                	fstpt  (%rcx)
   14000a39d:	c3                   	ret
   14000a39e:	90                   	nop
   14000a39f:	90                   	nop

000000014000a3a0 <_ZN4GridC1Ev>:
   14000a3a0:	55                   	push   %rbp
   14000a3a1:	48 89 e5             	mov    %rsp,%rbp
   14000a3a4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a3a8:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a3ac:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
   14000a3b3:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a3b7:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
   14000a3be:	90                   	nop
   14000a3bf:	5d                   	pop    %rbp
   14000a3c0:	c3                   	ret
   14000a3c1:	90                   	nop
   14000a3c2:	90                   	nop
   14000a3c3:	90                   	nop
   14000a3c4:	90                   	nop
   14000a3c5:	90                   	nop
   14000a3c6:	90                   	nop
   14000a3c7:	90                   	nop
   14000a3c8:	90                   	nop
   14000a3c9:	90                   	nop
   14000a3ca:	90                   	nop
   14000a3cb:	90                   	nop
   14000a3cc:	90                   	nop
   14000a3cd:	90                   	nop
   14000a3ce:	90                   	nop
   14000a3cf:	90                   	nop

000000014000a3d0 <_ZNKSt16initializer_listIiE3endEv>:
   14000a3d0:	55                   	push   %rbp
   14000a3d1:	53                   	push   %rbx
   14000a3d2:	48 83 ec 28          	sub    $0x28,%rsp
   14000a3d6:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   14000a3db:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   14000a3df:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000a3e3:	48 89 c1             	mov    %rax,%rcx
   14000a3e6:	e8 45 00 00 00       	call   14000a430 <_ZNKSt16initializer_listIiE5beginEv>
   14000a3eb:	48 89 c3             	mov    %rax,%rbx
   14000a3ee:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000a3f2:	48 89 c1             	mov    %rax,%rcx
   14000a3f5:	e8 16 00 00 00       	call   14000a410 <_ZNKSt16initializer_listIiE4sizeEv>
   14000a3fa:	48 c1 e0 02          	shl    $0x2,%rax
   14000a3fe:	48 01 d8             	add    %rbx,%rax
   14000a401:	48 83 c4 28          	add    $0x28,%rsp
   14000a405:	5b                   	pop    %rbx
   14000a406:	5d                   	pop    %rbp
   14000a407:	c3                   	ret
   14000a408:	90                   	nop
   14000a409:	90                   	nop
   14000a40a:	90                   	nop
   14000a40b:	90                   	nop
   14000a40c:	90                   	nop
   14000a40d:	90                   	nop
   14000a40e:	90                   	nop
   14000a40f:	90                   	nop

000000014000a410 <_ZNKSt16initializer_listIiE4sizeEv>:
   14000a410:	55                   	push   %rbp
   14000a411:	48 89 e5             	mov    %rsp,%rbp
   14000a414:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a418:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a41c:	48 8b 40 08          	mov    0x8(%rax),%rax
   14000a420:	5d                   	pop    %rbp
   14000a421:	c3                   	ret
   14000a422:	90                   	nop
   14000a423:	90                   	nop
   14000a424:	90                   	nop
   14000a425:	90                   	nop
   14000a426:	90                   	nop
   14000a427:	90                   	nop
   14000a428:	90                   	nop
   14000a429:	90                   	nop
   14000a42a:	90                   	nop
   14000a42b:	90                   	nop
   14000a42c:	90                   	nop
   14000a42d:	90                   	nop
   14000a42e:	90                   	nop
   14000a42f:	90                   	nop

000000014000a430 <_ZNKSt16initializer_listIiE5beginEv>:
   14000a430:	55                   	push   %rbp
   14000a431:	48 89 e5             	mov    %rsp,%rbp
   14000a434:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a438:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a43c:	48 8b 00             	mov    (%rax),%rax
   14000a43f:	5d                   	pop    %rbp
   14000a440:	c3                   	ret
   14000a441:	90                   	nop
   14000a442:	90                   	nop
   14000a443:	90                   	nop
   14000a444:	90                   	nop
   14000a445:	90                   	nop
   14000a446:	90                   	nop
   14000a447:	90                   	nop
   14000a448:	90                   	nop
   14000a449:	90                   	nop
   14000a44a:	90                   	nop
   14000a44b:	90                   	nop
   14000a44c:	90                   	nop
   14000a44d:	90                   	nop
   14000a44e:	90                   	nop
   14000a44f:	90                   	nop

000000014000a450 <_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv>:
   14000a450:	55                   	push   %rbp
   14000a451:	48 89 e5             	mov    %rsp,%rbp
   14000a454:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a458:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a45c:	48 8b 00             	mov    (%rax),%rax
   14000a45f:	5d                   	pop    %rbp
   14000a460:	c3                   	ret
   14000a461:	90                   	nop
   14000a462:	90                   	nop
   14000a463:	90                   	nop
   14000a464:	90                   	nop
   14000a465:	90                   	nop
   14000a466:	90                   	nop
   14000a467:	90                   	nop
   14000a468:	90                   	nop
   14000a469:	90                   	nop
   14000a46a:	90                   	nop
   14000a46b:	90                   	nop
   14000a46c:	90                   	nop
   14000a46d:	90                   	nop
   14000a46e:	90                   	nop
   14000a46f:	90                   	nop

000000014000a470 <_ZNKSt6chrono8durationIfSt5ratioILx1ELx1EEE5countEv>:
   14000a470:	55                   	push   %rbp
   14000a471:	48 89 e5             	mov    %rsp,%rbp
   14000a474:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a478:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a47c:	f3 0f 10 00          	movss  (%rax),%xmm0
   14000a480:	5d                   	pop    %rbp
   14000a481:	c3                   	ret
   14000a482:	90                   	nop
   14000a483:	90                   	nop
   14000a484:	90                   	nop
   14000a485:	90                   	nop
   14000a486:	90                   	nop
   14000a487:	90                   	nop
   14000a488:	90                   	nop
   14000a489:	90                   	nop
   14000a48a:	90                   	nop
   14000a48b:	90                   	nop
   14000a48c:	90                   	nop
   14000a48d:	90                   	nop
   14000a48e:	90                   	nop
   14000a48f:	90                   	nop

000000014000a490 <_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv>:
   14000a490:	55                   	push   %rbp
   14000a491:	48 89 e5             	mov    %rsp,%rbp
   14000a494:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a498:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a49c:	48 8b 00             	mov    (%rax),%rax
   14000a49f:	5d                   	pop    %rbp
   14000a4a0:	c3                   	ret
   14000a4a1:	90                   	nop
   14000a4a2:	90                   	nop
   14000a4a3:	90                   	nop
   14000a4a4:	90                   	nop
   14000a4a5:	90                   	nop
   14000a4a6:	90                   	nop
   14000a4a7:	90                   	nop
   14000a4a8:	90                   	nop
   14000a4a9:	90                   	nop
   14000a4aa:	90                   	nop
   14000a4ab:	90                   	nop
   14000a4ac:	90                   	nop
   14000a4ad:	90                   	nop
   14000a4ae:	90                   	nop
   14000a4af:	90                   	nop

000000014000a4b0 <_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiKiEEvPT_PT0_>:
   14000a4b0:	55                   	push   %rbp
   14000a4b1:	48 89 e5             	mov    %rsp,%rbp
   14000a4b4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a4b8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000a4bc:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000a4c0:	8b 10                	mov    (%rax),%edx
   14000a4c2:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a4c6:	89 10                	mov    %edx,(%rax)
   14000a4c8:	90                   	nop
   14000a4c9:	5d                   	pop    %rbp
   14000a4ca:	c3                   	ret
   14000a4cb:	90                   	nop
   14000a4cc:	90                   	nop
   14000a4cd:	90                   	nop
   14000a4ce:	90                   	nop
   14000a4cf:	90                   	nop

000000014000a4d0 <_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_>:
   14000a4d0:	55                   	push   %rbp
   14000a4d1:	48 89 e5             	mov    %rsp,%rbp
   14000a4d4:	48 83 ec 30          	sub    $0x30,%rsp
   14000a4d8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a4dc:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000a4e0:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   14000a4e4:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000a4e8:	48 2b 45 10          	sub    0x10(%rbp),%rax
   14000a4ec:	48 c1 f8 02          	sar    $0x2,%rax
   14000a4f0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   14000a4f4:	48 83 7d f8 01       	cmpq   $0x1,-0x8(%rbp)
   14000a4f9:	0f 9f c0             	setg   %al
   14000a4fc:	0f b6 c0             	movzbl %al,%eax
   14000a4ff:	85 c0                	test   %eax,%eax
   14000a501:	74 21                	je     14000a524 <_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_+0x54>
   14000a503:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000a507:	48 8d 0c 85 00 00 00 	lea    0x0(,%rax,4),%rcx
   14000a50e:	00 
   14000a50f:	48 8b 55 10          	mov    0x10(%rbp),%rdx
   14000a513:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000a517:	49 89 c8             	mov    %rcx,%r8
   14000a51a:	48 89 c1             	mov    %rax,%rcx
   14000a51d:	e8 5e fd ff ff       	call   14000a280 <memmove>
   14000a522:	eb 17                	jmp    14000a53b <_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_+0x6b>
   14000a524:	48 83 7d f8 01       	cmpq   $0x1,-0x8(%rbp)
   14000a529:	75 10                	jne    14000a53b <_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_+0x6b>
   14000a52b:	48 8b 55 10          	mov    0x10(%rbp),%rdx
   14000a52f:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000a533:	48 89 c1             	mov    %rax,%rcx
   14000a536:	e8 75 ff ff ff       	call   14000a4b0 <_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiKiEEvPT_PT0_>
   14000a53b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000a53f:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   14000a546:	00 
   14000a547:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000a54b:	48 01 d0             	add    %rdx,%rax
   14000a54e:	48 83 c4 30          	add    $0x30,%rsp
   14000a552:	5d                   	pop    %rbp
   14000a553:	c3                   	ret
   14000a554:	90                   	nop
   14000a555:	90                   	nop
   14000a556:	90                   	nop
   14000a557:	90                   	nop
   14000a558:	90                   	nop
   14000a559:	90                   	nop
   14000a55a:	90                   	nop
   14000a55b:	90                   	nop
   14000a55c:	90                   	nop
   14000a55d:	90                   	nop
   14000a55e:	90                   	nop
   14000a55f:	90                   	nop

000000014000a560 <_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_>:
   14000a560:	55                   	push   %rbp
   14000a561:	48 89 e5             	mov    %rsp,%rbp
   14000a564:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a568:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000a56c:	90                   	nop
   14000a56d:	5d                   	pop    %rbp
   14000a56e:	c3                   	ret
   14000a56f:	90                   	nop

000000014000a570 <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEy>:
   14000a570:	55                   	push   %rbp
   14000a571:	48 89 e5             	mov    %rsp,%rbp
   14000a574:	48 83 ec 30          	sub    $0x30,%rsp
   14000a578:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a57c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000a580:	48 83 7d 18 00       	cmpq   $0x0,0x18(%rbp)
   14000a585:	74 29                	je     14000a5b0 <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEy+0x40>
   14000a587:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a58b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   14000a58f:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000a593:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   14000a597:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
   14000a59b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000a59f:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   14000a5a5:	48 89 c1             	mov    %rax,%rcx
   14000a5a8:	e8 03 02 00 00       	call   14000a7b0 <_ZNSt15__new_allocatorIiE8allocateEyPKv>
   14000a5ad:	90                   	nop
   14000a5ae:	eb 05                	jmp    14000a5b5 <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEy+0x45>
   14000a5b0:	b8 00 00 00 00       	mov    $0x0,%eax
   14000a5b5:	48 83 c4 30          	add    $0x30,%rsp
   14000a5b9:	5d                   	pop    %rbp
   14000a5ba:	c3                   	ret
   14000a5bb:	90                   	nop
   14000a5bc:	90                   	nop
   14000a5bd:	90                   	nop
   14000a5be:	90                   	nop
   14000a5bf:	90                   	nop

000000014000a5c0 <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_>:
   14000a5c0:	55                   	push   %rbp
   14000a5c1:	48 89 e5             	mov    %rsp,%rbp
   14000a5c4:	48 83 ec 40          	sub    $0x40,%rsp
   14000a5c8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a5cc:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000a5d0:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a5d4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   14000a5d8:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000a5dc:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   14000a5e0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000a5e4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   14000a5e8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000a5ec:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   14000a5f0:	90                   	nop
   14000a5f1:	90                   	nop
   14000a5f2:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a5f6:	48 89 c1             	mov    %rax,%rcx
   14000a5f9:	e8 a2 00 00 00       	call   14000a6a0 <_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev>
   14000a5fe:	90                   	nop
   14000a5ff:	48 83 c4 40          	add    $0x40,%rsp
   14000a603:	5d                   	pop    %rbp
   14000a604:	c3                   	ret
   14000a605:	90                   	nop
   14000a606:	90                   	nop
   14000a607:	90                   	nop
   14000a608:	90                   	nop
   14000a609:	90                   	nop
   14000a60a:	90                   	nop
   14000a60b:	90                   	nop
   14000a60c:	90                   	nop
   14000a60d:	90                   	nop
   14000a60e:	90                   	nop
   14000a60f:	90                   	nop

000000014000a610 <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev>:
   14000a610:	55                   	push   %rbp
   14000a611:	48 89 e5             	mov    %rsp,%rbp
   14000a614:	48 83 ec 30          	sub    $0x30,%rsp
   14000a618:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a61c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a620:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   14000a624:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000a628:	48 89 c1             	mov    %rax,%rcx
   14000a62b:	e8 f0 01 00 00       	call   14000a820 <_ZNSt15__new_allocatorIiED2Ev>
   14000a630:	90                   	nop
   14000a631:	90                   	nop
   14000a632:	48 83 c4 30          	add    $0x30,%rsp
   14000a636:	5d                   	pop    %rbp
   14000a637:	c3                   	ret
   14000a638:	90                   	nop
   14000a639:	90                   	nop
   14000a63a:	90                   	nop
   14000a63b:	90                   	nop
   14000a63c:	90                   	nop
   14000a63d:	90                   	nop
   14000a63e:	90                   	nop
   14000a63f:	90                   	nop

000000014000a640 <_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPiy>:
   14000a640:	55                   	push   %rbp
   14000a641:	48 89 e5             	mov    %rsp,%rbp
   14000a644:	48 83 ec 40          	sub    $0x40,%rsp
   14000a648:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a64c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000a650:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   14000a654:	48 83 7d 18 00       	cmpq   $0x0,0x18(%rbp)
   14000a659:	74 30                	je     14000a68b <_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPiy+0x4b>
   14000a65b:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a65f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   14000a663:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000a667:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   14000a66b:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000a66f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   14000a673:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
   14000a677:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
   14000a67b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000a67f:	49 89 c8             	mov    %rcx,%r8
   14000a682:	48 89 c1             	mov    %rax,%rcx
   14000a685:	e8 e6 00 00 00       	call   14000a770 <_ZNSt15__new_allocatorIiE10deallocateEPiy>
   14000a68a:	90                   	nop
   14000a68b:	90                   	nop
   14000a68c:	48 83 c4 40          	add    $0x40,%rsp
   14000a690:	5d                   	pop    %rbp
   14000a691:	c3                   	ret
   14000a692:	90                   	nop
   14000a693:	90                   	nop
   14000a694:	90                   	nop
   14000a695:	90                   	nop
   14000a696:	90                   	nop
   14000a697:	90                   	nop
   14000a698:	90                   	nop
   14000a699:	90                   	nop
   14000a69a:	90                   	nop
   14000a69b:	90                   	nop
   14000a69c:	90                   	nop
   14000a69d:	90                   	nop
   14000a69e:	90                   	nop
   14000a69f:	90                   	nop

000000014000a6a0 <_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev>:
   14000a6a0:	55                   	push   %rbp
   14000a6a1:	48 89 e5             	mov    %rsp,%rbp
   14000a6a4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a6a8:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a6ac:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   14000a6b3:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a6b7:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
   14000a6be:	00 
   14000a6bf:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a6c3:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
   14000a6ca:	00 
   14000a6cb:	90                   	nop
   14000a6cc:	5d                   	pop    %rbp
   14000a6cd:	c3                   	ret
   14000a6ce:	90                   	nop
   14000a6cf:	90                   	nop

000000014000a6d0 <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>:
   14000a6d0:	55                   	push   %rbp
   14000a6d1:	48 89 e5             	mov    %rsp,%rbp
   14000a6d4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a6d8:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a6dc:	5d                   	pop    %rbp
   14000a6dd:	c3                   	ret
   14000a6de:	90                   	nop
   14000a6df:	90                   	nop

000000014000a6e0 <_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_>:
   14000a6e0:	55                   	push   %rbp
   14000a6e1:	48 89 e5             	mov    %rsp,%rbp
   14000a6e4:	48 83 ec 20          	sub    $0x20,%rsp
   14000a6e8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a6ec:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000a6f0:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a6f4:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   14000a6f8:	48 89 c1             	mov    %rax,%rcx
   14000a6fb:	e8 c0 fe ff ff       	call   14000a5c0 <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_>
   14000a700:	90                   	nop
   14000a701:	48 83 c4 20          	add    $0x20,%rsp
   14000a705:	5d                   	pop    %rbp
   14000a706:	c3                   	ret
   14000a707:	90                   	nop
   14000a708:	90                   	nop
   14000a709:	90                   	nop
   14000a70a:	90                   	nop
   14000a70b:	90                   	nop
   14000a70c:	90                   	nop
   14000a70d:	90                   	nop
   14000a70e:	90                   	nop
   14000a70f:	90                   	nop

000000014000a710 <_ZNSt12_Vector_baseIiSaIiEED2Ev>:
   14000a710:	55                   	push   %rbp
   14000a711:	48 89 e5             	mov    %rsp,%rbp
   14000a714:	48 83 ec 20          	sub    $0x20,%rsp
   14000a718:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a71c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a720:	48 8b 50 10          	mov    0x10(%rax),%rdx
   14000a724:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a728:	48 8b 00             	mov    (%rax),%rax
   14000a72b:	48 29 c2             	sub    %rax,%rdx
   14000a72e:	48 89 d0             	mov    %rdx,%rax
   14000a731:	48 c1 f8 02          	sar    $0x2,%rax
   14000a735:	48 89 c1             	mov    %rax,%rcx
   14000a738:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a73c:	48 8b 10             	mov    (%rax),%rdx
   14000a73f:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a743:	49 89 c8             	mov    %rcx,%r8
   14000a746:	48 89 c1             	mov    %rax,%rcx
   14000a749:	e8 f2 fe ff ff       	call   14000a640 <_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPiy>
   14000a74e:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a752:	48 89 c1             	mov    %rax,%rcx
   14000a755:	e8 b6 fe ff ff       	call   14000a610 <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev>
   14000a75a:	90                   	nop
   14000a75b:	48 83 c4 20          	add    $0x20,%rsp
   14000a75f:	5d                   	pop    %rbp
   14000a760:	c3                   	ret
   14000a761:	90                   	nop
   14000a762:	90                   	nop
   14000a763:	90                   	nop
   14000a764:	90                   	nop
   14000a765:	90                   	nop
   14000a766:	90                   	nop
   14000a767:	90                   	nop
   14000a768:	90                   	nop
   14000a769:	90                   	nop
   14000a76a:	90                   	nop
   14000a76b:	90                   	nop
   14000a76c:	90                   	nop
   14000a76d:	90                   	nop
   14000a76e:	90                   	nop
   14000a76f:	90                   	nop

000000014000a770 <_ZNSt15__new_allocatorIiE10deallocateEPiy>:
   14000a770:	55                   	push   %rbp
   14000a771:	48 89 e5             	mov    %rsp,%rbp
   14000a774:	48 83 ec 20          	sub    $0x20,%rsp
   14000a778:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a77c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000a780:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   14000a784:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000a788:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   14000a78f:	00 
   14000a790:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000a794:	48 89 c1             	mov    %rax,%rcx
   14000a797:	e8 a4 a0 ff ff       	call   140004840 <_ZdlPvy>
   14000a79c:	90                   	nop
   14000a79d:	48 83 c4 20          	add    $0x20,%rsp
   14000a7a1:	5d                   	pop    %rbp
   14000a7a2:	c3                   	ret
   14000a7a3:	90                   	nop
   14000a7a4:	90                   	nop
   14000a7a5:	90                   	nop
   14000a7a6:	90                   	nop
   14000a7a7:	90                   	nop
   14000a7a8:	90                   	nop
   14000a7a9:	90                   	nop
   14000a7aa:	90                   	nop
   14000a7ab:	90                   	nop
   14000a7ac:	90                   	nop
   14000a7ad:	90                   	nop
   14000a7ae:	90                   	nop
   14000a7af:	90                   	nop

000000014000a7b0 <_ZNSt15__new_allocatorIiE8allocateEyPKv>:
   14000a7b0:	55                   	push   %rbp
   14000a7b1:	48 89 e5             	mov    %rsp,%rbp
   14000a7b4:	48 83 ec 30          	sub    $0x30,%rsp
   14000a7b8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a7bc:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000a7c0:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   14000a7c4:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a7c8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   14000a7cc:	48 b8 ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rax
   14000a7d3:	ff ff 1f 
   14000a7d6:	48 3b 45 18          	cmp    0x18(%rbp),%rax
   14000a7da:	0f 92 c0             	setb   %al
   14000a7dd:	0f b6 c0             	movzbl %al,%eax
   14000a7e0:	85 c0                	test   %eax,%eax
   14000a7e2:	0f 95 c0             	setne  %al
   14000a7e5:	84 c0                	test   %al,%al
   14000a7e7:	74 1a                	je     14000a803 <_ZNSt15__new_allocatorIiE8allocateEyPKv+0x53>
   14000a7e9:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
   14000a7f0:	ff ff 3f 
   14000a7f3:	48 3b 45 18          	cmp    0x18(%rbp),%rax
   14000a7f7:	73 05                	jae    14000a7fe <_ZNSt15__new_allocatorIiE8allocateEyPKv+0x4e>
   14000a7f9:	e8 6a a0 ff ff       	call   140004868 <_ZSt28__throw_bad_array_new_lengthv>
   14000a7fe:	e8 75 a0 ff ff       	call   140004878 <_ZSt17__throw_bad_allocv>
   14000a803:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000a807:	48 c1 e0 02          	shl    $0x2,%rax
   14000a80b:	48 89 c1             	mov    %rax,%rcx
   14000a80e:	e8 1d a0 ff ff       	call   140004830 <_Znwy>
   14000a813:	90                   	nop
   14000a814:	48 83 c4 30          	add    $0x30,%rsp
   14000a818:	5d                   	pop    %rbp
   14000a819:	c3                   	ret
   14000a81a:	90                   	nop
   14000a81b:	90                   	nop
   14000a81c:	90                   	nop
   14000a81d:	90                   	nop
   14000a81e:	90                   	nop
   14000a81f:	90                   	nop

000000014000a820 <_ZNSt15__new_allocatorIiED2Ev>:
   14000a820:	55                   	push   %rbp
   14000a821:	48 89 e5             	mov    %rsp,%rbp
   14000a824:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a828:	90                   	nop
   14000a829:	5d                   	pop    %rbp
   14000a82a:	c3                   	ret
   14000a82b:	90                   	nop
   14000a82c:	90                   	nop
   14000a82d:	90                   	nop
   14000a82e:	90                   	nop
   14000a82f:	90                   	nop

000000014000a830 <_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKiPiEET0_T_S6_S5_>:
   14000a830:	55                   	push   %rbp
   14000a831:	48 89 e5             	mov    %rsp,%rbp
   14000a834:	48 83 ec 20          	sub    $0x20,%rsp
   14000a838:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a83c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000a840:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   14000a844:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   14000a848:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   14000a84c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a850:	49 89 c8             	mov    %rcx,%r8
   14000a853:	48 89 c1             	mov    %rax,%rcx
   14000a856:	e8 d5 06 00 00       	call   14000af30 <_ZSt4copyIPKiPiET0_T_S4_S3_>
   14000a85b:	48 83 c4 20          	add    $0x20,%rsp
   14000a85f:	5d                   	pop    %rbp
   14000a860:	c3                   	ret
   14000a861:	90                   	nop
   14000a862:	90                   	nop
   14000a863:	90                   	nop
   14000a864:	90                   	nop
   14000a865:	90                   	nop
   14000a866:	90                   	nop
   14000a867:	90                   	nop
   14000a868:	90                   	nop
   14000a869:	90                   	nop
   14000a86a:	90                   	nop
   14000a86b:	90                   	nop
   14000a86c:	90                   	nop
   14000a86d:	90                   	nop
   14000a86e:	90                   	nop
   14000a86f:	90                   	nop

000000014000a870 <_ZNSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEEC1Ev>:
   14000a870:	55                   	push   %rbp
   14000a871:	53                   	push   %rbx
   14000a872:	48 83 ec 28          	sub    $0x28,%rsp
   14000a876:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   14000a87b:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   14000a87f:	48 8b 5d 20          	mov    0x20(%rbp),%rbx
   14000a883:	e8 18 01 00 00       	call   14000a9a0 <_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE4zeroEv>
   14000a888:	48 89 03             	mov    %rax,(%rbx)
   14000a88b:	90                   	nop
   14000a88c:	48 83 c4 28          	add    $0x28,%rsp
   14000a890:	5b                   	pop    %rbx
   14000a891:	5d                   	pop    %rbp
   14000a892:	c3                   	ret
   14000a893:	90                   	nop
   14000a894:	90                   	nop
   14000a895:	90                   	nop
   14000a896:	90                   	nop
   14000a897:	90                   	nop
   14000a898:	90                   	nop
   14000a899:	90                   	nop
   14000a89a:	90                   	nop
   14000a89b:	90                   	nop
   14000a89c:	90                   	nop
   14000a89d:	90                   	nop
   14000a89e:	90                   	nop
   14000a89f:	90                   	nop

000000014000a8a0 <_ZNSt6chrono13duration_castINS_8durationIfSt5ratioILx1ELx1EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE>:
   14000a8a0:	55                   	push   %rbp
   14000a8a1:	48 89 e5             	mov    %rsp,%rbp
   14000a8a4:	48 83 ec 20          	sub    $0x20,%rsp
   14000a8a8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a8ac:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a8b0:	48 89 c1             	mov    %rax,%rcx
   14000a8b3:	e8 18 00 00 00       	call   14000a8d0 <_ZNSt6chrono20__duration_cast_implINS_8durationIfSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEfLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE>
   14000a8b8:	48 83 c4 20          	add    $0x20,%rsp
   14000a8bc:	5d                   	pop    %rbp
   14000a8bd:	c3                   	ret
   14000a8be:	90                   	nop
   14000a8bf:	90                   	nop

000000014000a8c0 <_ZNSt6chrono15duration_valuesIxE4zeroEv>:
   14000a8c0:	55                   	push   %rbp
   14000a8c1:	48 89 e5             	mov    %rsp,%rbp
   14000a8c4:	b8 00 00 00 00       	mov    $0x0,%eax
   14000a8c9:	5d                   	pop    %rbp
   14000a8ca:	c3                   	ret
   14000a8cb:	90                   	nop
   14000a8cc:	90                   	nop
   14000a8cd:	90                   	nop
   14000a8ce:	90                   	nop
   14000a8cf:	90                   	nop

000000014000a8d0 <_ZNSt6chrono20__duration_cast_implINS_8durationIfSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEfLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE>:
   14000a8d0:	55                   	push   %rbp
   14000a8d1:	48 89 e5             	mov    %rsp,%rbp
   14000a8d4:	48 83 ec 30          	sub    $0x30,%rsp
   14000a8d8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a8dc:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a8e0:	48 89 c1             	mov    %rax,%rcx
   14000a8e3:	e8 a8 fb ff ff       	call   14000a490 <_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv>
   14000a8e8:	66 0f ef c0          	pxor   %xmm0,%xmm0
   14000a8ec:	f3 48 0f 2a c0       	cvtsi2ss %rax,%xmm0
   14000a8f1:	f3 0f 10 0d 43 18 00 	movss  0x1843(%rip),%xmm1        # 14000c13c <.rdata+0x1c>
   14000a8f8:	00 
   14000a8f9:	f3 0f 5e c1          	divss  %xmm1,%xmm0
   14000a8fd:	f3 0f 11 45 fc       	movss  %xmm0,-0x4(%rbp)
   14000a902:	48 8d 55 fc          	lea    -0x4(%rbp),%rdx
   14000a906:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   14000a90a:	48 89 c1             	mov    %rax,%rcx
   14000a90d:	e8 1e 00 00 00       	call   14000a930 <_ZNSt6chrono8durationIfSt5ratioILx1ELx1EEEC1IfvEERKT_>
   14000a912:	f3 0f 10 45 f8       	movss  -0x8(%rbp),%xmm0
   14000a917:	66 0f 7e c0          	movd   %xmm0,%eax
   14000a91b:	48 83 c4 30          	add    $0x30,%rsp
   14000a91f:	5d                   	pop    %rbp
   14000a920:	c3                   	ret
   14000a921:	90                   	nop
   14000a922:	90                   	nop
   14000a923:	90                   	nop
   14000a924:	90                   	nop
   14000a925:	90                   	nop
   14000a926:	90                   	nop
   14000a927:	90                   	nop
   14000a928:	90                   	nop
   14000a929:	90                   	nop
   14000a92a:	90                   	nop
   14000a92b:	90                   	nop
   14000a92c:	90                   	nop
   14000a92d:	90                   	nop
   14000a92e:	90                   	nop
   14000a92f:	90                   	nop

000000014000a930 <_ZNSt6chrono8durationIfSt5ratioILx1ELx1EEEC1IfvEERKT_>:
   14000a930:	55                   	push   %rbp
   14000a931:	48 89 e5             	mov    %rsp,%rbp
   14000a934:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a938:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000a93c:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000a940:	f3 0f 10 00          	movss  (%rax),%xmm0
   14000a944:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a948:	f3 0f 11 00          	movss  %xmm0,(%rax)
   14000a94c:	90                   	nop
   14000a94d:	5d                   	pop    %rbp
   14000a94e:	c3                   	ret
   14000a94f:	90                   	nop

000000014000a950 <_ZNSt6chrono8durationIfSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE>:
   14000a950:	55                   	push   %rbp
   14000a951:	48 89 e5             	mov    %rsp,%rbp
   14000a954:	48 83 ec 30          	sub    $0x30,%rsp
   14000a958:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a95c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000a960:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000a964:	48 89 c1             	mov    %rax,%rcx
   14000a967:	e8 34 ff ff ff       	call   14000a8a0 <_ZNSt6chrono13duration_castINS_8durationIfSt5ratioILx1ELx1EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE>
   14000a96c:	66 0f 6e c0          	movd   %eax,%xmm0
   14000a970:	f3 0f 11 45 fc       	movss  %xmm0,-0x4(%rbp)
   14000a975:	48 8d 45 fc          	lea    -0x4(%rbp),%rax
   14000a979:	48 89 c1             	mov    %rax,%rcx
   14000a97c:	e8 ef fa ff ff       	call   14000a470 <_ZNKSt6chrono8durationIfSt5ratioILx1ELx1EEE5countEv>
   14000a981:	66 0f 7e c0          	movd   %xmm0,%eax
   14000a985:	48 8b 55 10          	mov    0x10(%rbp),%rdx
   14000a989:	89 02                	mov    %eax,(%rdx)
   14000a98b:	90                   	nop
   14000a98c:	48 83 c4 30          	add    $0x30,%rsp
   14000a990:	5d                   	pop    %rbp
   14000a991:	c3                   	ret
   14000a992:	90                   	nop
   14000a993:	90                   	nop
   14000a994:	90                   	nop
   14000a995:	90                   	nop
   14000a996:	90                   	nop
   14000a997:	90                   	nop
   14000a998:	90                   	nop
   14000a999:	90                   	nop
   14000a99a:	90                   	nop
   14000a99b:	90                   	nop
   14000a99c:	90                   	nop
   14000a99d:	90                   	nop
   14000a99e:	90                   	nop
   14000a99f:	90                   	nop

000000014000a9a0 <_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE4zeroEv>:
   14000a9a0:	55                   	push   %rbp
   14000a9a1:	48 89 e5             	mov    %rsp,%rbp
   14000a9a4:	48 83 ec 30          	sub    $0x30,%rsp
   14000a9a8:	e8 13 ff ff ff       	call   14000a8c0 <_ZNSt6chrono15duration_valuesIxE4zeroEv>
   14000a9ad:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   14000a9b1:	48 8d 55 f8          	lea    -0x8(%rbp),%rdx
   14000a9b5:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
   14000a9b9:	48 89 c1             	mov    %rax,%rcx
   14000a9bc:	e8 0f 00 00 00       	call   14000a9d0 <_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC1IxvEERKT_>
   14000a9c1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000a9c5:	48 83 c4 30          	add    $0x30,%rsp
   14000a9c9:	5d                   	pop    %rbp
   14000a9ca:	c3                   	ret
   14000a9cb:	90                   	nop
   14000a9cc:	90                   	nop
   14000a9cd:	90                   	nop
   14000a9ce:	90                   	nop
   14000a9cf:	90                   	nop

000000014000a9d0 <_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC1IxvEERKT_>:
   14000a9d0:	55                   	push   %rbp
   14000a9d1:	48 89 e5             	mov    %rsp,%rbp
   14000a9d4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a9d8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000a9dc:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000a9e0:	48 8b 10             	mov    (%rax),%rdx
   14000a9e3:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000a9e7:	48 89 10             	mov    %rdx,(%rax)
   14000a9ea:	90                   	nop
   14000a9eb:	5d                   	pop    %rbp
   14000a9ec:	c3                   	ret
   14000a9ed:	90                   	nop
   14000a9ee:	90                   	nop
   14000a9ef:	90                   	nop

000000014000a9f0 <_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE>:
   14000a9f0:	55                   	push   %rbp
   14000a9f1:	48 89 e5             	mov    %rsp,%rbp
   14000a9f4:	48 83 ec 30          	sub    $0x30,%rsp
   14000a9f8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000a9fc:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000aa00:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000aa04:	48 89 c1             	mov    %rax,%rcx
   14000aa07:	e8 44 fa ff ff       	call   14000a450 <_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv>
   14000aa0c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   14000aa10:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000aa14:	48 89 c1             	mov    %rax,%rcx
   14000aa17:	e8 34 fa ff ff       	call   14000a450 <_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv>
   14000aa1c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   14000aa20:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
   14000aa24:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   14000aa28:	48 89 c1             	mov    %rax,%rcx
   14000aa2b:	e8 10 00 00 00       	call   14000aa40 <_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_>
   14000aa30:	48 83 c4 30          	add    $0x30,%rsp
   14000aa34:	5d                   	pop    %rbp
   14000aa35:	c3                   	ret
   14000aa36:	90                   	nop
   14000aa37:	90                   	nop
   14000aa38:	90                   	nop
   14000aa39:	90                   	nop
   14000aa3a:	90                   	nop
   14000aa3b:	90                   	nop
   14000aa3c:	90                   	nop
   14000aa3d:	90                   	nop
   14000aa3e:	90                   	nop
   14000aa3f:	90                   	nop

000000014000aa40 <_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_>:
   14000aa40:	55                   	push   %rbp
   14000aa41:	53                   	push   %rbx
   14000aa42:	48 83 ec 48          	sub    $0x48,%rsp
   14000aa46:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   14000aa4b:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   14000aa4f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   14000aa53:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000aa57:	48 8b 00             	mov    (%rax),%rax
   14000aa5a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   14000aa5e:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
   14000aa62:	48 89 c1             	mov    %rax,%rcx
   14000aa65:	e8 26 fa ff ff       	call   14000a490 <_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv>
   14000aa6a:	48 89 c3             	mov    %rax,%rbx
   14000aa6d:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000aa71:	48 8b 00             	mov    (%rax),%rax
   14000aa74:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   14000aa78:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   14000aa7c:	48 89 c1             	mov    %rax,%rcx
   14000aa7f:	e8 0c fa ff ff       	call   14000a490 <_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv>
   14000aa84:	48 29 c3             	sub    %rax,%rbx
   14000aa87:	48 89 da             	mov    %rbx,%rdx
   14000aa8a:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
   14000aa8e:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
   14000aa92:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   14000aa96:	48 89 c1             	mov    %rax,%rcx
   14000aa99:	e8 32 ff ff ff       	call   14000a9d0 <_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC1IxvEERKT_>
   14000aa9e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   14000aaa2:	48 83 c4 48          	add    $0x48,%rsp
   14000aaa6:	5b                   	pop    %rbx
   14000aaa7:	5d                   	pop    %rbp
   14000aaa8:	c3                   	ret
   14000aaa9:	90                   	nop
   14000aaaa:	90                   	nop
   14000aaab:	90                   	nop
   14000aaac:	90                   	nop
   14000aaad:	90                   	nop
   14000aaae:	90                   	nop
   14000aaaf:	90                   	nop

000000014000aab0 <_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_>:
   14000aab0:	55                   	push   %rbp
   14000aab1:	48 89 e5             	mov    %rsp,%rbp
   14000aab4:	48 83 ec 50          	sub    $0x50,%rsp
   14000aab8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000aabc:	48 b8 ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rax
   14000aac3:	ff ff 1f 
   14000aac6:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   14000aaca:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000aace:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   14000aad2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000aad6:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   14000aada:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000aade:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   14000aae2:	48 b8 ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rax
   14000aae9:	ff ff 1f 
   14000aaec:	90                   	nop
   14000aaed:	90                   	nop
   14000aaee:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   14000aaf2:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
   14000aaf6:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   14000aafa:	48 89 c1             	mov    %rax,%rcx
   14000aafd:	e8 fe 03 00 00       	call   14000af00 <_ZSt3minIyERKT_S2_S2_>
   14000ab02:	48 8b 00             	mov    (%rax),%rax
   14000ab05:	48 83 c4 50          	add    $0x50,%rsp
   14000ab09:	5d                   	pop    %rbp
   14000ab0a:	c3                   	ret
   14000ab0b:	90                   	nop
   14000ab0c:	90                   	nop
   14000ab0d:	90                   	nop
   14000ab0e:	90                   	nop
   14000ab0f:	90                   	nop

000000014000ab10 <_ZNSt6vectorIiSaIiEE17_S_check_init_lenEyRKS0_>:
   14000ab10:	55                   	push   %rbp
   14000ab11:	53                   	push   %rbx
   14000ab12:	48 83 ec 48          	sub    $0x48,%rsp
   14000ab16:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   14000ab1b:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   14000ab1f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   14000ab23:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000ab27:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   14000ab2b:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
   14000ab2f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   14000ab33:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000ab37:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   14000ab3b:	90                   	nop
   14000ab3c:	90                   	nop
   14000ab3d:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
   14000ab41:	48 89 c1             	mov    %rax,%rcx
   14000ab44:	e8 67 ff ff ff       	call   14000aab0 <_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_>
   14000ab49:	48 3b 45 20          	cmp    0x20(%rbp),%rax
   14000ab4d:	0f 92 c3             	setb   %bl
   14000ab50:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
   14000ab54:	48 89 c1             	mov    %rax,%rcx
   14000ab57:	e8 c4 fc ff ff       	call   14000a820 <_ZNSt15__new_allocatorIiED2Ev>
   14000ab5c:	90                   	nop
   14000ab5d:	84 db                	test   %bl,%bl
   14000ab5f:	74 0f                	je     14000ab70 <_ZNSt6vectorIiSaIiEE17_S_check_init_lenEyRKS0_+0x60>
   14000ab61:	48 8d 05 e0 14 00 00 	lea    0x14e0(%rip),%rax        # 14000c048 <.rdata+0x48>
   14000ab68:	48 89 c1             	mov    %rax,%rcx
   14000ab6b:	e8 00 9d ff ff       	call   140004870 <_ZSt20__throw_length_errorPKc>
   14000ab70:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000ab74:	48 83 c4 48          	add    $0x48,%rsp
   14000ab78:	5b                   	pop    %rbx
   14000ab79:	5d                   	pop    %rbp
   14000ab7a:	c3                   	ret
   14000ab7b:	90                   	nop
   14000ab7c:	90                   	nop
   14000ab7d:	90                   	nop
   14000ab7e:	90                   	nop
   14000ab7f:	90                   	nop

000000014000ab80 <_ZNSt6vectorIiSaIiEE19_M_range_initializeIPKiEEvT_S5_St20forward_iterator_tag>:
   14000ab80:	55                   	push   %rbp
   14000ab81:	53                   	push   %rbx
   14000ab82:	48 83 ec 58          	sub    $0x58,%rsp
   14000ab86:	48 8d 6c 24 50       	lea    0x50(%rsp),%rbp
   14000ab8b:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   14000ab8f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   14000ab93:	4c 89 45 30          	mov    %r8,0x30(%rbp)
   14000ab97:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000ab9b:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   14000ab9f:	48 8b 45 30          	mov    0x30(%rbp),%rax
   14000aba3:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   14000aba7:	90                   	nop
   14000aba8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   14000abac:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   14000abb0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000abb4:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   14000abb8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   14000abbc:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
   14000abc0:	48 c1 f8 02          	sar    $0x2,%rax
   14000abc4:	90                   	nop
   14000abc5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   14000abc9:	48 8b 5d 20          	mov    0x20(%rbp),%rbx
   14000abcd:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000abd1:	48 89 c1             	mov    %rax,%rcx
   14000abd4:	e8 f7 fa ff ff       	call   14000a6d0 <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>
   14000abd9:	48 89 c2             	mov    %rax,%rdx
   14000abdc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000abe0:	48 89 c1             	mov    %rax,%rcx
   14000abe3:	e8 28 ff ff ff       	call   14000ab10 <_ZNSt6vectorIiSaIiEE17_S_check_init_lenEyRKS0_>
   14000abe8:	48 89 c2             	mov    %rax,%rdx
   14000abeb:	48 89 d9             	mov    %rbx,%rcx
   14000abee:	e8 7d f9 ff ff       	call   14000a570 <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEy>
   14000abf3:	48 8b 55 20          	mov    0x20(%rbp),%rdx
   14000abf7:	48 89 02             	mov    %rax,(%rdx)
   14000abfa:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000abfe:	48 8b 00             	mov    (%rax),%rax
   14000ac01:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
   14000ac05:	48 c1 e2 02          	shl    $0x2,%rdx
   14000ac09:	48 01 c2             	add    %rax,%rdx
   14000ac0c:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000ac10:	48 89 50 10          	mov    %rdx,0x10(%rax)
   14000ac14:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000ac18:	48 89 c1             	mov    %rax,%rcx
   14000ac1b:	e8 b0 fa ff ff       	call   14000a6d0 <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>
   14000ac20:	48 89 c1             	mov    %rax,%rcx
   14000ac23:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000ac27:	4c 8b 00             	mov    (%rax),%r8
   14000ac2a:	48 8b 55 30          	mov    0x30(%rbp),%rdx
   14000ac2e:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000ac32:	49 89 c9             	mov    %rcx,%r9
   14000ac35:	48 89 c1             	mov    %rax,%rcx
   14000ac38:	e8 83 02 00 00       	call   14000aec0 <_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E>
   14000ac3d:	48 8b 55 20          	mov    0x20(%rbp),%rdx
   14000ac41:	48 89 42 08          	mov    %rax,0x8(%rdx)
   14000ac45:	90                   	nop
   14000ac46:	48 83 c4 58          	add    $0x58,%rsp
   14000ac4a:	5b                   	pop    %rbx
   14000ac4b:	5d                   	pop    %rbp
   14000ac4c:	c3                   	ret
   14000ac4d:	90                   	nop
   14000ac4e:	90                   	nop
   14000ac4f:	90                   	nop

000000014000ac50 <_ZNSt6vectorIiSaIiEEC1ESt16initializer_listIiERKS0_>:
   14000ac50:	55                   	push   %rbp
   14000ac51:	56                   	push   %rsi
   14000ac52:	53                   	push   %rbx
   14000ac53:	48 83 ec 40          	sub    $0x40,%rsp
   14000ac57:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   14000ac5c:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   14000ac60:	48 89 d3             	mov    %rdx,%rbx
   14000ac63:	48 8b 03             	mov    (%rbx),%rax
   14000ac66:	48 8b 53 08          	mov    0x8(%rbx),%rdx
   14000ac6a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   14000ac6e:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
   14000ac72:	4c 89 45 30          	mov    %r8,0x30(%rbp)
   14000ac76:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000ac7a:	48 8b 55 30          	mov    0x30(%rbp),%rdx
   14000ac7e:	48 89 c1             	mov    %rax,%rcx
   14000ac81:	e8 5a fa ff ff       	call   14000a6e0 <_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_>
   14000ac86:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   14000ac8a:	48 89 c1             	mov    %rax,%rcx
   14000ac8d:	e8 3e f7 ff ff       	call   14000a3d0 <_ZNKSt16initializer_listIiE3endEv>
   14000ac92:	48 89 c3             	mov    %rax,%rbx
   14000ac95:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   14000ac99:	48 89 c1             	mov    %rax,%rcx
   14000ac9c:	e8 8f f7 ff ff       	call   14000a430 <_ZNKSt16initializer_listIiE5beginEv>
   14000aca1:	48 89 c2             	mov    %rax,%rdx
   14000aca4:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000aca8:	41 89 f1             	mov    %esi,%r9d
   14000acab:	49 89 d8             	mov    %rbx,%r8
   14000acae:	48 89 c1             	mov    %rax,%rcx
   14000acb1:	e8 ca fe ff ff       	call   14000ab80 <_ZNSt6vectorIiSaIiEE19_M_range_initializeIPKiEEvT_S5_St20forward_iterator_tag>
   14000acb6:	eb 1b                	jmp    14000acd3 <_ZNSt6vectorIiSaIiEEC1ESt16initializer_listIiERKS0_+0x83>
   14000acb8:	48 89 c3             	mov    %rax,%rbx
   14000acbb:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000acbf:	48 89 c1             	mov    %rax,%rcx
   14000acc2:	e8 49 fa ff ff       	call   14000a710 <_ZNSt12_Vector_baseIiSaIiEED2Ev>
   14000acc7:	48 89 d8             	mov    %rbx,%rax
   14000acca:	48 89 c1             	mov    %rax,%rcx
   14000accd:	e8 ce 9b ff ff       	call   1400048a0 <_Unwind_Resume>
   14000acd2:	90                   	nop
   14000acd3:	48 83 c4 40          	add    $0x40,%rsp
   14000acd7:	5b                   	pop    %rbx
   14000acd8:	5e                   	pop    %rsi
   14000acd9:	5d                   	pop    %rbp
   14000acda:	c3                   	ret
   14000acdb:	90                   	nop
   14000acdc:	90                   	nop
   14000acdd:	90                   	nop
   14000acde:	90                   	nop
   14000acdf:	90                   	nop

000000014000ace0 <_ZNSt6vectorIiSaIiEED1Ev>:
   14000ace0:	55                   	push   %rbp
   14000ace1:	48 89 e5             	mov    %rsp,%rbp
   14000ace4:	48 83 ec 40          	sub    $0x40,%rsp
   14000ace8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000acec:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000acf0:	48 89 c1             	mov    %rax,%rcx
   14000acf3:	e8 d8 f9 ff ff       	call   14000a6d0 <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>
   14000acf8:	48 8b 55 10          	mov    0x10(%rbp),%rdx
   14000acfc:	48 8b 52 08          	mov    0x8(%rdx),%rdx
   14000ad00:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   14000ad04:	48 8b 09             	mov    (%rcx),%rcx
   14000ad07:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
   14000ad0b:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   14000ad0f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   14000ad13:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
   14000ad17:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000ad1b:	48 89 c1             	mov    %rax,%rcx
   14000ad1e:	e8 5d 02 00 00       	call   14000af80 <_ZSt8_DestroyIPiEvT_S1_>
   14000ad23:	90                   	nop
   14000ad24:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000ad28:	48 89 c1             	mov    %rax,%rcx
   14000ad2b:	e8 e0 f9 ff ff       	call   14000a710 <_ZNSt12_Vector_baseIiSaIiEED2Ev>
   14000ad30:	90                   	nop
   14000ad31:	48 83 c4 40          	add    $0x40,%rsp
   14000ad35:	5d                   	pop    %rbp
   14000ad36:	c3                   	ret
   14000ad37:	90                   	nop
   14000ad38:	90                   	nop
   14000ad39:	90                   	nop
   14000ad3a:	90                   	nop
   14000ad3b:	90                   	nop
   14000ad3c:	90                   	nop
   14000ad3d:	90                   	nop
   14000ad3e:	90                   	nop
   14000ad3f:	90                   	nop

000000014000ad40 <_ZSt12__miter_baseIPKiET_S2_>:
   14000ad40:	55                   	push   %rbp
   14000ad41:	48 89 e5             	mov    %rsp,%rbp
   14000ad44:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000ad48:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000ad4c:	5d                   	pop    %rbp
   14000ad4d:	c3                   	ret
   14000ad4e:	90                   	nop
   14000ad4f:	90                   	nop

000000014000ad50 <_ZSt12__niter_baseIPKiET_S2_>:
   14000ad50:	55                   	push   %rbp
   14000ad51:	48 89 e5             	mov    %rsp,%rbp
   14000ad54:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000ad58:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000ad5c:	5d                   	pop    %rbp
   14000ad5d:	c3                   	ret
   14000ad5e:	90                   	nop
   14000ad5f:	90                   	nop

000000014000ad60 <_ZSt12__niter_baseIPiET_S1_>:
   14000ad60:	55                   	push   %rbp
   14000ad61:	48 89 e5             	mov    %rsp,%rbp
   14000ad64:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000ad68:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000ad6c:	5d                   	pop    %rbp
   14000ad6d:	c3                   	ret
   14000ad6e:	90                   	nop
   14000ad6f:	90                   	nop

000000014000ad70 <_ZSt12__niter_wrapIPiET_RKS1_S1_>:
   14000ad70:	55                   	push   %rbp
   14000ad71:	48 89 e5             	mov    %rsp,%rbp
   14000ad74:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000ad78:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000ad7c:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000ad80:	5d                   	pop    %rbp
   14000ad81:	c3                   	ret
   14000ad82:	90                   	nop
   14000ad83:	90                   	nop
   14000ad84:	90                   	nop
   14000ad85:	90                   	nop
   14000ad86:	90                   	nop
   14000ad87:	90                   	nop
   14000ad88:	90                   	nop
   14000ad89:	90                   	nop
   14000ad8a:	90                   	nop
   14000ad8b:	90                   	nop
   14000ad8c:	90                   	nop
   14000ad8d:	90                   	nop
   14000ad8e:	90                   	nop
   14000ad8f:	90                   	nop

000000014000ad90 <_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_>:
   14000ad90:	55                   	push   %rbp
   14000ad91:	56                   	push   %rsi
   14000ad92:	53                   	push   %rbx
   14000ad93:	48 83 ec 20          	sub    $0x20,%rsp
   14000ad97:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   14000ad9c:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   14000ada0:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   14000ada4:	4c 89 45 30          	mov    %r8,0x30(%rbp)
   14000ada8:	48 8b 45 30          	mov    0x30(%rbp),%rax
   14000adac:	48 89 c1             	mov    %rax,%rcx
   14000adaf:	e8 ac ff ff ff       	call   14000ad60 <_ZSt12__niter_baseIPiET_S1_>
   14000adb4:	48 89 c6             	mov    %rax,%rsi
   14000adb7:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000adbb:	48 89 c1             	mov    %rax,%rcx
   14000adbe:	e8 8d ff ff ff       	call   14000ad50 <_ZSt12__niter_baseIPKiET_S2_>
   14000adc3:	48 89 c3             	mov    %rax,%rbx
   14000adc6:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000adca:	48 89 c1             	mov    %rax,%rcx
   14000adcd:	e8 7e ff ff ff       	call   14000ad50 <_ZSt12__niter_baseIPKiET_S2_>
   14000add2:	49 89 f0             	mov    %rsi,%r8
   14000add5:	48 89 da             	mov    %rbx,%rdx
   14000add8:	48 89 c1             	mov    %rax,%rcx
   14000addb:	e8 20 00 00 00       	call   14000ae00 <_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_>
   14000ade0:	48 89 c2             	mov    %rax,%rdx
   14000ade3:	48 8d 45 30          	lea    0x30(%rbp),%rax
   14000ade7:	48 89 c1             	mov    %rax,%rcx
   14000adea:	e8 81 ff ff ff       	call   14000ad70 <_ZSt12__niter_wrapIPiET_RKS1_S1_>
   14000adef:	48 83 c4 20          	add    $0x20,%rsp
   14000adf3:	5b                   	pop    %rbx
   14000adf4:	5e                   	pop    %rsi
   14000adf5:	5d                   	pop    %rbp
   14000adf6:	c3                   	ret
   14000adf7:	90                   	nop
   14000adf8:	90                   	nop
   14000adf9:	90                   	nop
   14000adfa:	90                   	nop
   14000adfb:	90                   	nop
   14000adfc:	90                   	nop
   14000adfd:	90                   	nop
   14000adfe:	90                   	nop
   14000adff:	90                   	nop

000000014000ae00 <_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_>:
   14000ae00:	55                   	push   %rbp
   14000ae01:	48 89 e5             	mov    %rsp,%rbp
   14000ae04:	48 83 ec 20          	sub    $0x20,%rsp
   14000ae08:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000ae0c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000ae10:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   14000ae14:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   14000ae18:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   14000ae1c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000ae20:	49 89 c8             	mov    %rcx,%r8
   14000ae23:	48 89 c1             	mov    %rax,%rcx
   14000ae26:	e8 15 00 00 00       	call   14000ae40 <_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_>
   14000ae2b:	48 83 c4 20          	add    $0x20,%rsp
   14000ae2f:	5d                   	pop    %rbp
   14000ae30:	c3                   	ret
   14000ae31:	90                   	nop
   14000ae32:	90                   	nop
   14000ae33:	90                   	nop
   14000ae34:	90                   	nop
   14000ae35:	90                   	nop
   14000ae36:	90                   	nop
   14000ae37:	90                   	nop
   14000ae38:	90                   	nop
   14000ae39:	90                   	nop
   14000ae3a:	90                   	nop
   14000ae3b:	90                   	nop
   14000ae3c:	90                   	nop
   14000ae3d:	90                   	nop
   14000ae3e:	90                   	nop
   14000ae3f:	90                   	nop

000000014000ae40 <_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_>:
   14000ae40:	55                   	push   %rbp
   14000ae41:	48 89 e5             	mov    %rsp,%rbp
   14000ae44:	48 83 ec 20          	sub    $0x20,%rsp
   14000ae48:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000ae4c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000ae50:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   14000ae54:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   14000ae58:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   14000ae5c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000ae60:	49 89 c8             	mov    %rcx,%r8
   14000ae63:	48 89 c1             	mov    %rax,%rcx
   14000ae66:	e8 65 f6 ff ff       	call   14000a4d0 <_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_>
   14000ae6b:	48 83 c4 20          	add    $0x20,%rsp
   14000ae6f:	5d                   	pop    %rbp
   14000ae70:	c3                   	ret
   14000ae71:	90                   	nop
   14000ae72:	90                   	nop
   14000ae73:	90                   	nop
   14000ae74:	90                   	nop
   14000ae75:	90                   	nop
   14000ae76:	90                   	nop
   14000ae77:	90                   	nop
   14000ae78:	90                   	nop
   14000ae79:	90                   	nop
   14000ae7a:	90                   	nop
   14000ae7b:	90                   	nop
   14000ae7c:	90                   	nop
   14000ae7d:	90                   	nop
   14000ae7e:	90                   	nop
   14000ae7f:	90                   	nop

000000014000ae80 <_ZSt18uninitialized_copyIPKiPiET0_T_S4_S3_>:
   14000ae80:	55                   	push   %rbp
   14000ae81:	48 89 e5             	mov    %rsp,%rbp
   14000ae84:	48 83 ec 30          	sub    $0x30,%rsp
   14000ae88:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000ae8c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000ae90:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   14000ae94:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
   14000ae98:	c6 45 fe 01          	movb   $0x1,-0x2(%rbp)
   14000ae9c:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   14000aea0:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   14000aea4:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000aea8:	49 89 c8             	mov    %rcx,%r8
   14000aeab:	48 89 c1             	mov    %rax,%rcx
   14000aeae:	e8 7d f9 ff ff       	call   14000a830 <_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKiPiEET0_T_S6_S5_>
   14000aeb3:	48 83 c4 30          	add    $0x30,%rsp
   14000aeb7:	5d                   	pop    %rbp
   14000aeb8:	c3                   	ret
   14000aeb9:	90                   	nop
   14000aeba:	90                   	nop
   14000aebb:	90                   	nop
   14000aebc:	90                   	nop
   14000aebd:	90                   	nop
   14000aebe:	90                   	nop
   14000aebf:	90                   	nop

000000014000aec0 <_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E>:
   14000aec0:	55                   	push   %rbp
   14000aec1:	48 89 e5             	mov    %rsp,%rbp
   14000aec4:	48 83 ec 20          	sub    $0x20,%rsp
   14000aec8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000aecc:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000aed0:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   14000aed4:	4c 89 4d 28          	mov    %r9,0x28(%rbp)
   14000aed8:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   14000aedc:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   14000aee0:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000aee4:	49 89 c8             	mov    %rcx,%r8
   14000aee7:	48 89 c1             	mov    %rax,%rcx
   14000aeea:	e8 91 ff ff ff       	call   14000ae80 <_ZSt18uninitialized_copyIPKiPiET0_T_S4_S3_>
   14000aeef:	48 83 c4 20          	add    $0x20,%rsp
   14000aef3:	5d                   	pop    %rbp
   14000aef4:	c3                   	ret
   14000aef5:	90                   	nop
   14000aef6:	90                   	nop
   14000aef7:	90                   	nop
   14000aef8:	90                   	nop
   14000aef9:	90                   	nop
   14000aefa:	90                   	nop
   14000aefb:	90                   	nop
   14000aefc:	90                   	nop
   14000aefd:	90                   	nop
   14000aefe:	90                   	nop
   14000aeff:	90                   	nop

000000014000af00 <_ZSt3minIyERKT_S2_S2_>:
   14000af00:	55                   	push   %rbp
   14000af01:	48 89 e5             	mov    %rsp,%rbp
   14000af04:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000af08:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000af0c:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000af10:	48 8b 10             	mov    (%rax),%rdx
   14000af13:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000af17:	48 8b 00             	mov    (%rax),%rax
   14000af1a:	48 39 c2             	cmp    %rax,%rdx
   14000af1d:	73 06                	jae    14000af25 <_ZSt3minIyERKT_S2_S2_+0x25>
   14000af1f:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000af23:	eb 04                	jmp    14000af29 <_ZSt3minIyERKT_S2_S2_+0x29>
   14000af25:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000af29:	5d                   	pop    %rbp
   14000af2a:	c3                   	ret
   14000af2b:	90                   	nop
   14000af2c:	90                   	nop
   14000af2d:	90                   	nop
   14000af2e:	90                   	nop
   14000af2f:	90                   	nop

000000014000af30 <_ZSt4copyIPKiPiET0_T_S4_S3_>:
   14000af30:	55                   	push   %rbp
   14000af31:	53                   	push   %rbx
   14000af32:	48 83 ec 28          	sub    $0x28,%rsp
   14000af36:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   14000af3b:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   14000af3f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   14000af43:	4c 89 45 30          	mov    %r8,0x30(%rbp)
   14000af47:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000af4b:	48 89 c1             	mov    %rax,%rcx
   14000af4e:	e8 ed fd ff ff       	call   14000ad40 <_ZSt12__miter_baseIPKiET_S2_>
   14000af53:	48 89 c3             	mov    %rax,%rbx
   14000af56:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000af5a:	48 89 c1             	mov    %rax,%rcx
   14000af5d:	e8 de fd ff ff       	call   14000ad40 <_ZSt12__miter_baseIPKiET_S2_>
   14000af62:	48 8b 55 30          	mov    0x30(%rbp),%rdx
   14000af66:	49 89 d0             	mov    %rdx,%r8
   14000af69:	48 89 da             	mov    %rbx,%rdx
   14000af6c:	48 89 c1             	mov    %rax,%rcx
   14000af6f:	e8 1c fe ff ff       	call   14000ad90 <_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_>
   14000af74:	48 83 c4 28          	add    $0x28,%rsp
   14000af78:	5b                   	pop    %rbx
   14000af79:	5d                   	pop    %rbp
   14000af7a:	c3                   	ret
   14000af7b:	90                   	nop
   14000af7c:	90                   	nop
   14000af7d:	90                   	nop
   14000af7e:	90                   	nop
   14000af7f:	90                   	nop

000000014000af80 <_ZSt8_DestroyIPiEvT_S1_>:
   14000af80:	55                   	push   %rbp
   14000af81:	48 89 e5             	mov    %rsp,%rbp
   14000af84:	48 83 ec 20          	sub    $0x20,%rsp
   14000af88:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000af8c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000af90:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   14000af94:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000af98:	48 89 c1             	mov    %rax,%rcx
   14000af9b:	e8 c0 f5 ff ff       	call   14000a560 <_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_>
   14000afa0:	90                   	nop
   14000afa1:	48 83 c4 20          	add    $0x20,%rsp
   14000afa5:	5d                   	pop    %rbp
   14000afa6:	c3                   	ret
   14000afa7:	90                   	nop
   14000afa8:	90                   	nop
   14000afa9:	90                   	nop
   14000afaa:	90                   	nop
   14000afab:	90                   	nop
   14000afac:	90                   	nop
   14000afad:	90                   	nop
   14000afae:	90                   	nop
   14000afaf:	90                   	nop

000000014000afb0 <register_frame_ctor>:
   14000afb0:	e9 7b 64 ff ff       	jmp    140001430 <__gcc_register_frame>
   14000afb5:	90                   	nop
   14000afb6:	90                   	nop
   14000afb7:	90                   	nop
   14000afb8:	90                   	nop
   14000afb9:	90                   	nop
   14000afba:	90                   	nop
   14000afbb:	90                   	nop
   14000afbc:	90                   	nop
   14000afbd:	90                   	nop
   14000afbe:	90                   	nop
   14000afbf:	90                   	nop

000000014000afc0 <__CTOR_LIST__>:
   14000afc0:	ff                   	(bad)
   14000afc1:	ff                   	(bad)
   14000afc2:	ff                   	(bad)
   14000afc3:	ff                   	(bad)
   14000afc4:	ff                   	(bad)
   14000afc5:	ff                   	(bad)
   14000afc6:	ff                   	(bad)
   14000afc7:	ff                   	.byte 0xff

000000014000afc8 <.ctors.65535>:
   14000afc8:	b0 af                	mov    $0xaf,%al
   14000afca:	00 40 01             	add    %al,0x1(%rax)
	...

000000014000afd8 <__DTOR_LIST__>:
   14000afd8:	ff                   	(bad)
   14000afd9:	ff                   	(bad)
   14000afda:	ff                   	(bad)
   14000afdb:	ff                   	(bad)
   14000afdc:	ff                   	(bad)
   14000afdd:	ff                   	(bad)
   14000afde:	ff                   	(bad)
   14000afdf:	ff 00                	incl   (%rax)
   14000afe1:	00 00                	add    %al,(%rax)
   14000afe3:	00 00                	add    %al,(%rax)
   14000afe5:	00 00                	add    %al,(%rax)
	...
