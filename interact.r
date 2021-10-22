library(plotly)
library(htmlwidgets)

df <- read.csv("LifeExpectancy.csv")

years <- as.double(df$Age)
male <- as.double(df$Male)
female <- as.double(df$Female)

p <- plot_ly(x = years, y = male, type = "scatter",
mode = "lines", fill = "tozeroy", name = "Male Babies",
line = list(color = "#6CA0DC"), fillcolor = "rgba(108,106,220,0.5)")
p <- add_trace(p, x = years, y = female, type = "scatter",
mode = "lines", fill = "tonexty", name = "Female Babies",
line = list(color = "pink"), fillcolor = "rgba(255,192,203,0.5)")
p
saveWidget(p, file = paste0(getwd(), "/HtmlWidget/html.html"))