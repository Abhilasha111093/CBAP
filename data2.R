#datastructures

#vector----
v1=1:100 #create vector from 1 to 100
v2=c(1,4,5,7)
class(v1)
class(v2)
v3=c('a','b','c')
v3 #print the vector
class(v3)
v4=c(TRUE,FALSE,T,F,T)
class(v4)
#summary of vectors
mean(v1)
sd(v1)
var(v1)
hist(v1)
hist(women$height)
x=rnorm(60,mean=60,sd=10)
x
plot(x)
hist(x)
plot(density(x))
hist(x,freq=F)
lines(density(x))
hist(x, breaks=10, col=1:10)
length(x)
sd(x)
?sample
x1=LETTERS[5:20]
x1
set.seed(1234)#to repeat the same pattern
y1=sample(x1)
y1


(y2=sample(x1, size=5)

y2

(gender=sample(c('M','F'), size=60, replace=TRUE))
t1=table(gender)

prop.table(t1)
pie(t1)
barplot(t1, col=1:2, horiz = T)


#matrix----
m1=matrix(1:24, nrow = 4) #data filining up column wise
m2=matrix(1:24, nrow = 4,byrow = T) 
m1
m2
m3=matrix(1:24, ncol = 4) 
m3
?matrix
x=runif(60,60,100)
x
plot(density(x))
#round #trunc #ceiling #floor
(x=trunc(runif(60,60,100)))
(m4=matrix(x,ncol=6))
colSums(m4) #sum of each column
rowSums(m4)
rowMeans(m4)
colMeans(m4)
m4[m4>67 & m4<86]
m4
m4[3:10, c(1,3,5)]
rowSums(m4[3:10, c(1,3,5)])


#array----
#dataframe
#rollno,name,gender,course,mrks1,marks2
(rollno=1:60)
(name=paste('student',1:60,sep='-'))
m4[,c(1,5,6)]
name[1:10]
name[c(15,20,35)]
name[-1]
name[-c(1:10)]
rev(name)

(gender=sample(c('male','female'),size=60,replace=T,prob=c(.3,.7)))

(course=sample(c('BBA','MBA','FPM'),size = 60,replace=T,prob = c(0.1,0.6,0.3)))
(mark1=ceiling(rnorm(60,mean=65,sd=6)))
(mark2=ceiling(rnorm(60,mean=60,sd=11)))
(grades=sample(c('A','B','C'),size = 60,replace = T))
students=data.frame(rollno,name,gender,course,mark1,mark2,grades)
class(students,)
summary(students)
students[,c('name')]
students[students$gender=='male',c('rollno','gender','mark1')]
students[students$gender=='male'& students$grades=='C'|students$grades=='B' & mark1>70,c('rollno','gender','mark1')]
students$gender
t1=table(students$gender)
barplot(table(students$course))
barplot(table(students$course),ylim=c(0,50), col = 1:3)
text(1:3,table(students$course)+5,table(students$course))
str(students)
nrow(students)
names(students)
dim(students)
head(students)
tail(students)
head(students,n=7)
students[c(1,2)]
#
