# Class 1 exercices - Part 1 

First thing to do is download the data we are about to use.

Link 1 - "[Cholesterol (fat) in blood, men, mmol/L](http://docs.google.com/spreadsheet/pub?key=0ArfEDsV3bBwCdDU5SnRoQ0xlZWhwRUZ6RFNQV042enc&output=xlsx)".

Link 2 - "[Cholesterol (fat) in blood, women, mmol/L](# http://docs.google.com/spreadsheet/pub?key=0ArfEDsV3bBwCdGJHcHZkSUdBcU56aS1OT3lLeU4tRHc&output=xlsx)".

Take a look at the data using any spreadsheet software.

1. What do these datasets represent? Describe them briefly.

If you change the URL, you can get data from "Google spreadsheets" diretly fed into R. Here is an example:

```R
data_url = http://docs.google.com/spreadsheet/pub?key=jd8aaueoçwedu77887ehdhdh783hqodh323jenc&output=csv
data_table = read.csv(url('data_url'), header=TRUE)
```

2. Load the data from both URLs provided above into R variables called "male_chol" and "female_chol".

3. "Mr. Anderson" was just tested for cholesterol levels in his blood. Different from the sample? What about his country? 