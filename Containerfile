FROM quay.io/toolbx-images/almalinux-toolbox:latest

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A cloud-native terminal experience" \
      maintainer="tulilirockz.pub+contact@gmail.com>"

ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8

COPY etc /etc

COPY extra-packages /
COPY nix-packages /

RUN dnf update -y && dnf clean all
RUN grep -v '^#' /extra-packages | xargs dnf install -y && dnf clean all

RUN curl --proto '=https' --tlsv1.2 -sSf -L https://nixos.org/nix/install | sh -s -- --daemon
RUN . /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh && nix profile install --extra-experimental-features nix-command --extra-experimental-features flakes github:ublue-os/fleek/main
RUN . /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh && grep -v '^#' /nix-packages | xargs -I{} echo "nixpkgs#{}" | xargs nix profile install --extra-experimental-features nix-command --extra-experimental-features flakes

RUN rm /extra-packages /nix-packages