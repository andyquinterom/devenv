#!/bin/bash

export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.npm-global/bin:$PATH
export PATH=$HOME/go/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=/usr/libexec/strongswan:$PATH

. "$HOME/.cargo/env"
eval "`fnm env --shell bash`"
fnm use 20

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/andres/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/andres/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<
