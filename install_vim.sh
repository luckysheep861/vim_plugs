git clone https://github.com/vim/vim.git
cd vim
./configure --prefix=$HOME/.local
make
make install
echo 'export PATH="~/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
