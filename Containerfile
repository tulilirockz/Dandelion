FROM quay.io/toolbx-images/almalinux-toolbox:latest

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A cloud-native terminal experience" \
      maintainer="tulilirockz.pub+contact@gmail.com>"

COPY etc /etc

COPY extra-packages /

RUN curl --proto '=https' --tlsv1.2 -sSf -L https://nixos.org/nix/install | sh -s -- --daemon

RUN source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh && nix profile --extra-experimental-features nix-command --extra-experimental-features flakes install github:ublue-os/fleek/main

#RUN dnf update -y && \
#    grep -v '^#' /extra-packages | xargs dnf install -y

RUN rm /extra-packages


ENV SHELL /usr/bin/fish

ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8

RUN   ln -fs /bin/sh /usr/bin/sh && \
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/buildah && \
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/docker && \
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/flatpak && \ 
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/podman && \
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/rpm-ostree && \
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/transactional-update
     
