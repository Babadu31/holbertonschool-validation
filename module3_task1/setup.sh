#!/bin/bash
docker run --rm --interactive --volume=$(pwd):/app --workdir=/app ubuntu:18.04 /bin/bash
apt-get update && sudo apt-get install -y hugo make
curl -L https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb -o last.deb
apt install ./last.deb
rm last.deb
make build