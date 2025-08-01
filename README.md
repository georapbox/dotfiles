# Dotfiles

This repository contains my dotfiles. It assumes that the user is using the `zsh` shell and the `oh-my-zsh` framework.

## [oh-my-zsh](https://ohmyz.sh/)

After installing `oh-my-zsh`, copy the files from `oh-my-zsh` directory to `~/.oh-my-zsh` directory using the same directory structure.

## [git](https://git-scm.com/)

After installing `git`, copy the contents of `.gitconfig` to your global `.gitconfig` file. You can find the global `.gitconfig` file in your home directory. If it does not exist, you can create it by running `touch ~/.gitconfig`.

## .ssh/config

This configuration file is used to set up SSH connections for GitHub. It includes two hosts: `github.com` and `github-allwyn`. The `github.com` host uses the default identity file, while `github-allwyn` uses a specific identity file for a different account.
