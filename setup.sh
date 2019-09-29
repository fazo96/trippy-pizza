#!/bin/bash

set -e

echo "Welcome to the TrippyPizza First time Setup"
echo "Make sure you have read the README and set up your configuration"
echo
echo "Step 1 of 2 - Setting up the directory tree for application data"
echo

set -x
export $(cat .env | xargs) 
mkdir -p $DATA/syncthing/folders/
mkdir -p $DATA/syncthing/config/
mkdir -p $DATA/nextcloud/mariadb/
mkdir -p $DATA/nextcloud/html/
mkdir -p $DATA/mumble/
mkdir -p $DATA/minecraft/
mkdir -p $DATA/bitwarden/
mkdir -p $DATA/jellyfin/cache
mkdir -p $DATA/jellyfin/config
mkdir -p $MEDIA/
set +x

echo
echo "Step 2 of 2 - Downloading docker images"
echo
set -x
docker-compose pull
set +x

echo
echo "Done. See README.md for further instructions"
