# /bin/sh
#
# Install Fish on MacOS System
#

# install package
brew install fish

# add custom fish prompt
mkdir -p ~/.config/fish/functions/
wget https://raw.githubusercontent.com/Toufyx/environment/master/fish/functions/fish_prompt.local.fish -O ~/.config/fish/functions/fish_prompt.fish

# update the default shell to fish
echo `which fish` | sudo tee -a /etc/shells
chsh -s `which fish`
