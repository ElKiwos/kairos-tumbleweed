FROM quay.io/kairos/opensuse:leap-15.6-standard-arm64-rpi4-v3.4.2-k3sv1.32.3-k3s1 

ARG VERSION


RUN zypper in -y nfs-client libsensors4 sensors sensord

RUN echo "CUSTOM_VERSION=\"LEAP-${VERSION}\"" >> /etc/kairos-release
