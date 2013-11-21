if [ ! -d "~/.vim" ]; then
    mkdir ~/.vim
fi

cd ~/.vim

git clone https://github.com/dmsurti/dotvim-autoload.git autoload

if [ ! -d "bundle" ]; then
    mkdir bundle
fi

wget http://www.vim.org/scripts/download_script.php?src_id=14366 bundle/pep8.vim
git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim

cat > ~/.vimrc << EOF
syntax on
set nu
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab

set listchars=tab:>-,trail:<

filetype plugin indent on

execute pathogen#infect()

map <C-A> ggVG
EOF

cd -
