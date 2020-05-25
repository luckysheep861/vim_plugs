# vim plug
mkdir -p ~/.vim/autoload
wget -P ~/.vim/autoload https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# monokai
mkdir -p ~/.vim/colors
wget -P ~/.vim/colors https://raw.githubusercontent.com/crusoexia/vim-monokai/master/colors/monokai.vim

# NDERTree
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree

# taglist
git clone https://github.com/vim-scripts/taglist.vim.git ~/.vim/bundle/taglist
