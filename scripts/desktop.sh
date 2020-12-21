#!/bin/bash

while [[ $os != @(1|2|3|"win"|"linux"|"mac") ]]
do
    echo -e "Which OS would you like to make a release for?\n1) win\n2) linux\n3) mac"
    read os
done

if [ -d "./build" ]
then
    cd "./build"
else
    mkdir "./build"
    cd "./build"
fi

if [ -d "./desktop" ]
then
    cd "./desktop"
else
    mkdir "./desktop"
    cd "./desktop"
fi

if [ -d "./frontend" ]
then
    cd "./frontend"
    git pull
    cd "./.."
else
    git clone "https://github.com/libDrive/frontend"
fi

cd "frontend"
yarn --network-timeout 1000000

if [ -d "./dist" ]
then
    rm -r "./dist"
fi

if [ -d "./build" ]
then
    rm -r "./build"
fi

if [ $os == "win" ] || [ $os == "1" ]
then
    yarn run electron-build --win
elif [ $os == "linux" ] || [ $os == "2" ]
then
    yarn run electron-build --linux
elif [ $os == "mac" ] || [ $os == "3" ]
then
    yarn run electron-build --mac
else
    :
fi

cd "./../.."

if [ -f "./desktop.zip" ]
then
    rm "./desktop.zip"
else
    :
fi

"../bin/7z.exe" a "desktop.zip" "./desktop/frontend/dist/*"
echo "Build saved to $PWD/desktop.zip"
