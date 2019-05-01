library(drat)
library(hurricaneexposure)
library(hurricaneexposuredata)
library(dplyr)
library(tidyr)

################
##Storm Tracks##
################

storms_1988 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "1988")
map_tracks(storms = storms_1988$storm_id)

storms_1989 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "1989")
map_tracks(storms = storms_1989$storm_id)

storms_1990 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "1990")
map_tracks(storms = storms_1990$storm_id)

storms_1991 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "1991")
map_tracks(storms = storms_1991$storm_id)

storms_1992 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "1992")
map_tracks(storms = storms_1992$storm_id)

storms_1993 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "1993")
map_tracks(storms = storms_1993$storm_id)

storms_1994 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "1994")
map_tracks(storms = storms_1994$storm_id)

storms_1995 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "1995")
map_tracks(storms = storms_1995$storm_id)

storms_1996 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "1996")
map_tracks(storms = storms_1996$storm_id)

storms_1997 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "1997")
map_tracks(storms = storms_1997$storm_id)

storms_1998 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "1998")
map_tracks(storms = storms_1998$storm_id)

storms_1999 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "1999")
map_tracks(storms = storms_1999$storm_id)

storms_2000 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "2000")
map_tracks(storms = storms_2000$storm_id)

storms_2001 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "2001")
map_tracks(storms = storms_2001$storm_id)

storms_2002 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "2002")
map_tracks(storms = storms_2002$storm_id)

storms_2003 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "2003")
map_tracks(storms = storms_2003$storm_id)

storms_2004 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "2004")
map_tracks(storms = storms_2004$storm_id)

storms_2005 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "2005")
map_tracks(storms = storms_2005$storm_id)

storms_2006 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "2006")
map_tracks(storms = storms_2006$storm_id)

storms_2007 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "2007")
map_tracks(storms = storms_2007$storm_id)

storms_2008 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "2008")
map_tracks(storms = storms_2008$storm_id)

storms_2009 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "2009")
map_tracks(storms = storms_2009$storm_id)

storms_2010 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "2010")
map_tracks(storms = storms_2010$storm_id)

storms_2011 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "2011")
map_tracks(storms = storms_2011$storm_id)

storms_2012 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "2012")
map_tracks(storms = storms_2012$storm_id)

storms_2013 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "2013")
map_tracks(storms = storms_2013$storm_id)

storms_2014 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "2014")
map_tracks(storms = storms_2014$storm_id)

storms_2015 <- hurr_tracks %>%
  select(storm_id) %>%
  distinct() %>%
  separate(storm_id, c("name", "year"), sep = "-", remove = FALSE) %>%
  filter(year == "2015")
map_tracks(storms = storms_2015$storm_id)

map_tracks(storms = storms) ## All storm tracks in database
