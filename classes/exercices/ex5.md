# Bonus exercises

Welcome back! Let's try to place a bit of everything in here.
For your convenience, please answer each section in a separate R script.
Make sure you flush your variables and restart R between switching files.
You will have to do this for your exam anyway.


## 1. Hypothesis tests

1. Go back to [Exercise 1](ex1.html), and the plots of 1.3. Write a functions that draws such plot (mean and median).
This function will have to:
* Be able to draw the plots for both men and women
* Save the plot as a png or JPEG image automatically (and the location to save the file has to be chosen when invoking the function)
* Have different labels for the different plots

2. Load the following two datafiles into R: [Number of Malaria cases](http://docs.google.com/spreadsheet/pub?key=pp59adS3CHWczfPHQMiqxCg&output=csv), [Number of Malaria deaths](http://docs.google.com/spreadsheet/pub?key=pp59adS3CHWfZGL9qouvTbQ&output=xlsx).
Is the number of deaths due to malaria different between 2003 and 2005?

3. An incident with plants in a known school's greenhouse that required a very through cleaning of is being investigated. Reports indicate that the cause of the issue was an excess of *Mimbulus mimbletonia* specimens growing in the now *stinksap* covered greenhouse. Professor Pomona Sprout has always kept tidy records of the plants in her school's greenhouse, which seem to indicate that a few exemplars of the plant did exist, but not in quantities that could justify the damage caused. Interviewing the students has revealed that one of them (Neville) may have been using the greenhouse to grow his own batch of *Mimbulus mimbletonia*, though. Plants in the greenhouse were quickly sampled (as no one could stand being inside for more than a few seconds) and compared with Sprout's records:

| Plant                | Sprout's record | Counted |
|----------------------|-----------------|---------|
| Goosegrass           | 22              | 7       |
| Mimbulus mimbletoina | 25              | 15      |
| Devil's Snare        | 3               | 1       |
| Venomous Tentacula   | 19              | 6       |
| Witch's ganglion     | 31              | 10      |
| Dirigible plum       | 7               | 2       |
| Aconite              | 55              | 18      |
| Gurdyroot            | 28              | 9       |


Based on this data, can you make a statistically informed assessment regarding the cause of the incident?

Hint: This is not as complex as it looks at first.

## 2. Regression & correlation

1. Are the number of Malaria deaths and cases correlated? Draw the scatter plot, including a regression line. Do not assume data normality - test for it.

2. Describe H0 from the previous task.

3. Automate the procedure in **2.1** by writing a function that will automate the procedure. Make sure the plot is also drawn automatically and saved to the disk. This function should return the *p*-value of the correlation and the "r" value.

4. Draw a trend plot (mean over time) to help determine if malaria cases are increasing or decreasing worldwide. Do the same for malaria deaths.
Hint: If you use a function for this, it will really make your life easier.

## 3. Exploratory data analysis



## 4. Automation & Reproducibility


