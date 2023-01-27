import os
import time
import csv

try:
	i = 1
	while i <= 10:
		# monitoring selama 5 detik ( -c 5)
		os.system('bwm-ng -o csv -c 5 -I %lo,enp0s3,enp0s8,ovssystem,s1,s2,s3,s4,s5,s6 >> ./data_export/data_monitoring.csv')
		print ("data_monitoring berhasil di export ! ")
except:
	print ("data_monitoring gagal di export")
 
