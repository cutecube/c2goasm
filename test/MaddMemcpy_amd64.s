//+build !noasm !appengine
// AUTO-GENERATED BY C2GOASM -- DO NOT EDIT

TEXT ·_MaddMemcpy(SB), 7, $0

	MOVQ arg1+0(FP), DI
	MOVQ arg2+8(FP), SI
	MOVQ arg3+16(FP), DX
	MOVQ arg4+24(FP), CX
	MOVQ arg5+32(FP), R8
	MOVQ arg6+40(FP), R9
	SUBQ $8, SP
	WORD $0x894d; BYTE $0xce       // mov    r14, r9
	WORD $0x8945; BYTE $0xc7       // mov    r15d, r8d
	WORD $0x8949; BYTE $0xd4       // mov    r12, rdx
	WORD $0x8949; BYTE $0xf5       // mov    r13, rsi
	WORD $0x8948; BYTE $0xfb       // mov    rbx, rdi
	WORD $0x6348; BYTE $0xd1       // movsxd    rdx, ecx
	WORD $0x894c; BYTE $0xef       // mov    rdi, r13
	WORD $0x8948; BYTE $0xde       // mov    rsi, rbx
	CALL clib·_memcpy(SB)
	WORD $0x6349; BYTE $0xd7       // movsxd    rdx, r15d
	WORD $0x894c; BYTE $0xe7       // mov    rdi, r12
	WORD $0x8948; BYTE $0xde       // mov    rsi, rbx
	CALL clib·_memcpy(SB)
	LONG $0x0310fcc5               // vmovups    ymm0, [rbx]
	LONG $0x107cc1c4; WORD $0x004d // vmovups    ymm1, [r13]
	LONG $0xa87dc2c4; WORD $0x240c // vfmadd213ps    ymm1, ymm0, [r12]
	LONG $0x117cc1c4; BYTE $0x0e   // vmovups    [r14], ymm1
	ADDQ $8, SP
	VZEROUPPER
	RET
