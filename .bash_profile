# PROMPT
PS1="________________________________________________________________\n|"
PS1+="\e[0;35m[\u]"; # username
PS1+="\e[0;32m \w"; # working directory
PS1+="\e[0;33m \$(parse_git_branch)"; # current git branch
PS1+="\e[0m\n| > "; # actual prompt
export PS1;
export PS2="| > "

# ALIASES
alias ..="cd ../";
alias lsa="ls -a";
alias lsal="ls -al";

# FUNCTIONS
# Auto ls after cd
cd() {
    builtin cd "$@" && ls;
}

# Show git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}