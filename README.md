# vim_plug_install
vim配置迁移
## 功能
- 插件NERDTree,在vim左侧提供目录结构
- 插件taglist, 在vim右侧提供代码结构
- 插件airline, 丰富vim界面信息,状态直观
- 插件monokai, vim主题
- 代码折叠
- 光标定位
- 新文件自动添加文件信息

## 如何使用
```
git clone https://github.com/luckysheep861/vim_plug_install.git
# 安装ctags
bash install_ctags.sh
cd vim_plug_install
# 安装plugin vim插件管理
bash vim_plug_install.sh
# 配置.vimrc
# 注意备份本地.vimrc配置
mv -i vimrc $HOME/.vimrc
vim $HOME/.vimrc
# 输入:PlugInstall安装vim插件
```
