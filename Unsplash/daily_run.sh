#!/bin/bash

SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

cd $SCRIPTPATH
docker-compose up
gsettings set org.gnome.desktop.background picture-uri "file://$SCRIPTPATH/daily_image/image.jpg"
docker-compose down
cd -
