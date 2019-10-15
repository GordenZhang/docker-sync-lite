#!/bin/sh
echo "- init /app -"
if [ -d /app ]; then rm -rf /app/*; else mkdir /app; fi
cp -r /source/* /app

echo "- start http -"
sh /entry.sh
