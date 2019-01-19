arch snes.cpu

map '�', '#'

// **********
// * Macros *
// **********
// seek converts SNES LoROM address to physical address
macro seek(variable offset) {
  origin ((offset & $7F0000) >> 1) | (offset & $7FFF)
  base offset
}

// Text Data
include "mmx2_text.inc"

if pc() > $27FFFF {
    error "Le texte dépasse de la banque. Veuillez déplacer la table de pointer plus haut dans la banque"
}