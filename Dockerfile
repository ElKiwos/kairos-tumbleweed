FROM quay.io/kairos/opensuse:tumbleweed-standard-arm64-rpi4-v3.1.3-k3sv1.31.0-k3s1

ARG VERSION


RUN zypper in -y nfs-client libsensors4 sensors sensord

RUN echo "CUSTOM_VERSION=\"${VERSION}\"" >> /etc/os-release
