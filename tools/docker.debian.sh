# /bin/sh
#
# Install Docker on Debian System
#

apt-get update

# Install packages to allow apt to use a repository over HTTPS:
apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common

# Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

# add the docker repository
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

# Update the apt package index.
apt-get update

# Install the latest version of Docker CE and containerd, or go to the next step to install a specific version:
apt-get install docker-ce docker-ce-cli containerd.io
