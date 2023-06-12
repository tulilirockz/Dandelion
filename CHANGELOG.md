# Changelog

## [3.1.0](https://github.com/tulilirockz/Dandelion/compare/v3.0.0...v3.1.0) (2023-06-12)


### Features

* change scope to management for turquoise images ([bc03978](https://github.com/tulilirockz/Dandelion/commit/bc03978afb266e67660cc80541d8857d3d591563))

## [3.0.0](https://github.com/tulilirockz/Dandelion/compare/v2.0.0...v3.0.0) (2023-05-26)


### ⚠ BREAKING CHANGES

* move to fedora based and remove some packages

### Features

* add breeze5 and libicu ([dce1c8d](https://github.com/tulilirockz/Dandelion/commit/dce1c8de9623aa3e241978e840756849cedb4da8))
* add buildah to fedora image ([0acd57d](https://github.com/tulilirockz/Dandelion/commit/0acd57d6d6f2436802953ca73ecb54c7b44b2453))
* add chsh for fish shell ([b7c4bdf](https://github.com/tulilirockz/Dandelion/commit/b7c4bdf77f3ea32f3c4aba804894dd59e0836aa2))
* add fetching utilities ([5a4628c](https://github.com/tulilirockz/Dandelion/commit/5a4628c9731e956fd4e08d636546e0d9c88bdc1c))
* add fuse3 and netcat ([3104f69](https://github.com/tulilirockz/Dandelion/commit/3104f692fa9bc0f8374f925ec83690f8ab0c93c0))
* add misc package managers ([c7b57a6](https://github.com/tulilirockz/Dandelion/commit/c7b57a6f0f37a2a6b36087612391b2b73b2ea90c))
* add more rust-based utilities ([cc3755c](https://github.com/tulilirockz/Dandelion/commit/cc3755c6b9174efcf6c90f00bac19f689367672f))
* add more utilities and hide fish greeting ([0859ba1](https://github.com/tulilirockz/Dandelion/commit/0859ba1b69c437718c10d980293d1cfe76c5da55))
* add nushell and set as default ([b62bcc9](https://github.com/tulilirockz/Dandelion/commit/b62bcc975ab10f4264dcfb547df46b41f9304879))
* add vscode and dotnet repos ([f262a16](https://github.com/tulilirockz/Dandelion/commit/f262a162c70adf109f5a68406993b57de822eac2))
* alias to container's justfile and fix fisher install ([b8af516](https://github.com/tulilirockz/Dandelion/commit/b8af5160623fad17d0c4f8e2b8496289c6571d3c))
* finally add vscode repo without breaking everything ([cd4454c](https://github.com/tulilirockz/Dandelion/commit/cd4454c02352c8dc4497c858d6576877c8c01958))
* yadm for dotfile management ([a073ede](https://github.com/tulilirockz/Dandelion/commit/a073ede307f4c8557bc9c3feabdb7055a2b575cd))


### Bug Fixes

* add proper installation methods for starship and chezmoi ([81053d9](https://github.com/tulilirockz/Dandelion/commit/81053d97d2d4374e5d859609a388952e9609c4c7))
* add repos properly ([a4e9bb5](https://github.com/tulilirockz/Dandelion/commit/a4e9bb58d72aaad4b31b4f7e8a3af0709c4b0ca9))
* duplicate atuin setup line for fish ([e9469c5](https://github.com/tulilirockz/Dandelion/commit/e9469c5c1d2d251e294a0c4fddea05a6566f550b))
* properly add shells repo and better install procedure ([07f9e39](https://github.com/tulilirockz/Dandelion/commit/07f9e39fdb33f4098297b7bf6d1a33d9a415395a))
* remove all packages from base system ([cfd0af1](https://github.com/tulilirockz/Dandelion/commit/cfd0af12cc1c827c3b03f1e6879e6e06f4506a28))
* remove symlinks because they break everything ([7b8fab5](https://github.com/tulilirockz/Dandelion/commit/7b8fab5ea048bf6edca368a58cb308ba5bff829d))
* script without chsh for changing shell since that doesn't work ([e1eaf9c](https://github.com/tulilirockz/Dandelion/commit/e1eaf9c7031938d4e715d69a00f3fa494bd225ef))
* trying to fix build not working because of whitespace ([7b51829](https://github.com/tulilirockz/Dandelion/commit/7b518293404bd50bf430f26c5e23e730c5a9037d))
* typo in vscode repository ([6a76503](https://github.com/tulilirockz/Dandelion/commit/6a765037216ea675a2d84df65274df18b105582c))
* **wip:** just install nix ([e031007](https://github.com/tulilirockz/Dandelion/commit/e031007b68f5361835f1b1e81e708befa2a608c7))


### Code Refactoring

* move to fedora based and remove some packages ([3f6b256](https://github.com/tulilirockz/Dandelion/commit/3f6b2569cd40602f0b6e5fdbca823adc2d47aed7))

## [2.0.0](https://github.com/tulilirockz/dandelion/compare/v1.0.0...v2.0.0) (2023-04-09)


### ⚠ BREAKING CHANGES

* change scheduling to rebuild image monthly

### Features

* fish for easier configuration ([315291d](https://github.com/tulilirockz/dandelion/commit/315291dbb078a631af119624a4af04ed02938796))
* justfile for optional post-creation steps ([ada61a6](https://github.com/tulilirockz/dandelion/commit/ada61a6b8ad53c9949f487e6421692cb302205e1))


### Bug Fixes

* remove chsh because of passwd errors ([170a6b3](https://github.com/tulilirockz/dandelion/commit/170a6b3630282dda7c2f1ebd56938f12189e5a17))
* wrong path and env to fish shell ([d482db3](https://github.com/tulilirockz/dandelion/commit/d482db38acb655f1ea0a92d02682e6a4384b41a5))


### Code Refactoring

* change scheduling to rebuild image monthly ([f18a5c9](https://github.com/tulilirockz/dandelion/commit/f18a5c9bb7b01ce8f783f4fe7eba4d472298664a))

## 1.0.0 (2023-04-04)


### ⚠ BREAKING CHANGES

* set my personal packages

### Bug Fixes

* COSIGN_PASSWORD for signing ([e1c08b7](https://github.com/tulilirockz/mybox/commit/e1c08b7c4eebe429f1b32cf74c8639565de2f186))


### Miscellaneous Chores

* set my personal packages ([99d8a5d](https://github.com/tulilirockz/mybox/commit/99d8a5d7f650cb8e07bc2971c1745d0ba5d5bb07))

## 1.0.0 (2023-02-04)


### Features

* add conventional commits linter and changelog generator ([#5](https://github.com/ublue-os/boxkit/issues/5)) ([0bc283d](https://github.com/ublue-os/boxkit/commit/0bc283d271878071ef50a413bab48f3bfc1ab312))
* Create CODE_OF_CONDUCT.md ([#4](https://github.com/ublue-os/boxkit/issues/4)) ([f433b89](https://github.com/ublue-os/boxkit/commit/f433b89a1ed125c6c0a251c1eec60525cfe35820))
