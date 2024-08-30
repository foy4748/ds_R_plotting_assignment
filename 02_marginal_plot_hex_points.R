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

hexPoint <- ggplot(data, aes(x = math.score, y = reading.score)) +
  geom_point(aes(colour = reading.score), alpha = 0) +
  geom_hex() +
  theme_minimal() +
  theme(legend.position = "none") + 
  labs(x = 'Math Score', y = 'Reading Score') +
  scale_fill_gradient(low = "#63b4ff", high = "black")

hexPoint <- ggMarginal(hexPoint, data=data, type = "histogram", color="black", fill="#63b4ff")

hexPoint
