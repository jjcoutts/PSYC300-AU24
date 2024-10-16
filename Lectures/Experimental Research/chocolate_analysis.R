# Experimental analysis script
# PSYC300
# R Script created by Jacob J. Coutts

# load required packages
library(ggplot2)
library(jtools)

# Read in data
chocolate <- read.table("chocolate_data.csv",header=TRUE, sep=",")

# visualize the data
plot(chocolate$weight, chocolate$purchase)

# something better in ggplot2
summary(chocolate)
ggplot(data = chocolate, aes(x = as.factor(packweight), y = purchase)) + 
  geom_boxplot() + 
  jtools::theme_apa() + 
  xlab("Package Weight (1 = Light, 2 = Heavy)") + 
  ylab("Willingness to Purchase") + 
  ggtitle("Boxplots of Package Weight by Willingness to purchase")

# run a test
t.test(chocolate$weight,chocolate$purchase)

### end of script