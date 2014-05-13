if [[ -n $SSH_CONNECTION ]]; then
  PROMPT='%m:%3~$(git_prompt_info)%# '
else
  # PROMPT='%3~$fg[green]$(git_prompt_info)%#$reset_color '
  PROMPT='$fg[light_gray]%3~ $(git_prompt_info)$reset_color # $fg[green]'
fi
function git_prompt_info() {
   ref=$(git symbolic-ref HEAD 2> /dev/null) || return
   echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

# PS1=$LIGHT_GRAY"\u@\h"'$(
#     if [[ $(__git_ps1) =~ \*\)$ ]]
#     then echo "'$YELLOW'"$(__git_ps1 " (%s)")
#     elif [[ $(__git_ps1) =~ \+\)$ ]]
#     then echo "'$MAGENTA'"$(__git_ps1 " (%s)")
#     else echo "'$CYAN'"$(__git_ps1 " (%s)")
#     fi)'$BLUE" \w"$GREEN": "
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red]+"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green]"