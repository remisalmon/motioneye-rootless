FROM alpine:edge

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories

RUN apk add --no-cache motion ffmpeg v4l-utils py2-pip libcurl libjpeg

RUN apk add --no-cache build-base curl-dev jpeg-dev python2-dev

RUN pip install --no-cache-dir --upgrade pip setuptools && pip install --no-cache-dir motioneye

RUN apk del build-base curl-dev jpeg-dev python2-dev

RUN mkdir /motioneye && cat /usr/share/motioneye/extra/motioneye.conf.sample | sed -e "s?/etc/motioneye?/motioneye?" -e "s?/var/run?/motioneye?" -e "s?/var/log?/motioneye?" -e "s?/var/lib/motioneye?/motioneye?" > motioneye.conf

CMD meyectl startserver -c motioneye.conf

EXPOSE 8765
