# Set the Base Path
export DOT_FILES=~/dotfiles

source $DOT_FILES/termcolors.sh
source $DOT_FILES/gitcompletion.sh
source $DOT_FILES/androidpath.sh

# Clear all data of an app
# Usage: clearapp com.example.demoapp
alias clearapp="adb devices | tail -n +2 | cut -sf 1 | xargs -I X adb -s X shell pm clear $1"

# Use the newest ncurses
export PATH="/usr/local/opt/ncurses/bin:$PATH"

alias ginstall='./gradlew app:installDebug -x countDebugDexMethods'
alias gassemble='./gradlew app:assembleDebug -x countDebugDexMethods'
alias rappInstall='./gradlew rosetta:installDebug -x countDebugDexMethods'
alias rappAssemble='./gradlew rosetta:assembleDebug -x countDebugDexMethods'
alias gclean='./gradlew clean'

alias gdump='git add . && git stash save && git stash drop && git status'
alias gmaster='git checkout master'
alias gdev='git checkout develop'
alias magicStash='git stash save -u --keep-index'
alias deleteAllLocal='git branch | egrep -v "(master|develop|\*)" | xargs git branch -D'

alias gsubmodule='git submodule update --recursive'
# Generic Alias
alias ll="ls -al"

# -------------------------------------------
# ---- show/hide hidden files in Finder with terminal alias -------------
# -------------------------------------------
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

