#!/bin/sh
set -xe
ID="02"

env

echo "Starting run ${ID}"

cd /pfs/iris-trainer-${ID}_source
pip install /pfs/iris-trainer-${ID}_build/*.whl /pfs/iris-trainer-${ID}_build/*.tar.gz
python main.py