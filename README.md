# mody_bash-configs
_my bash-configs (my default installs, personalised prompt and aliases) 
for Proxmox LXC-Containers (mostly Debian 11/12)_

## Installations
### updates & upgrades
```
apt update && apt upgrade -y && apt autoremove -y && apt clean -y
```
### via apt install
```
#defaults
apt install sudo btop htop curl git neofetch mc -y
#additional tools
apt install batcat duf tldr fzf Ok-y
apt install catimg -y
```
### via github clone ("/usr/bin")
- zoxide (z)
- diff-so-fancy

## Aliases
### system commands
[Aliases](aliases)
### additional commands

## Prompt

## Configuration bashrc
```
# include .bashrc if it exists
if [ -f $HOME/.bashrc_aliases ]; then
    . $HOME/.bashrc_aliases
fi

eval "$(zoxide init bash)"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

neofetch
```

