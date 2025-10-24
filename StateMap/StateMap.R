# Replicating StateMap with R ##############

library(ggplot2)
library(leaflet)

mydata <- read.csv("StateMapCSV.csv")

mymap <- st_read("C:/Users/Prince_Shunlexxi/Documents/Stats Computing/Rdirectory/NGA ShapeFile/nga_admbnda_adm1_osgof_20161215.shp",
                 stringsAsFactors = FALSE)

str(mymap)

