" for general settings
:set number "enable numbered lines
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=6
:set mouse=a "enable mouse usage
:set mousefocus

" plugins
call plug#begin()

	Plug 'https://github.com/vim-airline/vim-airline' "better status bar
	Plug 'https://github.com/preservim/nerdtree' "adds a file manager
	Plug 'https://github.com/ryanoasis/vim-devicons' "icons for the package manager
	Plug 'https://github.com/tc50cal/vim-terminal' "adds a built in terminal
	Plug 'https://github.com/neoclide/coc.nvim' "adds autocomplition tool, moduals need to be installed for each language

call plug#end()




"****keybindings and shortcuts*****

"file manager shortcuts
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
"window navigation
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
"for resizing windows
:map - <C-W>-
:map + <C-W>+
:map <M-<> <C-W><
:map <M->> <C-W>>
"launch terminal
:nnoremap <A-t> :TerminalSplit bash<CR>
:nnoremap <A-r> :TerminalVSplit bash<CR>


"file manager(NERDTree) startup
function! StartUp()

    if 0 == argc()
        NERDTree ~youther-mobile
    else
        if argv(0) == '.'
            execute 'NERDTree' getcwd()
        else
            execute 'NERDTree' getcwd() . '/' . argv(0)
        endif
    endif
endfunction

autocmd VimEnter * call StartUp()
autocmd VimEnter * wincmd p

