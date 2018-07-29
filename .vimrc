call plug#begin('~/.vim/plugged')

" Matherial theme
Plug 'kristijanhusak/vim-hybrid-material'

" Vin Airline
Plug 'vim-airline/vim-airline'

" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

call plug#end()

" Set theme vim-hybrid-material
set background=dark
colorscheme hybrid_material

" Key binding fot NERDTreeToggle
let g:NetrwIsOpen=0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i 
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction

noremap <silent> <F2> :call ToggleNetrw()<CR>
