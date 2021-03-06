
;
;/*	DOSASM.ASM	4/18/84 - 10/24/84	Lee Jay Lorenzen	*/
;/*	modified for MASM	    01/31/85	Tom Rolander		*/
;
;	modified for Large model    9/18/85     C. Shaw                 */
	INCLUDE LARGE.MAC
	DSEG
	EXTRN	DOS_AX:WORD, DOS_BX:WORD, DOS_CX:WORD, DOS_DX:WORD
	EXTRN	DOS_DS:WORD, DOS_ES:WORD, DOS_SI:WORD, DOS_DI:WORD
	EXTRN	DOS_ERR:WORD
	ENDDS

	PSEG
;
	PUBLIC	__DOS
;
savax	dw	0	       
savds	dw	0
savss	dw	0
savsp	dw	0
;
;
BEGIN	PROC	FAR
__DOS:
	push	bp
	mov	bp,sp
	push	es
	push	si
	push	di
	mov	ax,DOS_DI
	mov	di,ax
	mov	ax,DOS_SI
	mov	si,ax
	mov	ax,DOS_ES
	mov	es,ax
	mov	ax,DOS_AX
	mov	bx,DOS_BX
	mov	cx,DOS_CX
	mov	dx,DOS_DX
	mov	savax,ax
	push	ds
	mov	ax,DOS_DS
	mov	ds,ax
	mov	ax,savax
	int	21h
	mov	savax,ax
	mov	ax,ds
	mov	savds,ax
	pop	ds
	mov	ax,savax
	jc	d_error
	mov	DOS_ERR,0
	jmp	d_exit
d_error:
	mov	DOS_ERR,1
d_exit:
	mov	DOS_AX,ax
	mov	DOS_BX,bx
	mov	DOS_CX,cx
	mov	DOS_DX,dx
	mov	ax,savds
	mov	DOS_DS,ax
	mov	ax,es
	mov	DOS_ES,ax
	mov	ax,si
	mov	DOS_SI,ax
	mov	ax,di
	mov	DOS_DI,ax
	pop	di
	pop	si
	pop	es
	pop	bp
	ret
;
BEGIN	ENDP
	ENDPS

	end
