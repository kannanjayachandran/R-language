###########################################
# Exploratory data analysis on Iris dataset
###########################################

# Loading Iris dataset
library(datasets)
data("iris")

iris <- datasets::iris

# view the data
View(iris)


################################
# Summary-Statistics of the data
################################

# head, tail
head(iris, 5)
tail(iris, 5)

# Summary
summary(iris)
summary(iris$Sepal.Length)

# Checking if there are missing values
sum(is.na(iris))

# Using skimr package for advanced summary operations
library(skimr)

# Perform skim to display summary statistics
skim(iris)

# Group data by Species and perform skim
iris%>%
  dplyr::group_by(Species) %>%
  skim()

#####################
# Data Visualization
#####################

# pannel plots
plot(iris)
plot(iris, col='red')

# Scatter plot
plot(iris$Sepal.Width, iris$Sepal.Length, 
     col='blue', xlab = 'Sepal Width', ylab = 'Sepal length')

# Histogram
hist(iris$Sepal.Width, col='purple')
