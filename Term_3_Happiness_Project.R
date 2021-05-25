rm(list= ls())

library(foreign)

# reading data
happiness <- read.spss("Happiness-Sustainable-Behaviour.sav", to.data.frame=TRUE)
View(happiness)

# checking structure of the data  
str(happiness)
# removing unwanted columns from the data that are not align as per quesitionaire
data = happiness[,c(-77:-88)]
str(data) 

#Checking summary of the data
summary(data)
View(data)

#1. Checking Accuracy
# Checking accuracy and labels for each columns
table(data$M02)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$M02 = factor(data$M02, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                            labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$M02 = as.numeric(data$M02)

table(data$M05)
# Converting "Not like me at all" and "Very much like me", and 4.5 into correct labels
data$M05 = factor(data$M05, levels = c("Not like me at all", 2,3,4,4.5,5,6,"Very much like me"),
                  labels = c(1,2,3,4,5,5,6,7))

# converting categorical into numerical column data type
data$M05 = as.numeric(data$M05)

table(data$M11)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$M11 = factor(data$M11, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                  labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$M11 = as.numeric(data$M11)

table(data$M12)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$M12 = factor(data$M12, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                  labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$M12 = as.numeric(data$M12)

table(data$M14)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$M14 = factor(data$M14, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                  labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$M14 = as.numeric(data$M14)

table(data$M17)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$M17 = factor(data$M17, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                  labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$M17 = as.numeric(data$M17)

table(data$P03)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$P03 = factor(data$P03, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                  labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$P03 = as.numeric(data$P03)

table(data$P08)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$P08 = factor(data$P08, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                  labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$P08 = as.numeric(data$P08)

table(data$P13)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$P13 = factor(data$P13, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                  labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$P13 = as.numeric(data$P13)

table(data$P15)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$P15 = factor(data$P15, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                  labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$P15 = as.numeric(data$P15)

table(data$P16)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$P16 = factor(data$P16, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                  labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$P16 = as.numeric(data$P16)

table(data$P18)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$P18 = factor(data$P18, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                  labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$P18 = as.numeric(data$P18)

table(data$E01)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$E01 = factor(data$E01, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                  labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$E01 = as.numeric(data$E01)


table(data$E04)
# Converting "Not like me at all" and "Very much like me", 6.5 into correct labels
data$E04 = factor(data$E04, levels = c("Not like me at all", 2,3,4,5,6,6.5,"Very much like me"),
                  labels = c(1,2,3,4,5,6,7,7))

# converting categorical into numerical column data type
data$E04 = as.numeric(data$E04)

table(data$E06)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$E06 = factor(data$E06, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                  labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$E06 = as.numeric(data$E06)

table(data$E07)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$E07 = factor(data$E07, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                  labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$E07 = as.numeric(data$E07)

table(data$E09)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$E09 = factor(data$E09, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                  labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$E09 = as.numeric(data$E09)

table(data$E10)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$E10 = factor(data$E10, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                  labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$E10 = as.numeric(data$E10)

table(data$SC_1)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_1 = factor(data$SC_1, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                  labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_1 = as.numeric(data$SC_1)

table(data$SC_2)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_2 = factor(data$SC_2, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                   labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_2 = as.numeric(data$SC_2)

table(data$SC_3)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_3 = factor(data$SC_3, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                   labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_3 = as.numeric(data$SC_3)

table(data$SC_4)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_4 = factor(data$SC_4, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                   labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_4 = as.numeric(data$SC_4)


table(data$SC_5)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_5 = factor(data$SC_5, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                   labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_5 = as.numeric(data$SC_5)

table(data$SC_6)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_6 = factor(data$SC_6, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                   labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_6 = as.numeric(data$SC_6)

table(data$SC_7)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_7 = factor(data$SC_7, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                   labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_7 = as.numeric(data$SC_7)

table(data$SC_8)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_8 = factor(data$SC_8, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                   labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_8= as.numeric(data$SC_8)

table(data$SC_9)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_9 = factor(data$SC_9, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                   labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_9= as.numeric(data$SC_9)

table(data$SC_10)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_10 = factor(data$SC_10, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                   labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_10= as.numeric(data$SC_10)

table(data$SC_11)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_11 = factor(data$SC_11, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_11= as.numeric(data$SC_11)

table(data$SC_12)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_12 = factor(data$SC_12, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_12= as.numeric(data$SC_12)

table(data$SC_13)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_13 = factor(data$SC_13, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_13= as.numeric(data$SC_13)

table(data$SC_14)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_14 = factor(data$SC_14, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_14 = as.numeric(data$SC_14)

table(data$SC_15)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_15 = factor(data$SC_15, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_15 = as.numeric(data$SC_15)

table(data$SC_16)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_16 = factor(data$SC_16, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_16 = as.numeric(data$SC_16)

table(data$SC_17)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_17 = factor(data$SC_17, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_17 = as.numeric(data$SC_17)

table(data$SC_18)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_18 = factor(data$SC_18, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_18 = as.numeric(data$SC_18)

table(data$SC_19)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_19 = factor(data$SC_19, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_19 = as.numeric(data$SC_19)

table(data$SC_20)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_20 = factor(data$SC_20, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_20 = as.numeric(data$SC_20)

table(data$SC_21)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_21 = factor(data$SC_21, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_21 = as.numeric(data$SC_21)

table(data$SC_22)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_22 = factor(data$SC_22, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_22 = as.numeric(data$SC_22)

table(data$SC_23)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_23 = factor(data$SC_23, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_23 = as.numeric(data$SC_23)

table(data$SC_24)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_24 = factor(data$SC_24, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_24 = as.numeric(data$SC_24)

table(data$SC_25)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_25 = factor(data$SC_25, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_25 = as.numeric(data$SC_25)

table(data$SC_26)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_26 = factor(data$SC_26, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_26 = as.numeric(data$SC_26)

table(data$SC_27)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_27 = factor(data$SC_27, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_27 = as.numeric(data$SC_27)

table(data$SC_28)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_28 = factor(data$SC_28, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_28 = as.numeric(data$SC_28)

table(data$SC_29)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_29 = factor(data$SC_29, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_29 = as.numeric(data$SC_29)

table(data$SC_30)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_30 = factor(data$SC_30, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_30 = as.numeric(data$SC_30)

table(data$SC_31)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_31 = factor(data$SC_31, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_31 = as.numeric(data$SC_31)

table(data$SC_32)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_32 = factor(data$SC_32, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_32 = as.numeric(data$SC_32)

table(data$SC_33)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_33 = factor(data$SC_33, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_33 = as.numeric(data$SC_33)

table(data$SC_34)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_34 = factor(data$SC_34, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_34 = as.numeric(data$SC_34)

table(data$SC_35)
# Converting "Not like me at all" and "Very much like me" into correct labels
data$SC_35 = factor(data$SC_35, levels = c("Not like me at all", 2,3,4,5,6,"Very much like me"),
                    labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$SC_35 = as.numeric(data$SC_35)


table(data$sex)
library(tidyverse)
summary(data$sex)
# there is no ordering between male and female, but this data is in likert scale,
# and categories are more than 2, we will do label encoding

data$sex = factor(data$sex, levels = c("Male", "Female"),
                  labels = c(1,2))

# converting categorical into numerical column data type
data$sex = as.numeric(data$sex)
# There are some NAs in the sex column, we can assign a 'prefer not to say' category to it according to questionarie
data[is.na(data$sex),"sex"] = 3


table(data$job)
# we are labeling this based on the type of job a person has, full time job being highest and temp unemployed being 
# the lowest, we are ordering such a way which align above ordering 1 lowest and 7 highest
data$job = factor(data$job, levels = c("Temporarily unemployed", "Full-time homemaker","Student","Retired","Self-employed",
                                       "Employed part-time","Employed full time"),
                  labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$job = as.numeric(data$job)

table(data$edu)
data$edu = factor(data$edu, levels = c("No secondary schooling", "Finished secondary school","High School Diploma",
                                       "University entrance","Vocational training (no university qualifications)",
                                       "Universtiy graduation","Postgraduation"),
                  labels = c(1,2,3,4,5,6,7))

# converting categorical into numerical column data type
data$edu = as.numeric(data$edu)

table(data$home)
# there is no ordering between categories for this column, but since data is in likert scale,
# we will do label encoding
data$home = factor(data$home, levels = c("with parents", "with spouse","by yourself",
                                       "with flatmates","other"),
                  labels = c(1,2,3,4,5))

# converting categorical into numerical column data type
data$home = as.numeric(data$home)

# there is no issue in the accuracy of the columns 'adult', 'children'
# these two columns tell us the number of people in the household with adults and children
summary(data$adult)
summary(data$children)

# no issue found in the accuracy for the income column
summary(data$income)

# no issues found in the accuracy of amount spent on electricity and on water
summary(data$electricity)
summary(data$water)

# renmaing the some columns to their correct name
data <- data %>% rename("solar_powered_equipments"="III.9.1",
                "water_saving_devices" = "III.9.2",
                "AC_orHeater"="III.9.3",
                "insulated_doors_windows"="III.9.4",
                "bike"="III.9.5",
                "ebike"="III.9.6",
                "fuel_eff_veh"="III.9.7",
                "hybrid_car"="III.9.8")

# converting solar_powered_equipments categories Yes, No into 1,2 
table(data$solar_powered_equipments)
data$solar_powered_equipments = factor(data$solar_powered_equipments, levels = c("Yes", "No"),
                  labels = c(1,2))

# converting categorical into numerical column data type
data$solar_powered_equipments = as.numeric(data$solar_powered_equipments)

# converting water_saving_devices categories Yes, No into 1,2 
table(data$water_saving_devices)
data$water_saving_devices = factor(data$water_saving_devices, levels = c("Yes", "No"),
                                       labels = c(1,2))

# converting categorical into numerical column data type
data$water_saving_devices = as.numeric(data$water_saving_devices)

# converting AC_orHeater categories Yes, No into 1,2 
table(data$AC_orHeater)
data$AC_orHeater = factor(data$AC_orHeater, levels = c("Yes", "No"),
                                   labels = c(1,2))

# converting categorical into numerical column data type
data$AC_orHeater = as.numeric(data$AC_orHeater)

# converting insulated_doors_windows categories Yes, No into 1,2 
table(data$insulated_doors_windows)
data$insulated_doors_windows = factor(data$insulated_doors_windows, levels = c("Yes", "No"),
                                   labels = c(1,2))

# converting categorical into numerical column data type
data$insulated_doors_windows = as.numeric(data$insulated_doors_windows)

# converting bike categories Yes, No into 1,2 
table(data$bike)
data$bike = factor(data$bike, levels = c("Yes", "No"),
                                   labels = c(1,2))

# converting categorical into numerical column data type
data$bike = as.numeric(data$bike)

# converting ebike categories Yes, No into 1,2 
table(data$ebike)
data$ebike = factor(data$ebike, levels = c("Yes", "No"),
                                   labels = c(1,2))

# converting categorical into numerical column data type
data$ebike = as.numeric(data$ebike)

# converting fuel_eff_veh categories Yes, No into 1,2 
table(data$fuel_eff_veh)
data$fuel_eff_veh = factor(data$fuel_eff_veh, levels = c("Yes", "No"),
                                   labels = c(1,2))

# converting categorical into numerical column data type
data$fuel_eff_veh = as.numeric(data$fuel_eff_veh)

# converting hybrid_car categories Yes, No into 1,2 
table(data$hybrid_car)
# we found out the there is one category 4 which is out of range, hence assigning that to NA

data$hybrid_car[data$hybrid_car==4] <-NA

# converting labels
data$hybrid_car = factor(data$hybrid_car, levels = c("Yes", "No"),
                                   labels = c(1,2))

# converting categorical into numerical column data type
data$hybrid_car = as.numeric(data$hybrid_car)

# converting mode of transportation into labels
# there is no ordering in this category, hence we will use one hot encoding here
table(data$transport)
# data <- data %>% mutate(tranport_walk = ifelse(transport=="Walk",1,0),
#                 tranport_bike = ifelse(transport=="Bike",1,0),
#                 tranport_ebike = ifelse(transport=="E-bike",1,0),
#                 tranport_motorbike = ifelse(transport=="Motorbike",1,0),
#                 tranport_shared = ifelse(transport=="Shared transportation",1,0),
#                 tranport_car = ifelse(transport=="Car",1,0),
#                 tranport_bus = ifelse(transport=="Bus",1,0),
#                 tranport_taxi = ifelse(transport=="Taxi",1,0)
# ) 

data$transport = factor(data$transport, levels = c("Walk", "Bike","E-bike","Motorbike","Shared transportation",
                                         "Car","Bus","Taxi"),
                   labels = c(1,2,3,4,5,6,7,8))

# converting categorical into numerical column data type
data$transport = as.numeric(data$transport)

# checking expenditure on petrol and number of flights taken in a year
# no issue in accuracy and out of range
summary(data$petrol)
summary(data$flights)

# converting all columns into numeric

str(data)

# saving final dataset with no accuracy and out of range issue, removing unwanted columns
write.csv(data,"project_no_acc_issue.csv", row.names = FALSE)

data = read.csv("project_no_acc_issue.csv")

View(data)

# 2. Checking missing data
summary(data$income)

summary(data)

library('sqldf')

library(RPostgreSQL)
#drv <- dbDriver("PostgreSQL")
#con <- dbConnect(drv, host="localhost", user="postgres", password="Surekha@13", dbname="yyy", port="5436")
options(sqldf.driver = "SQLite")
sqldf(' select sex,job,edu,home,adult,children,income,electricity,water,transport,petrol,flights
        from data
        where job is null')

View(sqldf(' select sex,job,edu,home,adult,children,income,electricity,water,transport,petrol,flights
        from data
       where income>=0 and income<=5'))

# there is no relation between missing job and other demographic information
# Ideally there should be a relation between job and income, but that is not the case here

# checking if there is any relation for education
View(sqldf(' select sex,job,edu,home,adult,children,income,electricity,water,transport,petrol,flights
        from data
        where edu is null'))


# no relation with education and other demographic information

# checking if there is any relation between home with other demographic information
View(sqldf(' select sex,job,edu,home,adult,children,income,electricity,water,transport,petrol,flights
        from data
        where home is null'))
# no relation found

# checking the relation between income and other demographic information
View(sqldf(' select sex,job,edu,home,adult,children,income,electricity,water,transport,petrol,flights
        from data
        where income is null'))

# no relation found

# checking if there is a relation between the transport and other demographic information
View(sqldf(' select sex,job,edu,home,adult,children,income,electricity,water,transport,petrol,flights
        from data
        where transport is null'))

# no relation found
summary(data)
# 2. Fixing missing values
# checking if there are complete missing observation 

sum(is.na(data))
# 1640 values are null

#data distribution of sex
library(ggplot2)
ggplot(data) + geom_bar(aes(x = sex))

#data distribution of income
hist(data$income, breaks = 10, xlab = 'income', main = 'Data Distribution of income')

#data distribution of education
hist(data$edu, breaks = 10, xlab = 'education', main = 'Data Distribution of education')

#data distribution of electricity
hist(data$electricity, breaks = 10, xlab = 'electricity', main = 'Data Distribution of electricity')

#data distribution of water
hist(data$water, breaks = 10, xlab = 'electricity', main = 'Data Distribution of electricity')

str(data)
new_data <- data %>% select(-c("PIC","ID"))

library(mice)
impute <- mice(new_data,m=3, seed=123,maxit = 3)
print(impute)
impute$imp$income

summary(new_data$income)

# 3rd case is the closest to the mean of the income

impute$imp$electricity
summary(new_data$electricity)

# 3rd case imputation is the best, close to its mean

impute$imp$edu

summary(data$ed)

# all are almost same, we can choose 3rd case


final_clean_ds = complete(impute,3)

str(final_clean_ds)

# checking data distribution after imputation

#data distribution of income
hist(final_clean_ds$income, breaks = 10, xlab = 'income', main = 'Data Distribution of income')

#data distribution of education
hist(final_clean_ds$edu, breaks = 10, xlab = 'education', main = 'Data Distribution of education')

#data distribution of electricity
hist(final_clean_ds$electricity, breaks = 10, xlab = 'electricity', main = 'Data Distribution of electricity')

#data distribution of water
hist(final_clean_ds$water, breaks = 10, xlab = 'electricity', main = 'Data Distribution of water')

# data distribution doesn't change much, this is good. This means our imputation worked well.

# saving dataset with no accuracy issue and imputation, no NA in the dataset
write.csv(final_clean_ds,"project_no_missing_issue.csv", row.names = FALSE)

sum(is.na(final_clean_ds))
# no missing value in the dataset


########  Checking correlation between variables

# Checking if all the columns are in numeric

correlations = cor(final_clean_ds, use="pairwise.complete.obs")
correlations

library(corrplot)
corrplot(correlations, method='number')

corr_check <- function(Dataset, threshold){
        matriz_cor <- cor(Dataset)
        matriz_cor
        
        for (i in 1:nrow(matriz_cor)){
                correlations <-  which((abs(matriz_cor[i,i:ncol(matriz_cor)]) > threshold) & (matriz_cor[i,i:ncol(matriz_cor)] != 1))
                
                if(length(correlations)> 0){
                        lapply(correlations,FUN =  function(x) (cat(paste(colnames(Dataset)[i], "with",colnames(Dataset)[x]), "\n")))
                        
                }
        }
}


corr_check(final_clean_ds, 0.6)


# there is no high correlation between the variables but we have moderate correlation
# 1. SC_6 with M05: this means that person who choose his actions based on whether they will benefit others or not
# can be the one who don't want to waste electricity and switch off electronic items when not using. This
# can probably be true and makes sense. That person is saving electricity so that it doesn't get wasted and be
# available to larger crowd for usage.
# 
# 2. SC_33 with M05: This means that a person who turn off the tap to save water when not using is probably
# the person who thinks how can his action benefits others. This way he can save water so that it is not wasted
# and will be available to use for others.
#
# 3. SC_33 with M11: This means that person who turn off the tap when not using can probably be the person
# who wants to make the world a better place where all people will have sufficient amount of resources for use.
# Moreover this person must be environment friendly.
#
# 4.SC_34 with M05: This means that a person who take short showers to save water can probably be the person
# who thinks by doing so he can make water available to other people. He thinks how his actions can benefit others.


##############4. Multicollinearity
#variance inflation factors - vifs
#vifs >= 5 meaning moderate multicollinearity
#vifs >= 10 meaning severse multicollinearity
library('car')
# removed the dummy variables as those were perfect multicollinearity which was wrong
# checking multicollinearity issue with SC_6

model1 = lm(SC_6~ ., 
            data= final_clean_ds)

vif(model1)
# no multicollinearity issue here

# checking multicollinearity issue with SC_33
model2 = lm(SC_33 ~ ., 
            data= final_clean_ds)

vif(model2)
# no multicollinearity issue

# checking multicollinearity issue with SC_34
model3 = lm(SC_34 ~ ., 
            data= final_clean_ds)

vif(model3)
# no issue with multicollinearity

# Conclusion for multicollinearity: there is no issue of multicollinearity in the dataset



## Checking outliers in the dataset
## checking outliers using mahalanobis distance

#mahalanobis distance
ncol(final_clean_ds)
str(final_clean_ds)

final_clean_ds$maha <- mahalanobis(final_clean_ds, colMeans(final_clean_ds), 
                                   cov(final_clean_ds))


# 75 total column including maha, this mean total predictor is 74 and df = # of predictors -1,hence 73
final_clean_ds$p1 <- pchisq(final_clean_ds$maha, df=73, lower.tail=FALSE)


cutoff <- qchisq(1-.001, ncol(final_clean_ds))
cutoff
# 119.8503 is the cutoff

#number of outliers in the dataset
nrow(final_clean_ds[which(final_clean_ds$maha>cutoff),])
# 27 outliers in the dataset
# 7% of the data 

# clean dataset without any outliers
nooutlier_df = final_clean_ds[final_clean_ds$maha<cutoff,]
nrow(nooutlier_df)
# number of rows after removing outliers ie. 358
# saving dataset with no accuracy issue and imputation, no NA in the dataset and no outliers
write.csv(nooutlier_df,"project_no_outliers.csv", row.names = FALSE)

nooutlier_df = read.csv("project_no_outliers.csv")
str(nooutlier_df)
ncol(nooutlier_df)
# we don't want to have the demographic details in the dataset while running FA, hence it is better to remove
# them before checking the FA assumptions
# storing clean dataset without maha distance and p-value
clean_df = nooutlier_df[,c(-54:-76)]
str(clean_df)
View(clean_df)
# what to use
#1. PCA is used when there is high correlation between different variable, we cannot see that in this dataset
# 2. Main goal in PCA is to reduce the dimesion by removing unnecessary columns but try to keep the most of
# the variation of the whole dataset.
# 3. PCA creates components and put the variables that are highly correlated with each other and tries to explain
# the same thing, no concept of latent variables.
# PCA is used to summarize the data into different component, we are not trying to do it that here.

# In our data set, we are trying to find out the relation between orientation to happiness and sustainable
# consumption. Hence we cannot use PCA in this case
# FA is used to understand what constructs the underline data, goal is to explain covariance and correlation
# between the variables
# Normally FA is used in the  field of physiology, health, intelligence, sociology.
# Questions are behaviour question where FA is used widely

# we won't be using DA in this case as DA is used to estimate the relationshiip between a single categorical
# (dependent) variable and a set of independent variables. DA is used to find out the variables which can
# divide the exiting predictors into different group clearly without overlapping


# we have decided to go with Factor Analysis
# Checking Assumptions
# 1. Additivity: items needs to be correlated but not that much
library(psych)

correlations = cor(clean_df)
cortest.bartlett(correlations, n = nrow(clean_df))
# bartlett's test the hypothesis that correlation matrix is an identity matrix which correlation between variables
# are zero, variables are unrelated, small value of p-value (near to zero) rejects this hypothesis and
# confirms that factor analysis might be useful with the given dataset
# since p-value is 0 which is less than 0.05, Factor analysis might be useful for this dataset

library(corrplot) #visualization for correlation
corrplot(correlations,method = "circle", type = "lower", tl.cex = 0.75, tl.srt = 45, tl.col = "blue")
View(correlations)

# there only moderate correlation but not high correlation


#2. Checking Sampling Adequacy - meaning if sample is large enough
KMO(correlations)
##Overall MSA =  0.91 meaning , close to 1
##that there are a significant number of factors in the dataset

nrow(clean_df)
# number of rows are 358,more than 300 which is a best bet for doing EFA


#3. Checking Normality assumption
##assumption set up
ncol(clean_df)
str(clean_df)
# 53 predictors
random = rchisq(nrow(clean_df), 53)
fake = lm(random~., data = clean_df)
standardized = rstudent(fake)
fitted = scale(fake$fitted.values)

##normality
hist(standardized)
# data is roughly normally distributed

#4. Checking linearity
qqnorm(standardized)
abline(0,1)
# we can say that data is linear

#5. Checking homogeneity and homoscedasticity assumptions.
plot(fitted,standardized)
abline(0,0)
abline(v = 0)

# we can see the below graph and can observe that data is distributed 
# equally among 0 in the y and x axis which shows that both homoscedasticity and homogeneity condition is 
# satisfied with this dataset.

#Number of factors
ncol(clean_df)
# We should 3-4 items per factors as per recomendation, now since we have 53 variables, we can have
# factors ranges from 13 to 17


nofactors = fa.parallel(clean_df, fm="ml", fa="fa")
# parallel analysis suggest that number of factors should be 8

# screeplot suggest either 5 or 8, or between these two

nofactors$fa.values#eigen values

sum(nofactors$fa.values > .7) ##new kaiser criterion
# Kasier criterion suggest there can be 5 factors for this dataset which align with our observation from
# screeplot

# we will do the EFA with first 5 factors
##simple structure with a 5 factor model
library('GPArotation')
EFA.model.one <- fa(clean_df, nfactors=5, rotate = "oblimin", fm = "ml")

#diagram
fa.diagram(EFA.model.one)

EFA.model.one$loadings
#look at loadings
print(EFA.model.one$loading, cutoff = 0.35, sort = TRUE)
# ML1 loading
#sc_5, sc_6, sc_7,sc_32,sc_33,sc_34,sc_35, sc_8 :- Conserve:
#save water, fuel electricity ( renewable resources, that resource 
#if not used properly will become less avaialbe to others): these people think of their action before doing it, 
#find meaning in life

# ML2 loading
#sc_4,sc_12,sc_13,sc_14,sc_15,sc_16,sc_17,sc_18,sc_19,sc_20: Food and Purchase

# ML5 loading
# M02, M11,M14,M05, M12, M17: Meaning

#ML4 loading
# SC_22,sc_25, sc_26,sc_23,sc_24,sc_28: waste

# ML3 loading
# P03,P15,P08,P13,P16,P18:Pleasure


EFA.model.one

# Fit indices for the model with 5 factors
# 1. total variation explained by 5 factor is 40% which is less
# 2. RMSR is 0.04 which is less than 0.08. This is better as values close to 0 represent a good fit
# 3. TLI = 0.804 which is slightly near to 0.9 hence can be consider okay. TLI more than 0.9 is consider a good fit. 
# TLI with 0.804 indicates that the model of interest improves the fit by 80.4% relative to the null model.
# 4. RMSEA = 0.054. RMSEA less than 0.08 is consider a good fit, but values closer to 0 consider a good fit.
# 5. P-value here test the hypothesis that model fits the data perfectly. Low p-value rejects this hypothesis. 
# P-value is very low for this model; hence we can reject the hypothesis that model with 5 factor fits the data 
# perfectly.

# All these concludes that most of the conditions of fit are not satisfied by this model with 5 factor, hence 
# we should be looking for model with more factors and see which one satisfies all the fit indices conditions 
# more properly.

##simple structure with a 8 factor model
library('GPArotation')
EFA.model.two <- fa(clean_df, nfactors=8, rotate = "oblimin", fm = "ml")

#diagram
fa.diagram(EFA.model.two)

EFA.model.two$loadings
#look at loadings
print(EFA.model.two$loading, cutoff = 0.3, sort = TRUE)
# Factor loading analysis
# 1. ML4 loading
#SC_22,SC_25,SC_26,SC_10,SC_23,SC_24,SC_28  : Waste

#2. ML3 loading
#M02,M11,M12,M05,M14,E01,E04,E07,E09,E10 : Meaning and Engagement 

# 3. ML1 Loading
#SC_6,SC_7,SC_5,SC_8 :   Conserve Energy

# 4. ML2 Loading 
# SC_17,SC_18,SC_19,SC_30,SC_31 : : purchase and save fuel(transport)                         

# 5. ML6 loading
#SC_33,SC_35,SC_34 :Conserve water                      

#6. ML8 loading
#SC_3,SC_12,SC_13,SC_27  : Support and Food                                            

#7.ML5 loading
# P03,P15,P08,P13,P16,P18  : Pleasure     
        
EFA.model.two
# Fit indices for the model with 8 factors
#Now we are checking whether the model with 8 factors is a good fit and better than model with 5 factors.
# 1. Total Variation explained by the model with 8 factors is 45% which is 5% more than that of 
# model with 5 factors, hence better than it. 
# 2. RMSR is 0.03 which is very close to 0. Model with 5 factor has RMSR as 0.04 which is more than 0.03 than 
# model with 8 factors. Values close to 0 represents a good fit, hence model with 8 factors fit data better 
# than model with 5 factors. 
# 3. TLI value is 0.846 which is near to 0.9 hence can be consider a okay. This is way more than 0.804 TLI 
# value of model with 5 factors. TLI more than 0.9 is consider a good fit. TLI with 0.846 indicates that the 
# model of interest improves the fit by 84.6% relative to the null model. 
# 4. RMSEA value is 0.048 which is way lower than 0.054 which is the RMSEA value of model with 5 factors. 
# RMSEA less than 0.08 is consider a good fit, but values closer to 0 consider a good fit. We can clearly say 
# that model with 8 factors fit data better than model with 5 factors.
# 5. P-value tests the hypothesis that model fits the data perfectly. Low p-value rejects this hypothesis. 
# P-value is low for this model as well but way higher than model with 5 factors. Although low p-value rejects 
# the hypothesis but still this value is much better than p-value for model with 5 factors. In this sense, 
# we can say that model with 8 factors fits data better than model with 5 factors.

#We can conclude that all the fit indices conditions with model with 8 factors is much better than model with 5
# factors and satisfies them all. In fact, loadings and questions clubbed in each factor in model with 
# 8 factors makes much more sense than that of model with 5 factors.

library('tidyverse')
# we are taking all meaning, sustainable consumption questions along with most important demographic
# details such as age, sex, edu, and income
fact_df = nooutlier_df[,c(-56,-58:-60,-62:-76)]
str(fact_df)
# creating a new column 'waste' with means of all columns contributing to make it a factor
# column used SC_22,SC_25,SC_26,SC_10,SC_23,SC_24,SC_28
fact_df <- fact_df %>%
        rowwise() %>%
        mutate(Waste=mean(c(SC_22,SC_25,SC_26,SC_10,SC_23,SC_24,SC_28)))

# creating a new column 'Meaning and Engagement' with means of all columns contributing to make it a factor
# column used M02,M11,M12,M05,M14,E01,E04,E07,E09,E10
fact_df <- fact_df %>%
        rowwise() %>%
        mutate(Meaning.Engagement=mean(c(M02,M11,M12,M05,M14,E01,E04,E07,E09,E10)))

# creating a new column 'Conserve Energy' with means of all columns contributing to make it a factor
# column used SC_6,SC_7,SC_5,SC_8
fact_df <- fact_df %>%
        rowwise() %>%
        mutate(Conserve.Energy=mean(c(SC_6,SC_7,SC_5,SC_8)))

# creating a new column 'purchase and save fuel' with means of all columns contributing to make it a factor
# column used SC_17,SC_18,SC_19,SC_30,SC_31
fact_df <- fact_df %>%
        rowwise() %>%
        mutate(Purchase.Save.Fuel=mean(c(SC_17,SC_18,SC_19,SC_30,SC_31)))

# creating a new column 'Conserve water' with means of all columns contributing to make it a factor
# column used SC_33,SC_35,SC_34
fact_df <- fact_df %>%
        rowwise() %>%
        mutate(Conserve.Water=mean(c(SC_33,SC_35,SC_34)))

# creating a new column 'Support and Food' with means of all columns contributing to make it a factor
# column used SC_3,SC_12,SC_13,SC_27
fact_df <- fact_df %>%
        rowwise() %>%
        mutate(Support.Food=mean(c(SC_3,SC_12,SC_13,SC_27)))

# creating a new column 'Pleasure' with means of all columns contributing to make it a factor
# column used P03,P15,P08,P13,P16,P18. This is all Pleasure data, hence original Pleasure average
fact_df <- fact_df %>%
        rowwise() %>%
        mutate(Pleasure=mean(c(P03,P15,P08,P13,P16,P18)))


# creating a new column 'Meaning with original data' with means of all columns contributing to make 
#it a factor
# column used P03,P15,P08,P13,P16,P18
fact_df <- fact_df %>%
        rowwise() %>%
        mutate(Orig.Meaning=mean(c(M02,M05,M11,M12,M14,M17)))


# creating a new column 'Engagement with original data' with means of all columns contributing to make 
#it a factor
# column used E01,E04,E06,E07,E09,E10
fact_df <- fact_df %>%
        rowwise() %>%
        mutate(Orig.Engage=mean(c(E01,E04,E06,E07,E09,E10)))

# creating a new column 'Pleasure with original data' with means of all columns contributing to make 
#it a factor
# column used P03,P08,P13,P15,P16,P18
fact_df <- fact_df %>%
        rowwise() %>%
        mutate(Orig.Pleasure=mean(c(P03,P08,P13,P15,P16,P18)))

# creating a new column 'Support with original data' with means of all columns contributing to make 
#it a factor
# column used SC_1,SC_2,SC_3,SC_27
fact_df <- fact_df %>%
        rowwise() %>%
        mutate(Orig.Support=mean(c(SC_1,SC_2,SC_3,SC_27)))

# creating a new column 'Energy with original data' with means of all columns contributing to make 
#it a factor
# column used SC_5,SC_6,SC_7,SC_8,SC_9
fact_df <- fact_df %>%
        rowwise() %>%
        mutate(Orig.Energy=mean(c(SC_5,SC_6,SC_7,SC_8,SC_9)))

# creating a new column 'Water with original data' with means of all columns contributing to make 
#it a factor
# column used SC_33,SC_34,SC_35
fact_df <- fact_df %>%
        rowwise() %>%
        mutate(Orig.Water=mean(c(SC_33,SC_34,SC_35)))

# creating a new column 'Food with original data' with means of all columns contributing to make 
#it a factor
# column used SC_11,SC_12,SC_13,SC_14,SC_15,SC_16
fact_df <- fact_df %>%
        rowwise() %>%
        mutate(Orig.Food=mean(c(SC_11,SC_12,SC_13,SC_14,SC_15,SC_16)))

# creating a new column 'Purchase with original data' with means of all columns contributing to make 
#it a factor
# column used SC_4,SC_17,SC_18,SC_19,SC_20,SC_21
fact_df <- fact_df %>%
        rowwise() %>%
        mutate(Orig.Purchase=mean(c(SC_4,SC_17,SC_18,SC_19,SC_20,SC_21)))

# creating a new column 'Waste with original data' with means of all columns contributing to make 
#it a factor
# column used SC_10,SC_22,SC_23,SC_24,SC_25,SC_26,SC_28,SC_29
fact_df <- fact_df %>%
        rowwise() %>%
        mutate(Orig.Waste=mean(c(SC_10,SC_22,SC_23,SC_24,SC_25,SC_26,SC_28,SC_29)))

# creating a new column 'Transport with original data' with means of all columns contributing to make 
#it a factor
# column used SC_30,SC_31,SC_32
fact_df <- fact_df %>%
        rowwise() %>%
        mutate(Orig.Transport=mean(c(SC_30,SC_31,SC_32)))

str(fact_df)

# rounding off the data for the mean values calculated for each factor in the dataset
# changing into dataframe
fact_df <- data.frame(lapply(fact_df, function(y) if(is.numeric(y)) round(y) else y) )

View(fact_df)

fact_df$sex = factor(fact_df$sex, levels = c(1, 2,3),
                  labels = c("Male","Female","Prefer not to say"))

str(fact_df)
# Visualize the demographic details
# And I can pipe that straight into ggplot

######################### Checking count of different gender
ggplot(data=fact_df) +
        geom_bar(mapping=aes(x=sex), fill = "#FF9999")
# this shows that there are more female than male and other gender, approx twice the male count

# Color change fill color
##  #FF9999,#FF6666,#000099
#   "#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7"

# checking average income based on gender
fact_df %>%
        group_by(sex) %>%
        summarize(average_income=mean(income)) %>%
        ggplot() +
        geom_bar(mapping=aes(x=sex, y=average_income), fill="#009E73",stat = "identity")
# this shows that although male is almost half than that of female, there average income is the highest

# Checking average education based on gender
fact_df %>%
        group_by(sex) %>%
        summarize(average_education=mean(edu)) %>%
        ggplot() +
        geom_bar(mapping=aes(x=sex, y=average_education), fill="#0072B2",stat = "identity")
# Education is almost same for all genders, all are in university or have university qualifications 

# checking average meaning opinion based on gender
fact_df %>%
        group_by(sex) %>%
        summarize(avg_meaning_opinion=mean(Orig.Meaning)) %>%
        ggplot() +
        geom_bar(mapping=aes(x=sex, y=avg_meaning_opinion), fill="#009E73",stat = "identity")

#Conclusion: All have same average opinion about meaning of life. They more inclined towards it

# checking average pleasure opinion based on gender
fact_df %>%
        group_by(sex) %>%
        summarize(avg_pleasure_opinion=mean(Orig.Pleasure)) %>%
        ggplot() +
        geom_bar(mapping=aes(x=sex, y=avg_pleasure_opinion), fill="#009E73",stat = "identity")

#Conclusion: Male and Female have more than average inclination towards Pleasure, this means they
# want to live a good life without too much thinking about the envrionment

fact_df %>%
        group_by(sex) %>%
        summarize(avg_engage_opinion=mean(Orig.Engage)) %>%
        ggplot() +
        geom_bar(mapping=aes(x=sex, y=avg_engage_opinion), fill="#009E73",stat = "identity")
# Conclusion: Nothing to say, neurtal to all

# Conclusion: Most of the people have meaning in their life and wants to spend pleasureable life as well.
# They want a balance between the two. 

# Checking the support opinion based on gender
fact_df %>%
        group_by(sex) %>%
        summarize(avg_support_opinion=mean(Orig.Support)) %>%
        ggplot() +
        geom_bar(mapping=aes(x=sex, y=avg_support_opinion), fill="#009E73",stat = "identity")
# Conclusion: female are more inclined in doing the charity and supporting the business which does
# work for the betterment of the society.

# Checking the energy saving opinion based on gender
fact_df %>%
        group_by(sex) %>%
        summarize(avg_energy_opinion=mean(Orig.Energy)) %>%
        ggplot() +
        geom_bar(mapping=aes(x=sex, y=avg_energy_opinion), fill="#009E73",stat = "identity")

#Conclusion: female are more inclined in saving energy(close to 6). This can be explained as female count is more
# but their average income is less, this means either they are doing part time or working as a housewife
# because education level for all are same.

# Checking the water saving opinion based on gender
fact_df %>%
        group_by(sex) %>%
        summarize(avg_water_opinion=mean(Orig.Water)) %>%
        ggplot() +
        geom_bar(mapping=aes(x=sex, y=avg_water_opinion), fill="#009E73",stat = "identity")
# Conclusion: Here also females are much more (6)inclined in saving water than male. The reason can be
# the same as mentioned above. 
# This can be explained as female count is more
# but their average income is less, this means either they are doing part time or working as a housewife
# because education level for all are same.

# Checking the food saving opinion based on gender
fact_df %>%
        group_by(sex) %>%
        summarize(avg_food_opinion=mean(Orig.Food)) %>%
        ggplot() +
        geom_bar(mapping=aes(x=sex, y=avg_food_opinion), fill="#009E73",stat = "identity")
# Conclusion: All have opinions more than neutral tworads saving food, not much. cannot comment on this.

# Checking the water saving opinion based on gender
fact_df %>%
        group_by(sex) %>%
        summarize(avg_purchase_opinion=mean(Orig.Purchase)) %>%
        ggplot() +
        geom_bar(mapping=aes(x=sex, y=avg_purchase_opinion), fill="#009E73",stat = "identity")
# Conclusion: responsible purchase is slightly more than neutral. cannot comment much on it. Women are
# still better doing a responsible purchase than other genders.

# Checking the waste saving opinion based on gender
fact_df %>%
        group_by(sex) %>%
        summarize(avg_waste_opinion=mean(Orig.Waste)) %>%
        ggplot() +
        geom_bar(mapping=aes(x=sex, y=avg_waste_opinion), fill="#009E73",stat = "identity")
# Conclusion: Neutral for all gender. Cannot comment on this.

# Checking the water saving opinion based on gender
fact_df %>%
        group_by(sex) %>%
        summarize(avg_trans_opinion=mean(Orig.Transport)) %>%
        ggplot() +
        geom_bar(mapping=aes(x=sex, y=avg_trans_opinion), fill="#009E73",stat = "identity")
# Conclusion: Little more than neutral. Cannnot comment much on it

############## Checking count of different age group
ggplot(data=fact_df) +
        geom_bar(mapping=aes(x=age), fill = "#0072B2")
# most of the people of this dataset are of young age between 18-36 age group

# Color change fill color
##  #FF9999,#FF6666,#000099
#   "#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7"

# checking average income based on gender
fact_df %>%
        group_by(age) %>%
        summarize(average_income=mean(income)) %>%
        ggplot() +
        geom_bar(mapping=aes(x=age, y=average_income), fill="#009E73",stat = "identity")
# this shows that around 27-29 age group, 53-55 and 76-78 age group is earning more money


# Checking average education based on age
fact_df %>%
        group_by(age) %>%
        summarize(average_education=mean(edu)) %>%
        ggplot() +
        geom_bar(mapping=aes(x=age, y=average_education), fill="#0072B2",stat = "identity")
# MOstly all are either into university or university qualified
# Conclusion: All young crowd are educated, earning good money for some particular age group

str(fact_df)
# Checking average opinion of people about waste management based on gender
fact_df %>%
        group_by(sex) %>%
        summarize(avg_waste_opinion=mean(Waste)) %>%
        ggplot() +
        geom_bar(mapping=aes(x=sex, y=avg_waste_opinion), fill="#D55E00",stat = "identity")
# Both male and female are agreed just more than neutral to reduce the waste. It doesn't seem that 
# They are inclined to reduce the waste and do proper waste management, they are neutral.

# Checking the opinion about the meaning and engagement based on gender
fact_df %>%
        group_by(sex) %>%
        summarize(avg_meaning_engage_opinion=mean(Meaning.Engagement)) %>%
        ggplot() +
        geom_bar(mapping=aes(x=sex, y=avg_meaning_engage_opinion), fill="#009E73",stat = "identity")
# All people agreed towards meaning and engagement, they are not that inclined, but they are more than
# neutral

fact_df %>%
        group_by(sex) %>%
        summarize(avg_ConserveAndEnergy_opinion=mean(Conserve.Energy)) %>%
        ggplot() +
        geom_bar(mapping=aes(x=sex, y=avg_ConserveAndEnergy_opinion), fill="#0072B2",stat = "identity")
# Mostly all genders are trying to save energy. Female are most inclined in conserving and saving energy.

fact_df %>%
        group_by(sex) %>%
        summarize(avg_purchAndFuel_opinion=mean(Purchase.Save.Fuel)) %>%
        ggplot() +
        geom_bar(mapping=aes(x=sex, y=avg_purchAndFuel_opinion), fill="#0072B2",stat = "identity")
# Mostly all people in the dataset are not that inclined in saving fuel and reducing the purchase in
# such a way that helps the environment

fact_df %>%
        group_by(sex) %>%
        summarize(avg_water_opinion=mean(Conserve.Water)) %>%
        ggplot() +
        geom_bar(mapping=aes(x=sex, y=avg_water_opinion), fill="#0072B2",stat = "identity")
# Female are more inclined to save water than male

fact_df %>%
        group_by(sex) %>%
        summarize(avg_support_opinion=mean(Support.Food)) %>%
        ggplot() +
        geom_bar(mapping=aes(x=sex, y=avg_support_opinion), fill="#0072B2",stat = "identity")
# All people are not agreeing to doing support for the business that helps the society and wanted to
# save the food.

fact_df %>%
        group_by(sex) %>%
        summarize(avg_pleasure_opinion=mean(Pleasure)) %>%
        ggplot() +
        geom_bar(mapping=aes(x=sex, y=avg_pleasure_opinion), fill="#0072B2",stat = "identity")
# All people are not that inclined towards pleasure
str(fact_df)
View(fact_df)

################# making dataframe only for orietation to happiness data
OTH_data <- fact_df %>%  #start with the data frame
        select(Orig.Meaning,Orig.Engage,Orig.Pleasure) %>%
        map_df(table) %>%  # use map_df from the purrr package to "table" each column
        rownames_to_column("resp") %>% #convert the rownames to a column named response
        mutate(Questions = case_when(resp == 1 ~ "Orig.Meaning", 
                                     resp == 2 ~ "Orig.Engage",
                                     resp == 3 ~ "Orig.Pleasure"
        )) %>%  #change the resulting 2s to Yes in resp
        select(Questions, everything(), -resp)

OTH_data <-as.data.frame(OTH_data)

# putting question names as row index
rownames(OTH_data) <- OTH_data$Questions

# removing question column from the dataset
OTH_data <- OTH_data[, c(-1)]

# assigning 0 to NA in contengency table
OTH_data[is.na(OTH_data)] <- 0

# checking NA again
sum(is.na(OTH_data))
# no null values

View(OTH_data)
str(OTH_data)
# converting all columns into numeric data
OTH_data$`2`= as.numeric(OTH_data$`2`)
OTH_data$`3`= as.numeric(OTH_data$`3`)
OTH_data$`4`= as.numeric(OTH_data$`4`)
OTH_data$`5`= as.numeric(OTH_data$`5`)
OTH_data$`6`= as.numeric(OTH_data$`6`)
OTH_data$`7`= as.numeric(OTH_data$`7`)

##load library
library(ggplot2)
library("FactoMineR")
library("factoextra")
library("gplots")
# 1. convert the data as a table
dt <- as.table(as.matrix(OTH_data))
dt
# 2. Graph
balloonplot(t(dt), main ="OTH_data", xlab ="", ylab="",
            label = FALSE, show.margins = FALSE)

OTH.ca <- CA(OTH_data, graph = FALSE)
print(OTH.ca)
# p-value here is small less than 0.05, means that there is a relation of association between rows and columns.
# association between meaning, engagement, and pleasure with the Likert Scale

#INTEPRETATION
#Step 1 is to evaluate whether there is a significant dependency between the rows and columns
# we can confirm the association by doing chisq test 
chisq <- chisq.test(OTH_data)
chisq
# this confirms the association between rows and columns

#Step 2 Eigenvalues/Variances
# check to see how many factors we can select for our model, how many dimensions can be selected
#we examine the eigenvalues to determine the number of axis to be considered
#Eigenvalues correspond to the amount of information retained by each axis. 
# Dimensions are ordered decreasingly and listed according to the amount of variance explained in the 
# solution. 
# For instance, in our dataset about 89.71% of the variation is explained by the first two dimensions.
# we have 7 columns, hence we have 6 dimensions
# We assume that the data were completely random, we'd expect each axis to have an eigenvalue of
# 1/(nrow(OTH_data)-1) =50% for rows, and 1/(ncol(OTH_data)-1) =20% for columns

library("factoextra")
eig.val <- get_eigenvalue(OTH.ca)
eig.val
# we will select 2 dimensions, 100%

# hence the cut off for the dimensions based on our assumptions of the completely random data is 20
fviz_screeplot(OTH.ca,addlabels=T) + 
        geom_hline(yintercept=20,linetype=2,color="red")
# though the 2nd dimension has variance less than cutoff, we can still take 2 dimension as it represent
# 100% of total variation of the dataset which is pretty good.

#Second conclusion is the biplot - symetric plot show the global pattern 
# repel= TRUE to avoid text overlapping (slow if many point)
#The distance between any row points or column points gives a measure of their similarity
fviz_ca_biplot(OTH.ca, repel = TRUE)
# Conclusion
# 1.Pleasure is close to 5: people are almost neutral about living a pleasure life. They are not too inclined to it.
# 2.Meaning is close 6: This means most people are inclined towards living a meaningful life.
# They need or like to have some purpose in life.
# 3. Engagement is close 4: This means people are neutral in living a life where they feel engaged

####################### looking deeper into rows and columns
row <- get_ca_row(OTH.ca)
row
#row$coord: coordinates of each row point in each dimension (1, 2 and 3). 
# Used to create the scatter plot.
#row$cos2: quality of representation of rows.
#var$contrib: contribution of rows (in %) to the definition of the dimensions.
# Coordinates
head(row$coord)
# we can confirm the cooridinates on the symetric plot with row$corrdinates and see all are correctly
# placed in the two dimensions.
fviz_ca_row(OTH.ca, repel = TRUE)# relationship between row points
# no relationship between the row points


#example: Quality of representation of rows
row$cos2
#the quality of representation of the rows on the factor map is called the 
#squared cosine (cos2) or the squared correlations
#The result of the analysis shows that, the contingency table has been successfully 
#represented in low dimension space using correspondence analysis. 
#The two dimensions 1 and 2 are sufficient to retain 89.71% of the total inertia (variation) 
#contained in the data.
# sum should be equal to 1, check for these two dimension
#If a row item is well represented by two dimensions, the sum of the cos2 is closed to one. 
# we can select Meaning and Engagement for dim1
# nothing is good representation dim2 which is expected


#Visualize the cos2 of row points on all the dimensions using the corrplot package
library("corrplot")
corrplot(row$cos2, is.corr=FALSE)
# we can confirm the same thing by visualizing also

#####################making deeper conclusion for columns similiar to rows above
columns <- get_ca_col(OTH.ca)
columns

head(columns$coord)
# we can confirm the cooridinates on the symetric plot with columns$corrdinates and see all are correctly
# placed in the two dimensions.
fviz_ca_col(OTH.ca, repel = TRUE)# relationship between row points
# No relationship between the column points


#example: Quality of representation of rows
head(columns$cos2, 4)

columns$cos2
#If a column item is well represented by two dimensions, the sum of the cos2 is closed to one. 
# we can select 2,4,6,7 for dim1
# nothing can be selected for dimension 2

#Visualize the cos2 of row points on all the dimensions using the corrplot package
library("corrplot")
corrplot(columns$cos2, is.corr=FALSE)
# we can confirm the same thing by visualizing also

################Contributions of rows to the dimensions
head(row$contrib)
#The row variables with the larger value, contribute the most to the definition of the dimensions
#Rows that contribute the most to Dim.1 and Dim.2 are the most important in explaining the variability 
# in the data set.
#Rows that do not contribute much to any dimension or that contribute to the last dimensions are less 
# important.
library("corrplot")
corrplot(row$contrib, is.corr=FALSE)
#Engagement contribute more to dimension 1
#Pleasure contribute more to dimension 2

# Contributions of rows to dimension 1
fviz_contrib(OTH.ca, choice = "row", axes = 1, top = 10)
# we can see that Engagement contribute more to the dimension 1

# Contributions of rows to dimension 2
fviz_contrib(OTH.ca, choice = "row", axes = 2, top = 10)
# we can see Pleasure and Meaning contribute more to the dimension 2

# Total contribution to dimension 1 and 2
fviz_contrib(OTH.ca, choice = "row", axes = 1:2, top = 10)
#The red dashed line on the graph above indicates the expected average value
#Engagement contribute more for both the axes

################Contributions of columns to the dimensions
head(columns$contrib)
#The column variables with the larger value, contribute the most to the definition of the dimensions
#Columns that contribute the most to Dim.1 and Dim.2 are the most important in explaining the variability 
# in the data set.
#Columns that do not contribute much to any dimension or that contribute to the last dimensions are less 
# important.
library("corrplot")
corrplot(columns$contrib, is.corr=FALSE)
# Contributions of columns to dimension 1
fviz_contrib(OTH.ca, choice = "col", axes = 1, top = 10)
# we can see that 7,4 contribute more to the dimension 1

# Contributions of columns to dimension 2
fviz_contrib(OTH.ca, choice = "col", axes = 2, top = 10)
# we can see that 5,6,3 contribute more to the dimension 2

# Total column contribution to dimension 1 and 2
fviz_contrib(OTH.ca, choice = "col", axes = 1:2, top = 10)
#The red dashed line on the graph above indicates the expected average value
#7,4 contribute more for both the axes/dimensions

###########################Checking Asymmetric biplot
#rows (or columns) points are plotted from the standard co-ordinates (S)
#the profiles of the columns (or the rows) are plotted from the principal coordinates (P)
#P = sqrt(eigenvalue) X S where
#P: the principal coordinate of a row (or a column) on the axis
#eigenvalue: the eigenvalue of the axis

#plot a standard asymetric biplot
# Asymmetric plot for row space

# Asymmetric plot for both rows and column space
fviz_ca_biplot(OTH.ca,
               map ="rowprincipal", arrow = c(TRUE, TRUE),
               repel = TRUE)
#the argument arrows, which is a vector of two logicals specifying if the plot should contain points 
# (FALSE, default) or arrows (TRUE).
#The first value sets the rows and the second value sets the columns.
#If the angle between two arrows is acute, then their is a strong association between the corresponding
# row and column.
#To interpret the distance between rows and and a column you should perpendicularly project row points
# on the column arrow.
# if the angle is 90 or more, we cannot say much about them, cannot interpret them.
#The closer an arrow is (in terms of angular distance) to an axis the greater is the contribution of 
# the row category on that axis relative to the other axis. 
# If the arrow is halfway between the two, its row category contributes to the two axes to the same 
# extent.

################ Conclusion from original data of Orientation to happiness:
# Small acute angle between meaning and 7; and pleasure and 7.
# This means that people are more inclined to lead a meaningful and pleasure life.
# We can say people are neutral towards life of engagement.

str(fact_df)
# making dataframe only for original groups of sustainable consumptions
SC_data <- fact_df %>%  #start with the data frame
        select(Orig.Support,Orig.Energy,Orig.Water,Orig.Food,Orig.Purchase,Orig.Waste,Orig.Transport) %>%
        map_df(table) %>%  # use map_df from the purrr package to "table" each column
        rownames_to_column("resp") %>% #convert the rownames to a column named response
        mutate(Questions = case_when(resp == 1 ~ "Orig.Support", 
                                     resp == 2 ~ "Orig.Energy",
                                     resp == 3 ~ "Orig.Water",
                                     resp == 4 ~ "Orig.Food", 
                                     resp == 5 ~ "Orig.Purchase",
                                     resp == 6 ~ "Orig.Waste",
                                     resp == 7 ~ "Orig.Transport"
        )) %>%  #change the resulting 2s to Yes in resp
        select(Questions, everything(), -resp)

SC_data <-as.data.frame(SC_data)
View(SC_data)
# putting question names as row index
rownames(SC_data) <- SC_data$Questions

# removing question column from the dataset
SC_data <- SC_data[, c(-1)]

# assigning 0 to NA in contengency table
SC_data[is.na(SC_data)] <- 0

# checking NA again
sum(is.na(SC_data))
# no null values

View(SC_data)
str(SC_data)
# converting all columns into numeric data
SC_data$`2`= as.numeric(SC_data$`2`)
SC_data$`3`= as.numeric(SC_data$`3`)
SC_data$`4`= as.numeric(SC_data$`4`)
SC_data$`5`= as.numeric(SC_data$`5`)
SC_data$`6`= as.numeric(SC_data$`6`)
SC_data$`7`= as.numeric(SC_data$`7`)
SC_data$`1`= as.numeric(SC_data$`1`)

##load library
library(ggplot2)
library("FactoMineR")
library("factoextra")
library("gplots")
# 1. convert the data as a table
dt <- as.table(as.matrix(SC_data))
dt
# 2. Graph
balloonplot(t(dt), main ="SC_data", xlab ="", ylab="",
            label = FALSE, show.margins = FALSE)

SC.ca <- CA(SC_data, graph = FALSE)
print(SC.ca)
# p-value here is small less than 0.05, means that there is a relation of association between rows and columns.
# association between sustainable consumption components with the Likert Scale

#INTEPRETATION
#Step 1 is to evaluate whether there is a significant dependency between the rows and columns
# we can confirm the association by doing chisq test 
chisq <- chisq.test(SC_data)
chisq
# this confirms the association between rows and columns

#Step 2 Eigenvalues/Variances
# For instance, in our dataset about 87.62% of the variation is explained by the first two dimensions.
# we have 7 columns, hence we have 6 dimensions
# We assume that the data were completely random, we'd expect each axis to have an eigenvalue of
# 1/(nrow(SC_data)-1) =16.66% for rows, and 1/(ncol(SC_data)-1) =16.66% for columns

library("factoextra")
eig.val <- get_eigenvalue(SC.ca)
eig.val
# we will select 2 dimensions, 87.62%

# hence the cut off for the dimensions based on our assumptions of the completely random data is 20
fviz_screeplot(SC.ca,addlabels=T) + 
        geom_hline(yintercept=16.66,linetype=2,color="red")
# though the 2nd dimension has variance less than cutoff, we can still take 2 dimension as it represent
# 87.62% of total variation of the dataset which is pretty good.

#Second conclusion is the biplot - symetric plot show the global pattern 
# repel= TRUE to avoid text overlapping (slow if many point)
#The distance between any row points or column points gives a measure of their similarity
fviz_ca_biplot(SC.ca, repel = TRUE)
# Conclusion
# 1.Orig.Water is close to 7: people are very much in interested in saving water.
# 2.Orig.Food, Orig.Purchase, Orig.Support: This means people are little more inclined in saving food,
# in making purchase in a envrionment friendly way, and in supporting business which does better for the society.

####################### looking deeper into rows and columns
row <- get_ca_row(SC.ca)
row

# Coordinates
head(row$coord)
# we can confirm the cooridinates on the symetric plot with row$corrdinates and see all are correctly
# placed in the two dimensions.
fviz_ca_row(SC.ca, repel = TRUE)# relationship between row points
# Orig.Food and Orig.Purchase seems a little close to each other.


#example: Quality of representation of rows
row$cos2
#If a row item is well represented by two dimensions, the sum of the cos2 is closed to one. 
# Orig.Energy,Orig.Water,Orig.Food,Orig.Waste can be selected for dimension1
# nothing is good representation dim2 which is expected


#Visualize the cos2 of row points on all the dimensions using the corrplot package
library("corrplot")
corrplot(row$cos2, is.corr=FALSE)
# we can confirm the same thing by visualizing also

#####################making deeper conclusion for columns similiar to rows above
columns <- get_ca_col(SC.ca)
columns

head(columns$coord)
# we can confirm the cooridinates on the symetric plot with columns$corrdinates and see all are correctly
# placed in the two dimensions.
fviz_ca_col(SC.ca, repel = TRUE)# relationship between column points
# No relationship between the column points


#example: Quality of representation of rows
head(columns$cos2, 4)

columns$cos2
#If a column item is well represented by two dimensions, the sum of the cos2 is closed to one. 
# we can select 4,7 for dim1
# nothing can be selected for dimension 2

#Visualize the cos2 of row points on all the dimensions using the corrplot package
library("corrplot")
corrplot(columns$cos2, is.corr=FALSE)
# we can confirm the same thing by visualizing also

################Contributions of rows to the dimensions
head(row$contrib)

library("corrplot")
corrplot(row$contrib, is.corr=FALSE)
#Orig.Water contribute more to dimension 1
#Orig.Waste contribute more to dimension 2

# Contributions of rows to dimension 1
fviz_contrib(SC.ca, choice = "row", axes = 1, top = 10)
# we can see that Orig.Water, Orig.Waste, Orig.Energy contribute more to the dimension 1

# Contributions of rows to dimension 2
fviz_contrib(SC.ca, choice = "row", axes = 2, top = 10)
# we can see Orig.Waste, and Orig.Water contribute more to the dimension 2

# Total contribution to dimension 1 and 2
fviz_contrib(SC.ca, choice = "row", axes = 1:2, top = 10)
#The red dashed line on the graph above indicates the expected average value
#Orig.Water, Orig.Waste, Orig.Energy contribute more for both the axes

################Contributions of columns to the dimensions
head(columns$contrib)
#The column variables with the larger value, contribute the most to the definition of the dimensions
#Columns that contribute the most to Dim.1 and Dim.2 are the most important in explaining the variability 
# in the data set.
#Columns that do not contribute much to any dimension or that contribute to the last dimensions are less 
# important.
library("corrplot")
corrplot(columns$contrib, is.corr=FALSE)
# Contributions of columns to dimension 1
fviz_contrib(SC.ca, choice = "col", axes = 1, top = 10)
# we can see that 7,4 contribute more to the dimension 1

# Contributions of columns to dimension 2
fviz_contrib(SC.ca, choice = "col", axes = 2, top = 10)
# we can see that 3,6 contribute more to the dimension 2

# Total column contribution to dimension 1 and 2
fviz_contrib(SC.ca, choice = "col", axes = 1:2, top = 10)
#The red dashed line on the graph above indicates the expected average value
#7,4 contribute more for both the axes/dimensions

###########################Checking Asymmetric biplot
#rows (or columns) points are plotted from the standard co-ordinates (S)
#the profiles of the columns (or the rows) are plotted from the principal coordinates (P)
#P = sqrt(eigenvalue) X S where
#P: the principal coordinate of a row (or a column) on the axis
#eigenvalue: the eigenvalue of the axis

#plot a standard asymetric biplot
# Asymmetric plot for row space

# Asymmetric plot for both rows and column space
fviz_ca_biplot(SC.ca,
               map ="rowprincipal", arrow = c(TRUE, TRUE),
               repel = TRUE)

############## Conclusion from original group of Sustainable consumption: 
#Small acute angle between Orig.Water and 7: This means that people are very much like to save water.
# Acute angle between Orig.Energy and 7: This means that more people likes to save energy.
# Orig.Purchase and Orig.Support is more towards 5: This means people are more than neutral, are likely
# to go in the making a responsible envrionment friendly purchase, and wants to support make charity
# and support business which works betterment of the society.They are more interested in supporting the
# business as 'Orig.Support' come between 5 and 6.
# Orig.Waste is between 2 and 4, more inclined to 4. This means that people are not that interested in 
# saving waste 

str(fact_df)
# making dataframe only for components got after doing factor analysis
factor_data <- fact_df %>%  #start with the data frame
        select(Waste,Meaning.Engagement,Conserve.Energy,Purchase.Save.Fuel,Conserve.Water,Support.Food,Pleasure) %>%
        map_df(table) %>%  # use map_df from the purrr package to "table" each column
        rownames_to_column("resp") %>% #convert the rownames to a column named response
        mutate(Questions = case_when(resp == 1 ~ "Waste", 
                                     resp == 2 ~ "Meaning.Engagement",
                                     resp == 3 ~ "Conserve.Energy",
                                     resp == 4 ~ "Purchase.Save.Fuel", 
                                     resp == 5 ~ "Conserve.Water",
                                     resp == 6 ~ "Support.Food",
                                     resp == 7 ~ "Pleasure"
        )) %>%  #change the resulting 2s to Yes in resp
        select(Questions, everything(), -resp)

factor_data <-as.data.frame(factor_data)
View(factor_data)
# putting question names as row index
rownames(factor_data) <- factor_data$Questions

# removing question column from the dataset
factor_data <- factor_data[, c(-1)]

# assigning 0 to NA in contengency table
factor_data[is.na(factor_data)] <- 0

# checking NA again
sum(is.na(factor_data))
# no null values

View(factor_data)
str(factor_data)
# converting all columns into numeric data
factor_data$`1`= as.numeric(factor_data$`1`)
factor_data$`2`= as.numeric(factor_data$`2`)
factor_data$`3`= as.numeric(factor_data$`3`)
factor_data$`4`= as.numeric(factor_data$`4`)
factor_data$`5`= as.numeric(factor_data$`5`)
factor_data$`6`= as.numeric(factor_data$`6`)
factor_data$`7`= as.numeric(factor_data$`7`)


##load library
library(ggplot2)
library("FactoMineR")
library("factoextra")
library("gplots")
# 1. convert the data as a table
dt <- as.table(as.matrix(factor_data))
dt
# 2. Graph
balloonplot(t(dt), main ="factor_data", xlab ="", ylab="",
            label = FALSE, show.margins = FALSE)

factor.ca <- CA(factor_data, graph = FALSE)
print(factor.ca)
# p-value here is small less than 0.05, means that there is a relation of association between rows and columns.
# association between factor components related to both orientation to happiness and Sustainable
# Consumption with the Likert Scale

#INTEPRETATION
#Step 1 is to evaluate whether there is a significant dependency between the rows and columns
# we can confirm the association by doing chisq test 
chisq <- chisq.test(factor_data)
chisq
# this confirms the association between rows and columns

#Step 2 Eigenvalues/Variances
# For instance, in our dataset about 96.37% of the variation is explained by the first two dimensions.
# we have 7 columns, hence we have 6 dimensions
# We assume that the data were completely random, we'd expect each axis to have an eigenvalue of
# 1/(nrow(factor_data)-1) =16.66% for rows, and 1/(ncol(factor_data)-1) =16.66% for columns

library("factoextra")
eig.val <- get_eigenvalue(factor.ca)
eig.val
# we will select 2 dimensions, 96.37%

# hence the cut off for the dimensions based on our assumptions of the completely random data is 20
fviz_screeplot(factor.ca,addlabels=T) + 
        geom_hline(yintercept=16.66,linetype=2,color="red")
# This confirms that we can select 2 dimension 
# 96.37% of total variation of the dataset which is pretty good.

#Second conclusion is the biplot - symetric plot show the global pattern 
# repel= TRUE to avoid text overlapping (slow if many point)
#The distance between any row points or column points gives a measure of their similarity
fviz_ca_biplot(factor.ca, repel = TRUE)
# Conclusion
# 1.Conserve.Water is close to 7: people are very much in interested in saving water.
# 2. Support.Food is close to both 4 and 5: This means people are a little more inclined, more than neurtal
# in supporting the business which does better work for the society and also wants to reduce food wastage.
# 3.Waste is little close to 2: People are very less inclined to reduce the waste. 
####################### looking deeper into rows and columns
row <- get_ca_row(factor.ca)
row

# Coordinates
head(row$coord)
# we can confirm the cooridinates on the symetric plot with row$corrdinates and see all are correctly
# placed in the two dimensions.
fviz_ca_row(factor.ca, repel = TRUE)# relationship between row points
# Pleasure, Meaning and Engagement seems a little close to each other.
# Purchase.Save.Fuel and Support.Food seem a little close to each other.


#example: Quality of representation of rows
row$cos2
#If a row item is well represented by two dimensions, the sum of the cos2 is closed to one. 
# Conserve.Energy,Purchase.Save.Fuel,Conserve.Water can be selected for dimension1
# Meaning.Engagement, and Pleasure is good representation dim2


#Visualize the cos2 of row points on all the dimensions using the corrplot package
library("corrplot")
corrplot(row$cos2, is.corr=FALSE)
# we can confirm the same thing by visualizing also

#####################making deeper conclusion for columns similiar to rows above
columns <- get_ca_col(factor.ca)
columns

head(columns$coord)
# we can confirm the cooridinates on the symetric plot with columns$corrdinates and see all are correctly
# placed in the two dimensions.
fviz_ca_col(factor.ca, repel = TRUE)# relationship between column points
# 4,5 columns points are close to each other
# We can also say 2,3 are little close to each other.


#example: Quality of representation of rows
head(columns$cos2, 4)

columns$cos2
#If a column item is well represented by two dimensions, the sum of the cos2 is closed to one. 
# we can select 4,7 for dim1
# we can select 3 for dimension 2

#Visualize the cos2 of row points on all the dimensions using the corrplot package
library("corrplot")
corrplot(columns$cos2, is.corr=FALSE)
# we can confirm the same thing by visualizing also

################Contributions of rows to the dimensions
head(row$contrib)

library("corrplot")
corrplot(row$contrib, is.corr=FALSE)
#Conserve.Water contribute more to dimension 1
#Waste contribute more to dimension 2

# Contributions of rows to dimension 1
fviz_contrib(factor.ca, choice = "row", axes = 1, top = 10)
# we can see that Conserve.Water, Conserve.Energy, and Waste contribute more to the dimension 1

# Contributions of rows to dimension 2
fviz_contrib(factor.ca, choice = "row", axes = 2, top = 10)
# we can see Waste, Meaning.Engagement, and Pleasure contribute more to the dimension 2

# Total contribution to dimension 1 and 2
fviz_contrib(factor.ca, choice = "row", axes = 1:2, top = 10)
#The red dashed line on the graph above indicates the expected average value
#Waste,Conserve.Water, and Conserve.Energy contribute more for both the axes

################Contributions of columns to the dimensions
head(columns$contrib)
#The column variables with the larger value, contribute the most to the definition of the dimensions
#Columns that contribute the most to Dim.1 and Dim.2 are the most important in explaining the variability 
# in the data set.
#Columns that do not contribute much to any dimension or that contribute to the last dimensions are less 
# important.
library("corrplot")
corrplot(columns$contrib, is.corr=FALSE)
# Contributions of columns to dimension 1
fviz_contrib(factor.ca, choice = "col", axes = 1, top = 10)
# we can see that 7 contribute more to the dimension 1

# Contributions of columns to dimension 2
fviz_contrib(factor.ca, choice = "col", axes = 2, top = 10)
# we can see that 3 contribute more to the dimension 2

# Total column contribution to dimension 1 and 2
fviz_contrib(factor.ca, choice = "col", axes = 1:2, top = 10)
#The red dashed line on the graph above indicates the expected average value
#7,3 contribute more for both the axes/dimensions

###########################Checking Asymmetric biplot
#rows (or columns) points are plotted from the standard co-ordinates (S)
#the profiles of the columns (or the rows) are plotted from the principal coordinates (P)
#P = sqrt(eigenvalue) X S where
#P: the principal coordinate of a row (or a column) on the axis
#eigenvalue: the eigenvalue of the axis

#plot a standard asymetric biplot
# Asymmetric plot for row space

# Asymmetric plot for both rows and column space
fviz_ca_biplot(factor.ca,
               map ="rowprincipal", arrow = c(TRUE, TRUE),
               repel = TRUE)

############## Conclusion from CA using the factor got from factor analysis: 
#Small acute angle between Conserve.Water and 7: This means that people are very much like to save water.
# Conserve.Energy and 7 are close: This means people are very much interested in conserving energy.
# Waste it more inclined towards 1: This means people are not at all interested in reducing the waste or 
# interested in doing waste management.
# Support.Food and Pleasure, Meaning.Engagement are close to 5:
#People who are more into finding meaning to life, wants life to be more engaging, and pleasure will be 
# the one who wants to support the business which does work for the good of the society. They also 
# Interested in reducing the food waste, and wants to buy food which does no harm to the environment.





# Question: we need to see if we apply theory of Orientation to happiness in understanding sustainable consumption, and can
# help people understand that they can achieve happiness in their life by consuming existing resources sustainably.
# Ans: from the analysis, we can see that people are more happy when there is a meaining in their life and can 
# also enjoy it even if they help in conserving water and energy and used them in a sustainable way. This means if government 
# create a policy of saving water and energy and campaign it, most of the people will understand it and try to enculcate the 
# practice of saving water and energy more to their daily life style. This can be seen from the bar plot in the analysis where females were more interested in saving water and energy than male and other genders.
# 
# Our analysis also tells us that people are least bothered in saving waste: segregating waste to recycle bins, cans, avoid using disposable products. May be government can come up with some plan or campaign to make people aware about this and let
# them know how and why they can help in cleaning their own environment by using good waste management practice and how that will help them in future.
# Our correspondence analysis with Sustainable consumption and with factors we got from factor analysis also suggests that people are inclined more than neutral towards supporting the business which does help in keeping the environment safe and towards making a responsible purchase meaning, either buy less products or use envrionment friendly ones.  
