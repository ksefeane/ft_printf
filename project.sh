#!/bin/zsh 

lib=""
giturl="https://github.com/ksefeane/"

echo "creating project"
read -p "which project would you like to clone?
-> " lib

echo "cloning libft"
git clone $giturl$lib.git

echo "
creating inc & src folder"
mkdir inc src

echo "creating Makefile"
touch Makefile


