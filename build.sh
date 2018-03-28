#!/bin/bash
export IMG=beginor/mono:5.8.1.0
docker build --no-cache --rm -t $IMG .
docker run --rm --interactive --tty $IMG
