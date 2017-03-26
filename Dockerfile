FROM alpine:3.5
MAINTAINER Moritz Heiber <gitlab@heiber.im>

ENV HUGO_VERSION="0.19"

RUN apk add --no-cache git curl ca-certificates && \
  curl -L https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz | tar xz --strip-components=1 -C /tmp && \
  install -m0755 -o root -g root /tmp/hugo_${HUGO_VERSION}_linux_amd64 /bin/hugo
