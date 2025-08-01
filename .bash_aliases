editor='vim'
alias _='sudo'
alias op='$editor .'
alias afi='_ apt-fast -y install'

# ppas
alias lppa='ls /etc/apt/sources.list.d'

# files & directories
alias l='ls -lh'
alias la='ls -lha'
alias sml='ln -s'
alias wrk='cd ~/workspace'
alias t='touch'
alias md='mkdir'
mcd() {
  mkdir $1
  cd $1
}
alias adc='$editor ~/dotfiles/.vimrc'
alias ada='$editor ~/dotfiles/.bash_aliases'
alias rlt='source ~/.bashrc'
alias del='rm -rf'
alias ext='tar -xf'
alias ..='cd ..'
alias bk='cd -'

# git
alias gcl='git clone'
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gbc='git checkout -b'
alias gch='git checkout'
alias gc='git commit'
alias gd='git diff'
alias gp='git push' 
alias gpl='git pull'
alias gf='git fetch'
alias gl='git log'
alias glo='git log --oneline'
alias gr='git reset --hard'
alias gpf='gp -f'
alias gpu='gp -u origin main'
alias gpb='git push --set-upstream origin'
alias gbd='git branch -d'
alias discard='git checkout .'
alias gbr='git branch -m'
alias gca='git commit --amend'
alias clean='git clean -fd'

# ruby
alias rup='rackup'
alias rcl='bin/rails c'
alias rs='bin/dev'
alias rg='bin/rails g'
alias migrate='bin/rails db:migrate'
alias drop='bin/rails db:drop'
alias create='bin/rails db:create'
alias setup='bin/rails db:setup'
alias seed='bin/rails db:seed'
alias be='bundle exec'
alias bers='bundle exec rspec'
alias bi='bundle'
alias bu='bundle update'
alias rc=' be rubocop'
alias rca='be rubocop -a'
alias bad='bundle add'
alias bur='bundle remove'

# heroku
alias hlogin='heroku login'
alias happs='heroku apps'
alias hopen='heroku open'
alias hcreate='heroku create'
alias gph='gp heroku main'
alias hdm='heroku run rails db:migrate'
alias hfboot='heroku labs:enable build-in-app-dir -a'
alias hlogs='heroku logs'
