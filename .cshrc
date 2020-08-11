# $FreeBSD$
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
# more examples available at /usr/share/examples/csh/
#

alias h		history 25
alias j		jobs -l
alias lf	ls -FA

#list
alias ls    "ls -CA --color=always"
alias la    "ls -a"
alias ll    "ls -la"
alias l    "ls"
alias l.    "ls -A | egrep '^\.'"

#fix obvious typo's
alias cd..    "cd .."
alias pdw    "pwd"

## Colorize the grep command output for ease of use (good for log files)##
alias grep    "rg --color=always"
alias egrep    "egrep --color=always"
alias fgrep    "fgrep --color=always"

## BSD stuff
alias pkg    "doas pkg"
alias make    "doas make"

#continue download
alias wget    "wget -c"

#switch between bash and zsh
alias tobash    "sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh    "sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"

# These are normally set through /etc/login.conf.  You may override them here
# if wanted.
# set path = (/sbin /bin /usr/sbin /usr/bin /usr/local/sbin /usr/local/bin $HOME/bin)
# setenv	BLOCKSIZE	K
# A righteous umask
# umask 22

setenv	EDITOR	vim
setenv	PAGER	less
setenv	TERM	xterm-256color
# setenv  PATH    /home/jd/.local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:~/bin:~/.emacs.d/bin
setenv  PATH    /home/jd/.local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:~/bin:~/.emacs.d/bin:/home/jd/.fzf/bin

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set prompt = "%{\033[1;32m%}➜ %{\033[1;36m%} %~%{\033[0m%} "
	set promptchars = "%#"

	set filec
	set history = 10000
	set savehist = (10000 merge)
	set autolist = ambiguous
	# Use history to aid expansion
	set autoexpand
	set autorehash
	set mail = (/var/mail/$USER)
    bindkey -c "^R" vimrun
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif

endif

clear
