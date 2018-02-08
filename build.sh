#!/bin/bash
export IMG=beginor/mono:5.8.0.108
docker build --no-cache -t $IMG . 
docker run --rm --interactive --tty $IMG
