# Load necessary libraries
library(readr)
library(dplyr)
library(ggplot2)

# 1. Load the dataset
sales_data <- read_csv("C:/Users/HP/Downloads/sales_data.csv")

# 2. Calculate the mean of 'price,' 'quantity,' and 'revenue'
mean_price <- mean(sales_data$price, na.rm = TRUE)
mean_quantity <- mean(sales_data$quantity, na.rm = TRUE)
mean_revenue <- mean(sales_data$revenue, na.rm = TRUE)

# 3. Calculate the median of 'price,' 'quantity,' and 'revenue'
median_price <- median(sales_data$price, na.rm = TRUE)
median_quantity <- median(sales_data$quantity, na.rm = TRUE)
median_revenue <- median(sales_data$revenue, na.rm = TRUE)

# 4. Compute the variance of 'price,' 'quantity,' and 'revenue'
variance_price <- var(sales_data$price, na.rm = TRUE)
variance_quantity <- var(sales_data$quantity, na.rm = TRUE)
variance_revenue <- var(sales_data$revenue, na.rm = TRUE)data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAkCAYAAAD7PHgWAAADDklEQVR42u3X609SYRwHcLq86aX/Ry97m2nTOcvNVvmiZZe51cpZS9vUhut4Cy0dpVOaF0LAw+UgSlxVYugsVEzJCyrqpoZpMYFDivXu1wOYIobKbZ4tvtt3B97wfPac8+z8oNHiiSee/zzF+EACJWGlop6zz0U6VplED54rpXB0cU9iiUgLCtMiSM0OoAu1QBlcEa7NpCNc75QVTGtb0DHlgGeCXmoAC/HuW3ThB+izrMLYqhs0cy4EdEJRew9gGHbyWHFPuZpculAHnxZsMPrNDWqEk5qdPiCuhWJcmRCsmF5/Oqa4Jzx1YYlYB8YlO3xGONUcCZ3Tzh1gMYIX4b1BW8DTQD5XHVgyn6uqihj3mKPCMEIPYyukD2dxQdeMcw9QZSFh2LoJRqsbXd3ez0NffR1c3u3f74alDeAYfwD6bTIi3CO2vLpc2gcTaz9hxLtzLng/Q+4DStBBISYdIJ5wgGjcAcJxOwi++Iqb7NCOyh9b95Y36mvbiA3y2IqtsHEPmuVMhuwjmL9vwvDKpve2ymdJL1B2EHDCBxQGANsDgJ4+bJGHd/rvNcvqa5QGmLFtwdAK2rl5EhSWvcCuKADvN8lCA2YxiTM5b7sa67pHYHb9FwyiZ0k97wLlnB9wdhfYGQQoOiIQrRUa8Daro4ClM4HF/hsM2zjVIUDPLvoDxSEA7zRKQwNm1xN51Uoj9C9vgGbB5Qd0HQj0vE0kCEgcAcj3A2bXS0K8xQRx6sYbcSNdMuB97mINRGuFd0iuM8V1BbgOgRwxBWYxReG/w6/WCmpzOd0Isr4LtBwCnPQDjh8ORGtENmRcqREwcpoUaHFbAJD0AaePBsSDADNf4ZFPQRkv+djNhk4QmFajDsyo5kdnTEtn8AqzXhPAHbH+E3iJwQurlxm86E3iaZXcvMwaAbQYFvcB0160UWNgTS3n3E2v4kND//weYEoFhzojf3IZ+1pqRRvUas07wItl76gD9CQJY6ckI1SlyuQFJpWyqQXcRp5LxFrhAsKdx1pZNGoGTtCO+89SPPHEOH8AqIVouE8fvpUAAAAASUVORK5CYII=

# 5. Calculate the standard deviation of 'price,' 'quantity,' and 'revenue'
sd_price <- sd(sales_data$price, na.rm = TRUE)
sd_quantity <- sd(sales_data$quantity, na.rm = TRUE)
sd_revenue <- sd(sales_data$revenue, na.rm = TRUE)

# 6. Generate summary statistics for each numerical column
summary_statistics <- sales_data %>%
  summarise(
    count_price = sum(!is.na(price)),
    mean_price = mean(price, na.rm = TRUE),
    sd_price = sd(price, na.rm = TRUE),
    min_price = min(price, na.rm = TRUE),
    max_price = max(price, na.rm = TRUE),
    
    count_quantity = sum(!is.na(quantity)),
    mean_quantity = mean(quantity, na.rm = TRUE),
    sd_quantity = sd(quantity, na.rm = TRUE),
    min_quantity = min(quantity, na.rm = TRUE),
    max_quantity = max(quantity, na.rm = TRUE),
    
    count_revenue = sum(!is.na(revenue)),
    mean_revenue = mean(revenue, na.rm = TRUE),
    sd_revenue = sd(revenue, na.rm = TRUE),
    min_revenue = min(revenue, na.rm = TRUE),
    max_revenue = max(revenue, na.rm = TRUE)
  )

# 7. Explore Date Information
# Convert the 'date' column to date format if it isn't already
sales_data$date <- as.Date(sales_data$date, format = "%Y-%m-%d")
earliest_date <- min(sales_data$date, na.rm = TRUE)
latest_date <- max(sales_data$date, na.rm = TRUE)

# 8. Correlation Analysis
correlation_matrix <- sales_data %>%
  select(price, quantity, revenue) %>%
  cor(use = "complete.obs")

# 9. Outlier Detection
detect_outliers <- function(x) {
  Q1 <- quantile(x, 0.25, na.rm = TRUE)
  Q3 <- quantile(x, 0.75, na.rm = TRUE)
  IQR <- Q3 - Q1
  lower_bound <- Q1 - 1.5 * IQR
  upper_bound <- Q3 + 1.5 * IQR
  return(which(x < lower_bound | x > upper_bound))
}

outliers_price <- detect_outliers(sales_data$price)
outliers_quantity <- detect_outliers(sales_data$quantity)
outliers_revenue <- detect_outliers(sales_data$revenue)

# 10. Frequency Distributions
ggplot(sales_data, aes(x = price)) +
  geom_histogram(binwidth = 1, fill = "blue", color = "black") +
  ggtitle("Frequency Distribution of Price")

ggplot(sales_data, aes(x = quantity)) +
  geom_histogram(binwidth = 1, fill = "green", color = "black") +
  ggtitle("Frequency Distribution of Quantity")

ggplot(sales_data, aes(x = revenue)) +
  geom_histogram(binwidth = 1, fill = "red", color = "black") +
  ggtitle("Frequency Distribution of Revenue")

# Print results
list(
  mean_price = mean_price,
  mean_quantity = mean_quantity,
  mean_revenue = mean_revenue,
  median_price = median_price,
  median_quantity = median_quantity,
  median_revenue = median_revenue,
  variance_price = variance_price,
  variance_quantity = variance_quantity,
  variance_revenue = variance_revenue,
  sd_price = sd_price,
  sd_quantity = sd_quantity,
  sd_revenue = sd_revenue,
  summary_statistics = summary_statistics,
  earliest_date = earliest_date,
  latest_date = latest_date,
  correlation_matrix = correlation_matrix,
  outliers_price = outliers_price,
  outliers_quantity = outliers_quantity,
  outliers_revenue = outliers_revenue
)
