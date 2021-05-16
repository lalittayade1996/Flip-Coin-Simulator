#!/bin/bash

headcount=0
tailcount=0
diff=0
while [ $headcount -lt 21 -a  $tailcount -lt 21 -o $diff -lt 2 ]
do 
flip=$(( RANDOM%2 ))
if [ $flip -eq 0 ]
then
headcount=$(( $headcount+1 ))
else
tailcount=$(( $tailcount+1 ))
fi
if [ $headcount -gt $tailcount ]
then
echo "head wins" $headcount
diff=$(( $headcount - $tailcount ))
echo "head won by difference" $diff
elif [ $headcount -lt $tailcount ]
then
echo "tail wins" $tailcount
diff=$(( $tailcount - $headcount ))
echo "tail won by difference" $diff
else 
echo "tie"
fi
done
