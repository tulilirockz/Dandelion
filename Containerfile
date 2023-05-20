FROM quay.io/toolbx-images/opensuse-toolbox:tumbleweed

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A cloud-native terminal experience" \
      maintainer="tulilirockz.pub+contact@gmail.com>"

COPY etc /etc

COPY extra-packages /

RUN rpm --import 'https://packages.microsoft.com/keys/microsoft.asc' && \
    wget -O '/etc/zypp/repos.d/microsoft-prod.repo' 'https://packages.microsoft.com/config/opensuse/15/prod.repo' && \
    chown root:root '/etc/zypp/repos.d/microsoft-prod.repo' && \
    zypper ar 'https://packages.microsoft.com/yumrepos/vscode' && \
    echo 'a' | zypper ar 'https://download.opensuse.org/repositories/shells/openSUSE_Factory/shells.repo' && \
    zypper -n --gpg-auto-import-keys refresh

RUN zypper -n update -y && \
    zypper -n install -y $(grep -v '^#' /extra-packages | xargs) && \
    zypper -n clean && \
    rm /extra-packages