sudo update
# install nvm
source<(curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh)
source ~/.bashrc
# update node version v16
nvm install v16.9.0 -y

# installing nvim
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update -y
sudo apt-get install neovim -y

echo "# make directory for git"
mkdir -p ~/git
cd ~/git
echo "Pulling git"
git clone https://github.com/siddhi47/nvim-configs.git
#make nvim config file
mkdir -p ~/.config/nvim

# install vim-plug

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

cp ~/git/nvim-configs/init.vim ~/.config/nvim/init.vim


