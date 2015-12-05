"CODE EN C AUTO INDENT
"set cindent
autocmd FileType c	setautoindent

"PAIRE AUTO FERMEE


"HIGHLIGHT COLONNE CURSEUR
set cursorcolumn

"HIGHTLIGHT ESPACES EN TROP
match ErrorMsg '\ \ \+'

"HIGHTLIGHT WHITESPACE AVANT RETOUR A LA LIGNE
match ErrorMsg '\s\+$'
