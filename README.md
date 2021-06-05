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
    <img src="https://www.herokucdn.com/deploy/button.svg" />
  </a>
</p>

<p align="center">
  <a href="https://eliasbenb.cf">
    <img src="https://i.ibb.co/rmDXnnk/Magnet-Magnet-prod.png" width="180" />
  </a>
</p>

<p align="center">
  <a href="https://t.me/libdrive_news">
    <img src="https://cdn0.iconfinder.com/data/icons/social-network-24/512/Telegram-64.png" />
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
- Search functionallity
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
- Add srt subtitle files

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

