#!/bin/bash 


echo "Now building the image..." 
. ./buildit.sh 

echo "Now deploying the image to a container..."
. ./runit.sh 

while true 
do 
   echo "Now checking if tika server is up..."
   RESULT=$(. ./getit.sh 2> /dev/null | grep "This is Tika Server")
   echo $RESULT
   if [ -n "${RESULT}" ]
   then 
      break
   fi 
   sleep 5
done

echo "Now uploading a document to tika server..."
. ./putit.sh 




