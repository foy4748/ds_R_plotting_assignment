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


data_melt <- melt(data2, id.vars = "Countries")
print(data_melt)
country_heatmap <- ggplot(data_melt, aes(x = variable, y=data_melt$Countries, fill = data_melt$value)) + 
  geom_tile() +
  geom_text(aes(label = round(data_melt$value, 1), color ="blue"),size = 3) +
  # geom_text(aes(label = round(data_melt$value, 1)), color = data_melt$value > median(data_melt$value)), size = 3) +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  theme_minimal() +
  labs(x = "Statistics", y = "", fill = data_melt$value) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
country_heatmap

