FROM debian:stable
WORKDIR /tmp

RUN apt update
RUN apt upgrade
RUN apt install -y git curl build-essential libssl-dev zlib1g-dev
RUN git clone https://github.com/TelegramMessenger/MTProxy
RUN cd MTProxy && make && mv objs/bin/mtproto-proxy /usr/local/bin && cd .. && rm -r MTProxy
ENTRYPOINT [ "/usr/local/bin/mtproto-proxy" ]
