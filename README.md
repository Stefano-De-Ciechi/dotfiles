# Linux Dotfiles

This is a "dotfiles management system" used to track, store, backup, reproduce etc. my linux dotfiles (and maybe more, for example entire setups with automated scrips for installation...)

This repository *should be* organized in different branches, with the main branch containing just informations or stuff that is common for every branch (like this readme).

This repository and its branches *should* track configuration files and folders inside the $HOME directory of my linux systems plus any other "asset" I intend to preserve. Examples could be:
- .bashrc file
- .zshrc file
- any subfolder inside ./config (ex. the vim configuration)
- common scripts
- background images I particularly like

## Before Starting:

Since this setup uses git to track files directly in the $HOME directory, it is important to setup the local git repo correctly before starting!

I will use a directory called ".dotfiles" as the git repository (like every git project uses a .git folder, this system uses this .dotfiles directory!).

From terminal in $HOME directory:

```sh
# init a bare git repository named .dotfiles
git init --bare $HOME/.dotfiles

# create a .gitignore file in your $HOME directory and explicitly ignore the repository to avoid any weird recursion problems
echo ".dotfiles" >> .gitignore

# create an alias of git (called dotfiles) that will specifically use the .dotfiles directory as its ".git folder"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# use the new alias to set a flag (using --local makes it apply only to the .dotfiles repository in the $HOME directory)
dotfiles config --local status.showUntrackedFiles no

# finally make your alias permanent by appending the command to your .bashrc, .zshrc or any other shell you are using
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'" >> $HOME/.bashrc
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'" >> $HOME/.zshrc
```

After giving these commands, you can use "dotfiles" command like you would use git (ex. dotfiles status, dotfiles log, dotfiles add, dotfiles commit, ...)

## Installing dotfiles onto a new system:

First, reproduce the "Before Starting" steps to create .dotfiles git repository in $HOME directory

Then, cloning the right branch of this repository should be enough! If while cloning you get conflicts on existing files, be sure to back up or rename them! Else, just delete them and clone the repo (ex. .bashrc could exist by default, if you know it is tracked in the setup you want to reproduce you can delete it from the start).

# Credits and Links:
This "dotfiles management system" using git is based on [this article](https://www.atlassian.com/git/tutorials/dotfiles)
