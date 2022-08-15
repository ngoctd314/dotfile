# nvim
echo '====================' \
&& echo 'DOWNLOAD NVIM v0.7.2' \
&& wget https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.deb \
&& echo '====================' \
&& echo 'INSTALL NVIM' \
&& sudo apt install ./nvim-linux64.deb \
&& echo '====================' \
&& echo 'Config NVIM' \
&& echo '====================' \
&& echo 'Config TMUX' \
&& rm nvim-linux64.deb \
&& wget https://raw.githubusercontent.com/ngoctd313/dotfile/main/.tmux.conf \
