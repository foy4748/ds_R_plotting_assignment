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

line_plots <- ggplot(data, aes(x = math.score, y = reading.score)) +
  geom_point(aes(colour = reading.score), size=1.5) +
  facet_grid(lunch ~ gender) +
  labs(x = "Math Score", y = "Reading Score") +
  # facet_wrap(~ lunch) +
  theme_minimal() +
  theme(legend.position = "none") + 
  theme(panel.spacing = unit(0.5, "lines"))

line_plots