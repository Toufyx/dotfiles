# /bin/sh
#
# Install Fish on Debian System
#

# install package
apt-get install fish

# add custom fish prompt
mkdir -p ~/.config/fish/functions/
wget https://raw.githubusercontent.com/Toufyx/environment/master/fish/functions/fish_prompt.remote.fish -O ~/.config/fish/functions/fish_prompt.fish

# update the default shell to fish
chsh -s `which fish`
