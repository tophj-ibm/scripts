#!/bin/bash
apt-get update && apt-get install -y docker-engine

git clone https://github.com/tophj-ibm/docker.git
cd docker
git fetch --all
git checkout unicamp-1.13.0
DOCKER_BUILD_PKGS=ubuntu-yakkety make deb
echo " - - - - - - - - - - - - - - - - - - - - "
echo ""
echo " The final deb should be located in : "
echo " docker/bundles/latest/build-deb/ubuntu-yakkety/*.deb "
echo ""
echo " Feel free to copy this out to target destination"
echo ""
echo " - - - - - - - - - - - - - - - - - - - - "
