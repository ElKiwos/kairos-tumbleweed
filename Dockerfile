FROM quay.io/kairos/opensuse:tumbleweed-standard-arm64-rpi4-v2.4.2-k3sv1.28.2-k3s1

RUN zypper in -y nfs-client

RUN export VERSION="tumbleweed-rpi-v2.4.2-k3sv1.28.2-k3s1"
RUN envsubst '${VERSION}' </etc/os-release
