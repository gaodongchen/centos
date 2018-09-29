#!/bin/bash

git config --global core.quotepath false && \
git config --global core.filemode false && \
git config --global core.excludesfile ~/.gitignore && \
git config --global core.editor vim && \
git config --global color.diff auto && \
git config --global color.status auto && \
git config --global color.branch auto && \
git config --global color.interactive auto && \
git config --global alias.df difftool && \
git config --global alias.st status && \
git config --global alias.ci commit && \
git config --global alias.co checkout && \
git config --global alias.br branch && \
git config --global push.default simple && \
git config --global diff.tool vimdiff && \
git config --global difftool.prompt false && \
git config --global gui.encoding utf-8 && \
git config --global i18n.commitencoding utf-8 && \
git config --global i18n.logoutputencoding utf-8
