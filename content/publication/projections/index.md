---
draft: false
featured: false
abstract: "In this lecture we exam the geometric properties of OLS and the role of projections. In particular we will find expectations of OLS estimates and quadratic forms, and derive an unbiased estimate of the variance using properties of the projection matrix"
abstract_short: "In this lecture we will study the distribution of OLS/MLEs and the role of projections."
authors:
date: "2019-09-03"
image_preview: ""
math: true
publication_types: []
publication: ""
publication_short: ""
title: "Projections"
url_source: "lectures/projections/projections.tex"
url_code: ""
url_dataset: ""
links: 
 - name: "Readings"
   url: "http://getitatduke.library.duke.edu/?sid=sersol&SS_jc=TC0000508493&title=Plane%20Answers%20to%20Complex%20Questions%3A%20The%20Theory%20of%20Linear%20Models"
url_project: "http://github.com/sta721-F19/website/tree/master/static/lectures/Projections/"
url_slides: "lectures/Projections/projections.pdf"
url_video: ""

# Optional featured image (relative to `static/img/` folder).
#[header]
#image: "headers/bubbles-wide.jpg"
#caption: "My caption :smile:"


---

A characterization of multivariate normals is that any linear combination of multivariate normals is a univariate normal, e.g. $\mathbf{Y} \sim N(\boldsymbol{\mu}, \boldsymbol{\Sigma})$ then $\mathbf{v}^T \mathbf{Y} \sim N(\mathbf{v}^T\boldsymbol{\mu}, \mathbf{v}^T  \boldsymbol{\Sigma} \mathbf{v}) $ for any $\boldsymbol{\Sigma} \ge 0$. For those interested in more details about the theory and proofs about existence of multivariate normals (particularly singular normals) the following videos 

[Characteristic Function for univariate Normal](https://youtu.be/7wBtMB13whM)

[Existence of Multivariate normals via Characteristic functions](https://youtu.be/_HcSNM748Gc)

[Proof of equal in distribution using characteristic functions](https://youtu.be/ISxBEILT5gY)

provide proofs using characteristic functions.  The key result is that any linear transformation of a random variable $\mathbf{Y} \in \mathbb{R}^n$ with a multivariate normal distribution has multivariate normal distribution:
$$
\mathbf{Y} \sim N_n(\boldsymbol{\mu}, \boldsymbol{\Sigma})  \text{ then } \mathbf{A}\mathbf{Y} \sim N_m(\mathbf{A}\boldsymbol{\mu}, \mathbf{A}  \boldsymbol{\Sigma} \mathbf{A}^T)
$$
for any $\boldsymbol{\Sigma} \ge 0$ and $\mathbf{A}$ of dimension $m \times n$, where $m$ potentially is larger than $n$.   
These results allow us to establish the distribution of fitted values and  residuals, and show that they are independent.
