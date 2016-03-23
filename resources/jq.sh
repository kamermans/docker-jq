#!/bin/sh -e

JQ="/usr/local/bin/jq"
if [ "x$JQ_VERSION" != "x" ] && [ -f "/usr/local/bin/jq-$JQ_VERSION" ]; then
    JQ="/usr/local/bin/jq-$JQ_VERSION"
fi

exec $JQ $*
