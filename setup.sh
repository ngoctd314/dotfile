# nvim
echo '====================' \
&& echo 'DOWNLOAD NVIM v0.7.2' \
&& cd ~ && wget https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.deb \
&& echo '====================' \
&& echo 'INSTALL NVIM' \
&& sudo apt install ./nvim-linux64.deb \
&& rm nvim-linux64.deb \
&& echo '====================' \
&& echo 'Config NVIM' \
&& mkdir ~/.config/nvim && cd ~/.config/nvim && wget -O init.lua https://raw.githubusercontent.com/ngoctd314/dotfile/main/base-nvim.lua
&& echo '====================' \
&& echo 'Config TMUX' \
&& cd ~ && wget https://raw.githubusercontent.com/ngoctd313/dotfile/main/.tmux.conf \