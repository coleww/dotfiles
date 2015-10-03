export PATH="/usr/local/bin:$PATH"
# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=$HOME/bin:$PATH
export PATH


  echo "             *     ,MMM8&&&.            *"
  echo "                  MMMM88&&&&&    ."
  echo "                 MMMM88&&&&&&&"
  echo "     *           MMM88&&&&&&&&"
  echo "                 MMM88&&&&&&&&"
  echo "                 'MMM88&&&&&&'"
  echo "                   'MMM8&&&'      *    "



# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.secret-aliases can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,secret-aliases}; do
  [ -r "$file" ] && source "$file"
done
unset file

# fix that thing when installing canvas
# because i install node-canvas really often it turns out
export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig

if [ "$(uname)" == "Darwin" ] && [ -f $(brew --prefix)/etc/bash_completion ]; then
  echo "           /\\/|_      __/\\\\"
  echo "          /    -\\    /-   ~\\  .              '"
  echo "          \\    = Y =T_ =   /"
  echo "           )==*(`     `) ~ \\"
  echo "          /     \\     /     \\"
  . $(brew --prefix)/etc/bash_completion
fi

if [ -d ~/.nvm ]; then
  echo "           |     |     ) ~   ("
  echo "         /       \\   /     ~ \\"
  echo "         \\       /   \\~     ~/"
  echo "  420_/\\_/\\__  _/_/\\_/\\__~__/_/\\6/\\6/\\6/\\_/\\_"
  echo "  |  |  |  | ) ) |  |  | ((  |  |  |  |  |  |"
  source ~/.nvm/nvm.sh
fi

if [ -d ~/.rbenv ]; then
  echo "  |  |  |  |( (  |  |  |  \\\\ |  |  |  |  |  |"
  echo "  |  |  |  | )_) |  |  |  |))|  |  |  |  |  |"
  echo "  |  |  |  |  |  |  |  |  (/ |  |  |  |  |  |"
  echo "  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |"
  eval "$(rbenv init -)"
fi
