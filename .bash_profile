# echo is like puts for bash (bash is the program running in your terminal)
echo "Loading ~/.bash_profile a shell script that runs in every new terminal you open"

# $VARIABLE will render before the rest of the command is executed
echo "Logged in as $USER at $(hostname)"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# Path for RVM
test -d "$HOME/.rvm/bin" && PATH="$PATH:$HOME/.rvm/bin"

# Rbenv autocomplete and shims
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# Path for RBENV
test -d "$HOME/.rbenv/" && PATH="$HOME/.rbenv/bin:$PATH"

# Path changes are made non-destructive with PATH=new_path;$PATH   This is like A=A+B so we preserve the old path

# Path order matters, putting /usr/local/bin before /usr/bin
# ensures brew programs will be seen and used before another program
# of the same name is called

# Path for brew
test -d /usr/local/bin && export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
# Path for Heroku
test -d /usr/local/heroku/ && export PATH="/usr/local/heroku/bin:$PATH"

source .git_bash_prompt.sh

# Force grep to always use the color option and show line numbers
export GREP_OPTIONS='--color=always'

# Set sublime as the default editor
which -s subl && export EDITOR="subl --wait"

# Useful aliases

alias e="subl"
alias be="bundle exec"
