#!/bin/sh

Flag=`grep Flag      $2 | awk -F"=" '{print $2}'`
Pini=`grep PeriodIni $2 | awk -F"=" '{print $2}'`
Pfin=`grep PeriodFin $2 | awk -F"=" '{print $2}'`
Tini=`grep TimeIni   $2 | awk -F"=" '{print $2}'`
Tfin=`grep TimeFin   $2 | awk -F"=" '{print $2}'`

rm -rf *tmp AcsAnl.log
cat $1 | while read line;do
  cat $line >> all.tmp
done

if   [ "$Flag" == "1" ];then
  ./none.sh
elif [ "$Flag" == "2" ];then
  ./period.sh $Pini $Pfin
  ./none.sh
elif [ "$Flag" == "3" ];then
  ./time.sh   $Tini $Tfin
  ./none.sh
elif [ "$Flag" == "4" ];then
  ./period.sh $Pini $Pfin
  ./time.sh   $Tini $Tfin
  ./none.sh
fi


