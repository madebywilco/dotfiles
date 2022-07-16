# Load Composer tools
export PATH="$HOME/.composer/vendor/bin:$PATH"

# TODO: Ruby
# TODO: Java
# TODO: GoLang

# Make sure coreutils are loaded before system commands
# I've disabled this for now because I only use "ls" which is
# referenced in my aliases.zsh file directly.
#export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
