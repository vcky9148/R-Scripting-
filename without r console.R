#1.6
sum_scores=85+92+78+95+88
sum_scores

avg<-sum_scores/5
avg

#1.7
p=1000
r=5
t=2
si=(p*r*t)/100
print(si)

#1.8
l=8
w=5
perimeter=2*(l+w)
perimeter

#1.9
b=10
h=6
area=0.5*b*h
print(area)

#1.10
inches=60
feet=inches/12
print(feet)

#1.11
install.packages("pracma")
library(pracma)
equation<-function(x){
  res<-2*x+5-17
  return(res)
}
sol<-uniroot(equation,interval=c(-100,100))

print("the solution for x is:",sol$root,"\n")

#1.12
r=5
h=10
pi=3.14
v=pi*r*r*h
v

#2.1
log(10)

#2.2
abs(-7)

#2.3
round(3.75)

#2.4
sqrt(25)

#2.5
floor(runit(1,min=1,max=10))











