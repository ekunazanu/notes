#import "../template.typ": template
#show: template

- *Artificial intelligence* --- Systems with 'intelligent' behavior. Could be based on logic, probabilistic reasoning, etc.
- *Machine learning* --- Subset of AI that makes decisions based on mathematical models.
- *Deep learning* --- Subset of machine learning, using deep #link("Machine%20Learning/Neural%20Networks")[neural networks].

Machine Learning can be divided into three sections:

- *Supervised learning* --- There is input data and corresponding output data. Goal is to find features (patterns) to create predictions for unseen examples. Includes: #link("Machine%20Learning/Neural%20Networks")[general neural networks], #link("Machine%20Learning/Convolutional%20Neural%20Networks")[CNNs], #link("Machine%20Learning/Transformers")[Transformers], #link("Machine%20Learning/Graph%20Neural%20Networks")[GNNs], etc.
- *Unsupervised learning* --- There is input data but no corresponding output data or labels. Goals are diverse, ranging from generating new samples, revealing internal structures of datasets, etc. Includes #link("Machine%20Learning/Generative%20Adversarial%20Networks")[GANs], #link("Machine%20Learning/Variational%20Autoencoders")[Variational Autoencoders], #link("Machine%20Learning/Diffusion%20Models")[Diffusion Models], etc.
- *Reinforcement learning* --- *Agents* learn to perform *actions* in an *environment* with the goal of maximizing *rewards* in a non-deterministic way. Can be achieved using #link("Machine%20Learning/Markov%20Processes")[Markov Processes].

#divider()

== References <references>

- Simon J. D. Prince --- #link("https://udlbook.github.io/udlbook/")[Understanding Deep Learning], Chapter One
