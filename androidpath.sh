
# JAVA SDK/JRE
#export JDK_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home
JAVA_HOME=$(/usr/libexec/java_home) PATH=$PATH:$JAVA_HOME/bin export JAVA_HOME

# -------------------------------------------
# ---- Add Android SDK tools and platform-tools to path —
# -------------------------------------------
export "ANDROID_HOME=/Users/martin/Develop/SDK/android-sdk-macosx"
export "ANDROID_NDK_HOME=/Users/martin/dev/speedtestnet-android/toolchain/ndk"
export PATH=$PATH:/opt/gradle-2.0/bin
export PATH="$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/emulator"


# Gradle Settings
export GRADLE_OPTS=-Xmx1024m