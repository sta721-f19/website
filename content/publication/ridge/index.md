---
draft: false
featured: false
abstract: "In this lecture we will look at properties of estimators. To address problems for estimation with nearly singular matrices, we will introduce Ridge Regression as an approach to deal with multicollinearity and will show how it can be motivated as a constrained optimization problem."
abstract_short: "In this lecture we will  look at properties of estimators. To address problems for estimation with nearly singular matrices, we will introduce Ridge Regression as an approach to deal with multicollinearity and will show how it can be motivated as a constrained optimization problem."
authors:
date: "2019-10-15"
image_preview: ""
math: true
publication_types: []
publication: ""
publication_short: ""
title: "Shrinkage Estimation and Ridge Regression"
url_source: "lectures/Ridge/ridge.Rnw"
url_slides: "lectures/Ridge/ridge.pdf"
url_code: ""
url_dataset: ""
links: 
 - name: "Readings"
   url: "http://getitatduke.library.duke.edu/?sid=sersol&SS_jc=TC0000508493&title=Plane%20Answers%20to%20Complex%20Questions%3A%20The%20Theory%20of%20Linear%20Models"
url_project: "http://github.com/sta721-F19/website/tree/master/static/lectures/Bayes-Intro"

url_video: ""

# Optional featured image (relative to `static/img/` folder).
#[header]
#image: "headers/bubbles-wide.jpg"
#caption: "My caption :smile:"


---

Readings: [Christensen Chapter 15 C](http://getitatduke.library.duke.edu/?sid=sersol&SS_jc=TC0000508493&title=Plane%20Answers%20to%20Complex%20Questions%3A%20The%20Theory%20of%20Linear%20Models) and [Hoff Chapter 9](http://getitatduke.library.duke.edu/?sid=sersol&SS_jc=TC0000296463&title=A%20First%20Course%20in%20Bayesian%20Statistical%20Methods)

In this lecture we look at ridge regression as an approach to deal with multicollinearity and instability of OLS/MLEs when eigenvalues $X^TX$ approach zero. Using a rotation of the data, we will show how this relates to regression on Principle Components.  Finally we will describe how ridge regression can be motivated as a constrained optimization problem or as a Bayesian estimator.

