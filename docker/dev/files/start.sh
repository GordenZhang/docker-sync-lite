#!/bin/sh

echo "- init /app -"
# In my project, I check the compose.lock's content-hash to decide whether copy the vendor directory( by recopy whole directory ) or not.
# if [ "$(grep content-hash /source/composer.lock | sed 's/ //g;s/"//g;s/,//g')" != "$(grep content-hash /app/composer.lock | sed 's/ //g;s/"//g;s/,//g')" ]; then
#   echo "- recopy /app -"
#   if [ -d /app ]; then rm -rf /app/*; else mkdir /app; fi
#   cp -r /source/* /app
# fi
sh /unison.sh

echo "- watch /source -"
sh /watch.sh &

echo "- start http -"
# start your http servern here
sh /entry.sh