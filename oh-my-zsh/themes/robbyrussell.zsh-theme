# Custom version of the prompt theme "robbyrussell" from oh-my-zsh by Robby Russell.
# Customizations:
# - Added node version display if nvm is used and the current version is not the default
# - Added newline before the prompt
# - Changed the prompt symbol to "❯"

# Get the current node version if nvm is used and the current version is not the default
get_node_version() {
  if command -v node &>/dev/null && nvm current &>/dev/null; then
    default_version=$(nvm version default)
    current_version=$(nvm current)
    if [[ "$current_version" != "$default_version" ]]; then
      echo "%{$fg_bold[blue]%}node:(%{$fg[green]%}$current_version%{$fg_bold[blue]%})%{$reset_color%} "
    fi
  fi
}

NEWLINE=$'\n'

PROMPT_SYMBOL="❯"
ARROW_SYMBOL="➜"
GIT_DIRTY_SYMBOL="✗"

PROMPT="%{$fg_bold[magenta]%}%n"
PROMPT+=" %(?:%{$fg_bold[green]%}${ARROW_SYMBOL} :%{$fg_bold[red]%}${ARROW_SYMBOL} )"
PROMPT+='%{$fg[cyan]%}%~%{$reset_color%} $(get_node_version)$(git_prompt_info)${NEWLINE}%{$fg[cyan]%}${PROMPT_SYMBOL}%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}${GIT_DIRTY_SYMBOL}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
