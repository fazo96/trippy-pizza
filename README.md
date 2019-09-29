# Trippy Pizza

Trippy Pizza is a set of scripts and configurations as code for running a variety of self hosted web
applications and services. It powers my "personal cloud", [trippy.pizza](https://trippy.pizza).

## What's in it

Trippy pizza will automatically set up the following services for you:

- [Heimdall](https://heimdall.site/) Home Page
- [Nextcloud](https://nextcloud.com) Personal Cloud solution with [Collabora](https://nextcloud.com/collaboraonline/) Office suite
- [Filebrowser](https://filebrowser.xyz/) File Manager
- [Syncthing](https://syncthing.net) File Synchronization Tool
- [Minecraft](https://www.minecraft.net) Java Edition Server
- [Mumble](https://www.mumble.com/) Voice Chat Server
- [Jellyfin](https://jellyfin.org/) Media System
- [Bitwarden](https://bitwarden.com/) Password Manager (using bitwarden-rs server)
- [Portainer](https://www.portainer.io/) Docker Container Manager
- [Librespeed](https://github.com/librespeed/speedtest) Speedtest to check how much bandwidth you have to the server

All services will be automatically set up to run via HTTPS with a free,trusted Let's Encrypt certificate

## Requirements

You need:

- at least 6 GB of free RAM
- a domain like `trippy.pizza` with a wildcard A record pointing to the IP where you host this stuff from
- all ports for the services you need must be open. Most services only need port 443 and 80 but P2P applications such as Syncthing require their port to be open for best results
- an email address for HTTPS certificates to be automatically set up via Let's Encrypt
- docker to be installed and running
- docker-compose to be installed

## Install

- copy `.env.sample` to `.env` then fill out the required settings
- customize/remove whatever you want from docker-compose. You are encouraged to customize the installation to your needs
- run `setup.sh` to perform some first time setup stuff needed for services to start smoothly. You can skip this if you know what you are doing, but in that case at least take a look at the script
- run `docker-compose up -d` and the services will all start
- some services will require configuration or first time setup. Try every service to make sure they are ready for use

## Usage and maintainance

Run `setup.sh` to download updates and prepare everything needed

When it's done, use `docker-compose up -d` to apply changes.

Some services such as nextcloud might require manual action after some updates.

You are encouraged to do this often to keep your services updated and secure.

## Data and backups

All data is stored in one folder that you configure. Just back it up then if needed, restore it exactly like it was.
Make sure you backup the stuff as root because some files might only be readable by root.

If you want to make a backup of the configuration files too, then also back up the project's folder.

Make sure all backing up and restoring is done when the services are down to avoid any issues.
