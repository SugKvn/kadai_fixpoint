#!/bin/sh

Ini=`date '+%Y/%m/%d' -d "$1"`
Fin=`date '+%Y/%m/%d' -d "$2"`
echo $Ini-$Fin >> AcsAnl.log

tmp=$Ini
while [ 1 ] ; do
  d=`date '+%d/%b/%Y' -d "$tmp"`
  grep $d all.tmp >> part.tmp 
    if [ "$tmp" == "$Fin" ] ; then
      break
    fi
  tmp=`date '+%Y/%m/%d' -d "$tmp 1day"`
done
mv part.tmp all.tmp
