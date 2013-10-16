# git-completion
source ~/.git-completion.bash
source ~/.git-prompt.sh

# PS1
export PS1='\h:\w$(__git_ps1) \u\$ '

# PATH
export PATH=~/perl5/bin:/usr/local/bin:$PATH

# LANG
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

# COLOR
export CLICOLOR=true
export LSCOLORS='gxfxcxdxbxegedabagacad'

# PERL
export PERL5LIB=~/perl5/lib/perl5/
export PERL_CPANM_OPT="--local-lib=~/perl5"

# rbenv
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/shims:$PATH"
