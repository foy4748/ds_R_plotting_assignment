source('main.R')

# Create a density plot
jointplot <- ggplot(data, aes(x = math.score, y = reading.score)) +
  geom_point(aes(colour = reading.score), size=1.5) +
  theme_minimal() +
  theme(legend.position = "none") + 
  scale_color_gradient(high = "#004f98", low = "#63b4ff") +
  labs(x = 'Math Score', y = 'Reading Score') 

jointplot <- ggMarginal(jointplot, type = "histogram",color="black", fill="#63b4ff")
jointplot
