A type of neural network that learns features via [convolutional kernels](Mathematics/Convolution.md).

In images, pixels that are spatially close are often related to each other — this assumption can be used as an inductive bias in [neural networks](Machine%20Learning/Neural%20Networks.md). Perceptrons in the next layers can be connected only to locally close perceptrons of the previous layers.

Further, constructing the weight matrix using a specific repeating weight structure can make the matrix multiplication a [convolution](Mathematics/Convolution.md), which can be studied as filters for images making the models better for interpretability — at least for the initials perceptron layers.

---

This page is a part of [Machine Learning](Machine%20Learning/Machine%20Learning%20Overview.md).