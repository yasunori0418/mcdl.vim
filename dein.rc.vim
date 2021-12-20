"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif


" dein directory {{{
let s:dein_dir = getcwd() .. '/dein/'
let s:dein_repo = s:dein_dir .. 'repos/github.com/Shougo/dein.vim'
" }}}

" dein installation check {{{
if &runtimepath !~# '/dein.vim'
    if !isdirectory(s:dein_repo)
        execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo
    endif
    execute 'set runtimepath^=' . s:dein_repo
endif
" }}}

let g:dein#install_progress_type = 'title'

" Begin settings {{{
" Load plugins management of toml type.
if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

    " Definition of management toml directory.
    let s:toml_dir = getcwd() .. '/toml/'
    let s:dein_toml = s:toml_dir .. 'dein.toml'
    let s:lazy_toml = s:toml_dir .. 'lazy.toml'

    " Load toml and cache.
    call dein#load_toml(s:dein_toml, {'lazy': 0})
    call dein#load_toml(s:lazy_toml, {'lazy': 1})

    " end settings
    call dein#end()
    call dein#save_state()
endif
" }}}

" Plugin installation check {{{
if dein#check_install()
    call dein#install()
endif
" }}}

" Required:
filetype plugin indent on
syntax enable


"End dein Scripts-------------------------
