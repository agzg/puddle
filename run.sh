#!/bin/bash

echo "::add-mask::$token" 

splash=$(shuf -n 1 splashes.txt)

echo $splash

curl -X PATCH \
     -H "Authorization: token $token" \
     -H "Content-Type: application/json" \
     -H "Accept: application/vnd.github.v3+json" \
     https://api.github.com/user \
     -d '{"bio": "'"$splash"'"}' &> /dev/null

