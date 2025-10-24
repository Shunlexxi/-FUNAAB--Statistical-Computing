# Loading Libraries; Simple Feature ##############

library(sf)
library(ggplot2)
library(tmaptools)
library(leaflet)
library(tmap)
library(tidyverse)
library(dplyr)


options(scipen = 999)


mydata <- data.frame(rnorm(37))


mymap <- st_read("C:/Users/Prince_Shunlexxi/Downloads/gadm41_NGA_2.shp",
                 stringsAsFactors = FALSE) 

mymap2 <- st_read("C:/Users/Prince_Shunlexxi/Desktop/ngaadmbndaadm1osgof/nga_admbnda_adm1_osgof/nga_admbnda_adm1_osgof_20161215.shp",
                 stringsAsFactors = FALSE) 
#|> plot()

str(mymap)
str(mymap2)

plot(mymap$geometry)
plot(mymap2$geometry)


map_and_data <- cross_join(mymap2, mydata)


str(map_and_data)

# T 1
# map = ggplot(mymap2, aes(admin1Name, mymap$rnorm.37)) +
#   geom_polygon(aes(fill=mymap$rnorm.37))
# plot(map)

# T 2
# ggplot(map_and_data) +
#   geom_sf(aes(map_and_data))
# 
# plot(map_and_data)

# T3
ggplot(mymap2, aes(fill=mydata$rnorm.37.)) +
  geom_sf()

plot(map_and_data)


#tmap_shape(map_and_data) +
# tm_polygons("Max.tem.oc." ,id="Year", palette(green))
