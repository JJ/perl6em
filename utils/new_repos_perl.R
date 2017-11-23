library(ggplot2)
library(ggthemes)

data <- read.csv("new_repos.csv")
ggplot()+geom_line(data=data,aes(x=as.numeric(row.names(data)),y=Perl,color='Perl',group=1))+geom_line(data=data,aes(x=as.numeric(row.names(data)),y=Perl6,color='Perl6',group=1))+theme_tufte()+xlab("Month")+ylab("New repos in GitHub")
