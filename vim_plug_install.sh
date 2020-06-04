set -ex

# install pyls and python-language-service
pip install -r requirements.txt

# vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# monokai
curl -fLo ~/.vim/colors --create-dirs https://raw.githubusercontent.com/crusoexia/vim-monokai/master/colors/monokai.vim

# NDERTree
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree

# taglist
git clone https://github.com/vim-scripts/taglist.vim.git ~/.vim/bundle/taglist
