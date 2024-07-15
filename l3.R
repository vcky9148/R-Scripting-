#load the dataset
data=read.csv("sales_data.csv")
print(str(data))

#explore head and summary
print(head(data))
print(summary(data))

#missing value
print(which(is.na(data)))

#missing values in each column
print(sum(is.na(data$price)))
print(sum(is.na(data$quantity)))
print(sum(is.na(data$revenue)))

#techniques
new_data<-na.omit(data)
print(sum(is.na(new_data)))

#6
library(caret)
scaled_data<-preProcess(new_data,method=c("range"))
scaled_data<-predict(scaled_data,new_data)
print(head(scaled_data))

#zscore
library(caret)
z_scaled<-preProcess(new-data,method=c("centre"))
z_scaled<-predict(z_scaled,new_data)
print(head(z_scaled))

library(caret)

# Sample data
new_data <- data.frame(x = c(10, 20, 30, 40, 50))

# Preprocess the data (centering and scaling)
preProc <- preProcess(new_data, method = c("center", "scale"))

# Apply the pre-processing transformation to new data
z_scaled <- predict(preProc, newdata = new_data)

# Print the scaled data
print(head(z_scaled))


#robust
new_data <- data.frame(x = c(10, 20, 30, 40, 50))
numeric_cols<-sapply(new_data,is.numeric)
numeric_data<-new_data[,numeric_cols]
center<-apply(numeric_data,2,median)
scale_factor<-apply(numeric_data,2,IQR)
scaled<-scale(numeric_data,center = center,scale=scale_factor)
print(head(scaled))

# Sample data
new_data <- data.frame(x = c(10, 20, 30, 40, 50))

# Extract numeric columns
numeric_cols <- sapply(new_data, is.numeric)
numeric_data <- new_data[, numeric_cols]

# Calculate median and IQR
center <- apply(numeric_data, 2, median)
scale_factor <- apply(numeric_data, 2, IQR)

# Robust scaling
scaled <- scale(numeric_data, center = center, scale = scale_factor)

# Print the scaled data
print(head(scaled))
