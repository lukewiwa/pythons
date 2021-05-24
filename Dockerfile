FROM debian:latest

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
    curl git ca-certificates gcc build-essential zlib1g-dev libbz2-dev libreadline-dev libssl-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV LD_LIBRARY_PATH=/usr/local/lib/ \
    LC_ALL=C.UTF-8 \
    LANG=C.UTF-8 \
    PYTHONIOENCODING=utf-8

COPY --from=python:3.9 /usr/local/lib/libpython3.9.so.1.0 /usr/local/lib/libpython3.9.so.1.0
COPY --from=python:3.9 /usr/local/lib/python3.9/ /usr/local/lib/python3.9/
COPY --from=python:3.9 /usr/local/bin/python3.9 /usr/local/bin/python3.9

COPY --from=python:3.8 /usr/local/lib/libpython3.8.so.1.0 /usr/local/lib/libpython3.8.so.1.0
COPY --from=python:3.8 /usr/local/lib/python3.8/ /usr/local/lib/python3.8/
COPY --from=python:3.8 /usr/local/bin/python3.8 /usr/local/bin/python3.8

COPY --from=python:3.7 /usr/local/lib/libpython3.7m.so.1.0 /usr/local/lib/libpython3.7m.so.1.0
COPY --from=python:3.7 /usr/local/lib/python3.7/ /usr/local/lib/python3.7/
COPY --from=python:3.7 /usr/local/bin/python3.7 /usr/local/bin/python3.7

COPY --from=python:3.6 /usr/local/lib/libpython3.6m.so.1.0 /usr/local/lib/libpython3.6m.so.1.0
COPY --from=python:3.6 /usr/local/lib/python3.6/ /usr/local/lib/python3.6/
COPY --from=python:3.6 /usr/local/bin/python3.6 /usr/local/bin/python3.6

ENTRYPOINT [ "/bin/bash" ]
