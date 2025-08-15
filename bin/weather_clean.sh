#!/bin/sh
~/.local/bin/weather.sh | sed -E 's/^[^0-9+-]*[[:space:]]*//'
