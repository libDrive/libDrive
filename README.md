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
  <a href="https://t.me/libdrive_support">
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Telegram_logo.svg/42px-Telegram_logo.svg.png" width="42" />
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

- 🍿 Movie, TV Show and Anime media management
- 📜 Automatic information gathering and display of:
  - Title
  - Trailer
  - Release date
  - Poster image
  - Synopsis
  - Rating
  - Language
  - Genres
- 👥 User management which includes:
  - Public [sign up](https://github.com/libDrive/libDrive/wiki/Config#signup)
  - Closed signup (manual account creation)
  - [No authentication](https://github.com/libDrive/libDrive/wiki/Config#auth) (public)
  - [Whitelisting](https://github.com/libDrive/libDrive/wiki/Config#category_list)
  - [Blacklisting](https://github.com/libDrive/libDrive/wiki/Config#account_list)
- 🔀 Quality selection using Google Drive [transcoded videos](https://github.com/libDrive/libDrive/wiki/Config#transcoded)
- 🔎 [Search](https://github.com/libDrive/libDrive/wiki/Screenshots#search-page) functionality
- 🤹 Genre filters
- 🧾 [Service accounts](https://github.com/libDrive/libDrive/wiki/Config#service_accounts-optional) to bypass 750GB/day download limit
- 🌟 [Starred lists](https://github.com/libDrive/libDrive/wiki/Screenshots#starred-lists-page), which are like favorite lists that allow you to add any media and put them into a list
- 🕑 A pseudo watch history, which is used to automatically go to the last episode you were watching in TV Shows
- ©️ [Softcoded subtitles](https://github.com/libDrive/libDrive/wiki/Config#subtitles) support, this includes user uploaded subtitles and subtitles stored on Google Drive
- 🈂️ [Language](https://github.com/libDrive/libDrive/wiki/Config#category_list) switching support
- ⚙️ [Admin panel](https://github.com/libDrive/libDrive/wiki/Screenshots#settings-page) interface
- 📺 [Serverless video CDN](https://github.com/libDrive/libDrive/wiki/Setup#prerequisites) host support (such as Cloudflare)
- ⌛ Automated metadata building with [custom interval](https://github.com/libDrive/libDrive/wiki/Config#build_interval)
- 📱 Progressive web app (PWA) installation support
- 💸 Embedded [arc.io support](https://github.com/libDrive/libDrive/wiki/Config#arcio-optional)
- 🎨 4 custom [themes](https://github.com/libDrive/libDrive/wiki/Screenshots#themes)
- 🤳 Mobile friendly interface

## To do list

- Allow multiple folders for one category

# Wiki links

- [wiki/Build](https://github.com/libDrive/libDrive/wiki/Build)
- [wiki/Config](https://github.com/libDrive/libDrive/wiki/Config)
- [wiki/Contributors](https://github.com/libDrive/libDrive/wiki/Contributors)
- [wiki/Demo](https://github.com/libDrive/libDrive/wiki/Demo)
- [wiki/FAQ](https://github.com/libDrive/libDrive/wiki/FAQ)
- [wiki/Screenshots](https://github.com/libDrive/libDrive/wiki/Screenshots)
- [wiki/Setup](https://github.com/libDrive/libDrive/wiki/Setup)
- [wiki/Structure](https://github.com/libDrive/libDrive/wiki/Structure)

# Funding

Help support me and libDrive by funding this project through one of the following mediums

- [Ko-fi](https://ko-fi.com/eliasbenb)
- [PayPal](http://paypal.me/eliasbenb)

If you don't have any money to spare you can still support me by settings the `arcio` config variable to `dev`!

# Preview

![preview](https://user-images.githubusercontent.com/54410649/127863841-833b0b00-ff7d-4585-9e5e-09c356a0f59f.png)

You can access a demo of libDrive at <https://demo.libdrive.tk>

You can also access a static build of libDrive at <https://web.libdrive.tk> but you would need an active server to login (this is not a demo)
