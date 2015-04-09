<small><i>This notebook was put together by [Jake Vanderplas](http://www.vanderplas.com) for PyCon 2015. Source and license info is on [GitHub](https://github.com/jakevdp/sklearn_pycon2015/).</i></small>

# An Introduction to scikit-learn: Machine Learning in Python

## Goals of this Tutorial

- **Introduce the basics of Machine Learning**, and some skills useful in practice.
- **Introduce the syntax of scikit-learn**, so that you can make use of the rich toolset available.

## Schedule:

Outline:

**9:00 - 9:15** Preliminaries: Setup & introduction
* Making sure your computer is set-up

**9:15 - 10:00** Basic Principles of Machine Learning and the Scikit-learn Interface
* What is Machine Learning?
* Machine learning data layout
* Supervised Learning
    - Classification
    - Regression
    - Measuring performance
* Unsupervised Learning
    - Clustering
    - Dimensionality Reduction
    - Density Estimation
* Evaluation of Learning Models
* Choosing the right algorithm for your dataset

**10:00 - 10:45** Supervised learning in-depth
* Support Vector Machines
* Decision Trees and Random Forests

**10:45 - 11:00**: break

**11:00 - 11:45** Unsupervised learning in-depth
* Dimensionality Reduction: Principal Component Analysis
* Clustering: K Means
* Density Estimation: Gaussian Mixture Models
* Application: image color compression

**11:45 - 12:20** Validation and Model Selection
* Overfitting, Underfitting, bias, and variance
* Improving your fit: validation curves and learning curves
* Application: facial recognition

## Preliminaries

This tutorial requires the following packages:

- Python version 2.6-2.7 or 3.3-3.4
- `numpy` version 1.5 or later: http://www.numpy.org/
- `scipy` version 0.10 or later: http://www.scipy.org/
- `matplotlib` version 1.3 or later: http://matplotlib.org/
- `scikit-learn` version 0.14 or later: http://scikit-learn.org
- `ipython` version 2.0 or later, with notebook support: http://ipython.org
- `seaborn`: version 0.5 or later, used mainly for plot styling

The easiest way to get these is to use the [conda](http://store.continuum.io/) environment manager.
I suggest downloading and installing [miniconda](http://conda.pydata.org/miniconda.html).

The following command will install all required packages:
```
$ conda install numpy scipy matplotlib scikit-learn ipython-notebook
```

Alternatively, you can download and install the (very large) Anaconda software distribution, found at https://store.continuum.io/.

### Checking your installation

You can run the following code to check the versions of the packages on your system:

(in IPython notebook, press `shift` and `return` together to execute the contents of a cell)

<pre data-code-language="python"
     data-executable="true"
     data-type="programlisting">
from __future__ import print_function

import IPython
print('IPython:', IPython.__version__)

import numpy
print('numpy:', numpy.__version__)

import scipy
print('scipy:', scipy.__version__)

import matplotlib
print('matplotlib:', matplotlib.__version__)

import sklearn
print('scikit-learn:', sklearn.__version__)

import seaborn
print('seaborn', seaborn.__version__)
</pre>

## Useful Resources

- **scikit-learn:** http://scikit-learn.org (see especially the narrative documentation)
- **matplotlib:** http://matplotlib.org (see especially the gallery section)
- **IPython:** http://ipython.org (also check out http://nbviewer.ipython.org)
