rec1=read.csv("C:\\Users\\Prathyu Lachireddy\\Desktop\\r language\\Sales.csv")
library(ggplot2)

head(rec1,10)
rec1

#line graph
#basic line plots with points(print only first 10)

ggplot(data=rec1,aes(x=Model,y=Sales_in_thousands,group=1))+geom_line()
ggplot(data=rec1,aes(x=Model,y=Sales_in_thousands,group=1))+geom_line()+geom_line()+geom_point()

#multiple lines
ggplot(rec1,aes(x=Model,y=Sales_in_thousands, group=Manufacturer))+ 
  geom_line(aes(color=Manufacturer))+
  geom_point(aes(color=Manufacturer))

#adding arrow 
library(grid)
ggplot(rec1,aes(x=Model, y=Sales_in_thousands, group=Manufacturer))+geom_line(arrow=arrow())+geom_point()


myarrow1=arrow(angle=15,ends="both",type="closed")
ggplot(rec1,aes(x=Model, y=Sales_in_thousands, group=Manufacturer))+geom_line(arrow=myarrow1,aes=(color=Manufacturer))+geom_point()


#steps and path

ggplot(rec1,aes(x=Model, y=Sales_in_thousands,group=1))+geom_step()

ggplot(rec1,aes(x=Model, y=Sales_in_thousands,group=1))+geom_path()

#set line types manually
ggplot(rec1, aes(x=Model,))