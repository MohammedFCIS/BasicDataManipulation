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

######################################
# 3- Add product categories
######################################
original_refine = original_refine %>% mutate(category = ifelse(code == 'p', 'Smartphone',
                                                        ifelse(code == 'x', 'Laptop',
                                                        ifelse(code == 'v', 'TV',
                                                        'Tablet'))))
######################################
# 4- Add full address for geocoding
######################################
original_refine = unite(original_refine, 'fullAddress', address, city, country, sep = ",")