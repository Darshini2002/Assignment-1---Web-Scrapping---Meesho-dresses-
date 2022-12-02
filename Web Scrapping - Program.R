#robotstxt - to get permission, connectivity, etc.....
#rvest - to take the HTML scrapper point
library(robotstxt)
library(rvest)

#scrapping websites
url <- "https://www.meesho.com/tops-ladies/pl/3ja"

#allowability
path = paths_allowed(url)

#HTML elements from website
web <- read_html(url)

#segregating names
name <- web %>% html_nodes(".ctZiZK") %>%html_text()
View(name)

#segregating price
price <- web %>% html_nodes(".eeBKKF") %>%html_text()
View(price)

#segregating reviews
reviews <- web %>% html_nodes(".hiLoxS") %>%html_text()
View(reviews)

#segregating delivery
delivery <- web %>% html_nodes(".hJUvcC") %>%html_text()
View(delivery)

#creating dataframe
meesho <- data.frame(name, price, reviews, delivery)
View(meesho)

#saving data
write.csv(meesho,"dresses.csv")