export PATH="/usr/local/bin:$PATH"
# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=$HOME/bin:$PATH
export PATH

# fix tmux copy paste joy
if [[ "$(uname)" = "Darwin" ]]; then
    alias tmux='tmux -f ~/.tmux-osx.conf'
else
    alias tmux='tmux'
fi

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

if [ "$(uname)" == "Darwin" ] && [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -d "~/.nvm" ]; then
  source ~/.nvm/nvm.sh
fi

if [ -d "~/.rbenv" ]; then
  eval "$(rbenv init -)"
fi

