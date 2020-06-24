#!/bin/bash
##########################################################################################################################
# 1. sucht nach bayern-kachel-.SAFE
# 2. schreibt pfade in .txt mit name bspw. T32UQB.txt
#
########################################################################################################################
tiles=("T32TPT" "T32UNB" "T32UNU" "T32UNV" "T32UPB" "T32UPU" "T32UPV" "T32UQA" "T32UQU" "T32UQV" "T33TUN" "T33UUP" "T33UUQ" "T33UVQ")
years=("2015" "2016" "2017" "2018" "2019" "2020")

for tile in "${tiles[@]}" ; do
	for year in "${years[@]}" ; do
		echo $"Searching tile $tile in /codede/Sentinel-2/MSI/L2A/$year"
		list="$(find /codede/Sentinel-2/MSI/L2A/$year -mindepth 3  -maxdepth 3  -name "*${tile}*.SAFE")"
    echo $"Writing $tile.txt to /home/eouser/tilesearch/$year"
		echo "$list" > /home/eouser/tilesearch/$year/$tile.txt
	done
done
