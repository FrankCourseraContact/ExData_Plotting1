# PROJECT 1 - PART 3
# LINE GRAPH: Sub Metering 1-3
# The following code assumes that "household_power_consumption.txt" is 
# in the working directory. 


# Read the data
data <- read.table("household_power_consumption.txt", na.strings = "?", 
                   skip = 66636, nrows = 2880, comment.char="", sep=";")

# Add a column for the "datetime"
data$datetime <- strptime( paste(data$V1,data$V2), format="%d/%m/%Y %H:%M:%S")


# Open the png graphics device
dev.copy(png, file = "plot3.png")

# Create the plot
plot(data$datetime, data$V7, type="l", ylab="", xlab="")
lines(data$datetime, data$V8, col = "red")
lines(data$datetime, data$V9, col = "blue")
legend( "topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
        col=c("black", "red", "blue"), lty=c(1,1,1))

# Close the graphics device and save the file.
dev.off()
