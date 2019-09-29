# Trippy Pizza

Trippy Pizza is a set of scripts and configurations as code for running a variety of self hosted web
applications and services. It powers my "personal cloud", [trippy.pizza](https://trippy.pizza).

## What's in it

Trippy pizza will automatically set up the following services for you:

- **Syncthing** File Synchronization Tool
- **Nextcloud** Personal Cloud solution with Collabora for Office editing
- **Filebrowser** File manager
- **Minecraft** server (official version)
- **Bitwarden** Password Manager (using bitwarden-rs)
- **Mumble** Voice Chat Server
- and more!

## Requirements

You need:

- at least 6 GB of free RAM
- a domain like `trippy.pizza` with a wildcard A record pointing to the IP where you host this stuff from
- all ports for the services you need must be open. Most only need port 443 and 80 but others need custom ports.
- an email address for HTTPS certificates to be automatically set up via Let's Encrypt
- docker to be installed and running
- docker-compose to be installed

## Install

- copy `.env.sample` to `.env` then fill out the required settings
- customize/remove whatever you want
- run `setup.sh` to perform some first time setup stuff needed for services to start smoothly. You can skip this if you know what you are doing, but in that case at least take a look at the script
- run `docker-compose up -d` and the services will all start
- some services will require configuration or first time setup. Try every service to make sure they are ready for use

## Usage and maintainance

Use `docker-compose pull` to download system updates for all services.

When it's done, use `docker-compose up -d` to apply changes. Do this
often to make sure you get security updates.

Some services such as nextcloud might require manual action after some updates.

## Data and backups

All data is stored in one folder. Just back up the data folder to restore it exactly like it was.
Make sure you backup the stuff as root because some files will only be readable by root.

If you want to make a backup of the configuration files too, then also back up the project folder.

Make sure all backing up and restoring is done when the services are down.
