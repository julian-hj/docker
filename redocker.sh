#!/usr/bin/env bash

set -x

kill -9 `pidof dockerd` || true
hack/make.sh binary
cp bundles/1.12.0-dev/binary-client/docker* /usr/bin
cp bundles/1.12.0-dev/binary-daemon/docker* /usr/bin
docker daemon -D&