str_in <- c('01/01/2020', '09/15/2020', '06/11/2020', '02/02/2020')
str_out <- c('01/10/2020', '09/20/2020', '07/19/2020', '02/27/2020')

# Parse date from str_in and str_out
date_in <- as.Date(str_in, format='%m/%d/%Y')
date_out <- as.Date(str_out, format='%m/%d/%Y')

# Create data frame with column date_in, date_out
df <- data.frame(date_in=date_in, date_out=date_out)

# Calculate duration = date_out - date_in
df$duration <- df$date_out - df$date_in

# Calculate mean and median of duration
mean(df$duration)
median(df$duration)
