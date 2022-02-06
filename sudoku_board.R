##Creation of sudoku grill
library(combinat)
x<-matrix(0,9,9)
create_sudoku<-function(){
  source("Sudok_perm.R")
  x<-matrix(0,9,9)
x[1,]<-unlist(permn(9)[as.integer(runif(1,1,factorial(9)))])
x[2,c(1,2,3)]<-x[1,c(2,3,1)]


for (j in 1:2){
  for (i in 4:9) {
  x[j+1,i]<-x[j,(i-3)]
  x[j+1,1:3]<-x[j,7:9]
  }}



for (i in 0:2){

x[(4:6)+i,(1:3)]<-x[1:3,c(3,1,2)]
x[(4:6)+i,1:3]<-x[(1:3)+i,c(3,1,2)]
x[(7:9),1:3]<-x[4:6,c(3,1,2)]


}
for (i in 0:2){

  x[(4:6)+i,4:6]<-x[1:3,c(6,4,5)]
  x[(4:6)+i,4:6]<-x[(1:3)+i,c(6,4,5)]
  x[(7:9),4:6]<-x[4:6,c(6,4,5)]
}


for (i in 0:2){

  x[(4:6)+i,7:9]<-x[1:3,c(9,7,8)]
  x[(4:6)+i,7:9]<-x[(1:3)+i,c(9,7,8)]
  x[(7:9),7:9]<-x[4:6,c(9,7,8)]

}
return (rand_perm(x))
}


