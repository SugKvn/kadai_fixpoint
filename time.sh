#!/bin/sh

Ini=`date '+%H:%M:%S' -d "$1"`
Fin=`date '+%H:%M:%S' -d "$2"`
echo $Ini-$Fin >> AcsAnl.log

tmp=$Ini
while [ 1 ] ; do
  grep $tmp all.tmp >> part.tmp 
    if [ "$tmp" == "$Fin" ] ; then
      break
    fi
  tmp=`date '+%H:%M:%S' -d "$tmp 1second"` 
done
mv part.tmp all.tmp
