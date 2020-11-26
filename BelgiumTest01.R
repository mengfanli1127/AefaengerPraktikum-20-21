Data1<-read.csv("COVID19BE_CASES_AGESEX.csv")
dim(Data1)
str(Data1)
install.packages("ggplot2")
require(ggplot2)
ggplot(Data1,aes(x=AGEGROUP,y=CASES))+geom_point(size=2.5,color="blue")+theme(axis.text.x = element_text(angle = 45,hjust = 0.5,vjust = 0.5))+xlab("Povinces")+ylab("Counts")+ggtitle("Provinces vs Counts")
ggplot(Data1,aes(AGEGROUP,CASES))+geom_bar(stat="identity",color="blue")+theme(axis.text.x = element_text(angle = 45,vjust = 0.5,color = "black"))+ggtitle("Cases in different agegroups")
ggplot(Data1,aes(x=PROVINCE,fill=AGEGROUP))+geom_bar(position = "fill")+labs(title='the count of cases in every province in different agegroups')+theme(axis.text.x = element_text(angle = 45,vjust = 0.5,color = "black"))
ggplot(Data1,aes(x=PROVINCE,fill=SEX))+geom_bar(position = "fill")+labs(title='the count of cases in every province in female and male')+theme(axis.text.x = element_text(angle = 45,vjust = 0.5,color = "black"))
ggplot(Data1,aes(x=AGEGROUP,fill=SEX))+geom_bar(position = "fill")+labs(title='the count of cases in every agegroups in different sexes')+theme(axis.text.x = element_text(angle = 45,vjust = 0.5,color = "black"))
ggplot(Data1,aes(x=SEX,y=CASES))+geom_boxplot(fill="cornflowerblue",color="black",notch = TRUE)


