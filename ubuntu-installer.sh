# symlink files
ln -s ~/git/dotfiles/.zimrc ~/
ln -s ~/git/dotfiles/.vimrc ~/
ln -s ~/git/dotfiles/.git-prompt.sh ~/


ln -s ~/git/dotfiles/nvim ~/.config/
ln -s ~/git/dotfiles/alacritty ~/.config/
ln -s ~/git/dotfiles/lsd ~/.config/

dconf load /org/gnome/shell/extensions/gtile/ < ~/git/dotfiles/gtile.config

# alacritty
sudo apt install -y alacritty
ln -sfn ~/git/dotfiles/alacritty ~/.config/alacritty

sudo apt install -y xournalpp neovim zsh git

git config --global user.email 'molnargerg@gmail.com'
git config --global user.name 'Greg Molnar'

chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

rm ~/.zshrc
ln -s ~/git/dotfiles/.zshrc ~/

curl https://sh.rustup.rs -sSf | sh
. "$HOME/.cargo/env"
rustup update
cargo install --locked zellij

curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

# fuzzysearch
sudo apt install fzf bat ripgrep silversearcher-ag perl universal-ctags

sudo snap install pinta

# lazydocker
if ! [ -x "$(command -v lazydocker)" ]; then
  echo "Installing lazydocker"
  cd ~/Downloads
  LAZYDOCKER_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazydocker/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
  curl -sLo lazydocker.tar.gz "https://github.com/jesseduffield/lazydocker/releases/latest/download/lazydocker_${LAZYDOCKER_VERSION}_Linux_x86_64.tar.gz"
  tar -xf lazydocker.tar.gz lazydocker
  sudo install lazydocker /usr/local/bin
  rm lazydocker.tar.gz
  cd -
fi

# lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/
