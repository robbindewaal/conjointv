# import packages 
library(readxl)
library(readxl)
library(car)
library(tidyverse)
AllFields_segments<- read_excel("data/AllFields with group membership.xlsx")
View(AllFields_segments)


# Chi-square test - For nominal or ordinal variables
chisq.test(AllFields_segments$Gender)
chisq.test(AllFields_segments$Education)
chisq.test(AllFields_segments$Occupation)
chisq.test(AllFields_segments$LinearTV)


# ANOVA - For ratio and interval variables
age_aov <- lm(Age ~ AllFields_with_group_membership$`4 Group Membership`, data = AllFields_with_group_membership)
summary(age_aov)

streamingservices_aov <- lm(AllFields_with_group_membership$StreamingServices ~ AllFields_with_group_membership$`4 Group Membership`, data = AllFields_with_group_membership)
summary(streamingservices_aov)

tvknowledge_aov <- lm(TVknowledge_r1 ~ AllFields_with_group_membership$`4 Group Membership`, data = AllFields_with_group_membership)
summary(tvknowledge_aov)



