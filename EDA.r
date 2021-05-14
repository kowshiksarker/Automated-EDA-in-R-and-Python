install.packages("DataExplorer")
library(DataExplorer)
library(tidyverse)
gss_cat


data %>% glimpse()
# 1.0 EDA Report ----

data %>%
  create_report(
    output_file  = "analysis",
    output_dir   = "025_eda_dataexplorer/",
    y            = "Life_Exp_At_Brth",
    report_title = "EDA Report - GSS Demographic Survey"
  )
# 2.0 Data Introduction ----

gss_cat %>% introduce()

gss_cat %>% plot_intro()

# 3.0 Missing Values ----

gss_cat %>% plot_missing()

gss_cat %>% profile_missing()

# 4.0 Continuous Features ----

gss_cat %>% plot_density()

gss_cat %>% plot_histogram()

# 5.0 Categorical Features ----

gss_cat %>% plot_bar()

# 6.0 Relationships ----

gss_cat %>% plot_correlation(maxcat = 15)


install.packages("skimr")
library(skimr)
skim(gss_cat)
