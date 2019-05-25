#!/bin/bash

echo "............................"
echo "Counting Packages for BIONIC"
echo "............................"
echo "Removing Old Files"
rm -r Packages* p-*
echo "Downloading new files"
echo "............................"
echo "Downloading BIONIC"       

wget -q http://archive.ubuntu.com/ubuntu/dists/bionic/main/binary-amd64/Packages.gz
gunzip Packages.gz
mv Packages Packages-bionic-main
cat Packages-bionic-main | grep "Filename: pool/main/" > p-bionic-main
a=$(wc -l < p-bionic-main)

wget -q http://archive.ubuntu.com/ubuntu/dists/bionic/multiverse/binary-amd64/Packages.gz
gunzip Packages.gz
mv Packages Packages-bionic-multiverse
cat Packages-bionic-multiverse | grep "Filename: pool/multiverse/" > p-bionic-multiverse
b=$(wc -l < p-bionic-multiverse)

wget -q http://archive.ubuntu.com/ubuntu/dists/bionic/universe/binary-amd64/Packages.gz
gunzip Packages.gz
mv Packages Packages-bionic-universe
cat Packages-bionic-universe | grep "Filename: pool/universe/" > p-bionic-universe
c=$(wc -l < p-bionic-universe)


wget -q http://archive.ubuntu.com/ubuntu/dists/bionic/restricted/binary-amd64/Packages.gz
gunzip Packages.gz
mv Packages Packages-bionic-restricted
cat Packages-bionic-restricted | grep "Filename: pool/restricted/" > p-bionic-restricted
d=$(wc -l <  p-bionic-restricted)

echo "Downloading BIONIC-UPDATES"	

wget -q http://archive.ubuntu.com/ubuntu/dists/bionic-updates/main/binary-amd64/Packages.gz
gunzip Packages.gz
mv Packages Packages-bionic-updates-main
cat Packages-bionic-updates-main | grep "Filename: pool/main/" > p-bionic-updates-main
e=$(wc -l <  p-bionic-updates-main)

wget -q http://archive.ubuntu.com/ubuntu/dists/bionic-updates/multiverse/binary-amd64/Packages.gz
gunzip Packages.gz
mv Packages Packages-bionic-updates-multiverse
cat Packages-bionic-updates-multiverse | grep "Filename: pool/multiverse/" > p-bionic-updates-multiverse
f=$(wc -l <  p-bionic-updates-multiverse)

wget -q http://archive.ubuntu.com/ubuntu/dists/bionic-updates/universe/binary-amd64/Packages.gz
gunzip Packages.gz
mv Packages Packages-bionic-updates-universe
cat Packages-bionic-updates-universe | grep "Filename: pool/universe/" > p-bionic-updates-universe
g=$(wc -l <  p-bionic-updates-universe)

wget -q http://archive.ubuntu.com/ubuntu/dists/bionic-updates/restricted/binary-amd64/Packages.gz
gunzip Packages.gz
mv Packages Packages-bionic-updates-restricted
cat Packages-bionic-updates-restricted | grep "Filename: pool/restricted/" > p-bionic-updates-restricted
h=$(wc -l <  p-bionic-updates-restricted)


echo "Downloading BIONIC-SECURITY"

wget -q http://archive.ubuntu.com/ubuntu/dists/bionic-security/main/binary-amd64/Packages.gz
gunzip Packages.gz
mv Packages Packages-bionic-security-main
cat Packages-bionic-security-main | grep "Filename: pool/main/" > p-bionic-security-main
i=$(wc -l <  p-bionic-security-main)


wget -q http://archive.ubuntu.com/ubuntu/dists/bionic-security/multiverse/binary-amd64/Packages.gz
gunzip Packages.gz
mv Packages Packages-bionic-security-multiverse
cat Packages-bionic-security-multiverse | grep "Filename: pool/multiverse/" > p-bionic-security-multiverse
j=$(wc -l <  p-bionic-security-multiverse)

wget -q http://archive.ubuntu.com/ubuntu/dists/bionic-security/universe/binary-amd64/Packages.gz
gunzip Packages.gz
mv Packages Packages-bionic-security-universe
cat Packages-bionic-security-universe | grep "Filename: pool/universe/" > p-bionic-security-universe
k=$(wc -l <  p-bionic-security-universe)

wget -q http://archive.ubuntu.com/ubuntu/dists/bionic-security/restricted/binary-amd64/Packages.gz
gunzip Packages.gz
mv Packages Packages-bionic-security-restricted
cat Packages-bionic-security-restricted | grep "Filename: pool/restricted/" > p-bionic-security-restricted
l=$(wc -l <  p-bionic-security-restricted)



echo "RESULTS" 
echo ".................................."
echo "Packages in BIONIC MAIN # $a"
echo "Packages in BIONIC UNIVERSE # $c"
echo "Packages in BIONIC MULTIVERSE # $b"
echo "Packages in BIONIC RESTRICTED # $d"
echo ".................................."
echo "Packages in BIONIC-UPDATES MAIN # $e"
echo "Packages in BIONIC-UPDATES UNIVERSE # $g"
echo "Packages in BIONIC-UPDATES MULTIVERSE # $f"
echo "Packages in BIONIC-UPDATES RESTRICTED # $h"
echo ".................................."
echo "Packages in BIONIC-SECURITY MAIN # $i"
echo "Packages in BIONIC-SECURITY UNIVERSE # $k"
echo "Packages in BIONIC-SECURITY MULTIVERSE # $j"
echo "Packages in BIONIC-SECURITY RESTRICTED # $l"





