# PROJECT 1 - PART 2
# LINE GRAPH: Global Active Power
# The following code assumes that "household_power_consumption.txt" is 
# in the working directory. 


# Read the data
data <- read.table("household_power_consumption.txt", na.strings = "?", 
                   skip = 66636, nrows = 2880, comment.char="", sep=";")

# Add a column for the "datetime"
data$datetime <- strptime( paste(data$V1,data$V2), format="%d/%m/%Y %H:%M:%S")

# Open the png graphics device
dev.copy(png, file = "plot2.png")

# Plot it
plot(data$datetime, data$V3, type="l", ylab = "Global Active Power (kilowats)", xlab= "")

# Close the graphics device and save the file.
dev.off()



