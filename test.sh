#!/bin/bash

tmp=$(mktemp -d)

cp test/* $tmp
chmod 666 $tmp/*

./git-merge-with-meld $tmp/local $tmp/remote $tmp/base $tmp/merged
cat $tmp/merged

rm -r $tmp
