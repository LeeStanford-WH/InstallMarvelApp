#!/bin/bash
#
# Remove old Marvel.app
cd /Applications
osascript -e 'quit app "Marvel"'
sudo rm -rf Marvel.app
#
#
mkdir /private/var/tmp/Marvel
cd /private/var/tmp/Marvel

# Installing Coda
curl -L -O "https://storage.googleapis.com/sketch-plugin/Marvel.zip"
unzip "Marvel.zip"
sudo mv Marvel.app /Applications
cd /private/var
hdiutil detach /Volumes/Google\ Chrome
/bin/rm -rf /private/var/tmp/chrome
exit 0      ## Success
exit 1      ## Failure
