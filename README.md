# :desktop_computer: mody_bash-configs
_my bash-configs (my default installs, personalised prompt and aliases) 
for Proxmox LXC-Containers (mostly Debian 11/12)_

___

| **Topics:** | :package: [Installations](README.md#package-installations) | :arrow_right: [Aliases](README.md#arrow_right-aliases) | :tv: [Prompt](README.md#tv-prompt) | 
| --- | --- | --- | --- |
___
## :package: Installations
### :mag: updates & upgrades
```bash
apt clean -y && apt update -qq -y && apt dist-upgrade -qq -y && apt autoremove --purge -qq -y
```
### :earth_africa: via apt install
```bash
#my defaults
apt install sudo btop htop curl git neofetch mc zip -y
#additional tools
apt install batcat duf tldr fzf -y
apt install catimg -y
```
### :octocat: via github clone ("/usr/bin")
- zoxide (z)
- diff-so-fancy

___

## :arrow_right: Aliases
### :robot: system commands extended/modified
[Aliases](aliases)
### :gear: installed commands
..to-do...
___

## :tv: Prompt
## :keyboard: Configuration bashrc
```bash
# include .bashrc if it exists
if [ -f $HOME/.bashrc_aliases ]; then
    . $HOME/.bashrc_aliases
fi

eval "$(zoxide init bash)"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

neofetch
```

