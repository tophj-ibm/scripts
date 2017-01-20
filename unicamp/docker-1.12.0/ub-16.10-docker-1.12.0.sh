#!/bin/bash

git clone https://github.com/tophj-ibm/docker.git
cd docker
git fetch --all
git checkout unicamp-v1.12.0-with-make-debs
DOCKER_BUILD_PKGS=ubuntu-yakkety make deb
echo " - - - - - - - - - - - - - - - - - - - - "
echo ""
echo " The final deb should be located in : "
echo " docker/bundles/latest/build-deb/ubuntu-yakkety/*.deb "
echo ""
echo " Feel free to copy this out to target destination"
echo ""
echo " - - - - - - - - - - - - - - - - - - - - "
