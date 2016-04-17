# Load the shell dotfiles, and then some:
for file in ~/.aliases; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=$PATH:/Users/georapbox/Android_Development/sdks/adt-bundle-mac/sdk/tools
export PATH=$PATH:/Users/georapbox/Android_Development/sdks/adt-bundle-mac/sdk/platform-tools

### Adds colouring to bash
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]👽 $ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Set architecture flags
export ARCHFLAGS="-arch x86_64"

### Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH

### Homebrew auto complete
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

# Temporarily turn off pip restrictions that require a virtualenv activated
gpip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
# export PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"

export NVM_DIR="/Users/georapbox/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
