#!/bin/bash

echo -e "\n\nCreating server build\n=============================================="

if [ -d "./build" ]; then
    cd "./build"
else
    mkdir "./build"
    cd "./build"
fi

if [ -d "./frontend" ]; then
    cd "./frontend"
    echo -e "\n\nCloning the frontend repositry\n=============================================="
    git reset --hard
    git pull
    cd ".."
else
    echo -e "\n\nCloning the frontend repositry\n=============================================="
    git clone "https://github.com/libDrive/frontend.git"
fi

if [ -d "./backend" ]; then
    cd "./backend"
    echo -e "\n\nCloning the backend repositry\n=============================================="
    git reset --hard
    git pull
    commit_id=$(git rev-parse --short HEAD)
    cd ".."
else
    echo -e "\n\nCloning the backend repositry\n=============================================="
    git clone "https://github.com/libDrive/backend.git"
    cd "./backend"
    commit_id=$(git rev-parse --short HEAD)
    cd ".."
fi

cd "./frontend"
echo -e "\n\nInstalling frontend dependencies\n=============================================="
yarn install --network-timeout 1000000

if [ -d "./build" ]; then
    rm -r "./build"
fi

echo -e "\n\nCreating server build\n=============================================="
yarn run react-build

if [ -d "../backend/build" ]; then
    rm -r "../backend/build"
else
    :
fi
mv "./build" "../backend"

cd ".."

echo -e "\n\nZipping build folder\n=============================================="
if [[ $(uname) =~ "CYGWIN" || $(uname) =~ "MINGW" ]]; then
    "../bin/7z.exe" a "server-$commit_id.zip" "./backend/*"
elif [[ $(uname) =~ "Linux" ]]; then
    cd "./backend"
    zip -r "server-$commit_id.zip" "./"
    mv "server-$commit_id.zip" ".."
    cd ".."
else
    :
fi
echo -e "\n\nBuild saved to $PWD/server-$commit_id.zip\n=============================================="

cd ..
