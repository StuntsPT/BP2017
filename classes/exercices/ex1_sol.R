# Exercises 1 possible solutions

male_chol = read.csv(url("http://docs.google.com/spreadsheet/pub?key=0ArfEDsV3bBwCdDU5SnRoQ0xlZWhwRUZ6RFNQV042enc&output=csv"), header=TRUE, row.names=1)
female_chol = read.csv(url("http://docs.google.com/spreadsheet/pub?key=0ArfEDsV3bBwCdGJHcHZkSUdBcU56aS1OT3lLeU4tRHc&output=csv"), header=TRUE, row.names=1)

male_means = apply(male_chol, 2, mean)
male_medians = apply(male_chol, 2, median)

female_means = apply(female_chol, 2, mean)
female_medians = apply(female_chol, 2, median)

# Option 1
names(male_chol) = sub("^X", "", names(male_chol))
names(female_chol) = sub("^X", "", names(female_chol))
plot(x=as.numeric(names(male_chol)), y=male_means, type="l", col="red")
lines(x=as.numeric(names(male_chol)), y=male_medians, type="l", col="blue")

## Option 2
#
# years = c(1980:2008)
# plot(x=years, y=male_means, type="l", col="red")
# lines(x=years, y=male_medians, type="l", col="blue")

p_values = c()
p_values = c(p_values, t.test(x=male_chol$`1980`, y=female_chol$`1980`)$p.value)
p_values = c(p_values, t.test(x=male_chol$`1985`, y=female_chol$`1985`)$p.value)
p_values = c(p_values, t.test(x=male_chol$`1990`, y=female_chol$`1990`)$p.value)
p_values = c(p_values, t.test(x=male_chol$`2000`, y=female_chol$`2000`)$p.value)
p_values = c(p_values, t.test(x=male_chol$`2008`, y=female_chol$`2008`)$p.value)

p.adjust(p=p_values, method="fdr")


t.test(x=male_chol$`1980`, y=male_chol$`2008`, paired=TRUE)
t.test(x=female_chol$`1980`, y=female_chol$`2008`, paired=TRUE)

shapiro.test(male_chol$`1999`)

wilcox.test(x=male_chol$`1999`, mu=3.6666, conf.level=0.99)
