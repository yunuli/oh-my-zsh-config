# Contains useful aliases, which I use regularly in work.

alias a='sudo apt-get'
alias abuild='sudo apt-build'
alias ac='sudo apt-cache'
alias amzn-db='ssh database'
alias amzn-dev='ssh development'
alias amzn-release='ssh release'
alias amzn-staging='ssh staging'
alias cl='cloc .'
alias e='grep'
alias g='git'
alias godaddy='ssh godaddy'
alias grep='grep --colour=auto'
alias h='ls -hl'
alias halt='sudo halt'
alias imagenation-build='ssh build'
alias l='ls -l'
alias la='ls -al'
alias ls='ls --color=auto'
alias make='nice -n20 make -j4'
alias off='ssh-add -D'
alias on='ssh-add -t 1800'
alias p='ps aux'
alias reboot='sudo reboot'
alias restart='sudo restart'
alias s='sudo'
alias sd='svn diff'
alias sp='svn up'
alias start='sudo start'
alias stop='sudo stop'
alias straxil='ssh straxil'
alias sv='sudo vim'
alias t='tmux -2'
alias ta='tmux -2 attach'
alias u='grunt'
alias upgr='a update ; a upgrade'
alias v='vim'
alias wgc='wget -c'

beautify-json() { for file in *.json; do js-beautify $file > ${file/.json/-beat.json}; done }
curl-post-json() { curl -vv -X POST -H "Content-Type:application/json" --data $2 $1; }
curl-post-file() { curl -vv -X POST --data "@$2" $1; }
ns() { nohup setsid $1 > /dev/null }
# https://gist.github.com/lelandbatey/8677901
whiteboard-digitize() { convert $1 -morphology Convolve DoG:15,100,0 -negate -normalize -blur 0x1 -channel RBG -level 60%,91%,0.1 $2 }

