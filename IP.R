install.packages("data.tree")
library(data.tree)

integerprogram <- Node$new("X1 = 3.75, X2 = 2.25, Z = 41.25")

branch1 <- integerprogram$AddChild("Branch and Bound X1")
ip1 <- branch1$AddChild("For X1 <= 3 :- X1 = 3, X2 = 3, Z = 39")
ip2 <- branch1$AddChild("For X1 >= 4 :- X1 = 4, X2 = 1.8, Z = 41")
subbranch1 <- ip2$AddChild("Branch and Bound X2")
ip3 <- subbranch1$AddChild("For X2 <= 1 :- X1 = 4.44, X2 = 1, Z = 40.56")
subbranch2 <- ip3$AddChild("Branch and Bound X1")
ip5 <- subbranch2$AddChild("For X1 <= 4 :- X1 = 4, X2 = 1, Z = 37")
ip6 <- subbranch2$AddChild("For X1 >= 5 :- X1 = 5, X2 = 0, Z = 40")
ip4 <- subbranch1$AddChild("For X2 >= 2 :- X1 = 3.75, X2 = 2.25, Z = 41.25")

branch2 <- integerprogram$AddChild("Branch and Bound X2")
ip7 <- branch2$AddChild("For X2 <= 2 :- X1 = 3.88, X2 = 2, Z = 41.11")
subbranch3 <- ip7$AddChild("Branch and Bound X1")
ip9 <- subbranch3$AddChild("For X1 <= 3 :- X1 = 3, X2 = 3, Z = 39")
ip10 <- subbranch3$AddChild("For X1 >= 4 :- X1 = 4, X2 = 1.8, Z = 41")
ip8 <- branch2$AddChild("For X2 >= 3 :- X1 = 3, X2 = 3, Z = 39")

print(integerprogram)