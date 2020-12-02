#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
#profit for each month
profit <- (revenue - expenses)
profit

#profit after tax for each month (the tax rate is 30%)
tax <- round(profit * 0.30, 2)
tax

profit_after_tax <- profit - tax
profit_after_tax

#profit margin for each month - equals to profit after tax divided by revenue
profit_margin <- round(profit_after_tax/revenue, 2) * 100
profit_margin

#good months - where the profit after tax was greater than the mean for the year
profit_mean <- mean(profit_after_tax)
profit_mean

good_month <- profit_after_tax > profit_mean
good_month

#bad months - where the profit after tax was less than the mean for the year
bad_month <- profit_after_tax < profit_mean
bad_month

#the best month - where the profit after tax was max for the year
best_month <- profit_after_tax == max(profit_after_tax)
best_month

#the worst month - where the profit after tax was min for the year
worst_month <- profit_after_tax == min(profit_after_tax)
worst_month

#matrices

financial <- rbind(
  revenue,
  expenses,
  profit,
  tax,
  profit_after_tax,
  profit_margin,
  good_month,
  bad_month,
  best_month,
  worst_month
) 

colnames(financial) <- c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")

financial
