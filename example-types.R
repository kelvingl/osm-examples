# Instala pacote - CUIDADO, necessita dos pacotes gdal-bin e libgdal-dev no linux
install.packages(c("OpenStreetMap"))

# Carrega pacote
library(OpenStreetMap)

# Tipos de mapas
types = c(
  "osm", 
  "maptoolkit-topo",
  "bing", 
  "stamen-toner", 
  "stamen-terrain",
  "stamen-watercolor", 
  "osm-german", 
  "osm-wanderreitkarte",
  "mapbox", 
  "esri", 
  "esri-topo",
  "apple-iphoto", 
  "opencyclemap", 
  "osm-transport",
  "osm-public-transport", 
  "osm-bbike", 
  "osm-bbike-german"
)

# Cria um PNG
png(width=1200,height=2000)

par(mfrow=c(5,4))

for(i in 1:length(types)){
  print(types[i])
  map = openmap(
    c(lat= -29.716681287231076,   lon= -51.7291259765625),
    c(lat= -30.35391637229704,   lon= -50.943603515625),
    minNumTiles=9,
    type=types[i]
  )
  plot(map)
  title(types[i],cex.main=4)
}

dev.off()

launchMapHelper()
