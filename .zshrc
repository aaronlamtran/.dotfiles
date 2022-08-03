export PATH=$HOME/bin:/usr/local/bin:$PATH
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/aarontran/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

export ZSH="/Users/aarontran/.oh-my-zsh"

# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell" #ZSH_THEME="random"
# echo $RANDOM_THEME

# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

source $ZSH/oh-my-zsh.sh

# aliases
alias sleep='pmset sleepnow'
alias hr='cd ~/Documents/Hack'
alias gs="git status"
alias list-node-module-size="find . -name "node_modules" -type d -prune -print | xargs du -chs"
alias delete-node-modules-in-working-dir='find . -name 'node_modules' -type d -prune -print -exec rm -rf '{}' \;'
alias create-venv='echo "python3 -m venv <name_of_virtualenv>"'
alias restart-terminal='exec zsh -l'
alias gc='git commit'
alias print-function='echo "declare -f create <bash func>"'
alias create-sym-link='echo "mv <.file> .dotfiles THEN run ln -s ~/.dotfiles/<.file> ~/<.file>"'
alias update-homebrew-file='brew bundle dump --force'
alias screenshots='cd $HOME/Desktop/Screenshots && open `pwd`'
alias edit-rc='code ~/.zshrc'
alias check-switch-transaction='/usr/bin/python3 $HOME/Documents/Hack/atm-track/app.py'
alias dotfiles='cd ~/dotfiles'

function order-caffeine-shot() {
  python3 $HOME/Documents/Hack/pyrepos/mouse/index.py
}

export PATHTOGITHUBAUTO="${HOME}/Documents/Hack/create-project-github-automation"
source $PATHTOGITHUBAUTO/.env
source $PATHTOGITHUBAUTO/initialize.sh

