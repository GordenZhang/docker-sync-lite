#!/bin/sh

inotifywait -mrq --timefmt '%d/%m/%y %H:%M' --format '%T %w %f' -e create,delete,modify,move /source | while read line; do sh /unison.sh; done
