; This file is a part of CuteMouse source
; Here are messages in Slovak
; Translated by Henrich Fukna <henrich.fukna@kiwwi.sk>

E_option	db 5,0dh,0ah,'Chyba: Nezn�ma vo�ba',0dh,0ah
		db 'Nap��te /? do pr�kazov�ho riadku pre n�pove�',0dh,0ah,'$'
E_mousepresent	db 5,'Slu�ba my�i u� je pr�tomn�',0dh,0ah,'$'
E_notfound	db 5,'Chyba: zariadenie nen�jden�',0dh,0ah,'$'

E_nocute	db 1,'CuteMouse ovl�da� nie je nain�talovan�!',0dh,0ah,'$'
E_notunload	db 2,'Ovl�da� nemo�no odin�talova�: niektor� preru�enia s� zmenen�...',0dh,0ah,'$'
S_unloaded	db 0,'Ovl�da� �spe�ne odin�talovan�...',0dh,0ah,'$'

S_reset		db 'Rezidentn� �as� nastaven� na $'
S_installed	db 'In�talovan� na $'
S_atPS2		db 'porte PS/2$'
S_atCOM		db 'COM'
com_port	db ?,' ('
S_atIO		db '0000h/IRQ'
IRQno		db ?
S_in		db ') pre $'
S_inMSYS	db 'Mouse Systems m�d$'
S_inMS		db 'Microsoft m�d$'
S_inLT		db 'Logitech m�d$'
S_wheel		db ' (podpora kolieska)'
S_CRLF		db 0dh,0ah,'$'

Copyright	db 0dh,0ah,'CuteMouse v',CTMRELEASE,' [FreeDOS]',0dh,0ah,'$'
Syntax	db 0,'Mo�nosti:',0dh,0ah
	db '  /P	   - vyn�ti PS/2 m�d',0dh,0ah
	db '  /S[c[i]] - vyn�ti s�riov� m�d na COM porte c (c=1-4, predvolen� je COM1)',0dh,0ah
	db '	     s IRQ i (i=2-7, predvolen� je IRQ4 pre COM1/3 a IRQ3',0dh,0ah
	db '	     pre COM2/4)',0dh,0ah
;;+	db '  /Aia	   - vyn�ti s�riov� m�d na I/O adrese a (hexadecim�lne ��slo)',0dh,0ah
;;+	db '	     s IRQ i (i=2-7)',0dh,0ah
	db '  /Y	   - zak��e Mouse Systems',0dh,0ah
	db '  /V	   - opa�n� h�adanie: PS/2 po s�riov�ch my�iach',0dh,0ah
	db '  /3	   - vyn�ti 3-tla��tkov� m�d (pre Microsoft a PS/2 my�i)',0dh,0ah
	db '  /R[h[v]] - horizont�lne/vertik�lne rozl��enie (h,v=0-9; ch�baj�ca vo�ba R,',0dh,0ah
	db '	     �iadne argumenty alebo 0 ako argument po R znamen� automatick�',0dh,0ah
	db '	     rozl��enie, ch�baj�ci druh� argument znamen� rovnak� hodnotu',0dh,0ah
	db '	     ako pre prv� argument)',0dh,0ah
	db '  /L	   - m�d pre �av� ruku (prednastaven� pre prav� ruku)',0dh,0ah
	db '  /B	   - preru� vykon�vanie ak slu�ba my�i je u� pr�tomn�',0dh,0ah
	db '  /W	   - zabr�ni nahratiu TSR do UMB',0dh,0ah
	db '  /U	   - odin�taluje ovl�da�',0dh,0ah
	db '  /?	   - zobraz� n�vod na pou�itie',0dh,0ah,'$'
