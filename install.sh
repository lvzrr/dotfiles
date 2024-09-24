
git clone https://github.com/lvzrr/dotfiles
cd dotfiles
sudo cp /nixos/configuration.nix /etc/nixos/configuration.nix 
sudo nixos-rebuild switch

sudo rm -fr /home/lvx/.config/kitty/
sudo cp kitty /home/lvx/.config/ -r

sudo rm -fr /home/lvx/.config/nvim/
sudo cp nvim /home/lvx/.config/ -r

sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo cp oh-my-zsh/themes/artic.zsh-theme /home/lvx/.oh-my-zsh/themes/

sudo rm /home/lvx/.zshrc
sudo cp /zsh/.zshrc /home/lvx/
