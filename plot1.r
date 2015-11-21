## This first line will likely take a few seconds. Be patient!
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
# Using the base plotting system, make a plot showing the total PM2.5 emission from all sources 
# for each of the years 1999, 2002, 2005, and 2008.

TotalUSEmissionsByYear <- aggregate(Emissions ~ year, NEI, sum)

png('plot1.png')
barplot(height=TotalUSEmissionsByYear$Emissions, names.arg=TotalUSEmissionsByYear$year, xlab="Years", ylab=expression("Total" ~ PM[2.5] ~ "emissions (tons)"),main=expression("Total" ~ PM[2.5] ~ "emissions at various years"))
dev.off()
