#!/bin/bash

docker run -it --mount type=bind,source="$(pwd)"/..,target=/root/dev -p 8080:8080 dde