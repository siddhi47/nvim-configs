sudo update
# install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
source ~/.bashrc
# update node version v16
nvm install v16.9.0

# installing nvim
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

# make directory for git
mkdir -p ~/git
cd ~/git
git pull https://github.com/siddhi47/nvim-configs.git
#make nvim config file
mkdir -p ~/.config/nvim

# install vim-plug

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

cp ~/git/nvim-configs/init.vim ~/.config/nvim/init.vim


