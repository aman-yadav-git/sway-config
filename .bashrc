# .bashrc
#
fastfetch
# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
  for rc in ~/.bashrc.d/*; do
    if [ -f "$rc" ]; then
      . "$rc"
    fi
  done
fi
unset rc

#Tecsys Access Login
alias to_tecsys='TERM=xterm-256color ssh -p 3232 tecsysadmin@192.168.1.90'

#Tecsys Backup Server Login
alias to_tecsys_backup='TERM=xterm-256color ssh -p 8822 root@5.135.140.199'

#Web11 Login
alias to_web11='ssh -p 2023 root@74.202.11.66'

#SKIP Login
alias to_skip='ssh -p 22 root@66.59.109.165'

eval "$(starship init bash)"

alias rm='rm -i'
