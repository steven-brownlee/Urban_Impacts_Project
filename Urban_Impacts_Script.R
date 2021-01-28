##

# Urban Impact Project
# Date: January 27 2021,
# Author: Steven Brownlee
# Email: sbrownle@sfu.ca

# Description: Script to manage the downloading of remotely sensed imagery
# as well as externally derived shapefiles and analyze urban lake footprints
# through time series analysis of NDBI within lake boundary and outside lake 
# boundary at 100 m buffer from shoreline. 

##

# 1.) Install and call in packages as needed:

#devtools::install_github("16EAGLE/getSpatialData")


library(getSpatialData)


#2.) Download satellite images:

set_archive('D:\\Okanagan_Sentinel_Archive\\Urban_Impacts_Archive')

set_aoi() #For future: draw shapefile and use as replicable AOI

login_CopHub(username = "sbrownlee") # Log in using your Copernicus Hub
# username and password: password entry done by popup window, do not 
# store in script.

records <- get_records(time_range = c("2016-01-01", "2021-01-01"),
                       products = c("Sentinel-2"))

