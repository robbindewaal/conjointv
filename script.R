# import packages 
library(readxl)
library(readxl)
library(car)
AllFields_with_group_membership <- read_excel("data/AllFields with group membership.xlsx")

# ANOVA
gender_aov <- lm(Gender ~ AllFields_with_group_membership$`4 Group Membership`, data = AllFields_with_group_membership)
summary(gender_aov)

age_aov <- lm(Age ~ AllFields_with_group_membership$`4 Group Membership`, data = AllFields_with_group_membership)
summary(age_aov)

education_aov <- lm(Education ~ AllFields_with_group_membership$`4 Group Membership`, data = AllFields_with_group_membership)
summary(education_aov)

occupation_aov <- lm(Occupation ~ AllFields_with_group_membership$`4 Group Membership`, data = AllFields_with_group_membership)
summary(occupation_aov)
income_aov <- lm(Income ~ AllFields_with_group_membership$`4 Group Membership`, data = AllFields_with_group_membership)
summary(income_aov)

streamingservices_aov <- lm(AllFields_with_group_membership$StreamingServices ~ AllFields_with_group_membership$`4 Group Membership`, data = AllFields_with_group_membership)
summary(streamingservices_aov)

lineartv_aov <- lm(LinearTV ~ AllFields_with_group_membership$`4 Group Membership`, data = AllFields_with_group_membership)
summary(lineartv_aov)

tvknowledge_aov <- lm(TVknowledge_r1 ~ AllFields_with_group_membership$`4 Group Membership`, data = AllFields_with_group_membership)
summary(tvknowledge_aov)




# Chi-square test
chisq.test(AllFields_with_group_membership$Gender)
chisq.test(AllFields_with_group_membership$Education)
chisq.test(AllFields_with_group_membership$Age)
chisq.test(AllFields_with_group_membership$Occupation)
chisq.test(AllFields_with_group_membership$Income)
