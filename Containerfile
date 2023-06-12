FROM quay.io/toolbx-images/opensuse-toolbox:tumbleweed

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command and tulilirockz/Turquoise images" \
      summary="A box for tulilirockz/Turquoise management" \
      maintainer="tulilirockz.pub+contact@gmail.com>"

COPY extra-packages /

RUN zypper -n dup -y && \
    zypper -n install -y $(grep -v '^#' /extra-packages | xargs) && \
    zypper -n clean && \
    rm /extra-packages
