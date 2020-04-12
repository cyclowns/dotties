# install script for hyacinth dotfiles
# not fully fledged, only does some stuff.
# intended for Manjaro? Manjaro Architect probabl

# Install Order
# 1. DM (probably lightdm) and X
# 2. WM (i3-gaps)
# 3. Terminal
#    Iosevka
#    hytheme
#    urxvt? Alacritty?
#    Powerline
# 4. Various utilities needing config
#    Spacemacs
#    Some bar? i3-bar or lemonbar maybe
#    Conky?
#    Nitrogen
#    Some password lock
# 5. DL at some point:
#    Nerd Fonts Complete (iosevka)
#

rm_ln()
{
    SOURCE=$(readlink -f $1)
    DEST=$2
    echo Symlink $SOURCE to $DEST?
    select yn in "Yes" "No"; do
        case $yn in
            Yes ) sudo rm -r $DEST; ln -s $SOURCE $DEST; break;;
            No ) break;;
        esac
    done
}

rm_ln dotfiles/lightdm.conf /etc/lightdm/lightdm.conf
rm_ln dotfiles/lightdm-webkit2-greeter.conf /etc/lightdm/lightdm-webkit2-greeter.conf

rm_ln dotfiles/.Xresources ~/.Xresources
xrdb ~/.Xresources

rm_ln dotfiles/.zshrc ~/.zshrc
rm_ln dotfiles/i3.conf ~/.i3/config
rm_ln dotfiles/polybar.conf ~/.config/polybar/config
rm_ln scripts/launch.sh ~/.config/polybar/launch.sh
rm_ln dotfiles/spacemacs.conf ~/.spacemacs

rm_ln dotfiles/ranger.conf ~/.config/ranger/rc.conf
rm_ln scripts/scope.sh ~/.config/ranger/scope.sh

rm_ln dotfiles/dunst.conf ~/.config/dunst/dunstrc
rm_ln dotfiles/mpd.conf ~/.config/mpd/mpd.conf
rm_ln dotfiles/neovim.conf ~/.config/nvim/init.vim
rm_ln dotfiles/neofetch.conf ~/.config/neofetch/config.conf
rm_ln dotfiles/compton.conf ~/.config/compton.conf
rm_ln dotfiles/qt5ct ~/.config/qt5ct
rm_ln dotfiles/mimeapps.list ~/.config/mimeapps.list

rm_ln dotfiles/rofi/ ~/.config/rofi
rm_ln dotfiles/.doom.d/ ~/.doom.d

export DOTFILES=$HOME/dotfiles/dotfiles

echo "Done!"


