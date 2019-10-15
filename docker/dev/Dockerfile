FROM gordenzhang/tiny-nginx-php:basic

RUN mkdir /root/.unison && echo "batch = true" > /root/.unison/default.prf && apk add --no-cache unison inotify-tools

COPY files /

