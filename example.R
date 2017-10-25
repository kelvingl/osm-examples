# Instala pacote
install.packages("OpenStreetMap")

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
data <- read.delim(
  file = "marx-geo.csv",
  sep = ","
)

# Gera "pontinhos"
points(
  x = data$longitude, 
  y = data$latitude, 
  col = "red",
  cex=.1
)