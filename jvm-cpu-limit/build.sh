#!/bin/bash 

docker build -t cpu-limit . 
docker create --name cpu-limit cpu-limit
docker cp cpu-limit:/tmp/libjvm-cpu-limit.so .
cp libjvm-cpu-limit.so ../fish-pepper/run-java-sh/fp-files/
docker rm cpu-limit
