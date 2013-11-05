dotfiles
========

My Dot Files

Installation
------------

  1. Clone the repository:

        git clone --recursive https://github.com/uncon/dotfiles.git "${HOME}/.dotfiles"
        cd "${HOME}/.dotfiles"
        submodule update --init --recursive

  3. Create symlinks:

        for rcfile in "${HOME}"/.dotfiles/dotfiles/*; do
           ln -s "${rcfile}" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
        done

  3. Install Prezto (in zsh):

        setopt EXTENDED_GLOB
        for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
          ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
        done

Updating
--------

    git pull && git submodule update --init --recursive
