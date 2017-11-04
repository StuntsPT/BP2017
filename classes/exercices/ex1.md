# Class 1 exercices - Part 1 

First thing to do is download the data we are about to use.

Link 1 - "[Cholesterol (fat) in blood, men, mmol/L](http://docs.google.com/spreadsheet/pub?key=0ArfEDsV3bBwCdDU5SnRoQ0xlZWhwRUZ6RFNQV042enc&output=xlsx)".

Link 2 - "[Cholesterol (fat) in blood, women, mmol/L](http://docs.google.com/spreadsheet/pub?key=0ArfEDsV3bBwCdGJHcHZkSUdBcU56aS1OT3lLeU4tRHc&output=xlsx)".

Take a look at the data using any spreadsheet software.

## 1. Data loading, descriptive statistics and plots

What do these datasets represent? Describe them briefly.

If you change the URL, you can get data from "Google spreadsheets" diretly fed into R. Here is an example:

```R
data_url = http://docs.google.com/spreadsheet/pub?key=jd8aaueoçwedu77887ehdhdh783hqodh323jenc&output=csv
data_table = read.csv(url('data_url'), header=TRUE)
```

Load the data from both URLs provided above into R variables called "male_chol" and "female_chol".

Calaculate the mean and median values for each year. Plot the yearly evolution of these values from 1980 to 2008.

## 2. Hypothesis tests

1. Are cholesterol levels different between men and women? Verify this for 1980, 1990, 2000 and 2008.

2. Are there differences in blood cholesterol levels between 1980 and 2008 (test for both sexes)?

3. "Mr. Anderson" ran into some trouble in 1999 and among other things, cholesterol levels were measured from some of his blood samples (3.666 mmol/L). "Mr. Brown" and "Mr. Jones" claim it is a special value, but "Mr. Smith" disgarees. Whose opinion do statistics you have learned today back up?