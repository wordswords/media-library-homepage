# media-library-homepage

![Alt text](https://i.imgur.com/HWZPRH5.png "My Media Library Homepage")

A simple personal homepage that I use to list and organise my media.

## Requirements

Works under Debian Linux systems with Python 3 installed.

# Installation

1) Run the script `install-media-library-homepage-server.sh`.
2) Run this command to make your computer serve the homepage always on boot `sudo systemctl enable media-library-homepage-server`

# Accessing the homepage

The Python3 web server binds on all available interfaces on port 7777, so you should be able to access it on the installed computer via `http://localhost:7777` and over the network on port 7777 on your network IP address.

# Editing the homepage

You will need to fork/duplicate this repository and update the references in the shell scripts to your personal github repo. Once you have done that, the process is:

1) Make edits to the homepage 
2) Commit them to your Github repo 
3) Run the script `update-media-library-homepage.sh`.

# Uninstalling

Run the script `uninstall-media-library-homepage-server.sh`.

# Reuse

You are free to reuse this project how you want. Let me know if I can be of any help.

