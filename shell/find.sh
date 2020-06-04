# finding data in archives using 'find' https://manpages.ubuntu.com/manpages/focal/en/man1/find.1
# - finding data
# - store path in file
# 

# e.g. all tiles in UTM32
$ find /path/to/data -name '*T32*'
# find with combination AND to find data from S2A in UTM32
$ find /path/to/data -name '*S2A*' -name '*T32*'
# find with combination OR to find *SAFE dir data for the 08th of September or 19th of August
# using masked and space-separated brackets
$ find \( -name '*0730*' -o -name '*0704*' \) -name '*.SAFE*'
###################################################################
# and saving this to a file using a shell
# without using /path/to/data only gives the filename without subdirectories
# and save it to the given path, leaving it emtpy uses /path/to/dir
#   - shebang (#!/bin/<interpreter>)
#   - save as *.sh
#   - making file executable with $ chmod +x filename.sh
#   - execute $ ./filename.sh
#   - or manual calling $ bash filename.sh
#   - using "-maxdepth" option might be useful tu speed up the process
 
# TO LIST: WITHOUT EXTRA LINES ("item 1 item 2 item 2")
#!/bin/bash
list="$(find /path/to/dir \( -name '*0730*' -o -name '*0704*' \) -name '*.SAFE*')"
echo $list > /given/path/file.txt
# TO LIST: WITH EXTRA LINES ("item 1" "item 2" "item 3")
#!/bin/bash
list="$(find /path/to/dir \( -name '*0730*' -o -name '*0704*' \) -name '*.SAFE*')"
echo "$list" > /given/path/file.txt
###################################################################
# in one command to separate lines in file
echo "$(find /path/to/dir \( -name '*0730*' -o -name '*0704*' \) -name '*.SAFE*')" > /given/path/file.txt

# shell command scp (secure copy), possible alternative could be 'rsync'
# copies "file" from "remote" to working dir
$ scp remote@ip_remote:file /wd
# copies dir (-r, recursive) to working directory using a key (-i)
scp -i /path/to/key.txt -r remote@ip_remote:/wanted/dir
# when using a key (-i) a possible solution for automate copying
# reading txt-file to list
list="$(<filename.txt)"
# make array
array=($list)
# list first element
echo ${array[0]}
####################################################################
# combined to a script
 #!/bin/bash
 
list="$(</home/UNI-WUERZBURG.EU/sef35id/Desktop/tilesearch/2019/T32UPA.txt)"
array=($list) # not sure if needed
#echo ${array[0]}

for i in {x..y}
do
	echo "Downloading: ${array[i]}"
	scp -i /path/to/key.txt -r remote@ip_remote:${array[i]} /destination
done
#######################################################################
# 

