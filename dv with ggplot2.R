install.packages("ggplot2")
library(ggplot2)
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point()

# draw one point in the diagram at position(1) and position(3)
plot(1,3)

#Draw two points in the diagram, one at position (1, 3) and one in position (8, 10):
plot(c(1, 8), c(3, 10))

#multiple points
plot(c(1,2,3,4,5),c(3,7,8,9,12))

#example
x<-c(1,2,3,4,5)
y<-c(3,7,8,9,12)
print(x,y)

#sequence of point
plot(1:10)

#draw a line
plot(1:10, type="l")

#colors
plot(1:10, col="red")

# size
plot(1:10, cex=3)

#shape

plot(1:10,pch=25,cex=2)

plot(1:10, type = "l", col = "blue")


plot(1:10, type = "l", col = "blue")  # Plotting lines

#multiple lines 
# Sample data
x = 1:10
y1 = x
y2 = x^2
y3 = sqrt(x)
# Create an empty plot
plot(x, y1, type = "l", col = "blue", ylim = range(0, y2, y3), xlab = "X-axis", ylab = "Y-axis")
# Add the other lines
lines(x, y2, type = "l", col = "red")
lines(x, y3, type = "l", col = "green")
# Add a legend
legend("topright", legend = c("Line 1", "Line 2", "Line 3"), col = c("blue", "red", "green"), lty = 1)
# Add a title
title("Multiple Lines Plot")

#bar plots
categories<-c("a","b","c","d")
values<-c(20,30,15,25)
barplot(values,names.arg=categories,main="bar plot")

#line plot
# Sample data
x <- c(1, 2, 3, 4, 5)
y <- c(2, 3, 1, 5, 4)
# Create a simple line plot
plot(x, y, type = "l", main = "Line Plot", xlab = "X-axis", ylab = "Y-axis")

#histogram
# Sample data
data <- c(1, 2, 2, 3, 3, 3, 4, 4, 5, 5, 5, 5)
# Create a histogram
hist(data, main = "Histogram", xlab = "Values", ylab = "Frequency", col = "lightblue")

#themes and 
# Load the ggplot2 library
library(ggplot2)
# Sample data
data <- data.frame(
  x = 1:10,
  y = c(2, 4, 6, 8, 10, 12, 14, 16, 18, 20)
)
# Create a scatter plot
plot <- ggplot(data, aes(x = x, y = y)) +
  geom_point(size = 4, color = "blue", shape = 19) +  # Customize points
  labs(x = "X-axis", y = "Y-axis") +  # Customize axis labels
  theme_minimal() +  # Use a minimal theme
  ggtitle("Customized Scatter Plot") +  # Add a title
  theme(
    plot.title = element_text(size = 16, hjust = 0.5),  # Customize title
    axis.text = element_text(size = 12),  # Customize axis text
    axis.title = element_text(size = 14),  # Customize axis title
    legend.position = "none"  # Remove legend
  )
# Print the plot
print(plot)






