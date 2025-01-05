# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.

# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# The following lines were added by compinstall
zstyle :compinstall filename '/home/hermeslover69/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
source ~/powerlevel10k/powerlevel10k.zsh-theme

# use bash aliases in zsh
source ~/.bash_aliases

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# vi(m) key bindings
bindkey -M viins jj vi-cmd-mode
bindkey -v

# fix term colors
if [[ $TERM == xterm ]]; then
    TERM=xterm-256color
fi

export PATH=$PATH:~/.dotnet/tools/

# opam configuration
[[ ! -r /home/hermeslover69/.opam/opam-init/init.zsh ]] || source /home/hermeslover69/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

. "$HOME/.asdf/asdf.sh"

source ~/.exercism_completion.zsh

# shell history in elixir iex
export ERL_AFLAGS="-kernel shell_history enabled" 

# Created by `pipx` on 2024-11-06 14:35:25
export PATH="$PATH:/home/jd/.local/bin"

# AWS SHIT
export AWS_REGION=us-east-1
export AWS_DEFAULT_REGION=us-east-1
