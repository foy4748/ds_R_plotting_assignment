source('main.R')

pairPlot <- ggpairs(data, 
                  columns = c("math.score", "reading.score", "writing.score"), 
                  upper = list(continuous = wrap("points", stroke=0.5, color = "#63b4ff", size = 1)),
                  lower = list(continuous = wrap("points", stroke=0.5, color = "#63b4ff", size = 1)),
                  diag = list(continuous = wrap("barDiag", color="black", fill="#63b4ff")))

# densityDiag 
pairPlot
