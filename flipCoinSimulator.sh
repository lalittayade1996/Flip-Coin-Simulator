#!/bin/bash 

headcount=0
tailcount=0
while [ $headcount -lt 11 -a  $tailcount -lt 11 ]
do 
flip=$(( RANDOM%2 ))
if [ $flip -eq 0 ]
then
echo "head wins"
headcount=$(( $headcount+1 ))
else
echo "tail wins"
tailcount=$(( $tailcount+1 ))
fi
done
