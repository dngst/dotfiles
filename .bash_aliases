alias l='ls'
alias _='sudo'
alias op='vim .'
# updates
alias u='_ apt-get update \
&& _ apt list --upgradeable \
&& _ apt-fast upgrade -y'
alias clean=' _ apt autoclean -y \
&& _ apt autoremove -y'
alias afi='_ apt-fast -y install'

# ppas
alias lppa='ls /etc/apt/sources.list.d'

# files & directories
alias wrk='cd ~/Downloads/workspace'
alias t='touch'
alias md='mkdir'
mcd() {
  mkdir $1
  cd $1
}
alias adc='vim ~/dotfiles/.vimrc'
alias ada='vim ~/dotfiles/.bash_aliases'
alias rlt='source ~/.bashrc'
alias rlr='cd ~/.rbenv/plugins/ruby-build && gpl && bk'
alias del='rm -rf'
alias ext='tar -xf'
alias ..='cd ..'
alias ....='cd ../..'
alias ......='cd ../../..'
alias ........='cd ../../../..'
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
alias gsu='git branch --set-upstream-to=origin/main'
alias gcg='git config --global -l'
alias gbd='git branch -d'
alias undo='git reset HEAD~'
alias remote-reset='git reset --hard @{upstream}'
alias discard='git checkout .'
alias unstage='git reset HEAD -- '
alias gbr='git branch -m'
alias gri='git rebase --interactive'
alias gca='git commit --amend'
alias gcac='git rebase --continue'
alias gra='git remote add origin'

# node
alias pre='npx prettier --write .'
alias pcs='pre && clear && gs'
alias ns='npm start'
alias ys='yarn start'
alias srv='npx http-server'
alias prd='npm run build && serve -s'
alias lsr='live-server'

# python
alias newenv='python3 -m venv env'
alias act='source env/bin/activate'
alias dea='deactivate'

# ruby
alias rup='rackup'
alias rcl='bin/rails c'
alias rs='bin/dev'
alias rg='bin/rails g'
alias rgm='bin/rails g migration'
alias rd='bin/rails db'
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
alias rcagc='be rubocop --auto-gen-config'
alias bad='bundle add'
alias bur='bundle remove'
alias railer='bundle exec bin/rails runner -e development'
alias crs='noti bin/rails assets:precompile && rs'
alias prep='noti bers && rc'

# heroku
alias hlogin='heroku login'
alias happs='heroku apps'
alias hopen='heroku open'
alias hcreate='heroku create'
alias gph='gp heroku main'
alias hdm='heroku run rails db:migrate'
alias hfboot='heroku labs:enable build-in-app-dir -a'
alias hlogs='heroku logs'
