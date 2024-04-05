#!/bin/bash

while true
do
if [ ! `pgrep avail-light` ] ; then
curl -sL1 avail.sh | bash
fi
sleep 30
done
