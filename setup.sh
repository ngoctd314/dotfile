# nvim
echo '====================' \
&& echo 'Download NVIM v0.7.2' \
&& cd ~ && wget https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.deb \
&& echo '====================' \
&& echo 'Install NVIM' \
&& sudo apt install ./nvim-linux64.deb \
&& rm nvim-linux64.deb \
&& rm -rf ~/.config/nvim && mkdir ~/.config/nvim && cd ~/.config/nvim && wget -O init.lua https://raw.githubusercontent.com/ngoctd314/dotfile/main/nvim.lua \
&& echo '====================' \
&& echo 'Config TMUX' \
&& cd ~ && wget https://raw.githubusercontent.com/ngoctd314/dotfile/main/.tmux.conf \
&& echo '====================' \
&& echo 'Install ZSH' \
&& sudo apt install zsh \
&& sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
&& rm ~/.zshrc && cd ~ && wget https://raw.githubusercontent.com/ngoctd314/dotfile/main/.zshrc \
