set nocompatible              " be iMproved, required
filetype off                  " required


set rtp+=~/.vim_runtime/my_plugins/ultisnips
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle'
Bundle 'SirVer/ultisnips'
Plugin 'tell-k/vim-autopep8'
" Plugin 'jiangmiao/auto-pairs'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tenfyzhong/CompleteParameter.vim'
Plugin 'jeaye/color_coded'


call vundle#end()            " required
filetype plugin indent on    " required


syntax enable
colorscheme solarized
let g:solarized_termcolors=256
let g:solarized_termtrans=1
if has('gui_running')
    set background=light
else
    set background=dark
endif
" if filereadable(expand("~/.vimrc_background"))
"     let base16colorspace=256
"     source ~/.vimrc_background
" endif


" python
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>



" YouCompleteMe
set completeopt-=preview

let g:ycm_global_ycm_extra_conf='~/.vim_runtime/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0

" let g:ycm_python_binary_path = '/usr/local/bin/python3'
let g:ycm_python_binary_path = 'python'


set conceallevel=2
set concealcursor=vin

" Complete options (disable preview scratch window, longest removed to aways show menu)
set completeopt=menu,menuone

" Limit popup menu height
set pumheight=20

let g:AutoPairs = {'[':']', '{':'}',"'":"'",'"':'"', '`':'`'}
inoremap <buffer><silent> ) <C-R>=AutoPairsInsert(')')<CR>


set rtp+=~/.vim_runtime/my_plugins/CompleteParameter

" SuperTab completion fall-back 
" let g:SuperTabDefaultCompletionType='<c-x><c-u><c-p>'

nmap <leader>g :YcmCompleter GoTo<CR>
" nmap <leader>d :YcmCompleter GoToDefinition<CR>


" set nu
set clipboard+=unnamed  " use the clipboards of vim and win
" set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard

map <C-c> "+y
vmap <C-x> "+c
vmap <C-v> <ESC>"+p
imap <C-v> <ESC>"+pa

inoremap <silent><expr> ( complete_parameter#pre_complete("()")
smap <c-j> <Plug>(complete_parameter#goto_next_parameter)
imap <c-j> <Plug>(complete_parameter#goto_next_parameter)
smap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
imap <c-k> <Plug>(complete_parameter#goto_previous_parameter)



" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-l>"
" let g:UltiSnipsListSnippets="<c-h>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

let g:UltiSnipsUsePythonVersion = 3

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"




" vim-multiply-cursor
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<s-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
