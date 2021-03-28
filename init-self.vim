
map <F12> :source ~/.config/nvim/init.vim<CR>

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
Plug 'junegunn/vim-plug'                            " 插件管理

call plug#end()



" 基础配置
syntax on						                    " 语法高亮
set nocompatible					                " 不兼容vi
set number						                    " 显示行号
set wrap						                    " 显示折行
set whichwrap+=<,>,h,l,[,]				            " 开启自动折行
set hidden						                    " 隐藏未保存buffer
set showtabline=0					                " 隐藏顶栏
set foldenable						                " 启用折叠
set foldmethod=indent					            " 折叠设置
set foldlevelstart=99					            " 默认不折叠
set cindent						                    " C样式缩进
set expandtab						                " 空格替换tab
set tabstop=4						                " tab长度
set shiftwidth=4					                " >>==<<
set fileformat=unix					                " unix保存
set fileencodings=ucs-bom,utf-8,cp936			    " 探测编码
set fileencoding=utf-8					            " 文件编码
set encoding=utf-8					                " 内部编码
set backspace=2						                " 退格删除任意字符
set showmatch						                " 显示匹配括号
set matchtime=5						                " 配对时间单位0.1s
set scrolloff=5						                " 顶底5行
set ignorecase						                " 忽略大小写
set incsearch						                " 跳转首匹配
set hlsearch						                " 高亮搜索项
set autoread						                " vim外修改自动读入
set autochdir						                " 自动切换工作目录
set cursorline						                " 突出显示当前行
set cursorcolumn					                " 突出显示当前列
set laststatus=2					                " 状态栏
set wildmenu						                " 命令候选
set clipboard=unnamed					            " 剪切板
" set mouse=a						                " 鼠标  
set selection=inclusive					            " 选中包含光标部分
set selectmode=mouse,key				            " 选中模式

