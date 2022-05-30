#!/bin/awk -f
BEGIN { FS=";"}
{
  total=$4+$5+$6+$7+$8+$9
  average=total/6
  max = $4
  for (i = 5; i <= NF; i += 1) if ($i > max) max = $i;
  min = $4
  for (i = 5; i <= NF; i += 1) if ($i < min) min = $i;

 print "Firstname",$1,"average",average,"max=",max,"min=",min
}
