#!/usr/bin/env bash


docker build --tag larshagen/playground:$1 .

ID=$(docker run -d -p 80:80 larshagen/playground:$1)

set -eux 
sleep 1
curl -ik localhost

docker kill $ID

docker push larshagen/playground:$1