#!/bin/bash
count=$#
if [ $# -lt 2 ]; then                    
  # $# stores the number of arguments passed from the command line, like *argc in c programming.
  echo "Minimum 2 arguments required"
  echo "Format: ./bash sourcedir ext1 ext2 ext3"
  

elif [ "$2" == "all" ]; 	then
cd $1
extensions="pdf txt doc odt jpg png cpp c out mp4 3gp mpeg  mp3  7z  gif html tar zip "
for ext in $extensions
do
    mkdir  $ext
    mv *.${ext} $ext
done

else

cd $1

 for j in   "${@:2}" ; do 

for i in $(ls *.$j); do
   mkdir  $j
   break
done
mv *.$j $j
done


fi

clear
echo "File cleaning done"
