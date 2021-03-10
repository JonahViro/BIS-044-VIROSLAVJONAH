results <- read.csv("PRESIDENT_precinct_primary")
#loading data set
load("PRESIDENT_precinct_primary")
ls(PRESIDENTprecinctprimary)

#declaring variables
x  <- PRESIDENTprecinctprimary[,4]
y  <- PRESIDENTprecinctprimary[,6]
z  <- PRESIDENTprecinctprimary[,7]

#Setting base number of zero votes
sum_trump = 0
sum_biden = 0

#For loop to determine who gets the votes for each state
for(PRESIDENTprecinctprimary in 1:51){
  if(x[PRESIDENTprecinctprimary] > y[PRESIDENTprecinctprimary]){
    sum_trump <- sum_trump + z[PRESIDENTprecinctprimary]
  }else{
    sum_biden <- sum_biden +z[PRESIDENTprecinctprimary]
  }
}

#Printing final votes
print(sum_trump)
print(sum_biden)