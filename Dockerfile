FROM quay.io/kairos/opensuse:tumbleweed-standard-arm64-rpi4-v3.2.4-k3sv1.31.3-k3s1

ARG VERSION


RUN zypper in -y nfs-client libsensors4 sensors sensord

RUN echo "CUSTOM_VERSION=\"${VERSION}\"" >> /etc/os-release
