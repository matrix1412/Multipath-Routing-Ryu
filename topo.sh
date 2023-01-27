#!/bin/bash

echo " == Pilih Topologi =="
echo "1. Topologi Bipartite"
echo "2. Topologi Fat Tree"
echo "3. Topologi Internet2"


topology1="./topologi/bipartite.py"
topology2="./topologi/fat_tree.py"
topology3="./topologi/internet2.py"

read -p "Masukan pilihan (1-3): " pil

case $pil in 
1)
       sudo python2 $topology1
       ;;
2) 
       sudo python2 $topology2
       ;;
3) 
       sudo python2 $topology3
       ;;
*)
       echo "Angka yang Anda masukkan tidak ada dalam pilihan."
       ;;
esac
sudo mn -c; clear
exit 0