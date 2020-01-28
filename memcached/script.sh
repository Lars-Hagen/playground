#!/usr/bin/env bash


docker build --tag larshagen/playground:$1 .

ID=$(docker run -d -p 11211:11211 larshagen/playground:$1)

set -eux

echo "stats settings" | nc -q 1 localhost 11211 | grep maxbytes

docker kill $ID

docker push larshagen/playground:$1