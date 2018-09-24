attach(cars)
cars
min(cars[2])
min(cars[4])
min(cars$Miles.per.gallon)
max(cars[3])
max(cars$Horsepower)
mean(cars$Displacement)
mean(cars[["Weight"]])
median(cars$Gears)
sapply(cars[5],sd)
sd(cars$Displacement)
quantile(cars$Displacement, c(.0, .25, .50, .75, .100))
summary(cars)
<<<<<<< HEAD
boxplot(cars$Displacement)
boxplot(Miles.per.gallon~Gears,data=cars, main="Car Mileage Data", xlab="Number of Gears", ylab="Miles Per Gallon")
=======
boxplot(Horsepower)
boxplot(cars$Displacement)
boxplot(Miles.per.gallon~Gears,data=cars, main="Car Mileage Data", xlab="Number of Gears", ylab="Miles Per Gallon")
>>>>>>> 8c37fc6f55aeaad72000b52f474fbd0c3611bf26
