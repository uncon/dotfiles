# dotfiles
My Dot Files

## Installation
1. Clone the repository:
	```
	git clone --recursive https://github.com/uncon/dotfiles.git "${HOME}/.dotfiles"
	```

1. Create symlinks:
	```
	for rcfile in "${HOME}"/.dotfiles/dotfiles/*; do
	  ln -s "${rcfile}" "${HOME}/.${rcfile:t}"
	done
	```

1. Install [Oh-My-Zsh](http://ohmyz.sh/):
	```
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	```

1. Install [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
	```
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
	sed -i.old -e 's/^\(ZSH_THEME=\).*$/\1"powerlevel10k\/powerlevel10k"/' ~/.zshrc
	```

## Updating
```
cd "${HOME}/.dotfiles" && git pull && git submodule update --init --recursive && git submodule foreach git checkout master && git submodule foreach git pull && git submodule status
```
## Notes
* When using iTerm2, it is important to do the following in your profile
	* disable 'Draw bold text in bright colors'
	* set 'Report Terminal Type' to 'xterm-256color'
