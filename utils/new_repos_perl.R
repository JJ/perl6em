library(ggplot2)
library(ggthemes)

data <- read.csv("new_repos.csv", stringsAsFactors = FALSE)
data$Date <- as.Date(paste0(data$Date,"/01"),format="%Y/%m/%d")
ggplot()+geom_line(data=data,aes(x=data$Date,y=Perl,color='Perl',group=1))+geom_line(data=data,aes(x=data$Date,y=Perl6,color='Perl6',group=1))+theme_tufte()+xlab("Month")+ylab("New repos in GitHub")

