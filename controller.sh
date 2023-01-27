#!/bin/bash

echo " == Pilih Algoritma =="
echo "1. Singlepath Dijkstra"
echo "2. Multipath Dijkstra"
echo "3. Singlepath DFS"
echo "4. Multipath DFS"
echo "5. Multipath DFS Modification"
echo "6. Singlepath DFS Modification"

controller1="./controller/shortest_dijkstra.py"
controller2="./controller/multipath_dijkstra.py"
controller3="./controller/shortest_dfs.py"
controller4="./controller/multipath_dfs.py"
controller5="./controller/multipath_dfs_modif.py"
controller6="./controller/singlepath_dfs_modif.py"

read -p "Masukan pilihan (1-6): " pil

case $pil in 
1)
       sudo ryu-manager --observe-links $controller1 | tee /data_export/singlepath_dijkstra.txt
       ;;
2) 
       sudo ryu-manager --observe-links $controller2 | tee /data_export/multipath_dijkstra.txt
       ;;
3)
       sudo ryu-manager --observe-links $controller3 | tee /data_export/singlepath_dfs.txt
       ;;
4)
       sudo ryu-manager --observe-links $controller4 | tee /data_export/multipath_dfs.txt
       ;;
5)
       sudo ryu-manager --observe-links $controller5 | tee /data_export/multipath_dfs_modif.txt
       ;;
6)
       sudo ryu-manager --observe-links $controller6 | tee /data_export/singlepath_dfs_modif.txt
       ;;
*)
       echo "Angka yang Anda masukkan tidak ada dalam pilihan."
       ;;
esac
exit 0
