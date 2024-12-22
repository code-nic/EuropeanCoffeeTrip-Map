#Just a test repo

#TODO
#using xml-sites to store all cafe-links in a list
# https://europeancoffeetrip.com/cafe-sitemap.xml bis https://europeancoffeetrip.com/cafe-sitemap5.xml

#iterating through the list -> request every website and scrape the following values -> Title, Address, Coordinates (later opening hours etc)
    #coordinates -> <div id="cafe-map">
#using rotating proxies to not get blocked
#storing the values in a dict(cafelink:[name,address,coordinates])

#creating the geojson format to import into umap.openstreetmap ->values in geojson name:titel description:address coordinates:[x,y]
