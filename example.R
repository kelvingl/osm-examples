# Instala pacote
install.packages("OpenStreetMap")

# Carrega pacote
library(OpenStreetMap)

# Gera um mapa simples
map <- openmap(
  upperLeft = c(8.23,-76.73), 
  lowerRight = c(-34.45,-31.82)
)

# Plota mapa
plot(map)

