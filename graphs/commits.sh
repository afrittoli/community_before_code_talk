#!/bin/bash

for yy in $(seq 2010 2018); do
  from_date=$(date -j -f '%Y-%m-%d' ${yy}-01-01 +%s);
  to_date=$(date -j -f '%Y-%m-%d' $(( yy + 1 ))-01-01 +%s);
  echo ${yy} $(curl -s 'http://stackalytics.com/api/1.0/stats/modules?release=all&metric=commits&start_date='$from_date'&end_date='$to_date | jq -r '.stats | .[].metric ' | paste -s -d+ - | bc);
done
