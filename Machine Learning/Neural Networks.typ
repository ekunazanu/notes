#import "../template.typ": template
#show: template

Neural networks are a way to model data using a combination of #link("Mathematics/Linear%20Algebra#Affine%20Transformation")[affine] and non-linear transformations.

== Regression & Classification <regression-classification>

- *Regression* --- Predicting values from given input values. Returns continuous values. If more than one value is returned, it is called *multivariate regression*.
- *Classification* --- Predicting a category. Returns discrete categories. If prediction is from one of two categories, it is called *binary classification*. If prediction is from more than two categories, it is called *multi-class classification*.

== Network Structure <network-structure>

Research suggests that #link("https://pair.withgoogle.com/explorables/grokking")[generalization] is associated with well-structured representations. Different types of network structures exist depending on the type of problem. For example #link("Machine%20Learning/Convolutional%20Neural%20Networks")[CNNs] use a specific neural network structure to process images.
