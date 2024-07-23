FROM quay.io/kairos/opensuse:tumbleweed-standard-arm64-rpi3-v3.1.1-k3sv1.30.2-k3s1

ARG VERSION


RUN zypper in -y nfs-client libsensors4 sensors sensord

RUN echo "CUSTOM_VERSION=\"${VERSION}\"" >> /etc/os-release
