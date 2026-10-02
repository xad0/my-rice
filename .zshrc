# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/adomas/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme
export PATH="$HOME/.local/bin:$PATH"

export PATH=$PATH:/home/adomas/.spicetify

# opencode
export PATH=/home/adomas/.opencode/bin:$PATH
alias ls='eza --group-directories-first'
alias ll='eza -lh --group-directories-first'
alias la='eza -a --group-directories-first'
alias lla='eza -lah --group-directories-first'


# Added by Antigravity CLI installer
export PATH="/home/adomas/.local/bin:$PATH"
