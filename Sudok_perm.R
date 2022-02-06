##Random column and row permutation to preserve unicity of sudoku solition

##only 3 by 3 blocks c-permutations
library(combinat)
rand_col_perm<- function(x) {
  y<-x
  y[,c(1,2,3)]<-x[,unlist(permn(3)[as.integer(runif(1,1,7))])]
  y[,c(4,5,6)]<-x[,unlist(permn(3)[as.integer(runif(1,1,7))])+3]
  y[,c(7,8,9)]<-x[,unlist(permn(3)[as.integer(runif(1,1,7))])+6]

  x<-y
  return(x)
}

##only 3 by 3 blocks r-permutations
rand_row_perm<- function(x) {
  y<-x
  y[c(1,2,3),]<-x[unlist(permn(3)[as.integer(runif(1,1,7))]),]
  y[c(4,5,6),]<-x[unlist(permn(3)[as.integer(runif(1,1,7))])+3,]
  y[c(7,8,9),]<-x[unlist(permn(3)[as.integer(runif(1,1,7))])+6,]

  x<-y
  return(x)
}

