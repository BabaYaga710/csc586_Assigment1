#!/bin/bash

mv /tmp/state.log statelog.`date +"%Y%m%d"`

find /tmp -type f -mtime +14 -delete
