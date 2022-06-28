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

#make nvim config file
mkdir -p ~/.config/nvim
cp ~/init.vim ~/.config/nvim/init.vim
