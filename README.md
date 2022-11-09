# Pythons

[![Build and Push](https://github.com/lukewiwa/pythons/actions/workflows/build.yml/badge.svg)](https://github.com/lukewiwa/pythons/actions/workflows/build.yml)

A docker container that has the following latest versions of python installed:

- 3.6
- 3.7
- 3.8
- 3.9
- 3.10
- 3.11

Stub files are provided to create default `python` and `pip` executables via linking. eg:

```dockerfile
RUN ln -sf /usr/local/bin/python3.6 /usr/local/bin/python
RUN ln -sf /usr/local/bin/pip3.6 /usr/local/bin/pip
```

These are the most up to date minor versions of currently supported python installations. The purpose of this container is mostly for testing and **not intended for deployment**. A typical use case is running tox tests against multiple versions of python both locally and in CI.
