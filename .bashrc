alias truecrypt='/Applications/TrueCrypt.app/Contents/MacOS/Truecrypt --text'
alias update='brew update; brew upgrade; brew doctor;'

export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/git/bin/:$PATH

chflags nohidden ~/Library/

source /usr/local/etc/bash_completion.d/password-store
