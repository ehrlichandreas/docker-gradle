FROM gradle:3.4-jdk8-alpine
USER root
RUN set -o errexit -o nounset \
    && echo "Installing dependencies" \
    && apk add --no-cache \
            git \
            bash \
            openssh \
            wget \
            curl
USER gradle
