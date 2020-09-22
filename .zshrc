# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:/usr/local/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/opt/gnu-sed/libexec/gnubin:$PATH
export PATH=/usr/local/sbin:$HOME/.composer/vendor/bin:$PATH
export NVM_LAZY_LOAD=true
export GPG_TTY=$(tty)

export ZSH="$HOME/.oh-my-zsh"

export UPDATE_ZSH_DAYS=7
export LANG=en_US.UTF-8
export SSH_KEY_PATH="~/.ssh/id_ed25519"

ZSH_THEME="powerlevel10k/powerlevel10k"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git zsh-autosuggestions nvm)

source $ZSH/oh-my-zsh.sh
#source ~/.purepower

export EDITOR='nvim'

# aliases
alias showall="defaults write com.apple.finder AppleShowAllFiles YES"
alias hideall="defaults write com.apple.finder AppleShowAllFiles NO"
alias vim="nvim"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias envim='nvim ~/.config/nvim/init.vim'
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export FZF_DEFAULT_COMMAND='fd --type file --follow --hidden --exclude .git'
eval "$(pyenv init -)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
