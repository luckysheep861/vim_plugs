# vim_plug_install
vim配置迁移
![picture](https://github.com/luckysheep861/vim_plug_install/blob/master/picture.png)
## 功能
- 插件NERDTree,在vim左侧提供目录结构
- 插件taglist, 在vim右侧提供代码结构
- 插件airline, 丰富vim界面信息,状态直观
- 插件monokai, vim主题
- 插件coc, 提供代码不全自动纠错
- 代码折叠
- 光标定位
- 新文件自动添加文件信息

## 如何使用
```
git clone https://github.com/luckysheep861/vim_plug_install.git
# 安装ctags
cd vim_plug_install
# 一键安装
# 注意备份本地.vimrc配置
bash install.sh
vim $HOME/.vimrc
# 输入:PlugInstall安装vim插件
# 输入:CocInstall coc-json coc-pyls配置coc.vim
```
