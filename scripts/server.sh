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
    echo -e "\n\nCloning the frontend repositry\n=============================================="
    git pull
    cd "./.."
else
    echo -e "\n\nCloning the frontend repositry\n=============================================="
    git clone "https://github.com/libDrive/frontend.git"
fi

if [ -d "./backend" ]
then
    cd "./backend"
    echo -e "\n\nCloning the backend repositry\n=============================================="
    git pull
    cd "./.."
else
    echo -e "\n\nCloning the backend repositry\n=============================================="
    git clone "https://github.com/libDrive/backend.git"
fi

cd "./frontend"
echo -e "\n\nInstalling frontend dependencies\n=============================================="
npm install yarn --global
yarn install --network-timeout 1000000

if [ -d "./build" ]
then
    rm -r "./build"
fi

echo -e "\n\nCreating server build\n=============================================="
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

echo -e "\n\nZipping build folder\n=============================================="
"../bin/7z.exe" a "server.zip" "./server/backend/*"
echo -e "\n\nBuild saved to $PWD/server.zip\n=============================================="
