wget http://prdownloads.sourceforge.net/ctags/ctags-5.8.tar.gz
tar -zxvf ctags-5.8.tar.gz
cd ctags-5.8
./configure --prefix=$HOME/.local
make
make install
$HOME/.local/bin/ctags -R
