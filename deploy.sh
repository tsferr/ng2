#!/bin/bash

echo "Removing container"
docker rm -f ng2_build

echo "Removing image"
docker rmi -f ng2_image

echo "Create image"
docker build -t ng2_image .

echo "Create container and start"
docker run -d -p 80:80 --name ng2_build ng2_image

echo "Enjoy the aplication"