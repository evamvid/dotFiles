" this file is located at  ~/Documents/ProgrammingProjects/dotFiles/dots/nvim/.config/nvim/init.vim,
" and symlinked to ~/.nvimrc, where neovim will look for it!
"

colorscheme elflord

syntax enable

"if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
"   silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs 
"	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif

call plug#begin('~/.vim/plugged')
" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'scrooloose/nerdtree'
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'airblad/vim-gitgutter'
call plug#end()
