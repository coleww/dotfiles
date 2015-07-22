export PATH="/usr/local/bin:$PATH"
# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=$HOME/bin:$PATH
export PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

if [ "$(uname)" == "Darwin" ]; then
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
fi

if [ -d "~/.nvm" ]; then
  source ~/.nvm/nvm.sh
then

if [ -d "~/.rbenv" ]; then
  eval "$(rbenv init -)"
fi

source ~/.bashrc