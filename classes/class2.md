## Contingency tables

---

### Main questions

* What are they?
* When are they used? <!-- .element: class="fragment" data-fragment-index="1" -->

---

### What are contingency tables?

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

### When are they used?

* When it is necessary to compare observation counts to a theoretical expectation
* Examples: <!-- .element: class="fragment" data-fragment-index="1" -->
	* Is our sample of male and female individuals representative of the population's sex ratio? <!-- .element: class="fragment" data-fragment-index="1" -->
	* Are our counts of crossed flower colours matched to the expected Mendelian inheritance? <!-- .element: class="fragment" data-fragment-index="2" -->

---

### ["High Hopes"](https://www.youtube.com/watch?v=7jMlFXouPk8)

* There are several way to test the conformace to expectations
	* (Pearson's) Chi² test <!-- .element: class="fragment highlight-green" data-fragment-index="1" -->
	* G-test <!-- .element: class="fragment fade-out" data-fragment-index="1" -->
	* Fischer's exact test <!-- .element: class="fragment highlight-green" data-fragment-index="2" -->
	* McNemar test (non independent samples) <!-- .element: class="fragment fade-out" data-fragment-index="2" -->

---

### Chi² test

* Requires a "large" sample size
* Is computationally simple <!-- .element: class="fragment" data-fragment-index="1" -->
* Uses the "chi-square" distribution <!-- .element: class="fragment" data-fragment-index="2" -->

![Chi² distribution](C2_assets/Chi2_dist.png) <!-- .element: class="fragment" data-fragment-index="3" -->

---

### Multiple testing

* When there are more than 2 categories
	* Each category can be tested against the sum of all other cateogries <!-- .element: class="fragment" data-fragment-index="1" -->
	* FDR or Bonferroni corrections must be applied <!-- .element: class="fragment" data-fragment-index="2" -->

|||

### Example



