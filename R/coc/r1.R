library(readr)
dream_market_cocaine_listings <- read_csv("dream_market_cocaine_listings.csv")

netw=dream_market_cocaine_listings[,c(15,16,13)]

g1 <- make_empty_graph(n = 0)
g1=add_edges(g1, as.character(netw[1,1]), as.character(netw[1,2]))


