FROM fedora:30

WORKDIR /code/cpython

RUN dnf update -y && dnf install -y dnf-plugins-core && dnf builddep -y python3
RUN dnf install -y make
