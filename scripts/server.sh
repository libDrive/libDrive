#!/bin/bash

if [ -d "./build" ]
then
    cd "./build"
else
    mkdir "./build"
    cd "./build"
fi

if [ -d "./server" ]
then
    cd "./server"
else
    mkdir "./server"
    cd "./server"
fi

if [ -d "./frontend" ]
then
    cd "./frontend"
    git pull
    cd "./.."
else
    git clone "https://github.com/libDrive/frontend"
fi

if [ -d "./backend" ]
then
    cd "./backend"
    git pull
    cd "./.."
else
    git clone "https://github.com/libDrive/backend"
fi

cd "./frontend"
yarn --network-timeout 1000000

if [ -d "./build" ]
then
    rm -r "./build"
fi

yarn run build

if [ -d "./../backend/build" ]
then
    rm -r "./../backend/build"
else
    :
fi
mv "./build"  "./../backend"

cd "./../.."

if [ -f "./server.zip" ]
then
    rm "./server.zip"
else
    :
fi

"../bin/7z.exe" a "server.zip" "./server/backend/*"
echo "Build saved to $PWD/server.zip"
