# .dotfiles

A basic set of setup notes and dotfiles for OS X.

Use Brew ZSH

    $ brew install zsh
    $ sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh

ZSH++

	$ npm install --global pure-prompt
	$ brew install zsh-syntax-highlighting

GPG

    $ brew install gpg pinentry-mac
    $ brew cask install keybase
    $ echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
    $ killall gpg-agent
    $ keybase pgp export | gpg --import
    $ keybase pgp export --secret | gpg --allow-secret-key-import --import
    $ gpg --list-secret-keys --keyid-format LONG
    $ echo "default-key <keyid>" >> ~/.gnupg/gpg.conf
    $ git config --global gpg.program $(which gpg)
    $ git config --global user.signingkey <keyid>
    $ git config --global commit.gpgsign true
