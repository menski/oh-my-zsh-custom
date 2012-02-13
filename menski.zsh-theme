# copied from rixius theme
function collapse_pwd {
	    echo $(pwd | sed -e "s,^$HOME,~,")
}

PROMPT=$'%{$fg_bold[red]%}%n@%m %{$fg[blue]%}[%*] %{$reset_color%}%{$fg[yellow]%}[$(collapse_pwd)]%{$reset_color%} $(git_prompt_info)\
%{$fg[blue]%}[%?]->%{$fg_bold[blue]%} %#%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
