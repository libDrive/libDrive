#!/bin/bash

echo -e "\n\nCreating desktop build\n=============================================="

while [[ $os != @(1|2|3|"win"|"linux") ]]; do
    echo -e "\n\nWhich OS would you like to make a release for?\n(the build must be made on the specified OS)\n==============================================\n1) win\n2) linux"
    read os
done

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
    commit_id=$(git rev-parse --short HEAD)
    cd ".."
else
    echo -e "\n\nCloning the frontend repositry\n=============================================="
    git clone "https://github.com/libDrive/frontend.git"
    cd "./frontend"
    commit_id=$(git rev-parse --short HEAD)
    cd ".."
fi

cd "./frontend"
echo -e "\n\nInstalling frontend dependencies\n=============================================="
yarn install --network-timeout 1000000

if [ -d "./dist" ]; then
    rm -r "./dist"
fi

if [ -d "./build" ]; then
    rm -r "./build"
fi

if [ $os == "win" ] || [ $os == "1" ]; then
    echo -e "\n\nCreating windows build\n=============================================="
    yarn run electron-build --win
    cd ".."
    echo -e "\n\nZipping build folder\n=============================================="
    if [[ $(uname) =~ "CYGWIN" || $(uname) =~ "MINGW" || $(uname) =~ "MSYS" ]]; then
        "../bin/7z.exe" a "desktop-win-$commit_id.zip" "./frontend/dist/*"
    elif [[ $(uname) =~ "Linux" ]]; then
        cd "./frontend/dist"
        zip -r "desktop-win-$commit_id.zip" "./"
        mv "desktop-win-$commit_id.zip" "../.."
        cd "../.."
    else
        :
    fi
    echo -e "\n\nBuild saved to $PWD/desktop-win-$commit_id.zip\n=============================================="
elif [ $os == "linux" ] || [ $os == "2" ]; then
    echo -e "\n\nCreating linux build\n=============================================="
    yarn run electron-build --linux
    cd ".."
    echo -e "\n\nZipping build folder\n=============================================="
    if [[ $(uname) =~ "CYGWIN" || $(uname) =~ "MINGW" || $(uname) =~ "MSYS" ]]; then
        "../bin/7z.exe" a "desktop-linux-$commit_id.zip" "./frontend/dist/*"
    elif [[ $(uname) =~ "Linux" ]]; then
        cd "./frontend/dist"
        zip -r "desktop-linux-$commit_id.zip" "./"
        mv "desktop-linux-$commit_id.zip" "../.."
        cd "../.."
    else
        :
    fi
    echo -e "\n\nBuild saved to $PWD/desktop-linux-$commit_id.zip\n=============================================="
else
    :
fi

cd ..
