#!/bin/bash
set -e

if [ "${1:0:1}" = '-' ]; then
  set -- proxysql "$@"
fi

exec $@
