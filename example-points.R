# Instala pacote - CUIDADO, necessita dos pacotes gdal-bin e libgdal-dev no linux
install.packages(c("OpenStreetMap"))

# Carrega pacote
library(OpenStreetMap)

# Gera um mapa mundial simples
map <- openmap(
  upperLeft  = c(85.0, -180.0), 
  lowerRight = c(-85.0, 180.0),
  type = "osm"
)

# Cria projeção do mapa, para plot com latitude e longitude
mapLatLon = openproj(map)

# Plota projeção
plot(mapLatLon)

# Dataset : http://datadrivensecurity.info/blog/pages/dds-dataset-collection.html
dataset <- read.delim(
  file = "marx-geo.csv",
  sep = ","
)

# Colore protocolos
dataset$color <- "red"
dataset[dataset$proto == "ICMP",]$color <- "blue"
dataset[dataset$proto == "UDP",]$color <- "green"

# Gera pontinhos
points(
  x = dataset$longitude,
  y = dataset$latitude,
  col = dataset$color,
  cex = .8
)
