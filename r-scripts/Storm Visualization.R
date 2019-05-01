library(drat)
library(hurricaneexposure)
library(hurricaneexposuredata)
library(dplyr)
library(tidyr)


#####################
## Storm Rainfall  ##
##################### 

map_counties(storm = 'Irene-2011', metric = 'rainfall')+           ##Map cumulative rainfall by county
  ggplot2::ggtitle("Total Rainfall During Hurricane Irene ('11)")

map_counties(storm = 'Andrew-1992', metric = 'rainfall')+           ##Map cumulative rainfall by county
  ggplot2::ggtitle("Total Rainfall During Hurricane Andrew ('92)")

map_counties(storm = 'Floyd-1999', metric = 'rainfall')+           ##Map cumulative rainfall by county
  ggplot2::ggtitle("Total Rainfall During Hurricane Floyd ('99)")

map_counties(storm = 'Allison-1995', metric = 'rainfall')+           ##Map cumulative rainfall by county
  ggplot2::ggtitle("Total Rainfall During Hurricane Allison ('95)")

map_counties(storm = 'Katrina-2005', metric = 'rainfall')+           ##Map cumulative rainfall by county
  ggplot2::ggtitle("Total Rainfall During Hurricane Katrina ('05)")

map_counties(storm = 'Rita-2005', metric = 'rainfall')+           ##Map cumulative rainfall by county
  ggplot2::ggtitle("Total Rainfall During Hurricane Rita ('05)")

map_counties(storm = 'Opal-1995', metric = 'rainfall')+           ##Map cumulative rainfall by county
  ggplot2::ggtitle("Total Rainfall During Hurricane Opal ('95)")

map_counties(storm = 'Edouard-2008', metric = 'rainfall')+           ##Map cumulative rainfall by county
  ggplot2::ggtitle("Total Rainfall During Hurricane Edouard ('08)")

map_counties(storm = 'Bonnie-2004', metric = 'rainfall')+           ##Map cumulative rainfall by county
  ggplot2::ggtitle("Total Rainfall During Hurricane Bonnie ('04)")


##################
## Storm Winds  ##
##################

map_counties(storm = 'Andrew-1992', metric = 'wind')+              ##Map maximum wind speed registered by county
  ggplot2::ggtitle("Maximum Winds During Hurricane Andrew ('92)")

map_counties(storm = 'Bonnie-2004', metric = 'wind')+              ##Map maximum wind speed registered by county
  ggplot2::ggtitle("Maximum Winds During Hurricane Bonnie ('04)")

map_counties(storm = 'Sandy-2012', metric = 'wind')+              ##Map maximum wind speed registered by county
  ggplot2::ggtitle("Maximum Winds During Hurricane Sandy ('12)")

map_counties(storm = 'Katrina-2005', metric = 'wind')+              ##Map maximum wind speed registered by county
  ggplot2::ggtitle("Maximum Winds During Hurricane Katrina ('05)")

map_counties(storm = 'Rita-2005', metric = 'wind')+              ##Map maximum wind speed registered by county
  ggplot2::ggtitle("Maximum Winds During Hurricane Rita ('05)")

map_counties(storm = 'Allison-2001', metric = 'wind')+              ##Map maximum wind speed registered by county
  ggplot2::ggtitle("Maximum Winds During Hurricane Allison ('01)")

map_counties(storm = 'Irene-2011', metric = 'wind')+              ##Map maximum wind speed registered by county
  ggplot2::ggtitle("Maximum Winds During Hurricane Irene ('11")

map_counties(storm = 'Edouard-2008', metric = 'wind')+              ##Map maximum wind speed registered by county
  ggplot2::ggtitle("Maximum Winds During Hurricane Edourd ('08)")

map_counties(storm = 'Floyd-1999', metric = 'wind')+              ##Map maximum wind speed registered by county
  ggplot2::ggtitle("Maximum Winds During Hurricane Floyd ('99)")

map_counties(storm = 'Opal-1995', metric = 'wind')+              ##Map maximum wind speed registered by county
  ggplot2::ggtitle("Maximum Winds During Hurricane Opal ('95)")

map_counties(storm = 'Gustav-2008', metric = 'wind')+              ##Map maximum wind speed registered by county
  ggplot2::ggtitle("Maximum Winds During Hurricane Gustav ('08)")

map_counties(storm = 'Frances-2004', metric = 'wind')+              ##Map maximum wind speed registered by county
  ggplot2::ggtitle("Maximum Winds During Hurricane Frances ('04)")

map_counties(storm = 'Beryl-1994', metric = 'wind')+              ##Map maximum wind speed registered by county
  ggplot2::ggtitle("Maximum Winds During Hurricane Beryl ('94)")


############################
## Lunar Effect of Tides  ##
############################

t = seq(0,27,0.1 )
y=cos(0.46*t)+1
plot(t,y, xlab= "Moon Phase", ylab="Tidal Effect")
