FROM node:alpine
ENV PATH="${PATH}:/app/node_modules/.bin"
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.cloud.tencent.com/' /etc/apk/repositories && sed -i 's/http:/https:/' /etc/apk/repositories && apk --no-cache add ca-certificates openssl wget && wget -q -O - https://gist.githubusercontent.com/hetykai/484209019b1b0d39ea649540e554a0a4/raw/b0448c1c625b431fb27d26c1edb62d60f8f6886f/setNodeMirror.sh | sh
