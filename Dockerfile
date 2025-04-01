FROM quay.io/kairos/opensuse:tumbleweed-standard-arm64-rpi4-v3.3.4-k3s1.32.2

ARG VERSION


RUN zypper in -y nfs-client libsensors4 sensors sensord

RUN echo "CUSTOM_VERSION=\"${VERSION}\"" >> /etc/os-release
