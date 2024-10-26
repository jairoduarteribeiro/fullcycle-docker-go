FROM golang:1.23.2

RUN groupadd --gid 1000 dev && \
    useradd --uid 1000 --gid dev --shell /bin/bash --create-home dev

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        vim; \
    rm -rf /var/lib/apt/lists/*

USER dev
