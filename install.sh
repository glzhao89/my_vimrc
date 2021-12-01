#!/bin/bash

HOME_DIR=`echo $HOME`
VIM_DIR=$HOME_DIR/.vim/
PLUGIN_DIR=$VIM_DIR/plugin
echo $PLUGIN_DIR
#copy .vimrc
cp .vimrc $HOME_DIR

mkdir -p $PLUGIN_DIR
#copy cscope key map
cp cscope_maps.vim $PLUGIN_DIR

#copy YCP config
cp .ycm_extra_conf.py $PLUGIN_DIR

#install pathogen
mkdir -p $VIM_DIR/autoload $VIM_DIR/bundle && \
curl -LSso $VIM_DIR/autoload/pathogen.vim https://tpo.pe/pathogen.vim

