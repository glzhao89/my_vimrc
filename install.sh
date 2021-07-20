#!/bin/bash

HOME_DIR=`echo $HOME`
VIM_DIR=$HOME_DIR/.vim
PLUGIN_DIR=$VIM_DIR/plugin
echo $PLUGIN_DIR
#copy .vimrc
cp .vimrc $VIM_DIR

#copy cscope key map
mkdir -p $PLUGIN_DIR && cp cscope_maps.vim $PLUGIN_DIR

#install pathogen
mkdir -p $VIM_DIR/autoload $VIM_DIR/bundle && \
curl -LSso $VIM_DIR/autoload/pathogen.vim https://tpo.pe/pathogen.vim

