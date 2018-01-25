#!/bin/bash

read request

while /bin/true; do
  read header
  [ "$header" == $'\r' ] && break;
done

url="${request#GET }"
url="${url% HTTP/*}"

echo $url >> /tmp/http.txt 