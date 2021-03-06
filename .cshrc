# $FreeBSD: src/etc/root/dot.cshrc,v 1.30.10.1.6.1 2010/12/21 17:09:25 kensmith Exp $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
#

alias h		history 25
alias j		jobs -l
alias la	ls -a
alias lf	ls -FA
alias ll	ls -lA

# A righteous umask
umask 22

set path = (/sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin $HOME/bin $HOME/code/go/bin)

setenv GOOS freebsd
setenv GOARCH amd64
setenv GOROOT /usr/local/go
setenv GOPATH ~/code/go

setenv	EDITOR	vim
setenv	PAGER	less
setenv	BLOCKSIZE	K
setenv  CLICOLOR
setenv  LSCOLORS gxfxcxdxbxegedabagacad

set autolist=ambiguous
set nobeep

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set prompt = "`/usr/bin/whoami`@`/bin/hostname -s | tr '[:upper:]' '[:lower:]'`> "
	set filec
	set history = 100
	set savehist = 100
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif
endif
