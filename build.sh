#!/bin/bash
export IMG=beginor/mono:5.4.0
docker build -t $IMG . 
docker run --rm --interactive --tty $IMG mono --version
