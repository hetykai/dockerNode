FROM node:8-alpine
ENV PATH="${PATH}:/app/node_modules/.bin"
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.cloud.tencent.com/' /etc/apk/repositories && sed -i 's/http:/https:/' /etc/apk/repositories && apk --no-cache add ca-certificates openssl build-base bash make automake autoconf alpine-sdk gcc g++ libc-dev libpng libpng-dev libwebp libwebp-dev libjpeg-turbo libjpeg-turbo-dev libtool zlib zlib-dev lcms2 lcms2-dev musl nasm wget git python && wget -q -O - https://gist.githubusercontent.com/hetykai/484209019b1b0d39ea649540e554a0a4/raw/b0448c1c625b431fb27d26c1edb62d60f8f6886f/setNodeMirror.sh | sh
