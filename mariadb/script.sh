#!/usr/bin/env bash


docker build --tag larshagen/playground:$1 .

ID=$(docker run -d -p larshagen/playground:$1)

docker kill $ID