#!/bin/bash

sed -i '$a '"$@"'' splashes.txt
sort -o splashes.txt splashes.txt
