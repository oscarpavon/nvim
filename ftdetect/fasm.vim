au BufRead,BufNewFile *.s                setfiletype fasm
autocmd BufReadPre *.s let g:asmsyntax = "fasm"

au BufRead,BufNewFile *.asm                setfiletype fasm
autocmd BufReadPre *.asm let g:asmsyntax = "fasm"

au BufRead,BufNewFile *.inc                setfiletype fasm
autocmd BufReadPre *.inc let g:asmsyntax = "fasm"


