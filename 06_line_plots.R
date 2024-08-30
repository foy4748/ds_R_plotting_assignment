source('main.R')

line_plots <- ggplot(data, aes(x = math.score, y = reading.score)) +
  geom_point(aes(colour = reading.score), size=1.5) +
  facet_grid(lunch ~ gender) +
  labs(x = "Math Score", y = "Reading Score") +
  # facet_wrap(~ lunch) +
  theme_minimal() +
  theme(legend.position = "none") + 
  theme(panel.spacing = unit(0.5, "lines"))

line_plots