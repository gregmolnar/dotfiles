function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

# directory
function directory() {
    local color="%{$fg_no_bold[cyan]%}";
    # REF: https://stackoverflow.com/questions/25944006/bash-current-working-directory-with-replacing-path-to-home-folder
    local directory="${PWD/#$HOME/~}";
    local color_reset="%{$reset_color%}";
    echo "${color}[${directory}]${color_reset}";
}
# PROMPT='%{$reset_color%}% %~ $(git_prompt_info) %{$reset_color%} # %{$fg[green]%}'

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}+"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}"
PS1='%n@%m %c$(__git_ps1 " (%s)")\$ '

PROMPT='$(directory) $(git_prompt_info)%{$reset_color%}';
