#!/bin/bash

echo "Removing container"
sudo docker rm -f ng2_build

echo "Removing image"
sudo docker rmi -f ng2_image

echo "Create image"
sudo docker build -t ng2_image

echo "Create container and start"
sudo docker run -d -p 80:80 --name ng2_build ng2_image

echo "Enjoy the aplication"