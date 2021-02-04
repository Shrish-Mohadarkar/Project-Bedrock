#Creating vectors

revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Computing profit for each month
profit <-  revenue - expenses

#Printing value of profit
print(profit)

#Profit after tax for each month. Tax should be 30%
tax <- round(profit * 0.3)

#Printing tax
tax

#Computing Profit after tax
profit.after.tax <- profit - tax

#Printing profit after tax
print(profit.after.tax)

#Computing Profit Margin
profit.margin <- round(profit.after.tax / revenue,2) * 100

#Printing value of profit.margin
print(profit.margin)

#Computing mean profit.after.tax
mean_pat <- mean(profit.after.tax)
mean_pat

#Good Month - Where Profit.after.tax is greater than mean
good.months <- profit.after.tax > mean_pat
good.months

#Bad months - where profit.after.tax is less than mean
bad.months <- !good.months
bad.months

#Best month - where profit.after.tax was max() for that year
best.month <- profit.after.tax== max(profit.after.tax)
best.month

#Worst month - where profit.after.tax was min() for that year
worst.month <- profit.after.tax == min(profit.after.tax)
worst.month

#Units of thousands
revenue.1000 <- round(revenue/1000)
expenses.1000 <- round(expenses/1000)
profit.1000 <- round(profit/1000)
profit.after.tax.1000 <- round(profit.after.tax/1000)

