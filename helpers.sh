##########################
#   Helper Functions
##########################

function armbrew() {
  arch -arm64 /opt/homebrew/bin/brew "$@"
}

function launch() {
  open -a $1
}

function newSail() {
  curl -s https://laravel.build/$1 | bash
}

# FileSearch
function f() {
  find . -iname "*$1*" ${@:2}
}

function gkill() {
  ps -ef | grep -i $1 | grep -v grep | awk -F' ' '{print "kill -9 "$2}' | sh
}

#mkdir and cd
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# Check weather
function weather() {
  curl -4 https://wttr.in/$1
}

# Auto list when entering a dir
auto-ll () { gls -l --color=always; }
chpwd_functions=( auto-ll $chpwd_functions )

# Show/hide osx files
function hidefiles() {
    defaults write com.apple.finder AppleShowAllFiles -bool NO
    killall Finder
}
function showfiles() {
    defaults write com.apple.finder AppleShowAllFiles -bool YES
    killall Finder
}

function memHogsTop() {
  top -l 1 -o rsize | head -20
}

function memHogsPs() {
  ps wwaxm -o pid,stat,vsize,rss,time,command | head -10
}

function cpuHogs() {
  ps wwaxr -o pid,stat,%cpu,time,command | head -10
}

function topForever() {
  top -l 9999999 -s 10 -o cpu
}

_ssh()
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts=$(grep '^Host' ~/.ssh/config ~/.ssh/config.d/* 2>/dev/null | grep -v '[?*]' | cut -d ' ' -f 2-)

    COMPREPLY=( $(compgen -W "$opts" -- ${cur}) )
    return 0
}
complete -F _ssh ssh
