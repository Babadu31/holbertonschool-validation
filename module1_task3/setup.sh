apt update
apt install hugo
apt install make
make build
exit 255
echo "recipe for target 'build' failed" >&2