# Adobe Acrobat container builder (acroread)

Unofficial build of Adobe Acrobat 9.5.5 running within a docker container and rendered by the local X Server.

Based on [mgor/acroread](https://github.com/mgor/docker-acroread) which was itself based on
[chrisdaish/acroread](https://github.com/chrisdaish/docker-acroread).

**NOTE**: By running this image **you** have accepted Adobe's EULA for Acrobat Reader.

A few changes were made on the original source:

* Added `install.sh` script which performs all installation steps automatically.
* Acroread does not run as PID 1 anymore, which could cause stability issues when opening documents.
* Automatically run `xhost +local:docker` when starting `acroread`.
* Using `ip` instead of `ifconfig` for retrieving `docker0` IP address.
* Added a `DEBUG` environment variable for showing commands as they are executed on shell scripts.

## Installation

Recommended mode of installation is to clone this repository and run `install.sh` script, which:

* builds the docker image `acroread` locally;
* installs the `acroread` wrapper in `/usr/local/bin`;
* installs the application launcher on `$HOME/.local/share/applications`.
