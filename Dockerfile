FROM resin/rpi-raspbian

RUN apt-get -y update && \
apt-get install -yqq \
openssh-server \
wget \
libjpeg8-dev

#Add User and Install Tonido
RUN mkdir /usr/local/tonido && wget -q -O - http://patch.codelathe.com/tonido/live/installer/armv6l-rpi/tonido.tar.gz|tar zx -C /usr/local/tonido

##UNCOMMENT AND CHANGE THIS TO YOUR PASSWORD IF YOU WANT
#RUN echo 'root:<yourpasswordhere>' | chpasswd

RUN useradd --no-log-init --create-home --shell /bin/bash tonido
USER tonido
WORKDIR /home/tonido

# Expose Port
EXPOSE 10001

VOLUME ["/usr/local/tonido", "/home/tonido"]

CMD /usr/local/tonido/tonido.sh start && /bin/bash
