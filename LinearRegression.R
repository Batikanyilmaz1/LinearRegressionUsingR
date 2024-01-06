
install.packages("ggplot2")

# Load required library
library(ggplot2)

# Read the data from the file
data <- read.table("C:/Users/BATIKAN YILMAZ/Documents/Question_1.txt",dec = ",")

# Assign column names if needed
colnames(data) <- c("X1", "X2", "Y")


# Perform linear regression
model <- lm(Y ~ X1 + X2, data = data)


# Display the summary of the regression
summary(model)

# Plot the data and the regression line
ggplot(data, aes(x = X1, y = Y)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  labs(title = "Linear Regression", x = "X1", y = "Y")

