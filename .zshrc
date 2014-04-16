# ^L            - ls, list
# ^B (back)     - cd ..; up
# ^G (go)       - cd
# ^N (liNks)    - cd ~/links/; bookmarks
# ^F (find)     - search history
# ^E            - history incremental search backward; find, filter
# ^L            - push line into buffer, do a different command; save, run, cmd
# ^O            - insert previous word; last, paste, put, add
# ^H            - 45 lines of history
# ^A            - cd last arg; cd !$, dir
#
# palias()      - permanent alias; mapping, save
# catfn()       - cat files with filenames
#
# rehash -f     - when a new program is installed; reload, refresh
# eh            - Edit History in vim, select command and run; execute
# cl            - clear; clean screen
# g             - cd, no ls; default
# l             - ls -CF
# ly            - ls *.py; list python files
# duc           - dir usage for all dirs in current; space use, listing
#
# vz            - vim .zshrc; edit, source
# vzsh          - gvim .zshrc; edit, source
# vr            - vim remote connect
# tt            - time track; projects
# ag            - alias grep -i; find alias
#
# 21            - global alias, 2>&1; redirect stderr with stdout
# G             - global alias, | grep
# L             - global alias, | less
# ...           - ../.. , cd two directories up; level
# ....          - ../../.. , cd three directories up; level
#
# alssh         - alpha ssh
# erssh         - erica ssh
# wfssh         - oldays ssh webfaction
#
# adom          - stop adom, reload; restart
# adk           - adom sized konsole; terminal, resize
# adbk          - backup adom games
# lnk           - make link for current dir in ~/links/; bookmark, favorite
#
# gn            - gnumeric; spreadsheet
# gbake         - gnome baker, record cd/dvd; burner
# tz            - tar zxvf; unarchive, untar
# tvim          - test vim environment, using .bvimrc and .testvim/
#"endlist

autoload edit-command-line
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd 'v' edit-command-line

# if [[ "$USER" == root ]]; then
#   ...
# fi

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
KEYTIMEOUT=10
PUSHD_SILENT=1

# setopt correct
# setopt share_history              # share history between sessions
setopt autocd                       # <div> will cd to <dir>
setopt extendedglob                 # **/*pat*
setopt autolist automenu nobeep
setopt hist_ignore_dups             # ignore duplicates in history
setopt hist_reduce_blanks           # eliminate multiple blanks
setopt pushd_ignore_dups
setopt pushd_to_home
setopt equals
setopt glob_dots
setopt autopushd
setopt chase_links

_force_rehash() {
     (( CURRENT == 1 )) && rehash
     return 1   # Because we didn't really complete anything
}
zstyle ':completion:*' completer _expand_alias _force_rehash _complete
zstyle -e ':completion:*:approximate:*' max-errors 'reply=( $(( ($#PREFIX + $#SUFFIX) / 3 )) )'
zstyle ':completion:*:descriptions' format "- %d -"
zstyle ':completion:*:corrections' format "- %d - (errors %e})"
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:manuals' separate-sections true
zstyle ':completion:*:manuals.(^1*)' insert-sections true
zstyle ':completion:*' menu select
zstyle ':completion:*' verbose yes

PYTHONPATH="$PYTHONPATH:$HOME/python/:$HOME/mypython/:"; export PYTHONPATH
CDPATH=".:$HOME:$HOME/win-projects:"; export CDPATH
PATH=".:$PATH:$HOME/scripts/:/home/ak/mypython/:/home/ak/projects/rescaler/google_appengine/"
export GAE_SDK_ROOT="/home/ak/projects/rescaler/google_appengine/"
export PATH

VIM="/home/ak/scripts/vim74/src/vim"
VIMRUNTIME="/usr/share/vim/vim74/"
GVIM="/home/ak/scripts/vim74/src/vim -g"
GIT_EDITOR='$GVIM'
GVIMDIFF="/home/ak/scripts/vim74/src/gvimdiff"
export PYTHONSTARTUP=${HOME}/.pystartup

zstyle :compinstall filename '/home/ak/.zshrc'
zstyle ':completion:*:(cd|mv|cp):*' ignore-parents parent pwd   # ignore parent dir cd ../<tab>
zstyle ':completion:*:(rm|kill|diff):*' ignore-line yes # avoid completing things already in line
zstyle ':completion:*:*:kill:*' menu yes select         # menu completion for kill
zstyle ':completion:*:kill:*' force-list always         # always list even when one result
compdef pkill=kill                                      # use same rules for pkill

autoload -U run-help
zmodload zsh/complist
autoload -Uz compinit; compinit
calc () { echo $* |bc -l }

bindkey -v
bindkey -s '^J' "ifilter.py z\e^M"
bindkey -s '^L' "ls\e^M"
bindkey -s '^B' "cd ..\e^M"
bindkey -s '^G' "cd "
bindkey -s '^N' "cd ~/links/"
bindkey -s '^A' "cd !$\e^M"

bindkey -M viins "^O" copy-prev-shell-word
bindkey '^i' expand-or-complete-prefix              # complete in the middle of text
bindkey "^F" history-beginning-search-backward
bindkey "^E" history-incremental-search-backward
bindkey "^P" push-line
bindkey -s "^H" "fc -l -45\e^M"


## COLOURS ##
autoload colors zsh/terminfo
if [[ "$terminfo[colors]" -ge 8 ]]; then
colors
fi
for color in BLACK RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
    eval PR_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
    eval PR_LIGHT_$color='%{$fg[${(L)color}]%}'
    eval BG_$color='%{$bg[${(L)color}]%}'
    (( count = $count + 1 ))
done
PR_NO_COLOUR="%{$terminfo[sgr0]%}"

case "$TERM" in
xterm*|rxvt*)
    # PS1="$PR_GREEN%h$PR_BLUE (%U$PR_YELLOW%~$PR_BLUE%u) $PR_GREEN%#$PR_NO_COLOUR "
    # PS1="$PR_GREEN%h$PR_BLUE ($PR_YELLOW%~$PR_BLUE) $PR_GREEN%#$PR_NO_COLOUR "
    PS1="$PR_GREEN%h$PR_BLUE (%U%~%u$PR_BLUE) $PR_GREEN%#$PR_NO_COLOUR "
    ;;
*)
    ;;
esac

export TERM="gnome-256color"

LS_COLORS='no=00:fi=00:di=03;33:ln=03;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=03;33:st=37;44:ex=03;32:*.tar=01;33:*.tgz=03;34:*.svgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=03;34:*.bz2=01;31:*.bz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=03;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=03;35:*.mpeg=03;35:*.m2v=01;35:*.mkv=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=03;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:';
export LS_COLORS

# COLOUR highlight VI mode
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/%U$PR_BLUE$BG_RED----VICMD----$PR_NO_COLOUR%u}/(main|viins)/--INS--}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

## FUNCTIONS ##
palias() {
    # permanent alias, saved to .zshrc
    echo "alias: \c"
    read -r al
    eval "alias $al"
    echo "alias $al" >> ~/.zshrc
}

catfn() {
    for f in $*; do
        echo "---------- $f ----------\n";
        cat "$f";
        echo "\n\n\n"
    done
}

zipr() {
    # zip -r name.zip name/
    zip -r $1.zip $1
}

pygrep() {
    command grep --color=auto -i $1 *.py
}

cd() {
    builtin cd $1
    ls -X --color=auto
}

## ALIASES ##
alias -g 21="2>&1"
alias -g G="| grep"
alias -g T="| tail"
alias -g HL="--help"
alias -g L="| less"
alias -g ...="../.."
alias -g ....="../../.."
alias -g H=/media/HP\\\ v100w/

alias g='builtin cd'
alias grep='command grep --color=auto'
alias ll='ls -Xl' la='ls -XA' l='ls -XCF --hide="*.pyc"'
alias ls='ls -X --color=auto --hide="*.pyc"'
alias ly="ls -X *.py"
alias adbk="cp ~/.adom.data/savedg/* ~/.adom.data/"

alias vi="$VIM"
alias so="source ~/.zshrc"
alias vz="$VIM ~/.zshrc 2>/dev/null"

# alias gvimdiff="$GVIMDIFF 2>/dev/null"
alias tt="~/win-projects/Timetrack/timetrack.py"
alias cl="clear" py="python"
alias gbake="G_SLICE=always-malloc G_DEBUG=gc-friendly gnomebaker"
alias md="mkdir"
alias ag="alias | grep -i"

alias duc='du -sh `ls -d *`'
alias menc='mencoder "mf://img/*.jpeg" -mf fps=35 -o output.avi -ovc lavc -lavcopts vcodec=mjpeg'
alias menc2='mencoder "mf://img/*.jpeg" -mf fps=35 -o output.flv -ovc lavc -lavcopts vcodec=flv'
alias vtm="./vtext.py script.html; menc"
alias vt="./vtext.py book.txt; menc; totem output.avi&"
alias adom="kill %; rm ~/.adom.data/.adom.prc; ~/Desktop/adom/adom"
alias gn="gnumeric"
alias adk="gnome-terminal --geometry=80x25"
alias lnk="ln -si ~+ ~/links"
alias ipy="ipython -noconfirm_exit"
alias ipy3="ipython3"
alias eh="fc -50 -1"

alias tz="tar zxvf"
alias kf="killall firefox; firefox&"
alias xt="xterm -bg black -fg lightgray -fa MiscFixed -fs 10"
alias rm_='rm -r __MACOSX*'
alias fcg="fc -l 0|grep"

# prompt fire
alias ff="firefox"
alias df="df -h"
alias wfssh='ssh -l oldays oldays.webfactional.com'
alias llssh='ssh -l llessinc llessinc.webfactional.com'

alias tvim="$VIM -u ~/.bvimrc 2>/dev/null"
alias amarokctl="/usr/bin/dcop __user ak amarok player"
# alias vim="/usr/local/bin/vim"
alias psh="git push"
alias pll="git pull"
alias pull="hg pull ssh://hg@bitbucket.org/oldays/gen9"
alias ppush="hg push ssh://hg@bitbucket.org/oldays/parsesite"
alias p="ppush"
alias ppull="hg pull ssh://hg@bitbucket.org/oldays/parsesite"
alias em="emerald --replace&"
alias sc="hg status; sleep 2; hg commit;"
alias v="$GVIM -f 2>/dev/null"
alias vr="$GVIM --remote 2>/dev/null"
alias vs="$GVIM -S ~/.vim/session 2>/dev/null"
alias vd="$GVIM -fS ~/.vim/dsession 2>/dev/null &"
alias tp0="go.py test parse9 --verbosity=0"
alias tp1="go.py test parse9"
alias ts0="go.py test store9 --verbosity=0"
alias ts1="go.py test store9"
alias efssh='ssh -l mlandsberg mlandsberg.webfactional.com'

if [[ -f ~/.zsh_private ]]; then
    source ~/.zsh_private
fi
alias e="edict"
alias mt='killall mousetweaks; sleep 0.5; mousetweaks -c --daemonize --dwell --dwell-time=0.5'
alias gsd='killall gnome-settings-daemon; gnome-settings-daemon'
# alias gd='grep "^\s*\(def\|class\).*$" --color=never'
alias gd="grepdef.py"
alias igrep="grep -i"
alias rigrep="grep -ri"
alias pyrgrep="grep -ri --include='*.py'"

alias vconfigure="./configure --enable-pythoninterp --enable-cscope --enable-fontset --enable-gui=gnome2 --with-features=huge"
alias gdsp="gd search_peaks.py"
alias mt="ctags-exuberant --recurse=yes --exclude='.bkup .git'"
alias cr="chromium-browser"
alias xm="xmodmap ~/.xmod"

alias l1="loop.py 1"
alias l2="loop.py 2"
alias l3="loop.py 3"
alias l4="loop.py 4"
alias l5="loop.py 5"
alias l6="loop.py 6"
alias l7="loop.py 7"
alias l8="loop.py 8"
alias l9="loop.py 9"
alias l15="loop.py 15"
alias l20="loop.py 20"
alias l30="loop.py 30"
alias l60="loop.py 60"

alias timeit="python -mtimeit -s "
alias drun="cd ~/links/dbe; run"
alias cphp="cp -r $1 /media/HP\ v100w/"

alias uh="umount /media/HP\ v100w/"
alias gc="git commit -a"
alias gp="git push"
alias gcp="gc;psh"
alias pbepush="git push pbe:/pythonbyexample/PBE.git"
# alias pbepush="git push pbe:/pythonbyexample/PythonByExample.git"
alias plpsh="git pull; git push"
alias plpshde="git pull; git push; fab staging deploy"
alias chk="git checkout"
alias chkp="git checkout production"
alias mrgp="git merge production"

alias findr="find . -name"
alias achp="achief.py practice"
alias achb="achief.py pranayama"
alias achm="achief.py meditation"
alias achr="achief.py aread"
alias acha="achief.py mntr"

alias achpb="achp;achb"
alias achpm="achp;achm"
alias achpr="achp;achr"
alias achpa="achp;acha"

alias py3="python3"
alias gunt="git ls-files --other --exclude-standard"

source /usr/share/autojump/autojump.zsh

rmdir /home/ak/Archive/ 2>/dev/null
rmdir /home/ak/Mail/ 2>/dev/null
rmdir /home/ak/Podcasts/ 2>/dev/null
rmdir /home/ak/Audiobooks/ 2>/dev/null
rm "/home/ak/Ubuntu One/Shared With Me" 2>/dev/null
rmdir /home/ak/Ubuntu\ One/ 2>/dev/null

alias backup-keypass="cp /media/ak/Main1/0home/docs/kpdb.kdb /media/ak/E6FA-E634/0BACKUP/"
