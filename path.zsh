if [ -e "$HOME/bin" ]
then
  path+="$HOME/bin"
fi

if [ -e "$HOME/idea" ]
then
  path+="$HOME/idea/bin"
fi

path+="/usr/local/sbin"

if [ -e "/Applications/Racket v6.0.1" ]
then
  path+="/Applications/Racket v6.0.1/bin"
fi

if [ -e "$HOME/flex/4.13/bin" ]
then
  path+="$HOME/flex/4.13/bin"
fi

if [ -e "$HOME/.cabal/bin" ]
then
  path+="$HOME/.cabal/bin"
fi

if [ -e "$HOME/.nimble/bin" ]
then
  path+="$HOME/.nimble/bin"
fi

if [ -e "$HOME/condor" ]
then
  path+="$HOME/condor/bin"
  path+="$HOME/condor/sbin"
fi

export PATH