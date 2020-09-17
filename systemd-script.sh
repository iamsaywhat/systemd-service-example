#!/bin/bash
while [ : ]
do
    echo "[$(date)] :  CPU:$(top -bn1 | grep "Cpu(s)" | awk '{ print 100-$8 "%" }')" >> "/tmp/cpu.log"
    sleep 1
done
