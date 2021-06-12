<a href="#">
  <h3 align="center">
    <img src="https://i.ibb.co/HVB5Dw1/lib-Drive-Header.png" width="600px" />
  </h3>
</a>
<p align="center">
  <a href="https://github.com/libDrive/libDrive/releases">
  <img src="https://img.shields.io/github/downloads/libDrive/libDrive/total?color=%234197fe&style=for-the-badge" />
  </a>
  <a href="https://github.com/libDrive/libDrive/releases/latest">
  <img src="https://img.shields.io/github/v/release/libDrive/libDrive?color=%234197fe&style=for-the-badge" />
  </a>
</p>
<p align="center">
  <a href="https://heroku.com/deploy?template=https://github.com/libDrive/heroku">
  <img src="https://img.shields.io/badge/Deploy%20To%20Heroku-blueviolet?style=for-the-badge&logo=heroku" width="200" />
  </a>
</p>
<p align="center">
  <a href="https://t.me/libdrive_news">
    <svg xmlns="http://www.w3.org/2000/svg" width="42" height="42" fill="currentColor" class="bi bi-telegram" viewBox="0 0 16 16">
      <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.287 5.906c-.778.324-2.334.994-4.666 2.01-.378.15-.577.298-.595.442-.03.243.275.339.69.47l.175.055c.408.133.958.288 1.243.294.26.006.549-.1.868-.32 2.179-1.471 3.304-2.214 3.374-2.23.05-.012.12-.026.166.016.047.041.042.12.037.141-.03.129-1.227 1.241-1.846 1.817-.193.18-.33.307-.358.336a8.154 8.154 0 0 1-.188.186c-.38.366-.664.64.015 1.088.327.216.589.393.85.571.284.194.568.387.936.629.093.06.183.125.27.187.331.236.63.448.997.414.214-.02.435-.22.547-.82.265-1.417.786-4.486.906-5.751a1.426 1.426 0 0 0-.013-.315.337.337 0 0 0-.114-.217.526.526 0 0 0-.31-.093c-.3.005-.763.166-2.984 1.09z" />
    </svg>
  </a>
</p>

# What is this repo?

libDrive is a Google Drive media library manager and indexer, similar to Plex, that organizes Google Drive media to offer an intuitive and user-friendly experience.

I decided to create this project to, of course, organize my Google Drive library, but also develop my coding skills, and learn JavaScript in the process.

This repository (<https://github.com/libDrive/libDrive>) only acts as a hub for information and community discussions regarding libDrive, no source code is displayed on this repository.

## Source code

- [libDrive/libDrive](https://github.com/libDrive/libDrive)
- [libDrive/server](https://github.com/libDrive/server)
- [libDrive/web](https://github.com/libDrive/web)
- [libDrive/cloudflare](https://github.com/libDrive/cloudflare)
- [libDrive/heroku](https://github.com/libDrive/heroku)
- [libDrive/config](https://github.com/libDrive/config)

## Features

- Movie, TV Show and Anime media management
- Automatic information gathering and display of:
  - Title
  - Release date
  - Poster image
  - Synopsis
  - Language
  - Genres
- User management which includes:
  - Ability to [sign up](https://github.com/libDrive/libDrive/wiki/Config#signup)
  - Manual account creation
  - [No authentication](https://github.com/libDrive/libDrive/wiki/Config#auth) (public)
  - [Whitelisting](https://github.com/libDrive/libDrive/wiki/Config#category_list)
  - [Blacklisting](https://github.com/libDrive/libDrive/wiki/Config#account_list)
- Quality selection using Google Drive [transcoded videos](https://github.com/libDrive/libDrive/wiki/Config#transcoded)
- Search functionality
- [Service accounts](https://github.com/libDrive/libDrive/wiki/Config#service_accounts-optional) to bypass 750GB/day download limit
- [Softcoded subtitles](ttps://github.com/libDrive/libDrive/wiki/Config#subtitles) support, this includes user uploaded subtitles and subtitles stored on Google Drive
- [Language](https://github.com/libDrive/libDrive/wiki/Config#category_list) switching support
- [Admin panel](https://github.com/libDrive/libDrive/wiki/Screenshots#settings-page) interface
- [Serverless video CDN](https://github.com/libDrive/libDrive/wiki/Setup#prerequisites) host support (such as Cloudflare)
- Automated metadata building with [custom interval](https://github.com/libDrive/libDrive/wiki/Config#build_interval)
- Progressive web app (PWA) installation support
- Embedded [arc.io support](https://github.com/libDrive/libDrive/wiki/Config#arcio-optional)
- 4 custom [themes](https://github.com/libDrive/libDrive/wiki/Screenshots#themes)
- Mobile friendly interface

## To do list

- Group movies of different qualities
- Allow multiple folders for one category

# Wiki links

- [wiki/Build](https://github.com/libDrive/libDrive/wiki/Build)
- [wiki/Config](https://github.com/libDrive/libDrive/wiki/Config)
- [wiki/Demo](https://github.com/libDrive/libDrive/wiki/Demo)
- [wiki/Screenshots](https://github.com/libDrive/libDrive/wiki/Screenshots)
- [wiki/Setup](https://github.com/libDrive/libDrive/wiki/Setup)
- [wiki/Structure](https://github.com/libDrive/libDrive/wiki/Structure)

# Funding

Help support me and libDrive by funding this project through one of the following mediums

- [Ko-fi](https://ko-fi.com/eliasbenb)

If you don't have any money to spare you can still support me by settings the `arcio` config variable to `dev`!

# Preview

![preview](https://user-images.githubusercontent.com/54410649/118400463-c4403000-b672-11eb-94a9-e9ad8cd1c3c3.png)

You can access a demo of libDrive at <https://demo.libdrive.tk>

You can also access a static build of libDrive at <https://web.libdrive.tk> but you would need an active server to login (this is not a demo)
