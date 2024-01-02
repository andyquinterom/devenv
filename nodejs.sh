#!/bin/bash

## NodeJS
cargo install fnm

## Source fnm
eval "`fnm env --shell bash`"

## Install node 20
fnm install 20

## Use node 20
fnm use 20

## Install typescript
npm install --global typescript-language-server typescript
