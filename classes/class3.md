## Exploratory data analysis

### PCA <!-- .element: class="fragment" data-fragment-index="1" -->

---

### Main questions

* What is it?
* When is it useful? <!-- .element: class="fragment" data-fragment-index="1" -->
* How does it 'work'? <!-- .element: class="fragment" data-fragment-index="2" -->

---

### What is a PCA?

* "**P**rincipal **C**omponent **A**nalysis"
* An exploratory method <!-- .element: class="fragment" data-fragment-index="1" -->
* A dimensional reduction technique <!-- .element: class="fragment" data-fragment-index="2" -->
* A way to cluster data from large, complex, datasets <!-- .element: class="fragment" data-fragment-index="3" -->

---

### When is a PCA useful?

* If data simplification is required (reduce computational time)
* If variables are highly correlated <!-- .element: class="fragment" data-fragment-index="1" -->
* If dealing with 3 or higher dimensional data <!-- .element: class="fragment" data-fragment-index="2" -->

---

### How does a PCA 'work'?

* Uses orthogonal transformation
* Converts possibly correlated variables into uncorrelated <!-- .element: class="fragment" data-fragment-index="1" -->
* The new variables are called "principal components" (PCs) <!-- .element: class="fragment" data-fragment-index="2" -->
* The PCs are sorted by the amount of variability they explain <!-- .element: class="fragment" data-fragment-index="3" -->

[Would you like to know more?](https://tgmstat.wordpress.com/2013/11/21/introduction-to-principal-component-analysis-pca/) <!-- .element: class="fragment" data-fragment-index="4" -->

---

### In practice...

```R
# Get some data
wine <- read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data", sep=",")

# Add column names
colnames(wine) <- c("Cultivar","Alcohol","Malic acid","Ash","Alcalinity of ash", "Magnesium", "Total phenols", "Flavanoids", "Nonflavanoid phenols", "Proanthocyanins", "Color intensity", "Hue", "OD280/OD315 of diluted wines", "Proline")

# The first column corresponds to the cultivar class
cultivar_classes <- factor(wine$Cultivar)

winePCA <- prcomp(scale(wine[,-1]))
plot(winePCA$x[,1:2], col = cultivar_classes, main="PCA test plot")
legend("bottomright", legend = c("Cv1","Cv2","Cv3"), pch = 1, col = c("black","red","green"))
```

---

### PCAs can take us further, but not in "plain" R

#### Introducing <!-- .element: class="fragment" data-fragment-index="1" --> 

####[BioConductor](https://bioconductor.org/) <!-- .element: class="fragment" data-fragment-index="1" -->

|||

### When "vanilla" R just isn't enough

* One of the good things about R is it's expandability
* It is possible to "import" thousands of external 3rd party packages <!-- .element: class="fragment" data-fragment-index="1" -->
* Bioconductor is more than just a package. It's a 3rd party package repository <!-- .element: class="fragment" data-fragment-index="2" -->
	* It hosts 1473 bioinformatics related packages (at the time of writing) <!-- .element: class="fragment" data-fragment-index="3" -->
	* It is very easy to use directly from R <!-- .element: class="fragment" data-fragment-index="4" -->

---


