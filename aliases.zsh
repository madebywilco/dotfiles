# Shortcuts
alias reloadshell="source $HOME/.zshrc"
alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'
alias please='sudo $(fc -ln -1)'            # Use last command with sudo
alias zshconfig="code ~/.zshrc"             # Edit zshell config with VSCode
alias zpconfig="code ~/.zplug-config"       # Edit zplug config with VSCode
alias dotfiles="code ~/.egantz-dotfiles/"   # Edit dotfiles dir with VSCode
alias sshconfig="code ~/.ssh/config"        # Edit ssh config with VSCode
alias dsize='du -chd 1 | sort -h'           #
alias df="df -H"                            # Show all hard drives
alias du="du -ch"                           # List all containing files with their size
alias path='echo -e ${PATH//:/\\n}'         # List all $PATH Variables
alias nowtime='date +"%T"'                  # Show current time
alias nowdate='date +"%d-%m-%Y"'            # Show current date
alias now='nowdate; nowtime'                # Show current date and time
alias root='sudo -i'                        # Become root
alias su='sudo -i'                          # Become root
alias ping='ping -c 5'                      # Ping shorthand
alias upt="uptime"                          # Computer uptime
alias h='history'                           # List recent commands
alias j='jobs -l'                           # Show job list
alias memHogsTop=memHogsTop                 # Top Memory Hogs
alias memHogsPs=memHogsPs                   # List memory hogs
alias cpuHogs=cpuHogs                       # Find CPU hogs
alias topForever=topForever                 # Continual 'top' listing (every 10 seconds)
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias follow='tail -f'
alias nah='git reset --hard; git clean -df'
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias fight="echo '(ง'̀-'́)ง' | pbcopy"
alias pu="vendor/bin/phpunit"
alias puf="vendor/bin/phpunit --filter "
alias pug="vendor/bin/phpunit --group "
alias publicip='dig +short myip.opendns.com @resolver1.opendns.com'
alias myip='publicip ; publicip | pbcopy'
alias zshreload='. $HOME/.zshrc'
alias syslog='follow /var/log/system.log'

# Active Projects
alias tres="cd ~/Code/trescolori"             # Enter Dev Projects Directory

# Directories
alias library="cd $HOME/Library"
alias sites="cd $HOME/Sites"
alias lara="sites && cd laravel/"
alias docs="lara && cd docs/"
alias mkcd=mkcd                             # Make Directory and enter it after then
alias ls='gls --color=always'				# Auto-color ls
alias ll='ls -lG'               				# List Containing Files
alias lsa='ls -laG'                          # List Containing Files (incl. dot files)
alias lltr='ls -lt'                          # List order by modified date ASC
alias llt='ls -ltr'                          # List order by modified date DESC
alias lat='ls -ltaG'                        # List order by modified date ASC (Incl. dot files)
alias latr='ls -ltraG'                        # List order by modified date DESC (Incl. dot files)
alias lh='ls -lG .??*'                       # Map all hidden folders and their containings
alias lhd='ls -lGd .??*'                     # List Only Hidden Files
alias ~='cd ~'                               # Go Home
alias cd..='cd ../'                          # Go back 1 directory level (for fast typers)
alias ..='cd ../'                            # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels

# Laravel
alias a="php artisan"
alias c="composer"
alias fresh="php artisan migrate:fresh --seed"
alias tinker="php artisan tinker"
alias seed="php artisan db:seed"
alias serve="php artisan serve"
alias sail='./vendor/bin/sail'
alias new-sail='newSail'
alias sa='sail artisan'
alias sc='sail composer'
alias sn='sail npm'
alias sp='sail php'
alias pest='a test'
alias spest='sa test'
alias pstan='./vendor/bin/phpstan'
alias pint='./vendor/bin/pint --preset laravel'

# list all "Host" and "HostName" lines, then remove the strings: "Host " and "HostName "
alias ssh-hosts="grep -w -i -E 'Host|HostName' $HOME/.ssh/config | sed 's/Host //' | sed 's/HostName //'"

alias latest-node='nvm install node --reinstall-packages-from=node'

# PHP
alias cfresh="rm -rf vendor/ composer.lock && composer i"
alias composer="php -d memory_limit=-1 /opt/homebrew/bin/composer"
alias pstorm='phpstorm'
alias wstorm='webstorm'
alias v='valet --ansi'

# MAMP Services Loggers
alias php-errorlog='tail -f /Applications/MAMP/logs/php_error.log'
alias mysql-errorlog='tail -f /Applications/MAMP/logs/mysql_error.log'
alias apache-errorlog='tail -f /Applications/MAMP/logs/apache_error.log'
alias memcached-log='tail -f /Applications/MAMP/Library/logs/memcached.log'

# JS
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"
alias watch="npm run watch"

# Git
alias gst="git status"
alias gb="git branch"
alias gc="git checkout"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -m"
alias diff="git diff"
alias force="git push --force"
alias nuke="git clean -df && git reset --hard"
alias pop="git stash pop"
alias pull="git pull"
alias push="git push"
alias resolve="git add . && git commit --no-edit"
alias stash="git stash -u"
# alias git_sync="git pull -r && git push"
alias unstage="git restore --staged ."
alias wip="commit wip"


