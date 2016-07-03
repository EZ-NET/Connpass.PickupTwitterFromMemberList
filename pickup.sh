#!/bin/sh

FILE_OF_MEMBER_LIST=$1

grep twitter.com "${FILE_OF_MEMBER_LIST}" | sed -e 's/^.*https:\/\/twitter.com\/intent\/user\?screen_name=\([a-zA-Z_0-9]*\)".*$/\1/g' | grep -e "^[a-zA-Z_0-9]\+$" | while read account; do printf "${account} "; done
echo
