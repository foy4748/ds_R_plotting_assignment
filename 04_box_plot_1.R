library(ggplot2)
library(here)
library(readxl)
library(ggExtra)
library(GGally)
library(reshape2)
theme_set(theme_minimal())
# Data Paths
## xlsx
country_table_xlsx <- here("data", "xlsx", "country_table.xlsx")
students_performance_xlsx <- here("data", "xlsx", "StudentsPerformance.xlsx")


## csv
country_table_csv <- here("data", "csv", "country_table.csv")
students_performance_csv <- here("data", "csv", "StudentsPerformance.csv")

# Reading data
data <- read.csv(students_performance_csv)
data2 <- read.csv(country_table_csv)

# Assuming your data frame is named df
box_plot <- ggplot(data, aes(x = gender, y = math.score)) +
  geom_boxplot(fill = "#0D98BA") +
  labs(x = "Gender", y = "Math Score") +
  # scale_y_continuous(limits = c(NA, max(data$`math.score`) + 10)) +
  # geom_hline(yintercept = c(min(data$`math.score`), max(data$`math.score`)), linetype = "dashed", color = "black")
  theme_minimal() # +
  # facet_wrap(~ lunch)

box_plot
