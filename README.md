# docker-tonido-rpi
tonido for raspberry pi dockerfile

Tonido on Docker on a Raspberry Pi

Based of resin:rpi-raspbian, the image pulls the latest Tonido archive and unpacks it and pulls libjpeg8 as well.

Build: docker build -t tonido-rpi .

Usage: docker run --name tonido-rpi -d -p 10001:10001 -v /path-to-video/tondio:/home/tonido -it icloudphil/tonido-rpi:latest

Credit: AZsoftAlanZheng/rpi-tonido digitalap3/tonido_dockerfile
