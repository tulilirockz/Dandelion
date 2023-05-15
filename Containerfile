FROM quay.io/toolbx-images/opensuse-toolbox:tumbleweed

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A cloud-native terminal experience" \
      maintainer="tulilirockz.pub+contact@gmail.com>"

COPY etc /etc

COPY extra-packages /
RUN zypper -n addrepo https://download.opensuse.org/repositories/shells/openSUSE_Factory/shells.repo shells | echo "a" && \
    zypper -n refresh && \
    zypper -n update -y && \
    grep -v '^#' /extra-packages | xargs zypper install -y && \
    zypper -n clean
RUN rm /extra-packages