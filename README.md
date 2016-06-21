# vimrc


###vim 插件管理器: vim-plug

**安装**

		mkdir -p ~/.vim/autoload
		curl -fLo ~/.vim/autoload/plug.vim \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
**常用命令**

* `PlugInstall [name ...] [#threads]`: 安装插件
* `PlugUpdate [name ...] [#threads]`: 安装或更新插件
* `PlugClean[!]`: 移除没有使用的目录
* `PlugUpgrade`: 更新 `vim-plug` 自身
* `PlugStatus`: 检查插件的状态
* `PlugDiff`: 检查上次运行 `PlugUpdat` 的更新变化

###ctags

**安装**

		yum install ctags
		
**常用命令**

`ctags -R`: 表示递归创建,也就包括源代码根目录下的所有子目录下的源程序.

###安装插件

第一次打开因为已经配置了`.vimrc`,所以打开可能会报错.运行:

		:PlugInstall
		
安装插件即可.

**vim别名vi**

                alias vi=vim
