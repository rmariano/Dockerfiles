FROM python:3.9-rc-slim AS builder
ENV TAG="v2"
RUN apt-get update && apt-get install -y \
    wget unzip \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir /usr/local/code \
    && wget https://github.com/rmariano/Clean-code-in-Python/archive/$TAG.zip -O /usr/local/code/$TAG.zip \
    && cd /usr/local/code && unzip $TAG.zip

FROM python:3.9-rc-slim AS ccip
WORKDIR /usr/local/ccip

LABEL maintainer="marianoanaya at gmail dot com"
LABEL description="Clean code in Python, second edition"
LABEL version="2.0"

ENV VIRTUAL_ENV=/usr/local
ENV SOURCE=/usr/local/ccip/Clean-code-in-Python-2/book/src

COPY --from=builder /usr/local/code /usr/local/ccip/
RUN useradd ccip \
    && apt-get update && apt-get install -y make \
    && rm -rf /var/lib/apt/lists/*
RUN cd $SOURCE && make setup

USER ccip
COPY --chown=ccip entrypoint.sh /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["/bin/bash"]
