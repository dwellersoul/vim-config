#!/bin/sh
# Create the symlinks to use the vim configuration locally,
# currently it just blindly attempts to place the symlinks.  As
# the script evolves it will check and ask if it should replace
# data that is already there.  Step 1 will most likely be a 
# destructive change, with Step coming shortly after I 
# nuke a configuration without thinking...


ln -s $(pwd)/vim ~/.vim
ln -s $(pwd)/vimrc ~/.vimrc
