###############################################
# understanding code-de api
###############################################





# getting human-readable (_pretty=true) download links. e.g 10 records (maxRecords)
# 
wget -O - "https://finder.code-de.org/resto/api/collections/Sentinel2/search.json?_pretty=true&maxRecords=10" | grep "url" | egrep -o 'h[^"]+' | sed 's/\\//g'

