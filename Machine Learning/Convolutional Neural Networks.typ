#import "../template.typ": template
#show: template

A type of neural network that learns features via #link("Mathematics/Convolution")[convolutional kernels].

In images, pixels that are spatially close are often related to each other --- this assumption can be used as an inductive bias in #link("Machine%20Learning/Neural%20Networks")[neural networks]. Perceptrons in the next layers can be connected only to locally close perceptrons of the previous layers.

Further, constructing the weight matrix using a specific repeating weight structure can make the matrix multiplication a #link("Mathematics/Convolution")[convolution], which can be studied as filters for images making the models better for interpretability --- at least for the initials perceptron layers.
