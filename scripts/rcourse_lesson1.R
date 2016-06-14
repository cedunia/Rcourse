## LOAD PACKAGES ##
library(dplyr)
library(ggplot2)

## READ IN DATA AND ORGANIZE ##
#read in data
data <- read.table('./data/rcourse_lesson1_data.txt', sep = '\t', 
                   header = TRUE)
#Look at data
dim(data)
head(data)
tail(data)
xtabs(~group, data)

#subset out bilingual
data_bl <- data %>% filter(., group == "bilingual")

#Look at data
dim(data_bl)
head(data_bl)
tail(data_bl)
xtabs(~group, data_bl)
xtabs(~type, data_bl)


## MAKE FIGURES ##

#By group
data.plot <- ggplot(data, aes(x = group, y = rt)) + geom_boxplot()
pdf("figures/data.pdf")
data.plot
dev.off()

#