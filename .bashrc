# SET THE PATHS
export DOT_FILES=~/dotfiles

# Coloring
PS1='\[\e[0;36m\]\u\[\e[0m\]:\[\e[0;34m\]\W\[\e[0;36m\]\$\[\e[0m\] '

export CLICOLOR="1"
export PATH=$PATH:~/bin
export PATH=/usr/local/bin:$PATH

# JAVA SDK/JRE
#export JDK_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home
JAVA_HOME=$(/usr/libexec/java_home) PATH=$PATH:$JAVA_HOME/bin export JAVA_HOME

# Android path and tools
export "ANDROID_HOME=/Users/martin/Develop/SDK/android-sdk-macosx"
export "ANDROID_NDK_HOME=/Users/martin/dev/speedtestnet-android/toolchain/ndk"
export PATH=$PATH:/opt/gradle-2.0/bin

# Gradle Settings
export GRADLE_OPTS=-Xmx1024m

# Git Completion Fancincess
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Git Prompt
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# Clear all data of an app
# Usage: clearapp com.example.demoapp
alias clearapp="adb devices | tail -n +2 | cut -sf 1 | xargs -I X adb -s X shell pm clear $1"

# -------------------------------------------
# ---- Add Android SDK tools and platform-tools to path —
# -------------------------------------------
export PATH="$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/emulator"

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

# Generic Alias
alias ll="ls -al"


# -------------------------------------------
# ---- show/hide hidden files in Finder with terminal alias -------------
# -------------------------------------------
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

