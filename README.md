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
  <a href="https://eliasbenb.github.io">
    <img src="https://i.ibb.co/rmDXnnk/Magnet-Magnet-prod.png" width="180" />
  </a>
</p>

# What is this repo?

libDrive is a media library manager, similar to [Plex](https://www.plex.tv), that organizes Google Drive folders and offers an intuitive interface to explore them

## Features supported

- Automatically retreives movie and TV show metadata based on file name
- Movie/TV show synopsis, release date, posters etc. are displayed
- Fast streaming speeds
- User management, to allow multiple accounts
- Search feature to find specific movies/TV shows
- Admin panel UI

## To do list

- Add transcoding on server side
- Make backend multithreaded
- Stream videos directly to client rather than through server

# Installation

## Client side

Use this if a server has already been set up (you have the URL of the libDrive server)

- **Windows:** To install libDrive download the file titled `libDrive_Desktop_win.exe` from [here](https://github.com/libDrive/libDrive/releases/latest)
- **Linux:** To install libDrive download the latest file titled `libDrive_Desktop_linux.snap` from [here](https://github.com/libDrive/libDrive/releases/latest)

## Server side

### Prerequisites

- A [Google Developers Console](https://console.developers.google.com) API client credentials. To make one go to [this link](https://developers.google.com/drive/api/v3/quickstart/python) and click the `Enable the Drive API` button and follow the instructions
- A [TMDB API](https://www.themoviedb.org/settings/api) key
- [Python 3](https://www.python.org)

### Setup

- First make sure you have all the [prerequisites](#prerequisites)
- Now download the latest server version from [here](https://github.com/libDrive/libDrive/releases/latest). The file name should look like this: `libDrive_Server.zip`
- Extract the downloaded zip file then open a termninal in the folder
- In the termninal, run `pip install -r requirements.txt`
- Now your server is ready, to start it run `python main.py`
- This is not a production build and will only work locally. To create a production build consider using a WSGI such as [Gunicorn](https://gunicorn.org/) (if you're on Windows Gunicorn will not work)

# Screenshots
