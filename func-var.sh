#!/bin/bash

file_count() 
{
 local directory=$1
 FILE_COUNTER=$(  ls $directory|wc -l  )
 echo "$directory: $FILE_COUNTER"
}


file_count /var
