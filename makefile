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
	mv ~/.zshrc  ~/.zshrc_backup
	mv ~/.bashrc ~/.bashrc_backup
	mv ~/.bash_profile ~/.bash_profile_backup
	cp vimrc ~/.vimrc
	cp zshrc ~/.zshrc
	cp bashrc ~/.bashrc
	cp bash_profile ~/.bash_profile
	rm -rf ~/.hammerspoon_backup
	mv ~/.hammerspoon ~/.hammerspoon_backup
gitconfig:
	git config --global user.email "tcitry@gmail.com"
	git config --global user.name "tcitry"
install:
	brew install autojump

