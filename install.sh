#!/bin/sh

set -eu

[[ ${DEBUG:-0} -gt 0 ]] && set -x

dosudo()
{
    if [[ $(id -u) -ne 0 ]]
    then
        sudo "$@"
    else
        "$@"
    fi
}

docker build -t acroread .
dosudo cp -v acroread /usr/local/bin/

desktop-file-install --dir=${HOME}/.local/share/applications acroread.desktop