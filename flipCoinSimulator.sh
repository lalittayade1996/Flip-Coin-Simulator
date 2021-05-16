#!/bin/bash -x

flip=$(( RANDOM%2 ))
if [ $flip -eq 0 ]
then
echo "head wins"
else
echo "tail wins"
fi
