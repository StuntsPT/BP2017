## Hypotheses tests II

---

### Multi category testing

* When it is necessary to compare observation counts to a theoretical expectation
* Examples: <!-- .element: class="fragment" data-fragment-index="1" -->
	* Is our sample of male and female individuals representative of the population's sex ratio? <!-- .element: class="fragment" data-fragment-index="1" -->
	* Are our counts of crossed flower colours matched to the expected Mendelian inheritance? <!-- .element: class="fragment" data-fragment-index="2" -->

---

### ["High Hopes"](https://www.youtube.com/watch?v=7jMlFXouPk8)

* There are several way to test the conformance to expectations
	* (Pearson's) Chi² test <!-- .element: class="fragment highlight-green" data-fragment-index="1" -->
	* G-test <!-- .element: class="fragment fade-out" data-fragment-index="1" -->
	* Exact test <!-- .element: class="fragment highlight-green" data-fragment-index="1" -->

---

### Chi² test

* Requires a "large" sample size
* Is computationally simple <!-- .element: class="fragment" data-fragment-index="1" -->
* Uses the "chi-square" distribution <!-- .element: class="fragment" data-fragment-index="2" -->

![Chi² distribution](C2_assets/Chi2_dist.png) <!-- .element: class="fragment" data-fragment-index="3" -->

|||

### Chi² distribution plots

```R
x <- seq(0, 60, length=100)
hx <- dchisq(x, df=1)

degf <- c(1, 3, 8, 15, 30)
colors <- c("black", "red", "blue", "darkgreen", "gold")
labels <- c("df=1", "df=3", "df=8", "df=15", "df=30")

plot(x, hx, type="l", lwd=2, xlab="x value",
     ylab="Density", main="Comparison of Chi² Distributions")

     for (i in 1:5){
         lines(x, dchisq(x,degf[i]), lwd=2, col=colors[i])
	 }

	 legend("topright", inset=.05, title="Distributions",
	        labels, lwd=2, col=colors)
```

---

### Example

* Consider the sex ratio of grasshoppers *Dichroplus maculipennis* (Blanchard)
	* 6038 individuals were collected and sexed <!-- .element: class="fragment" data-fragment-index="1" -->
	* 2235 females and 2301 males <!-- .element: class="fragment" data-fragment-index="2" -->
	* The expected proportion of female:male ratio is 1:1 <!-- .element: class="fragment" data-fragment-index="3" -->

[Reference](http://www.sciencedirect.com/science/article/pii/S0085562615000321) <!-- .element: class="fragment" data-fragment-index="4" -->

|||

### Example

```R
obs = c(2235, 2301)
exp = c(0.5, 0.5)

chisq.test(x=obs, p=exp)
```

---

### Multiple testing

* When there are more than 2 categories
	* Each category can be tested against the sum of all other categories <!-- .element: class="fragment" data-fragment-index="1" -->
	* FDR or Bonferroni corrections must be applied <!-- .element: class="fragment" data-fragment-index="2" -->

|||

### Multiple testing example

* Suppose we have flowers where allele determine colour <font color="red">AA</font>, <font color="pink">Aa</font>, <font color="white">aa</font>.
	* F1 contains <font color="red">1300</font>, <font color="pink">3000</font>, <font color="white">1500</font>
	* This trait has Mendelian inheritance <!-- .element: class="fragment" data-fragment-index="1" -->
	* All F0 males are white <!-- .element: class="fragment" data-fragment-index="2" -->
	* All F0 females are red <!-- .element: class="fragment" data-fragment-index="3" -->

Are these proportions according to the expectation of 1:2:1 ? <!-- .element: class="fragment" data-fragment-index="4" -->

|||

```R
p_vals = c()

obs = c(1300, 3000, 1500)
exp = c(0.25, 0.5, 0.25)

chisq.test(x=obs, p=exp)

for (i in 1:length(obs)) {
    partial_obs = c(obs[i], sum(obs[-i]))
        partial_exp = c(exp[i], sum(exp[-i]))
	    part_chisq = chisq.test(x=partial_obs, p=partial_exp)

	        p_vals[i] = part_chisq$p.value
		}

		print(p_vals)
		p.adjust(p_vals, method="fdr")
```

---

### What about 'small' samples?

* When the sample size is small, the Chi² test can be inaccurate
* In these cases an exact test should be employed <!-- .element: class="fragment" data-fragment-index="1" -->
	* Can be used with small samples <!-- .element: class="fragment" data-fragment-index="2" -->
	* Is computationally intensive <!-- .element: class="fragment" data-fragment-index="3" -->
	* Also called a "binomial" or "multinomial" test <!-- .element: class="fragment" data-fragment-index="4" -->

![Binomial dist](C2_assets/binomial_plot.png) <!-- .element: class="fragment" data-fragment-index="5" -->

|||

### Let's try another example

```R
obs = c(3, 11)
exp = c(0.5, 0.5)

chisq.test(x=obs, p=exp)

binom.test(x=obs[1], n=sum(obs), p=exp[1], conf.level=0.95)
```

|||

### Multinomial example

```R
if(!require("XNomial")){
    install.packages("XNomial")
        library("XNomial")
	}

	obs = c(4, 27, 12)
	exp = c(0.25, 0.5, 0.25)

	chisq.test(x=obs, p=exp)

	xmulti(obs=obs, expr=exp)

```

---

### Multidimensional contingency tables

* Tables in a matrix format
* Each entry represents a variable frequency distribution <!-- .element: class="fragment" data-fragment-index="1" -->

<table style="margin-left:auto;margin-right:auto;text-align:center;">
<tbody><tr>
<th style="line-height:1;">
<div style="margin-left:2em;text-align:right;">Handed-<br>
ness</div>
<div style="margin-right:2em;text-align:left;">Gender</div>
</th>
<th>Right handed</th>
<th>Left handed</th>
<th>Total</th>
</tr>
<tr>
<th>Male</th>
<td>43</td>
<td>9</td>
<td>52</td>
</tr>
<tr>
<th>Female</th>
<td>44</td>
<td>4</td>
<td>48</td>
</tr>
<tr>
<th>Total</th>
<td>87</td>
<td>13</td>
<td>100</td>
</tr>
</tbody></table> <!-- .element: class="fragment" data-fragment-index="2" -->

---

### Fisher's exact test

* To be used on sets of two nominal variables
* Tests whether the proportions of one variable are different depending on the value of the other variable <!-- .element: class="fragment" data-fragment-index="1" -->
* Also called an "independence test" <!-- .element: class="fragment" data-fragment-index="2" -->
* Can be used with small sample sizes <!-- .element: class="fragment" data-fragment-index="3" -->


