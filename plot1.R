
# PROJECT 1 - PART 1
# HISTOGRAM: Global Active Power
# The following code assumes that "household_power_consumption.txt" is 
# in the working directory. 

# Read the data
data <- read.table("household_power_consumption.txt", na.strings = "?", 
                   skip = 66636, nrows = 2880, comment.char="", sep=";")

# Open the png graphics device
dev.copy(png, file = "plot1.png")

# Create the histogram
hist(data$V3, main = "Global Active Power", col = "red", border = "black", 
     xlab="Global Active Power (kilowats)")

# Close the graphics device and save the file.
dev.off()
