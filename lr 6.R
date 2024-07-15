# Install necessary packages (if not already installed)
install.packages("dplyr")
install.packages("readr")

# Load necessary libraries
library(dplyr)
library(readr)

# Load the dataset
sales_data <- read_csv("C:/Users/HP/Downloads/sales_data.csv")

# View the first few rows of the dataset
head(sales_data)
glimpse(sales_data)

# Select specific columns from the dataset
selected_data <- sales_data %>% select(date, revenue)
head(selected_data)

# Filter rows with revenue greater than 1000
filtered_data <- sales_data %>% filter(revenue > 1000)
head(filtered_data)

# Sort by date in ascending order
sorted_data <- sales_data %>% arrange(date)
head(sorted_data)

# Sort by date in descending order (if needed)
sorted_data_desc <- sales_data %>% arrange(desc(date))
head(sorted_data_desc)

# Group by category and calculate total revenue per category
grouped_data <- sales_data %>%
  group_by(category) %>%
  summarize(total_revenue = sum(revenue, na.rm = TRUE))
print(grouped_data)

# Create two dataframes
df1 <- data.frame(ID = 1:5, Name = c("Alice", "Bob", "Charlie", "David", "Eve"))
df2 <- data.frame(ID = 3:7, Score = c(95, 87, 78, 91, 82))

# Perform inner join
inner_joined_df <- inner_join(df1, df2, by = "ID")
print(inner_joined_df)

# Perform full join
full_joined_df <- full_join(df1, df2, by = "ID")
print(full_joined_df)

# Merge data frames by the 'ID' column
merged_df <- merge(df1, df2, by = "ID")
print(merged_df)

