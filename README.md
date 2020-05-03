# docker-tonido-rpi
tonido for raspberry pi dockerfile

Tonido on Docker on a Raspberry Pi, The Dockerfile can be found DOCKERFILE

Based of resin:rpi-raspbian, the image pulls the latest Tonido archive and unpacks it and pulls libjpeg8 as well.

Usage: docker run --name tonido-rpi -d -p 10001:10001 -v /path-to-video/tondio:/home/tonido -it icloudphil/toned-rpi:latest

Credit: AZsoftAlanZheng/rpi-tonido digitalap3/tonido_dockerfile