#!/bin/bash

if [ ! -x "$HOME/.antigen.zsh" ]; then
    curl -L git.io/antigen | sudo tee $HOME/.antigen.zsh
fi

mkdir -p $HOME/.antigen/bundles && \
    chmod 755 -R $HOME/.antigen/bundles
