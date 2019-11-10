#!/bin/bash

i=1
while true
do
   echo "$(date): $i min" >> timer.log
   echo "time documented!"
   let i++
   sleep 60
done
