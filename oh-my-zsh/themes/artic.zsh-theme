# Simple theme based on my old zsh settings.

function get_usr {
        echo $USER
}
function get_host {
        cat /etc/hostname
}

function get_path {
        echo $PWD
}


PROMPT=" $(get_usr)-$(get_host) $ "
RPROMPT='$(get_path)'

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"# Simple theme based on my old zsh settings.
