# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:/usr/local/go/bin:$PATH"
export PATH
PS1='\[\033[01;32m\]\t \d \u@\h\[\033[00m\]:\n\[\033[01;31m\]\w\[\033[00m\]\$\n'
export PS1

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ll='ls -alF'
alias disk-usage='du -hs ./* | sort -h'
alias battery='upower -i `upower -e | grep "BAT"`'
alias volume='alsamixer'
alias brightness-low='xrandr --output eDP-1 --brightness 0.3'
alias brightness-med='xrandr --output eDP-1 --brightness 0.6'
alias brightness-high='xrandr --output eDP-1 --brightness 0.9'
alias brightness-full='xrandr --output eDP-1 --brightness 1'
alias mount-hdd='udisksctl mount -b /dev/sdb1'

setxkbmap -option ctrl:swapcaps
