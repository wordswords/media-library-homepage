# media-library-homepage

![Alt text](https://i.imgur.com/HWZPRH5.png "My Media Library Homepage")

A simple personal homepage that I use to list and organise my media.

## Requirements

Tested under latest Ubuntu LTS.

# Installation

1. Install lighttpd - `sudo apt install lighttpd`
2. Run the `./deploy-media-library-homepage.sh` script to deploy the page for the first time.
3. Run `sudo ln -s ${PWD}/deploy-media-library-homepage.sh /etc/cron.d/cron.daily/deploy-media-library-homepage` to make it update every day with the latest version.

# Accessing the homepage

1. Browse to `http://localhost` or equivalent, to view the homepage.

# Editing the homepage

You will need to fork/duplicate this repository and update all the github references in the shell scripts to your personal github repo. Once you have done that, the process is:

1) Make edits to the homepage
2) Commit them to your Github repo
3) Run the script `deploy-media-library-homepage.sh`.

# Reuse

You are free to reuse this project how you want. Let me know if I can be of any help.

