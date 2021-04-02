" install plug-manager:
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" vim > :PlugInstall

call plug#begin('~/.vim/plugged')
" Плагин для отображения дерева файлов ( на ctrl+N )
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" sudo apt update && sudo apt upgrade
" sudo apt install build-essential cmake python3-dev
" cd ~/.vim/bundle/YouCompleteMe
" ./install.py --go-completer
" Плагин для автодополнения
Plug 'Valloric/YouCompleteMe'

" Плагин для создания парных скобочек
Plug 'jiangmiao/auto-pairs'

" для работы с git
Plug 'tpope/vim-fugitive'

" Еще один для гит (говно)
"Plug 'airblade/vim-gitgutter'

" Для нечеткого поиска по файлам
Plug 'ctrlpvim/ctrlp.vim'

Plug 'easymotion/vim-easymotion'

" Цветовая схем
Plug 'morhetz/gruvbox'
call plug#end()

syntax on
set number
set hlsearch
set incsearch

" Отключение чувствительности к регистру при поиске
set ignorecase
set smartcase
let g:EasyMotion_smartcase = 1 " чтоб работало и в easymotion
let g:EasyMotion_use_smartsign_us = 1 " 1==1 && 1==! в easymotion

  " \+\+s = search by symbol on page
 nmap s <Plug>(easymotion-s2)
 
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark

"Не переносить строки
set nowrap

" Включаем "умные" отступы, например, авто отступ после `{`
set smartindent

" Размер табуляции по умолчанию
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Приоритет для easyMotion
map <Leader> <Plug>(easymotion-prefix)

map <C-n> :NERDTreeToggle <CR>
