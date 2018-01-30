
# setting csv as "Survey" -------------------------------------------------

survey <- read.csv("portal_data_joined.csv")

# setting filters ---------------------------------------------------------

filter(survey,hindfoot_length>10,month>5,month<10)
select(survey,weight,hindfoot_length,month,species_id)

# counting NA in weight column... results show 256 count
count(survey,weight,"NA")

# table fxn to see which species_id greatest and lowest
table(survey$species_id)


# histogram! --------------------------------------------------------------
hist(survey$weight)
