# export PATH=$HOME/bin:/usr/local/bin:$PATH


export ZSH="/Users/aarontran/.oh-my-zsh"

# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell" #ZSH_THEME="random"
# echo $RANDOM_THEME

# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

source $ZSH/oh-my-zsh.sh

# aliases
alias hr='cd ~/Documents/Hack'
alias gs="git status"
alias order-caffeine-shot="cd ~/Documents/Hack/pyrepos/mouse && make coffee"
alias list-node-module-size="find . -name "node_modules" -type d -prune -print | xargs du -chs"
alias delete-node-modules-in-working-dir='find . -name 'node_modules' -type d -prune -print -exec rm -rf '{}' \;'
alias create-venv='echo "python3 -m venv <name_of_virtualenv>"'
alias restart-terminal='exec zsh -l'
alias gc='git commit'
alias print-function='echo "declare -f create <bash func>"'
alias create-sym-link='echo "mv <.file> .dotfiles THEN run ln -s ~/.dotfiles/<.file> ~/<.file>"'
alias update-homebrew-file='brew bundle dump --force'


export PATHTOGITHUBAUTO="/Users/aarontran/Documents/Hack/create-project-github-automation"
source $PATHTOGITHUBAUTO/.env

function create() {
  cwd=$(pwd)

  # exit if position input is not provided
  if [ -z "$1" ] ; then
    echo "No arguments supplied. Provide name of project after the command" && exit
  fi

  # venv
  # source $PATHTOGITHUBAUTO/venv/bin/activate
  python3 $PATHTOGITHUBAUTO/create.py $1
  echo $1
  # deactivate

  # github procedure
  cd $FILEPATH$1

  touch README.md
  git init
  git add README.md
  git commit -m "first commit"
  git branch -M main
  git remote add origin https://github.com/$GITHUB_USERNAME/$1.git
  git push -u origin main
  code .

  cd $cwd
}
