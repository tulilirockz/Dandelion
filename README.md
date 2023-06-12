# Dandelion

An utility distrobox/toolbox container based on [boxkit](https://github.com/ublue-os/boxkit) made to be ephemeral and simple to use!

It has some utilities for development and management for [Turquoise Images](http://github.com/tulilirockz/Turquoise)! (everything specified in the "extra-packages" file), and was mostly made for my usage, so make sure to fork/use it as a template if you are going to use it at some point

## Usage

Use your toolbox of choice and create your container! 

#### Toolbox

```sh
toolbox create -i ghcr.io/tulilirockz/dandelion:latest box
```

#### Distrobox

You can either use it as a perma container or an ephemeral one:

```sh
distrobox create -p -i ghcr.io/tulilirockz/dandelion:latest --name box 
```

- Ephemeral:

```sh
distrobox-ephemeral -i ghcr.io/tulilirockz/dandelion:latest
```
