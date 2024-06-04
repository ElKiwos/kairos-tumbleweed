FROM quay.io/kairos/opensuse:tumbleweed-standard-arm64-rpi4-v2.5.0-k3sv1.29.0-k3s1

RUN zypper in -y nfs-client libsensors4 sensors sensord

RUN export VERSION="tumbleweed-standard-arm64-rpi4-v2.5.0-k3sv1.29.0-k3s1 "
RUN envsubst '${VERSION}' </etc/os-release
