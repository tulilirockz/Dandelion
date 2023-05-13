FROM quay.io/toolbx-images/opensuse-toolbox:tumbleweed

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A cloud-native terminal experience" \
      maintainer="tulilirockz.pub+contact@gmail.com>"

COPY etc /etc

COPY extra-packages /
RUN zypper update -y && \
    grep -v '^#' /extra-packages | xargs zypper install -y && \
    zypper clean
RUN rm /extra-packages