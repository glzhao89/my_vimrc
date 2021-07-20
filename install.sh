#!/bin/bash

#copy .vimrc
cp .vimrc ~/.vim/

#copy cscope key map
mkdir -p ~/.vim/plugin copy cscope_maps.vim

#install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

