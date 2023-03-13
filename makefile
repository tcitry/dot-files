backup:
	rm vimrc
	rm zshrc
	rm bashrc
	rm bash_profile
	ln ~/.vimrc vimrc
	ln ~/.zshrc zshrc
	ln ~/.bashrc bashrc
	ln ~/.bash_profile bash_profile
	rm -rf hammerspoon
	cp -R ~/.hammerspoon hammerspoon
load:
	mv ~/.vimrc ~/.vimrc_backup
	cp vimrc ~/.vimrc
	mv ~/.zshrc  ~/.zshrc_backup
	cp zshrc ~/.zshrc
	mv ~/.bashrc ~/.bashrc_backup
	cp bashrc ~/.bashrc
	mv ~/.bash_profile ~/.bash_profile_backup
	cp bash_profile ~/.bash_profile
	rm -rf ~/.hammerspoon_backup
	mv ~/.hammerspoon ~/.hammerspoon_backup
	cp -R hammerspoon ~/.hammerspoon
gitconfig:
	git config --global user.email "tcitry@gmail.com"
	git config --global user.name "tcitry"
install:
	brew install autojump
	brew install pyenv
	brew install thefuck
	brew install lazygit

