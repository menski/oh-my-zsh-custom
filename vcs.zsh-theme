# modified by kolo.zsh-theme

autoload -Uz vcs_info

zstyle ':vcs_info:*' stagedstr '%F{10}+'
zstyle ':vcs_info:*' unstagedstr '%F{11}?'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(svn|bzr)*' branchformat '%F{10}%b%F{1}:%F{11}%r'
zstyle ':vcs_info:*' enable git svn bzr hg
zstyle ':vcs_info:*+pre-get-data:*' hooks pre-get-data

PCHAR="%%"

+vi-pre-get-data () {
	if [[ "$vcs" == git ]]; then
		PCHAR="±"
	elif [[ "$vcs" == hg ]]; then
		PCHAR="☿"
	elif [[ "$vcs" == svn ]]; then
		PCHAR="⑆"
	elif [[ "$vcs" == bzr ]]; then
		PCHAR="↑"
	fi
}

theme_precmd () {
    if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
        zstyle ':vcs_info:*' formats ' %F{13}[%b%c%u%F{13}]'
    } else {
        zstyle ':vcs_info:*' formats ' %F{13}[%b%c%u%F{9}!%F{13}]'
    }

    vcs_info
}

theme_chpwd () {
	PCHAR="%%"
}

setopt prompt_subst
PROMPT='%F{12}%c%F{green}${vcs_info_msg_0_}%F{magenta} %F{12}$PCHAR%f '

autoload -U add-zsh-hook
add-zsh-hook precmd  theme_precmd
add-zsh-hook chpwd theme_chpwd
