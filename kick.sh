#!/bin/bash
dir=$(mktemp -d)
echo "$dir"
tail -c +114 "$0" | tar -C "$dir" -zpx && cd "$dir" && "./init.sh"
exit
