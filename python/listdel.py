#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Jul 22 13:31:50 2020

read, filter an delete multiple scenes

0.1

"""




import glob
import os
import pandas as pd
import datetime as dt


#%% make dir list
tile_list = []
for tile in glob.glob('/media/data2/S2/*/'):
    tile_list.append(tile.split('/')[4])
#%%


    
#%% data path to list
tile_dict = {}
for tile in dir_list:
    tile_dict["data_path_]
#    for file in glob.glob(tile+"*.SAFE"):
#        data_path.append(file)
#        print(tile+"*.SAFE")
    

#%%
    
tile_list = []
for tile in glob.glob('/media/data2/S2/*/'):
    tile_list.append(tile.split('/')[4])    

data_path = []
for file in glob.glob('/media/data2/S2/T32UNB/*.SAFE'):
    data_path.append(file)    
print(data_path)

sensing_date = []
for sd in data_path:
#    print((((sd.split('_'))[2]).split('T'))[0])
    sensing_date.append((((sd.split('_'))[2]).split('T'))[0])

creation_date = []
for cd in data_path:
    creation_date.append((((cd.split('_'))[6]).split('T'))[0])

del_df = pd.DataFrame(zip(data_path, sensing_date, creation_date),
                        index = sensing_date,
                        columns=['path', 'sensing_date', 'creation_date'])




#del_list.to_csv('/home/UNI-WUERZBURG.EU/sef35id/Desktop/double_all.csv')

#%%
# first step write multiple entries to df and list old fashioned pre processed
# 
double_df = del_df[del_df.duplicated('sensing_date', keep=False)]
double_df.to_csv('/home/UNI-WUERZBURG.EU/sef35id/Desktop/double_false.csv')

double_df = double_df[double_df.duplicated('sensing_date', keep=False)]
double_df.to_csv('/home/UNI-WUERZBURG.EU/sef35id/Desktop/double_double_false.csv')

#
#double_list = del_list[del_list.duplicated('sensing_date', keep='first')]
#double_list.to_csv('/home/UNI-WUERZBURG.EU/sef35id/Desktop/double_first.csv')
#
#double_list = del_list[del_list.duplicated('sensing_date', keep='last')]
#double_list.to_csv('/home/UNI-WUERZBURG.EU/sef35id/Desktop/double_last.csv')




# TODO check additional T variable and date for:
#%% TODO check multiple observations with same dates (sentinel-issue)
# e.g. /media/data2/S2/T32UNB/S2A_MSIL2A_20171007T103021*.SAFE
# checking SAFE dir size, drop smaller?
#%%




# ohne df sensing time
#(((data_path[1].split('_'))[2]).split('T'))[0]
## ohne df creation time
##(((data_path[1].split('_'))[6]).split('T'))[0]
# sensing date datetime
#dt.datetime.strptime(((((data[1].split('_'))[2]).split('T'))[0]), '%Y%m%d')
#
# sensing time part of SAFE name
#((pd.DataFrame(data[1].split('_'))).loc[2,0])
## creation time part of SAFE name
#((pd.DataFrame(data[1].split('_'))).loc[6,0])
# ohne df sensing time
#(((data[1].split('_'))[2]).split('T'))[0]
## ohne df creation time
#(((data[1].split('_'))[6]).split('T'))[0]
#
#
# loop solution
#dt.datetime.strptime(((((data[1].split('_'))[2]).split('T'))[0]), '%Y%m%d')
#
#
#[dt.datetime.strptime(x, '%Y%m%d') for x in ((((data[1].split('_'))[2]).split('T'))[0])]
