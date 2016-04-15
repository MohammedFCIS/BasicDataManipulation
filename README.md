# BasicDataManipulation
Using R, clean this data set to make it easier to visualize and analyze. Specifically, these are the tasks you need to do:
 
## Load the data in RStudio
Save the data set as a CSV file called refine_original.csv and load it in RStudio into a data frame.
## Clean up brand names
Clean up the 'company' column, so all of the misspellings of the brand names are standardized. For example, you can transform the values in the column to be: philips, akzo, van houten and unilever (all lowercase).
## Separate product code and number
Separate the product code and product number into separate columns i.e. add two new columns called product_code and product_number, containing the product code and number respectively
## Add product categories
You learn that the product codes actually represent the following product categories:
p = Smartphone
v = TV
x = Laptop
q = Tablet
In order to make the data more readable, add a column with the product category for each record.
## Add full address for geocoding
You'd like to view the customer information on a map. In order to do that, the addresses need to be in a form that can be easily geocoded. Create a new column full_address that concatenates the three address fields (address, city, country), separated by commas.
 
## Create dummy variables for company and product category
Both the company name and product category are categorical variables i.e. they take only a fixed set of values. In order to use them in further analysis you need to create dummy variables. Create dummy binary variables for each of them with the prefix company_ and product_ i.e.
Add four binary (1 or 0) columns for company: company_philips, company_akzo, company_van_houten and company_unilever
Add four binary (1 or 0) columns for product category: product_smartphone, product_tv, product_laptop and product_tablet
