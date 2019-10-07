FROM ubuntu:bionic

RUN apt update && apt upgrade --yes
RUN apt install --yes wget gdebi-core
RUN wget https://github.com/Motion-Project/motion/releases/download/release-4.2.2/bionic_motion_4.2.2-1_amd64.deb
RUN gdebi --non-interactive bionic_motion_4.2.2-1_amd64.deb
RUN apt remove --yes wget gdebi-core && apt autoremove --yes && rm bionic_motion_4.2.2-1_amd64.deb

RUN apt install --yes ffmpeg v4l-utils
RUN apt install --yes python-pip python-dev curl libssl-dev libcurl4-openssl-dev libjpeg-dev

RUN rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir motioneye

RUN mkdir /motioneye && cat /usr/local/share/motioneye/extra/motioneye.conf.sample | sed -e "s?/etc/motioneye?/motioneye?" -e "s?/var/run?/motioneye?" -e "s?/var/log?/motioneye?" -e "s?/var/lib/motioneye?/motioneye?" > motioneye.conf

CMD meyectl startserver -c motioneye.conf

EXPOSE 876
