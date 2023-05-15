FROM quay.io/toolbx-images/opensuse-toolbox:tumbleweed

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A cloud-native terminal experience" \
      maintainer="tulilirockz.pub+contact@gmail.com>"

COPY etc /etc

COPY extra-packages /
RUN echo 'a' | zypper --quiet addrepo --refresh -p 90 'https://download.opensuse.org/repositories/shells/openSUSE_Factory/shells.repo' && \
    zypper -n --gpg-auto-import-keys refresh && \
    zypper -n update -y && \
    zypper -n install -y $(grep -v '^#' /extra-packages | xargs) && \
    zypper -n clean
RUN rm /extra-packages