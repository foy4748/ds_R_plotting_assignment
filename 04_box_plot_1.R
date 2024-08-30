source('main.R')

# Assuming your data frame is named df
box_plot <- ggplot(data, aes(x = gender, y = math.score)) +
  geom_boxplot(fill = "#0D98BA") +
  labs(x = "Gender", y = "Math Score") +
  # scale_y_continuous(limits = c(NA, max(data$`math.score`) + 10)) +
  # geom_hline(yintercept = c(min(data$`math.score`), max(data$`math.score`)), linetype = "dashed", color = "black")
  theme_minimal() # +
  # facet_wrap(~ lunch)

box_plot
