# Load blue tongue
bt <- read.csv("bluetongue_2014_2015.csv")

# Select relevant columns
bt <- bt[, c("Id", "Latitude", "Longitude", "Country", "Locality.Name", "Observation.Date", "SumCases")]

# Rename columns
colnames(bt) <- c("id", "lat", "lon", "country", "loc", "obs_date", "sum_cases")

# Convert observation_date string to date
bt$obs_date <- as.Date(bt$obs_date, "%d/%m/%Y")

# Replicate rows by # of cases
bt.expanded <- bt[rep(row.names(bt), bt$sum_cases), ]

# Select subset of columns
bt <- bt.expanded[, c("lat", "lon", "loc", "obs_date")]

# Save it as csv
write.table(bt, file = "bluetongue_carto.csv", sep = ",", row.names = FALSE)
