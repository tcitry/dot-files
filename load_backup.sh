mv ~/.vimrc ~/.vimrc_backup
mv ~/.zshrc  ~/.zshrc_backup
mv ~/.bashrc ~/.bashrc_backup
mv ~/.bash_profile ~/.bash_profile_backup
cp vimrc ~/.vimrc
cp zshrc ~/.zshrc
cp bashrc ~/.bashrc
cp bash_profile ~/.bash_profile

rm -rf ~/.hammerspoon_backup
mv ~/.hammerspoon ~/.hammerspoon_backup
cp -r .hammerspoon ~
