#basic stats

x=ceiling(rnorm(1000,mean = 60,sd=20))#ceiling remove decimal
mean(x)
median(x)
#no mode fn
table(x) #calculate freq count
sort(table(x),decreasing = T) #may not be accurate

install.packages("modeest")
library(modeest)
mlv(x,method(shorth))


