#!/bin/bash

echo -e "\n\nCreating desktop build\n=============================================="

while [[ $os != @(1|2|3|"win"|"linux"|"mac") ]]
do
    echo -e "\n\nWhich OS would you like to make a release for?\n(the build must be made on the specified OS)\n==============================================\n1) win\n2) linux\n3) mac"
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
    echo -e "\n\nCloning the frontend repositry\n=============================================="
    git reset --hard
    git pull
    commit_id=$(git rev-parse --short HEAD)
    cd "./.."
else
    echo -e "\n\nCloning the frontend repositry\n=============================================="
    git clone "https://github.com/libDrive/frontend.git"
    cd "./frontend"
    commit_id=$(git rev-parse --short HEAD)
    cd "./.."
fi

cd "frontend"
echo -e "\n\nInstalling frontend dependencies\n=============================================="
yarn install --network-timeout 1000000 || npm install

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
    echo -e "\n\nCreating windows build\n=============================================="
    yarn run electron-build --win || npm run electron-build --win
    cd "./../.."
    echo -e "\n\nZipping build folder\n=============================================="
    "../bin/7z.exe" a "desktop-win-$commit_id.zip" "./desktop/frontend/dist/*"
    echo -e "\n\nBuild saved to $PWD/desktop-win-$commit_id.zip\n=============================================="
elif [ $os == "linux" ] || [ $os == "2" ]
then
    echo -e "\n\nCreating linux build\n=============================================="
    yarn run electron-build --linux || npm run electron-build --linux
    cd "./../.."
    echo -e "\n\nZipping build folder\n=============================================="
    "../bin/7z.exe" a "desktop-linux-$commit_id.zip" "./desktop/frontend/dist/*"
    echo -e "\n\nBuild saved to $PWD/desktop-linux-$commit_id.zip\n=============================================="
elif [ $os == "mac" ] || [ $os == "3" ]
then
    echo -e "\n\nCreating mac build\n=============================================="
    yarn run electron-build --mac || npm run electron-build --mac
    cd "./../.."
    echo -e "\n\nZipping build folder\n=============================================="
    "../bin/7z.exe" a "desktop-mac-$commit_id.zip" "./desktop/frontend/dist/*"
    echo -e "\n\nBuild saved to $PWD/desktop-mac-$commit_id.zip\n=============================================="
else
    :
fi
