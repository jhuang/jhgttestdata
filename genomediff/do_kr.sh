#!/bin/sh

for code in `grep 0_001 codelist`
do
  kr -o $code-kr.out $code\_S???_redN.fas
done
