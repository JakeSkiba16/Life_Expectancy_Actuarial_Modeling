USA_Lifetable <- read.csv("C:\\Users\\Jake16\\Documents\\Projects\\Life Expectancy\\USA.csv")
View(USA_Lifetable)

library(tidyr)
library(dplyr)

USA_LT <- USA_Lifetable %>%
  mutate(Ethnicity_group = case_when(
    Ethnicity %in% c("E030", "E240", "E200") ~ "Black",
    Ethnicity %in% c("E230", "E110")         ~ "White",
    Ethnicity == "E330"                      ~ "Natives",
    Ethnicity == "E340"                      ~ "Asians",
    Ethnicity == "E220"                      ~ "Hispanic",
    Ethnicity == "E040"                      ~ "Non-white",
    Ethnicity == "E100"                      ~ "Others",
    Ethnicity == "0"                         ~ "Total",
    TRUE                                     ~ "Unknown"
  ))
USA_LT <- USA_LT %>%
  mutate(Sex = recode(Sex, `1` = "Male", `2` = "Female"))
USA_LT <- select(USA_LT, Country, Region,Residence,Ethnicity, Ethnicity_group,everything())

USA_LT <- USA_LT %>% select(-c(1:4,6:8,11)) #remove country (it is all USA), 
#region/residence/SocDem/version because it is one value(doesn't change data)
#and ethnicity since I changed codes to what it is
#code removed so that more columns aren't deleted unintentionally from running
#reference ID and Type of set was deleted, not needed

USA_LT <- USA_LT[USA_LT$Year1 >= 2000 & USA_LT$Year1 == USA_LT$Year2, ] 
#only using values from year 2000 and on, and where the time period is only that year

#data is narrowed down to what we want to use, now to clean/readability
USA_LT <- USA_LT %>%
  rename(
    MortalityRate = `m.x.`,
    ProbabilityOfDeath = `q.x.`,
    NumberAlive = `l.x.`,
    NumberDying = `d.x.`,
    PersonYearsLived = `L.x.`,
    TotalPersonYearsRemaining = `T.x.`,
    LifeExpectancy = `e.x.`,
    OriginalLifeExpectancy = `e.x.Orig`
  )
USA_LT <- USA_LT %>% distinct()

#checking each column to make sure only acceptable values there, and can remove
unique(USA_LT$Ethnicity_group)
unique(USA_LT$Year1)
unique(USA_LT$Year2)#verifying some incorrect year not in
unique(USA_LT$Sex)

#Now, we can do some basic analysis in Excel. We can create pivot tables and a dashboard
#We can come back to R for additional data visualization and statistical modeling
write.csv(USA_LT, "Cleaned_USA_LifeTable.csv", row.names = FALSE)
install.packages("openxlsx")  # if you don't have it yet
library(openxlsx)
write.xlsx(USA_LT, "Clean_USA_LifeTable")
file.exists("Cleaned_USA_LifeTable.csv")





