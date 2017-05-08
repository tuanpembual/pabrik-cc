#!/bin/bash
DIST=uluwatu
export PATH=$PATH:/usr/sbin:/sbin

sudo ./build-image -f $DIST.config  -t /home/cdimage/pabrik-cc/tmp
