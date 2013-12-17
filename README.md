dotfiles
========

My Dot Files

Installation
------------

  1. Clone the repository:

        git clone --recursive https://github.com/uncon/dotfiles.git "${HOME}/.dotfiles"

  3. Create symlinks:

        for rcfile in "${HOME}"/.dotfiles/dotfiles/*; do
           ln -s "${rcfile}" "${HOME}/.${rcfile:t}"
        done

  3. Install Prezto (in zsh):

        setopt EXTENDED_GLOB
        for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
          ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
        done

Updating
--------

    cd "${HOME}/.dotfiles" && git pull && git submodule init && git submodule update && git submodule status

Notes
-----
- When using iTerm2, it is important to do the following in your profile
  - disable 'Draw bold text in bright colors'
  - set 'Report Terminal Type' to 'xterm-256color'
