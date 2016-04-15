suppressMessages(library(dplyr))
suppressMessages(library(tidyr))
#Load Data
original_refine = tbl_df(read.csv("data/refine_original.csv", stringsAsFactors = FALSE))
######################################
# 1- Clean Company column
######################################
original_refine$company = tolower(original_refine$company)
##Correct 'philips'
original_refine$company = gsub('(^[p].*)', x = original_refine$company, replacement = 'philips')
original_refine$company = gsub('(^[f].*)', x = original_refine$company, replacement = 'philips')

##Correct 'akzo'
original_refine$company = gsub('(^[ak].*)', x = original_refine$company, replacement = 'akzo')

##Correct 'unilever'
original_refine$company = gsub('(^[un].*)', x = original_refine$company, replacement = 'unilever')

######################################
# 2- Separate product code and number
######################################
original_refine = separate(original_refine, Product.code...number, c('code', 'number'), sep = '-')