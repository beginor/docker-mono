#!/bin/bash
export IMG=beginor/mono:5.0.1
docker build -t $IMG . 
docker run --rm --interactive --tty $IMG mono --version
