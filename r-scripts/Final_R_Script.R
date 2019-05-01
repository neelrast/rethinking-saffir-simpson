install.packages("drat")
library(drat)
library(dplyr)
library(tidyr)

addRepo("geanders")                                     ### Hurricane data set from Colorado State University
install.packages("hurricaneexposuredata")
library(hurricaneexposuredata)

install.packages("hurricaneexposure")                    ### Package removed from R due to errors. Access attempted March 27th 2019
library(hurricaneexposure)

install.packages("HURDAT")                              ### Hurricane data from National Oceanic and Atmospheric Administration (NOAA)
library("HURDAT")

counties <- as.data.frame(hurricaneexposuredata::county_centers)     ##Pull data from hurricaneexposuredata API into data frames
rain <- as.data.frame(hurricaneexposuredata::rain)
tracks <- as.data.frame(hurricaneexposuredata::hurr_tracks)
winds <- as.data.frame(hurricaneexposuredata::storm_winds)
tan <- as.data.frame(hurricaneexposuredata::closest_dist)

hurdat <- HURDAT::AL    ## Pull data from NOAA
head(hurdat)
tail(hurdat)



#######################
## Create Data Frame ##
#######################

storm_df <- hurdat[c('Name','DateTime','Record','Lat','Lon','Wind','Pressure','NE34','SE34','SW34','NW34')]   ##Create Data Frame
storm_df <- as.data.frame(storm_df)

storm_df <- storm_df[which(storm_df$Record == 'L'),]                                                   ##Select only landfall events

storm_df <- separate(storm_df, DateTime, c('Year', 'Month', 'Day'), sep = '-', remove = TRUE)            ##Format Data Frame
storm_df <- storm_df[which(storm_df$Year > '1984'),]
head(hurr_tracks)
storm_df$storm_id <- paste(storm_df$Name, storm_df$Year, sep = '-')

colnames(hurr_tracks)[colnames(hurr_tracks)=='latitude'] <- 'Lat'
colnames(hurr_tracks)[colnames(hurr_tracks)=='longitude'] <- 'Lon'
landfall_df <- merge(storm_df, hurr_tracks, by = c('storm_id','Lat','Lon'), all=TRUE)
landfall_df <- landfall_df[which(landfall_df$Record == 'L'),]
landfall_df <- landfall_df[c('storm_id', 'Lat','Lon','Name','Year','Month','Day','Wind','Pressure','NE34','SE34','SW34','NW34')]
landfall_df <- landfall_df[order(landfall_df$Year, landfall_df$Name),]

landfall_df

write.csv(landfall_df, "landfall_df.csv") 


#########################
## Storm Visualization ##
#########################

## Examples. For full Visualization code see 'Storm Visualization.R' and 'Storm Tracks.R'

storms_2012 <- hurr_tracks %>%                                      ### Visualizing storm paths by season
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "2012")
map_tracks(storms = storms_2012$storm_id)+
  ggplot2::ggtitle("Storm Tracks for 2012 Hurricane Season")


map_counties(storm = 'Irene-2011', metric = 'rainfall')+           ##Map cumulative rainfall by county
  ggplot2::ggtitle("Total Rainfall During Hurricane Irene ('11)")


map_counties(storm = 'Andrew-1992', metric = 'wind')+              ##Map maximum wind speed registered by county
  ggplot2::ggtitle("Maximum Winds During Hurricane Andrew ('92)")


#############################
## Linear Regression Model ##
#############################

## !!!FINAL Dataframe completed outside of this script!!!

storm_rl_df <- read.csv("storm_rl_df.csv", header = TRUE, sep = ',', dec = '.')
Sreg <- storm_rl_df

## Rastogi-Lukasiewicz
rlidf <- Sreg[1:80,]                     ### training set
rlodf <- Sreg[81:115,]                   ### test set

rlfit <- lm(norm_cost~eff_wind_sp+press_mbars+max_sust_winds_kts+moon_phase+high_tide_line, data = rlidf)
 
rlpred <- as.data.frame(predict(rlfit, rlodf))           ## predict
rlpred

rlodf$rlpred <- as.data.frame(rlpred)

rlodf$rlpred[rlodf$rlpred < 0]<- NA                      ## change negative predictions to 0
rlodf$rlpred[is.na(rlodf$rlpred)] <- 0

##Saffir-Simpson
ssidf <- Sreg[1:80,]                   ### training set
ssodf <- Sreg[81:115,]                 ### test set

ssfit <- lm(norm_cost~max_sust_winds_kts, data = ssidf)

sspred <- as.data.frame(predict(ssfit, ssodf))            ## predict
sspred

ssodf$sspred <- as.data.frame(sspred)

ssodf$sspred[ssodf$sspred < 0]<- NA                         ## change negative predictions to 0
ssodf$sspred[is.na(ssodf$rlpred)] <- 0

##variance
RLMSE <- sum((rlodf$norm_cost - rlodf$rlpred)^2)/35         ##RL Model (4.740909)

SSMSE <- sum((ssodf$norm_cost - ssodf$sspred)^2)/35        ##SS Model (5.737681)

(RLMSE - SSMSE)/SSMSE                                      ### Percent difference 21%
