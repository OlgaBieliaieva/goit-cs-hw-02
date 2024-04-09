#!/bin/bash
sites=("https://google.com" "https://facebook.com" "https://twitter.com")
file="checklogs.log"
> "$file"
for item in "${sites[@]}" 
do
   if curl  -o /dev/null -s -L --head --request GET -w "%{http_code}\n" "$item" | grep 200 > /dev/null
   then
       echo "$item is UP" >> "$file"
   else 
       echo "$item is DOWN" >> "$file"
   fi
done
echo "Result written to $file"
