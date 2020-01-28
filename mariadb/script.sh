#!/usr/bin/env bash


docker build --tag larshagen/playground:$1 .

#ID=$(docker run -d larshagen/playground:$1)

#docker kill $ID

docker push larshagen/playground:$1