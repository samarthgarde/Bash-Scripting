#!/bin/bash

cd /usr/share/nginx/html || exit 1

touch index.html
echo "Hello, this is my first website using shell script" > index.html

echo "Website deployed successfully"

