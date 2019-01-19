@ECHO OFF
del mmx2_fr.sfc

copy mmx2_original.sfc mmx2_fr.sfc

Bin\bass -o mmx2_fr.sfc mmx2_fr.asm
