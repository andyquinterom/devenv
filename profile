#!/bin/bash

export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.npm-global/bin:$PATH
export PATH=$HOME/go/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=/usr/libexec/strongswan:$PATH

. "$HOME/.cargo/env"
eval "`fnm env`"
