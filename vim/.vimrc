"CODE EN C AUTO INDENT
"set cindent
autocmd FileType c	setautoindent

"PAIRE AUTO FERMEE


"HIGHLIGHT COLONNE CURSEUR
set cursorcolumn
set statusline+=col:\%c,

"HIGHTLIGHT ESPACES EN TROP
match ErrorMsg '\ \ \+'

"HIGHTLIGHT WHITESPACE AVANT RETOUR A LA LIGNE
/\s\+$

"ARCHIVE DES FICHIERS DE SAUVEGARDE
set backupdir=~/.emacs/
