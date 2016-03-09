# Contains useful aliases, which I use regularly in my workflows.

NTP_SERVER="bg.pool.ntp.org"

alias a='atom'
alias att='atom .'
alias ad='npm run apidoc'
alias an='ansible'
alias b='brew'
alias ba='brew cask'
alias be='bundle exec'
alias ber='bundle exec rake'
alias bo='bower'
alias clear-ansible-cache='rm ~/.ansible/tmp/ansible-ec2.*'
alias compress-bz2='tar --use-compress-program=pbzip2 -cvf'
alias compress-gz='tar -czvf'
alias compress-xz='tar --use-compress-program=pigz -cvf'
alias doc='docker'
alias docb='docker build'
alias docbt='docker build -t'
alias docc='docker-compose'
alias doc-remove-dangling-images='docker rmi $(docker images -q -f dangling=true)'
alias doc-remove-all-images='docker rmi $(docker images -q)'
alias doc-remove-all-containers='docker rm $(docker ps --no-trunc -aq)'
alias doc-remove-all-volumes='docker volume rm $(docker volume ls -q)'
alias docm='docker-machine'
alias docm-ip='docker-machine ip'
alias ducksh='du -cksh'
alias e='grep'
alias f='fuck'
alias find-files-with-trailing-whitespace='find . -type f -exec egrep -l " +$" {} \;'
alias grep='grep --colour=auto'
alias h='ls -hl'
alias halt='sudo halt'
alias init-docker='eval "$(docker-machine env default)"'
alias je='jekyll'
alias jh='npm run jshint'
alias l='ls -l'
alias la='ls -al'
alias le='lein'
alias lh='ls -alh'
alias m='mvim'
alias n='npm'
alias ntp-diff="ntpdate -q $NTP_SERVER"
alias ntp-set="sudo ntpdate -u $NTP_SERVER"
alias nv='nvim'
alias o='node'
alias oc='octopress'
alias off='ssh-add -D'
alias on='ssh-add -t 1800'
alias p='ps aux'
alias p3='python3'
alias pu='puma'
alias py='python'
alias ra='rake'
alias rbc='rubocop'
alias reboot='sudo reboot'
alias reload-zshrc='source ~/.zshrc'
alias s='sudo'
alias serve-current-directory='python -m SimpleHTTPServer'
alias spec='npm run spec'
alias spec-cover='npm run spec-coverage'
alias straxil='ssh straxil'
alias sv='sudo vim'
alias t='tmux -2'
alias ta='tmux -2 attach'
alias u='grunt'
alias v='vim'
alias va='vagrant'
alias wgc='wget -c'
alias wtf='which'

curl-post-file() {
  curl -vv -X POST --data "@$2" $1
}

curl-post-json() {
  curl -vv -X POST -H "Content-Type:application/json" --data $2 $1
}

fix-cp1251-subs() {
  for file in *.srt; do
    iconv -f cp1251 -t utf8 $file > $file.utf8
    mv $file.utf8 $file
  done
}

get-groovy-sessions-show() {
  wgc http://www.groovysessions.com/radioshows/groovy-sessions-$1-part-01.mp3 && wgc http://www.groovysessions.com/radioshows/groovy-sessions-$1-part-02.mp3
}

get-random-word() {
  perl -e 'srand; rand($.) < 1 && ($line = $_) while <>; print $line;' /usr/share/dict/words
}

ns() {
  nohup setsid $1 > /dev/null
}

remove-domain-from-known-hosts() {
  sed -i "" "/$1/d" ~/.ssh/known_hosts
}

# https://gist.github.com/lelandbatey/8677901
whiteboard-digitize() {
  convert $1 -morphology Convolve DoG:15,100,0 -negate -normalize -blur 0x1 -channel RBG -level 60%,91%,0.1 $2
}
