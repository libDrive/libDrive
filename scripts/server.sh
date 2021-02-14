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
if [[ $(uname) =~ "CYGWIN" || $(uname) =~ "MINGW" || $(uname) =~ "MSYS" ]]; then
    "../bin/7z.exe" a "libDrive_Server_$commit_id.zip" "./backend/*" -xr\!.git/ -x\!.gitignore
elif [[ $(uname) =~ "Linux" ]]; then
    cd "./backend"
    zip -r "libDrive_Server_$commit_id.zip" "./" -x ./.git/* ./.gitignore
    mv "libDrive_Server_$commit_id.zip" ".."
    cd ".."
else
    :
fi
echo -e "\n\nBuild saved to $PWD/server-$commit_id.zip\n=============================================="

cd ..
