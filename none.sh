#!/bin/sh

sum=0
while [ -s all.tmp ];do
  tmp=`head -1 all.tmp | awk '{print $1}'`
  num=`grep $tmp all.tmp | wc -l`
  sum=`expr $sum + $num` 
  echo $tmp, $num     >> AcsAnl.tmp
  grep -v $tmp all.tmp > tmp.tmp
  mv tmp.tmp all.tmp
done

if [ -a AcsAnl.tmp ];then
  echo Total=$sum          >> AcsAnl.log
  sort -k2,2nr AcsAnl.tmp  >> AcsAnl.log
else
  echo No Access >> AcsAnl.log
fi

rm -rf *.tmp

