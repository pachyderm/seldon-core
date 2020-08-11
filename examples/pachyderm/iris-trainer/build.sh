#!/bin/sh
set -xe
python --version
pip --version

ID="02"

env |sort

echo "Starting build ${ID}"

cd /pfs/iris-trainer-${ID}_source
test -f requirements.txt && pip download -r requirements.txt -d /pfs/out