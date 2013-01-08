if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

if [ -f /usr/local/etc/bash_completion.d/password-store ]; then
    source /usr/local/etc/bash_completion.d/password-store
fi

PS1="\n\[\e[1;36m\]\w\n\[\e[1;32m\]> \[\e[0m\]"
