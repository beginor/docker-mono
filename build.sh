#!/bin/bash
export IMG=beginor/mono:4.8.0
docker build -t $IMG . 
docker run --rm --interactive --tty $IMG mono --version
