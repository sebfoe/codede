#!/bin/bash
##########################################################################################################################
# 1. sucht nach bayern-kachel-.SAFE
# 2. schreibt pfade in .txt mit name bspw. T32UQB.txt
#
########################################################################################################################
# 1
list="$(find /codede/Sentinel-2/MSI/L2A/2020 -mindepth 3  -maxdepth 3  -name "*T32UQB*.SAFE")"
echo "$list" > /home/eouser/tilesearch/2020/32UQB.txt
# 2
list="$(find /codede/Sentinel-2/MSI/L2A/2020 -mindepth 3  -maxdepth 3  -name "*T32UPV*.SAFE")"
echo "$list" > /home/eouser/tilesearch/2020/T32UPV.txt
# 3
list="$(find /codede/Sentinel-2/MSI/L2A/2020 -mindepth 3  -maxdepth 3  -name "*T32TNT*.SAFE")"
echo "$list" > /home/eouser/tilesearch/2020/T32TNT.txt
# 4
list="$(find /codede/Sentinel-2/MSI/L2A/2020 -mindepth 3  -maxdepth 3  -name "*T32TPT*.SAFE")"
echo "$list" > /home/eouser/tilesearch/2020/T32TPT.txt
# 5
list="$(find /codede/Sentinel-2/MSI/L2A/2020 -mindepth 3  -maxdepth 3  -name "*T32UNA*.SAFE")"
echo "$list" > /home/eouser/tilesearch/2020/T32UNA.txt
# 6
list="$(find /codede/Sentinel-2/MSI/L2A/2020 -mindepth 3  -maxdepth 3  -name "*T32UMA*.SAFE")"
echo "$list" > /home/eouser/tilesearch/2020/T32UMA.txt
# 7
list="$(find /codede/Sentinel-2/MSI/L2A/2020 -mindepth 3  -maxdepth 3  -name "*T32UNB*.SAFE")"
echo "$list" > /home/eouser/tilesearch/2020/T32UNB.txt
# 8
list="$(find /codede/Sentinel-2/MSI/L2A/2020 -mindepth 3  -maxdepth 3  -name "*T32UNU*.SAFE")"
echo "$list" > /home/eouser/tilesearch/2020/T32UNU.txt
# 9
list="$(find /codede/Sentinel-2/MSI/L2A/2020 -mindepth 3  -maxdepth 3  -name "*T32UNV*.SAFE")"
echo "$list" > /home/eouser/tilesearch/2020/T32UNV.txt
# 10
list="$(find /codede/Sentinel-2/MSI/L2A/2020 -mindepth 3  -maxdepth 3  -name "*T32UUP*.SAFE")"
echo "$list" > /home/eouser/tilesearch/2020/T32UUP.txt
# 11
list="$(find /codede/Sentinel-2/MSI/L2A/2020 -mindepth 3  -maxdepth 3  -name "*T32TQT*.SAFE")"
echo "$list" > /home/eouser/tilesearch/2020/T32TQT.tx
# 12
list="$(find /codede/Sentinel-2/MSI/L2A/2020 -mindepth 3  -maxdepth 3  -name "*T32UPA*.SAFE")"
echo "$list" > /home/eouser/tilesearch/2020/T32UPA.txt
# 13
list="$(find /codede/Sentinel-2/MSI/L2A/2020 -mindepth 3  -maxdepth 3  -name "*T32UPB*.SAFE")"
echo "$list" > /home/eouser/tilesearch/2020/T32UPB.txt
# 14
list="$(find /codede/Sentinel-2/MSI/L2A/2020 -mindepth 3  -maxdepth 3  -name "*T32UPU*.SAFE")"
echo "$list" > /home/eouser/tilesearch/2020/T32UPU.txt
# 15
list="$(find /codede/Sentinel-2/MSI/L2A/2020 -mindepth 3  -maxdepth 3  -name "*T32UQU*.SAFE")"
echo "$list" > /home/eouser/tilesearch/2020/T32UQU.txt
# 16
list="$(find /codede/Sentinel-2/MSI/L2A/2020 -mindepth 3  -maxdepth 3  -name "*T32UQV*.SAFE")"
echo "$list" > /home/eouser/tilesearch/2020/T32UQV.txt
# 17
list="$(find /codede/Sentinel-2/MSI/L2A/2020 -mindepth 3  -maxdepth 3  -name "*T33TUN*.SAFE")"
echo "$list" > /home/eouser/tilesearch/2020/T33UQV.txt
# 18
list="$(find /codede/Sentinel-2/MSI/L2A/2020 -mindepth 3  -maxdepth 3  -name "*T33UUP*.SAFE")"
echo "$list" > /home/eouser/tilesearch/2020/T33UUP.txt
# 19
list="$(find /codede/Sentinel-2/MSI/L2A/2020 -mindepth 3  -maxdepth 3  -name "*T33UUQ*.SAFE")"
echo "$list" > /home/eouser/tilesearch/2020/T33UUQ.txt
# 20
list="$(find /codede/Sentinel-2/MSI/L2A/2020 -mindepth 3  -maxdepth 3  -name "*T33UVP*.SAFE")"
echo "$list" > /home/eouser/tilesearch/2020/T33UVP.txt
# 21
list="$(find /codede/Sentinel-2/MSI/L2A/2020 -mindepth 3  -maxdepth 3  -name "*T33UVQ*.SAFE")"
echo "$list" > /home/eouser/tilesearch/2020/T33UVQ.txt




#
# for i in {2015, 2016, 2017, 2018, 2019, 2020}; do 
# 	cat tilenames.txt | while read tilename; do
#		list="$(find /codede/Sentinel-2/MSI/L2A/<echo $i> -mindepth 3  -maxdepth 3  -name "tilename.SAFE")"
# 		echo "$list" > //home/eouser/tilesearch/"tilename".txt
# 
# reading one line? concatenate strings?
# useful?
