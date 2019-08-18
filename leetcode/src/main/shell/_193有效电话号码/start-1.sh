#!/bin/bash

grep -E '^\([0-9]{3}\)\s[0-9]{3}-[0-9]{4}$|^[0-9]{3}-[0-9]{3}-[0-9]{4}$' file.txt || \
awk '/^([0-9]{3}-|\([0-9]{3}\) )[0-9]{3}-[0-9]{4}$/' file.txt || \
grep -P '^(\d{3}-\d{3}-\d{4}|\(\d{3}\) \d{3}-\d{4})$' file.txt
