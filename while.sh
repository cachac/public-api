#!/bin/bash

HOST=$1

intento=0
ok=false
echo "Inicio del log $(date)"  > /tmp/while.log


while [ $intento -lt 3  ]
do
   echo "Intento # $intento"

   if ! ping -c 1 $HOST  > /dev/null 2>&1
   then
     echo "Esperando al host $HOST ..."  >> /tmp/while.log
     sleep 5
   else
     ok=true
     echo "El host $HOST está OK" >> /tmp/while.log
     break
   fi

   intento=$(($intento+1))
done


if $ok; then
   echo "$HOST online"
else
   echo "$HOST offline"
fi



