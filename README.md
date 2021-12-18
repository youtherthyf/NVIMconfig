# NVIMconfig
my config file for neovim along with the plug-ins i use

requirements:
this uses vim-plug for plugin managment
install it following the instructions on it's repo:
https://github.com/junegunn/vim-plug

this is only the config, you will have to install neovim your self, follow the instructions for your OS on their repo:
https://github.com/neovim/neovim/wiki/Installing-Neovim



How to install:

if you just want to use it, clone into your .config file
you can download it your self or copy the following into your terminal [**warning**: this will completely replace your existing neovim config folder]:
rm -rf ~/.config/nvim && git clone "https://github.com/youtherthyf/NVIMconfig" ~/.config/nvim/


if you are interested in using it, you can copy from the config file and paste it into yout init.vim
i provide comments alone with the code if you want to know what each part does

for the plug-ins to work you need to install:
open nvim
execute ":PlugInstall"
