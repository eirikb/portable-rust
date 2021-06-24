#!/bin/bash
dir=$(mktemp -d)
tail -c +102 "$0" | tar -C "$dir" -zpx && cd "$dir" && "./init.sh"
exit
