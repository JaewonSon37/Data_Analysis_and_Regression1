titanic <- read.csv("C:\\Users\\wodnj\\OneDrive\\바탕 화면\\Data Analysis and Regression\\DSC 423 - Week 1\\Data File\\Titanic.csv")
titanic

# 12
mean(titanic$Fare)
sd(titanic$Fare)

# 13
mean(titanic$Age)
mean(titanic$Age, na.rm = TRUE)

max(titanic$Age)
max(titanic$Age, na.rm = TRUE)

# 14
summary(titanic$Fare)
summary(titanic$Age)

# 15
sum(is.na(titanic$Age))

# 16
length(which(titanic$Embarked == "C"))

# 17
hist(titanic$Fare)
hist(titanic$Fare, main = "Titanic", xlab = "Fare")
hist(titanic$Fare, main = "Titanic", xlab = "Fare", breaks = 4)
hist(titanic$Fare, main = "Titanic", xlab = "Fare", breaks = 4, freq = FALSE)

hist(titanic$Age, main = "Titanic", xlab = "Age", breaks = 8, freq = FALSE)

# 18
help(hist)

# 19
boxplot(titanic$Age)

# 20
mu <- mean(titanic$Age, na.rm = TRUE)
sd <- sd(titanic$Age, na.rm = TRUE)
Titanic.Age.zscores <- (titanic$Age - mu) / sd
Titanic.Age.zscores

Titanic.Fare.dollar <- titanic$Fare * 4.87
hist(Titanic.Fare.dollar, main = "Titanic", xlab = "Fare", breaks = 4, freq = FALSE)

# 21
help(qnorm)

qnorm(.5)
qnorm(0.95)

pnorm(1.65)
pnorm(0)

mean_age <- mean(titanic$Age, na.rm = TRUE)
sd_age <- sd(titanic$Age, na.rm = TRUE)
probability_older_than_55 <- 1 - pnorm(55, mean = mean_age, sd = sd_age)
probability_older_than_55

# 22
probability_younger_than_12 <- pnorm(12, mean = mean_age, sd = sd_age)
probability_younger_than_12

# 23
age_quantile <- quantile(titanic$Age, 0.8, na.rm = TRUE)
age_quantile

# 24
cor(titanic$Age, titanic$Fare, use = "complete.obs")

plot(titanic$Age, titanic$Fare)
