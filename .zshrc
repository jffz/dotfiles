# Instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/geo/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="custom"

#POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_MODE='nerdfont-complete'
#POWERLEVEL9K_MODE='myosevka'
#POWERLEVEL9K_MODE='monoki'
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="powerlevel9k/powerlevel9k"
TERM=xterm-256color
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_folders
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true
#POWERLEVEL9K_HOME_SUB_ICON="$(print_icon "HOME_ICON")"
#POWERLEVEL9K_DIR_PATH_SEPARATOR=" $(print_icon "LEFT_SUBSEGMENT_SEPARATOR") "
# POWERLEVEL9K_HOME_FOLDER_ABBREVIATION="%F{red} $(print_icon 'HOME_ICON') %F{black}"
# # custom prompt terraform workspace
POWERLEVEL9K_CUSTOM_TERRAFORM_WORKSPACE='bash -c "if ls *.tf > /dev/null 2>/dev/null; then if which terraform > /dev/null 2>/dev/null; then terraform workspace show; fi; fi"'
POWERLEVEL9K_CUSTOM_PIPENV_WORKSPACE='bash -c /home/geo/.local/bin/pyversion_venv'
#POWERLEVEL9K_CUSTOM_PIPENV_WORKSPACE='bash -c "if [[ "$VIRTUAL_ENV" != "" ]];then echo "🐍 $(python --version | awk {'print $2'})"; fi"'
POWERLEVEL9K_CUSTOM_PIPENV_WORKSPACE_BACKGROUND='#e3d9c6'
POWERLEVEL9K_CUSTOM_PIPENV_WORKSPACE_FOREGROUND='#047823'
POWERLEVEL9K_CUSTOM_TERRAFORM_WORKSPACE_BACKGROUND="055"
POWERLEVEL9K_CUSTOM_TERRAFORM_WORKSPACE_FOREGROUND="white"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs custom_terraform_workspace custom_pipenv_workspace)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(kubecontext time)
#POWERLEVEL9K_TIME_FOREGROUND='231'
#POWERLEVEL9K_TIME_BACKGROUND='237'
POWERLEVEL9K_TIME_FOREGROUND='#e3d9c6'
POWERLEVEL9K_TIME_BACKGROUND='#3c5a6e'
POWERLEVEL9K_KUBECONTEXT_FOREGROUND='#3c5e6e'
POWERLEVEL9K_KUBECONTEXT_BACKGROUND='#e3d9c6'
POWERLEVEL9K_USER_DEFAULT_FOREGROUND='#ed6b21'
POWERLEVEL9K_USER_DEFAULT_BACKGROUND='#293031'
POWERLEVEL9K_DIR_HOME_BACKGROUND='#293031'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='#293031'
POWERLEVEL9K_DIR_ETC_BACKGROUND='#293031'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='#293031'
POWERLEVEL9K_DIR_HOME_FOREGROUND='#ed6b21'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='#ed6b21'
POWERLEVEL9K_DIR_ETC_FOREGROUND='#ed6b21'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='#ed6b21'
# `vcs` color customization
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='#293031'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='#e3d9c6'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
#POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='#575d5e'
#POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='#e3d9c6'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='237'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='208'

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  autoswitch_virtualenv
  colored-man-pages
  git
  git-extras
  history-substring-search
  kubectl
  pip
  taskwarrior
  z
)

source $ZSH/oh-my-zsh.sh
# source $ZSH/pltask

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

customs=(
  ~/.aliases
  ~/.cdpath
  ~/.zsh_functions
  ~/.work
)

for file in $customs; do
  [ -f $file ] && . $file
done

# custom binary path
#[ -d ~/bin ] && export PATH="/home/geo/bin:${PATH}"

#source /home/geo/.kube_completion
#if [ /usr/bin/kubectl ]; then source <(kubectl completion zsh); fi

fpath=(
  ~/.zsh-completion.d
  ~/.kube-completion
  $fpath
)

# The following lines were added by compinstall
zstyle :compinstall filename '/home/geo/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Dircolors
#DIRCOLORS="/home/geo/.config/dircolors/dircolors.moonshine"
#[ -f $DIRCOLORS ] && eval $(dircolors $DIRCOLORS)

# Vivid colors
export LS_COLORS="$(vivid generate carbon)"

# Pager
export PAGER="cat"

# AWS autocomplete
if [ -f "/usr/local/bin/aws_completer" ]; then
  complete -C '/usr/local/bin/aws_completer' aws
fi

export RIPGREP_CONFIG_PATH="/home/geo/.config/ripgreprc"

# bash-my-aws
export PATH="$PATH:$HOME/.bash-my-aws/bin"
source ~/.bash-my-aws/aliases
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
source ~/.bash-my-aws/bash_completion.sh
