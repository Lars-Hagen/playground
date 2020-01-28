#!/usr/bin/env bash


docker build --tag larshagen/playground:$1 .

ID=$(docker run -d -p 80:80 larshagen/playground:$1)

docker kill $ID