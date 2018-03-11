# Unique_Locations.R
# Gets the number of unique locations in the terms + locations dataset

locationsdata <- read.csv("locations_contexts.csv")


unique_locations <- locationsdata[!duplicated(locationsdata$LOCATION),]

loc_length <- length(unique_locations$LOCATION)




