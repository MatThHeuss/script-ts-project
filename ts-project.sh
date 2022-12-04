#! /usr/bin/env bash

RED='\033[0;31m'
Green='\033[0;32m' 

if [ -z "$1" ]
  then
    printf "\n${RED}Fatal: Missing folder name!\n"
    exit 1
fi

mkdir $1

cd $1

yarn init -y

yarn add typescript jest ts-node ts-jest nodemon @types/jest

npx tsc --init  

npx ts-jest config:init 

mkdir src

mkdir test

touch .gitignore

echo "node_modules" > .gitignore

git init

printf "${Green}Done!\n"
