#!/bin/bash
export IMG=beginor/mono:5.4.1.6
docker build --no-cache -t $IMG . 
docker run --rm --interactive --tty $IMG
