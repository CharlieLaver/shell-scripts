#!/bin/bash

# Just setups my GNOME GUI preferences for ubuntu.

gnome-extensions disable ubuntu-dock@ubuntu.com
gsettings set org.gnome.shell.extensions.desktop-icons show-trash false
gsettings set org.gnome.shell.extensions.desktop-icons show-home false