# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# ==== User specific environment ====
PATH="$HOME/.local/bin:$HOME/bin:/usr/local/go/bin:$PATH"
export PATH
PS1='\[\033[01;32m\]\t \d \u@\h\[\033[00m\]:\n\[\033[01;31m\]\w\[\033[00m\]\$\n'
export PS1

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# ==== User specific aliases and functions ====
# Format ls command for better readability.
alias ll='ls -alF'
# Display current disk usage of each directories and files in current working directory.
alias disk-usage='du -hs ./* | sort -h'
# Display battery percentage and details.
alias battery='upower -i `upower -e | grep "BAT"`'
# Volume control.
alias volume='alsamixer'
# Screen brightness control.
alias brightness-low='xrandr --output eDP-1 --brightness 0.3'
alias brightness-med='xrandr --output eDP-1 --brightness 0.6'
alias brightness-high='xrandr --output eDP-1 --brightness 0.9'
alias brightness-full='xrandr --output eDP-1 --brightness 1'
# Mount external HDD. Run this command once on start up to mount.
alias mount-hdd='udisksctl mount -b /dev/sdb1'

# Map keys to swap control key and caps lock key.
setxkbmap -option ctrl:swapcaps
