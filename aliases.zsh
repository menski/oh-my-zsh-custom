# ZSH
alias szsh='source ~/.zshrc'
alias ezsh='$EDITOR ~/.zshrc'
alias ealias='$EDITOR $ZSH/custom/aliases.zsh'

# Editor
alias se='sudo $EDITOR'

# Awesome WM
alias eawesome='$EDITOR ~/.config/awesome/rc.lua'

# coreutils
alias la='ls -a'
alias llh='ll -h'
alias lh='l -h'

alias cp='cp -v'
alias mv='mv -v'
alias mvm='mv -v -t ~/Musik'
alias mvs='mv -v -t ~/Videos/serien'
alias mv720='mv -v -t ~/Videos/filme/720p'
alias mv1080='mv -v -t ~/Videos/filme/1080p'

alias x='exit'

# apt
alias au='sudo apt-get update && sudo apt-get dist-upgrade'

# Thinkpad
alias bat='sudo tlp-stat | grep BAT'
alias fan='cat /proc/acpi/ibm/fan'
alias temp="cat /proc/acpi/ibm/thermal | awk '{print \"CPU:\"\$2\"/\"\$4\"°C\";print \"HDD:\"\$3\"°C\";print \"GPU:\"\$5\"°C\";print \"BAT:\"\$6\"/\"\$8\"°C\"}'"

# App shortcuts
alias et='easytag'
#alias srename="serien-rename"
alias srename='filebot --format "{n} - {s00e00} - {t}" -get-missing-subtitles --lang en -rename'
alias rs='record-skype'
alias rlog='tail /var/log/rsnapshot.log'
alias custom='cd $ZSH/custom/'
alias personal='vim ~/Dokumente/personal.otl'

# SSH tunnels
alias dyntunnel='ssh -L 8000:localhost:9443 menski@solab09 -N'
alias wikitunnel='ssh -L 8080:ib7:80 menski@leibniz -N'

# Suffix

# compressed -> file-roller
for t in tar gz rar zip 7z bz2; do
	for i in $t ${(U)t}; do
		alias -s $i='file-roller'
	done
done

# office docs -> libreoffice
for t in odt ods odp odg doc docx xls xlsx ppt pptx; do
	for i in $t ${(U)t}; do
		alias -s $i='soffice'
	done
done

# xdg-open misc files
for t in pdf ps dvi eps jpg png gif bmp tiff avi mpeg mp3 mp4 ogg ogv m4b m4a flv mkv; do
	for i in $t ${(U)t}; do
		alias -s $i='xdg-open > /dev/null 2>&1'
	done
done
