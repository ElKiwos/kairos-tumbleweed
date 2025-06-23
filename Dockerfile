FROM quay.io/kairos/opensuse:leap-15.6-standard-arm64-rpi4-v3.3.4-k3s1.32.2

ARG VERSION


RUN zypper in -y nfs-client libsensors4 sensors sensord

RUN echo "CUSTOM_VERSION=\"LEAP-${VERSION}\"" >> /etc/kairos-release
