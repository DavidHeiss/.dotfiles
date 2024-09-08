#!/bin/sh

WD=$(realpath $(dirname $0))
cd WD

kitty --detach tsc --watch 
kitty --detach sass --watch style

while true
do 
    sleep 0.2 && find $WD | entr -dnr ags
done

