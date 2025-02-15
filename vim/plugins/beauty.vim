" 色彩方案 {{{1
let g:everforest_background = 'soft'
Plug 'sainnhe/everforest'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

Plug 'ryanoasis/vim-devicons'  " => 图标     {{{2

Plug 'vim-airline/vim-airline' " => 状态栏   {{{2
  Plug 'vim-airline/vim-airline-themes'
  " 只有一个tab时 显示buffers
  let g:airline#extensions#tabline#enabled = 1
  " 标题显示 最简的(包+文件名)
  let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

Plug 'mhinz/vim-startify'      " => 启动页面 {{{2
  let g:startify_custom_header = ['']
  let g:startify_lists= [
        \ {'type': 'commands' }, 
        \ {'type': 'files',     'header': [' MRU'],            },
        \ {'type': 'sessions',  'header':[]},
        \ {'type': 'bookmarks', 'header': [' Bookmarks']       },
    \ ]
  let g:startify_files_number = 9
  let g:startify_commands = [
        \ {'n': ['new Typed buffer: 输入文件类型',
        \        'enew | execute "set filetype=".input("filetype=")']},
        \ {'p': ['new Pasted buffer: 粘贴剪切板内容', 
        \        'enew | execute "normal i\<S-Insert>\<Esc>"']},
        \ {'v': ['open Vimrc: '.substitute($MYVIMRC, '\\', '/', 'g'),
        \        'e '.$MYVIMRC]}
    \ ]
