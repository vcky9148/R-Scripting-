# Load the dataset
sales_data <- read.csv("Sales_data.csv")

# Check data structure
str(sales_data)

# Find the Summary statistics
summary(sales_data)

# Check for missing values
any_missing <- any(is.na(sales_data))
print(any_missing)

# Remove rows with missing values
sales_data <- na.omit(sales_data)
print(sales_data)

# Remove duplicate rows
sales_data <- unique(sales_data)
print(sales_data)

# Calculate the total revenue in the sales data
total_revenue <- sum(sales_data$Price * sales_data$Quantity)
print(total_revenue)

#8calculate the total revenue by product
total_revenue_product<-tapply(sales_data$revenue,sales_data$product,sum)
print(total_revenue_product)

#9find the product with the highest revenue
product_highest_revenue<-names(total_revenue_product[which.max(total_revenue_product)])
print(product_highest_revenue)

#10calculate the average price
average_price<-mean(sales_data$price)
print(average_price)

#11 what was the total quantity of products sold by the company
total_quantity_sold<-sum(sales_data$quantity)
print(total_quantity_sold)

#12 which category had the highest revenue,how much revenue did it generate
category_highest_revenue<-names(tapply(sales_data$revenue,sales_data$category,sum))
revenue_highest_revenue<-max(tapply(sales_data$revenue,sales_data$category,sum))
print(category_highest_revenue)
print(revenue_highest_revenue)

#13 what was the avg revenue per sale
average_revenue_per_sale<-mean(sales_data$revenue)
print(average_revenue_per_sale)

#14 total revenue generated in each quarter of the year
sales_data$date<-as.Date(sales_data$date)
sales_data$quarter<-cut(sales_data$date,breaks="quarters")
total_revenue_per_quarter<-tapply(sales_data$revenue,sales_data$quarter,sum)
print(total_revenue_per_quarter)