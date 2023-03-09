FROM alpine:3.14 as base_image

RUN apk update
RUN apk upgrade

# Installs
RUN apk add --progress --no-cache \
bash \
git \
python3 \
build-base # Installs GCC and more. https://wiki.alpinelinux.org/wiki/GCC

RUN adduser -S user -s /bin/bash --home /home
USER user

RUN bash
