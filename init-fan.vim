let g:email = "942558046@qq.com"
map <F12> :source ~/.vimrc<CR>

" #################### vim-plug for neovim ####################
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs 
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" #################### vim-plug for vim ####################
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



call plug#begin('~/.vim/bundle')

Plug 'junegunn/vim-plug'                                        " 插件管理
Plug 'preservim/nerdtree'                                       " 标签树
Plug 'ryanoasis/vim-devicons'                                   " 标签树美化
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'                  " 标签树美化
Plug 'markstory/vim-zoomwin'                                    " Zoomwin
Plug 'vim-scripts/taglist.vim'                                  " TagList
Plug 'vim-airline/vim-airline'                                  " 状态栏
Plug 'vim-airline/vim-airline-themes'                           " 状态栏主题
Plug 'preservim/nerdcommenter'                                  " 注释
Plug 'Yggdroot/indentLine'                                      " 缩进线
Plug 'jiangmiao/auto-pairs'                                     " 括号匹配
Plug 'kien/rainbow_parentheses.vim'                             " 彩虹括号
Plug 'aperezdc/vim-template'                                    " 模板
Plug 'airblade/vim-gitgutter'                                   " git diff
Plug 'tpope/vim-fugitive'                                       " git command
Plug 'jelera/vim-javascript-syntax'                             " js 高亮
Plug 'neoclide/coc.nvim', {'branch': 'release'}                 " coc
Plug 'lilydjwg/fcitx.vim'                                       " 中文支持
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }  " 模糊查找

Plug 'skywind3000/asynctasks.vim'                               " Quickly Run
Plug 'skywind3000/asyncrun.vim'                                 " Base Quickly Run
Plug 'honza/vim-snippets'                                       " snippets

Plug 'lervag/vimtex'

Plug 'ianding1/leetcode.vim'                                    " leetcode刷题


call plug#end()


" #################### leetcode ####################
let g:leetcode_browser='chrome'
let g:leetcode_china=1
let g:leetcode_hide_paid_only=1



" #################### nerdtree ####################
" F2开启
map <leader>t :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
" 显示书签
let NERDTreeShowBookmarks=1
" 显示隐藏文件
let NERDTreeShowHidden=1
" 忽略类型
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '__pycache__']
" 窗宽
let NERDTreeWinSize=25



" #################### taglist ####################
let Tlist_Use_Right_Window = 1
let Tlist_File_Fold_Auto_Close = 1
map <leader>T :TlistToggle<CR>



" #################### airline ####################
" 顶栏
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline_theme = 'simple'



" #################### nerdcommenter ####################
" 注释号后添加空格
let g:NERDSpaceDelims = 1
" 多行注释使用紧凑语法
let g:NERDCompactSexyComs = 1
" 注释号在行最前而不是跟随缩进
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
"let g:NERDAltDelims_python = 1
" 允许注释空行
let g:NERDCommentEmptyLines = 1
" 取消注释时启用尾随空白的修剪
let g:NERDTrimTrailingWhitespace = 1
" 检查所有选定的行是否已经注释
let g:NERDToggleCheckAllLines = 1
map <F6> <leader>ci <CR>



" #################### indentLine ####################
" 缩进指示线
let g:indentLine_char='┆'
let g:indentLine_enabled = 1 
" let g:indentLine_setColors = 0


" #################### rainbow_parentheses ####################
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces



" #################### LeaderF ####################
" 搜索结果自下而上 
let g:Lf_ReverseOrder = 1 
" 查找function/method
nmap <Leader>m :LeaderfFunction<CR>



" #################### vim-gitgutter ####################
highlight link GitGutterChangeLine DiffText



" #################### vim-fugitive ####################



" #################### coc.nvim ####################
" Coc Extensions to Install
let g:coc_global_extensions=['coc-snippets', 'coc-tasks', 'coc-todolist', 'coc-word', 
            \                'coc-json', 'coc-sh', 'coc-python', 'coc-clangd', 'coc-go', 
            \                'coc-tsserver', 'coc-html', 'coc-emmet',
            \                'coc-texlab'
            \               ]
"
" tab触发补全
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" enter键自动选择候选第一
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" 代码审查上下文定位 :CocDiagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" 代码导航跳转
nmap <silent> <leader>d <Plug>(coc-definition)
nmap <silent> <leader>y <Plug>(coc-type-definition)
nmap <silent> <leader>i <Plug>(coc-implementation)
nmap <silent> <leader>r <Plug>(coc-references)

" K键打开预览查看文档
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" 高亮标识符及其引用 暂时无效。。。
autocmd CursorHold * silent call CocActionAsync('highlight')

" 标识符rename 暂时无效。。。
nmap <leader>rn <Plug>(coc-rename)

" 格式化选中代码
" xmap <F3>  <Plug>(coc-format-selected)
" nmap <F3>  <Plug>(coc-format-selected)

" 格式化当前buffer
" command! -nargs=0 Format :call CocAction('format')
noremap <leader>F :call CocAction('format')<CR>

" 选中代码快速修复
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" 当前文件问题自动修复
nmap <leader>ac  <Plug>(coc-codeaction)
" 当前行问题自动修复
nmap <leader>qf  <Plug>(coc-fix-current)

" 集成airline
let g:airline#extensions#coc#enabled = 1
let airline#extensions#coc#error_symbol = '✗'
let airline#extensions#coc#warning_symbol = '⚡'
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

let g:tex_flavor = "latex"
" #################### coc-snippets ####################


" #################### asynctasks ####################
let g:asyncrun_open = 6
let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg']
let g:asynctasks_term_pos = 'external'
nmap <Leader>g :AsyncTask file-run<CR>



" filetype high light
au BufRead,BufNewFile *.vue set filetype=html
au BufRead,BufNewFile *.htm set filetype=html



" 基础配置
syntax on                               " 语法高亮
set nocompatible                        " 不兼容vi
set number                              " 显示行号
set wrap                                " 是否折行
set whichwrap+=<,>,h,l                  " 开启自动折行
set hidden                              " 隐藏未保存buffer 
set showtabline=0                       " 隐藏顶栏
set foldenable                          " 启用折叠
set foldmethod=indent                   " 折叠设置
set foldlevelstart=99                   " 默认不折叠
set cindent                             " C样式缩进
set expandtab                           " 空格替换tab
set tabstop=4                           " tab长度
set shiftwidth=4                        " >>==<<
set fileformat=unix                     " unix保存
set fileencodings=ucs-bom,utf-8,cp936   " 探测编码
set fileencoding=utf-8                  " 文件编码
set encoding=utf-8                      " 内部编码
set backspace=2                         " 退格删除任意字符
set showmatch                           " 显示匹配括号
set matchtime=5                         " 配对时间单位0.1s
set scrolloff=5                         " 顶底5行
set ignorecase                          " 忽略大小写
set incsearch                           " 跳转首匹配
set hlsearch                            " 高亮搜索项
set autoread                            " vim外修改自动读入
set autochdir                           " 自动切换工作目录
set cursorline                          " 突出显示当前行
set cursorcolumn                        " 突出显示当前列
set laststatus=2                        " 状态栏
set wildmenu                            " 命令候选
set clipboard=unnamed                   " 剪切板
" set mouse=a                             " 鼠标
set selection=exclusive
set selectmode=mouse,key

map <F9> :colorscheme morning<CR>
map <F10> :colorscheme slate<CR>
map <leader>k :bnext <CR>
map <leader>j :bprevious <CR>
