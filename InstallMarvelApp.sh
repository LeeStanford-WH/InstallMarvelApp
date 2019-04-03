#!/bin/bash
#
# InstallMarvelApp
# Created by Lee Stanford
# lee.stanford@workhuman.com
# April 3rd, 2019

# Remove old Marvel.app
cd /Applications
osascript -e 'quit app "Marvel"'
sudo rm -rf Marvel.app

# Create temp directory for the download
mkdir /private/var/tmp/Marvel
cd /private/var/tmp/Marvel

# Download and unzip Marvel.app
curl -L -O "https://storage.googleapis.com/sketch-plugin/Marvel.zip"
unzip "Marvel.zip"

# Copy the downloaded app to the Applications folder
sudo mv Marvel.app /Applications

# Delete the temp folder
cd /private/var
hdiutil detach /Volumes/Google\ Chrome
/bin/rm -rf /private/var/tmp/chrome

exit 0      ## Success
exit 1      ## Failure
