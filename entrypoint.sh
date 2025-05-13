#!/bin/sh
set -e

wget -O /data/DeXRAY.pl https://hexacorn.com/d/DeXRAY.pl  && \
chmod +x /data/DeXRAY.pl

exec perl /data/DeXRAY.pl "$@"
