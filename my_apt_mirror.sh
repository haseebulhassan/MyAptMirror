#!/bin/bash

echo "Welcome to Offline Repo Maker"
echo "Written by Haseeb"
echo "Reading Packages file ......."
mkdir -p temp
cat data/Packages-$1 | grep "Filename: pool/$2/" > temp/aaa
cc=$(wc -l < temp/aaa)
###cat Packages | grep "Package: " > names
#sed 's+Package: +/+g'  names > namess
#read
echo "Making Directory Structure. Pls Wait....."
n=1
while read line; do
# reading each line
string=$line  # initial data
dir=${string%/*}     # trim everything past the last /
dir=${dir#*/}       # ...then remove everything before the last / remaining
echo "$dir" # demonstrate output
mkdir -p pool/$dir/
echo -P pool/$dir/ >> temp/paths
n=$((n+1))
done < temp/aaa
sed 's+Filename: +wget -c http://archive.ubuntu.com/ubuntu/+g' temp/aaa > temp/aa
paste temp/aa temp/paths > Packages-$1-download
echo "Giving Permissions"
sudo chmod u+x ./Packages-$1-download

echo "Removing extra files"
rm temp/aaa temp/aa temp/paths
echo "Total packages are # $cc"
echo "Everything OK"


#sed "s|$| -P /pool/main/a$line|g" aa > a
#sed "s|$var|r_str|g" file_name >new_file


#echo "File Written ......\r\n"
#rm aa aaa
