syntax on
highlight ColorColumn ctermbg=white
filetype on
au BufNewFile,BufRead *.md set filetype=markdown

set tabstop=2
set shiftwidth=2
set expandtab
set ignorecase

:map <F3> <Esc>Go<Esc>o## dnia <C-R>=strftime("%Y-%m-%d")<CR> o godzinie <C-R>=strftime("%H.%M")<CR><CR><CR>

function s:MDSettings()
    " Stolen from: http://www.piware.de/2014/07/vim-config-for-markdownlatex-pandoc-editing/
    " adjust syntax highlighting for LaTeX parts
    "   inline formulas:
    syntax region Statement oneline matchgroup=Delimiter start="\$" end="\$"
    syntax region Statement oneline matchgroup=Delimiter start="\\(" end="\\)"
    syntax region Statement oneline matchgroup=Delimiter start="`" end="`"
    "   environments:
    syntax region Statement matchgroup=Delimiter start="\\begin{.*}" end="\\end{.*}" contains=Statement
    "   commands:
    syntax region Statement matchgroup=Delimiter start="{" end="}" contains=Statement
    "syntax region Statement matchgroup=Delimiter start="$$ " end=" $$" contains=Statement
    syntax region Statement matchgroup=Delimiter start="\$\$" end="\$\$" contains=Statement
endfunction

autocmd FileType markdown :call <SID>MDSettings()
autocmd BufWritePost /home/n3t/Dropbox/Docs/journal/journal.md call system("./gen.sh nopdf")
