#!/bin/bash

set -xe

if [[ -f '/usr/src/app/requirements.txt' ]]
then
    pip --disable-pip-version-check install -U -q -r /usr/src/app/requirements.txt
fi

if [[ "$1" == 'python' || "$1" == 'python3' ]]
then
    exec "$@"
elif [[ "${1##*.}" == 'py' ]]
then
    exec python "$@"
fi

exec "$@"

