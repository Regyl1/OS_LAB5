#!/bin/bash

i=0
k=$1
n=$2
while (( "$i" < "$k" ))
do
./newmem $n &
let i=$i+1
done
