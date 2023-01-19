#!/bin/bash
docker run --rm --tty --interactive --volume=$(pwd):/app --workdir=/app ubuntu:18.04 /bin/bash
sudo apt-get update && sudo apt-get install -y hugo make
sudo curl -L https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb -o last.deb
sudo apt install ./last.deb
sudo rm last.deb
make build