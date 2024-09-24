git clone https://github.com/lvzrr/dotfiles
cp /nixos/configuration.nix /etc/nixos/configuration.nix
sudo su 
nixos-rebuild switch

cd dotfiles
rm -fr /home/lvx/.config/kitty/
cp kitty /home/lvx/.config/

rm -fr /home/lvx/.config/nvim/
cp nvim /home/lvx/.config/

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp oh-my-zsh/themes/artic.zsh-theme /home/lvx/.oh-my-zsh/themes/

rm /home/lvx/.zshrc
cp /zsh/.zshrc /home/lvx/
