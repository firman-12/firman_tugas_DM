library(dplyr)
no1
datasetno1 <- bisa%>% select(customer_id, sales) %>% filter(sales== max(sales))
no2
datasetno2 <- bisa %>% select(category, sub_category,profit) %>% filter(category== 'Office Supplies') 

no3
datasetno3 <- nrow(bisa %>% select(profit) %>% filter(profit <0 )) 

no4
datasetno4 <- bisa %>% select (customer_id, sales)%>% filter(customer_id %in% c("JE-16165","KH-16510"," AD-10180"))%>% group_by(customer_id)%>% summarise(total_sales=sum(sales))%>% filter(total_sales == max(total_sales))

no5
dataset1 <- read.csv('bisa.csv',sep=",",header=TRUE)

yearly <- bisa %>% group_by(tahun) %>% 
  summarise(total_sales = sum(sales), total_profit = sum(profit), total_customer = n())

provitmax <- filter(yearly, total_profit == max(total_profit))

no6

plottt <- bisa %>% select(profit,sales,tahun) %>% filter(tahun %in% c("2014","2015"))
attach(plottt)
mycol <- c(x = "yellow", y = "green")
plot(sales~profit,
     main= "Sales Vs Profit 2014-2015", 
     xlab = "Sales", ylab="Profit", 
     pch = 1, 
     frame = FALSE 
)

library(dplyr)
