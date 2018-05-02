#!/bin/bash

VIMFILES=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

ln -s -T ${VIMFILES} ${HOME}/.vim
ln -s -T ${HOME}/.vim/vimrc ${HOME}/.vimrc
ln -s -T ${VIMFILES} ${HOME}/.config/nvim
