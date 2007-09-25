#!/bin/sh
for filename in `ls ../Grumbach/*.seq`
do
  outfile=`basename $filename .seq`.fna
  tmpfile=`basename $filename`
  echo $outfile
  echo $tmpfile
  cp $filename $tmpfile
  makefasta.x $tmpfile > $outfile
  rm -f $tmpfile
done
