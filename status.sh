#!/bin/bash
count=$(grep $1 "insert you path or database SELECT" | wc -l)
case $count in 
        0) echo "0" ;;
        *) echo "1" ;;
esac      
