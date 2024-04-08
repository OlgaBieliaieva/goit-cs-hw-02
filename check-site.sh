#!/bin/bash

sites=("https://google.com" "https://facebook.com" "https://twitter.com")

file="check.log"

> "$file"

for item in "${sites[@]}";
do
if curl -o /dev/null -s -L --head -w --request GET $item  | grep "HTTP/2 200"

done
