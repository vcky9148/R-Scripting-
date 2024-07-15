#1.1
grades=c(85,92,78,95,88)

avg_grade<-mean(grades)
avg_grade


grades

third_grade<-grades[3]
third_grade

#1.2
ages<-c(22,30,25,19,28)
names<-c('tim','tom','jerry','ram','dev')
paste(ages,names)

#1.3
prices<-c(10.99,24.75,5.50,8.25)
new_prices<-2*prices
paste(new_prices)

#1.4
temp<-c(75,78,82,80,77,79,81)
max_temp<-max(temp)
print(max_temp)

min_temp<-min(temp)
print(min_temp)

avg_temp<-mean(temp)
print(avg_temp)

std<-sd(temp)
print(std)

celsius<-((temp-32)*5)/9
print(celsius)

#1.5
sales<-c(1000,10000,20000,15000,10020,7000)
expenses<-c(800,1000,2000,7500,1200,6000)
sales
expenses

monthly_profit<-sales-expenses
monthly_profit

yearly_profit<-sum(monthly_profit)
yearly_profit

more_than_10000<-which(monthly_profit>10000)
print(more_than_10000)






























