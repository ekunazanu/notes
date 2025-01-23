Study of behavior of structures following certain rules. The most fundamental rules or truths are assumptions, called axioms — taken as truth; no proofs. Axioms are used as a starting point for reasoning.

## Algebraic Structures

Mathematical operations are not limited to numbers. Algebraic structures provide a way to formalize behavior of operations performed on abstract entities — to generalize operations on numbers to operations on more abstract structures. Algebraic structures are defined based on certain chosen axioms, each with their own properties and behavior resulting from the axioms. More generic structures include more entities, but may have lesser specific properties or behavior. More specific or restrictive structures include fewer entities but may have more specific properties.

The abstract entities can be represented as collections of different things called *sets* and the individual entities are called *elements* of the set. The entities when operated on, *may* result in a well defined output. The operations on the entities (called operands or arguments, in this context) and their outputs are usually denoted as $\omega:X_1 \times X_2 \ldots \times X_n \rightarrow Y$ where $\omega$ represents the operation, and $X_1, X_2 \ldots X_n$ represents the operands, and $Y$ is the output.

![types of operations — unary, binary, etc with examples](operations.png)

### Groups

* Set of elements $G$ and one binary operation $<\cdot>$.
* Satisfies group axioms:
	* **Associativity** — For all $a, b, c \in G$ $(a \cdot b) \cdot c = a \cdot (b \cdot c)$.
	* **Identity element** — For all $a \in G$, there exists a unique element $e \in G$ such that $e \cdot a = a \cdot e = a$.
	* **Inverse element** — For all $a \in G$, there exists $b \in G$ such that $a \cdot b = b \cdot a = e$. For each $a$, the element $b$ is unique. Inverse of $a$ is denoted by $a^{-1}$.
* An **abelian group** is a group satisfying the group axioms as well as **commutativity** — that is $a \cdot b = b \cdot a$.
* E.g. $(\mathbb{Z}, +)$ is an abelian group. $(\mathbb{R}, \times)$ is an abelian group. $(\mathbb{Z}, -)$ is *not* a group since subtraction is not associative.

### Rings

* Set of elements $R$ and two binary operations $<+, \cdot>$ analogous to those of addition and multiplication of integers.
* Satisfies ring axioms:
	* $R$ is an abelian group under addition:
		* **Associativity** — For all $a, b, c \in R$, $(a + b) + c = a + (b + c)$.
		* **Identity element** — For all $a \in R$, there exists a unique element $e \in R$ such that $e + a = a + e = a$.
		* **Inverse element** — For all $a \in R$, there exists $b \in R$ such that $a + b = b + a = e$. For each $a$, the element $b$ is unique. Additive inverse of $a$ is denoted by $-a$.
		* **Commutative** — For all $a, b \in R$, $a + b = b + a$
	* $R$ is a monoid under multiplication:
		* **Associativity** — For all  $a, b, c \in R$, $(a \cdot b) \cdot c = a \cdot (b \cdot c)$
		* **Identity element** — For all $a \in R$, there exists a unique element $e \in R$ such that $e \cdot a = a \cdot e = a$.
	* Multiplication is distributed over addition:
		* **Left distributivity** — $a \cdot (b + c) = (a \cdot b) + (a \cdot c)$ for all $a, b, c \in R$.
		* **Right distributivity** — $(b + c) \cdot a = (b \cdot a) + (c \cdot a)$ for all $a, b, c \in R$.
* E.g. $(\mathbb{Z} , +, \times)$ is a ring, $(\mathbb{Z}_{n}, +, \times)$ is a ring, etc.

### Fields

* Set of elements $F$ and two binary operations $<+, \cdot>$ analogous to those of addition and multiplication of integers.
* Satisfies field axioms:
	* **Associativity** — For all $a, b, c \in F$, $(a + b) + c = a + (b + c)$, and $(a \cdot b) \cdot c = a \cdot (b \cdot c)$
	* **Commutative** — For all $a, b \in F$, $a + b = b + a$ and $a \cdot b = b \cdot a$.
	* **Identity element** — For all $a \in F$, there exists a unique element $e \in R$ such that $0 + a = a + 0 = a$ and $1 \cdot a = a \cdot 1 = a$, then $0$ and $1$ are the additive and multiplicative identity respectively.
	* **Additive Inverse** — For all $a \in F$, there exists an element in $F$ denoted by $-a$ such that $a + (-a) = (-a) + a = 0$ where $0$ is the additive identity.
	* **Multiplicative Inverse** — For all $a \in F$, there exists an element in $F$ denoted by $a^{-1}$ such that $a \cdot a^{-1} = 1$ where $1$ is the multiplicative identity.
	* Multiplication is distributed over addition:
		* **Left distributivity** — $a \cdot (b + c) = (a \cdot b) + (a \cdot c)$ for all $a, b, c \in F$.
		* **Right distributivity** — $(b + c) \cdot a = (b \cdot a) + (c \cdot a)$ for all $a, b, c \in F$.
* In short, a field is a commutative ring where $0 \neq 1$ and all non $0$ elements are invertible under multiplication.
* E.g. $(\mathbb{R}, +, \cdot)$ is a field, so is $(\mathbb{Q}, +, \cdot)$ and $(\mathbb{C}, +, \cdot)$, but $(\mathbb{Z}, +, \cdot)$ is *not* a field since multiplicative inverse does not exist for all elements of $\mathbb{Z}$.

Every field is a ring, and every ring is a group. The above are common algebraic structures, but [others algebraic structures](https://en.wikipedia.org/wiki/Algebraic_structure#Common_algebraic_structures) exist too.

## Number Systems

* $\mathbb{N}$ — Natural numbers: Numbers $1, 2, 3 \ldots$ . Can sometimes include 0 ($\mathbb{N}_{0}$) or exclude it ($\mathbb{N}_{1}$).
* $\mathbb{Z}$ — Integers: Numbers $\ldots , -2, -1, 0, 1, 2, 3, \ldots$.
* $\mathbb{Q}$ — Rational numbers: $\tfrac{a}{b}$ where $a, b$ are integers, and $b \neq 0$.
* $\mathbb{R}$ — Real numbers: Numbers that include rational numbers, algebraic irrational numbers — $\sqrt{2}$, $\sqrt[3]{17}$,  and transcendental numbers — $\pi$, $e$, etc.
* $\mathbb{C}$ — Complex numbers: Numbers $a + bi$ where $a, b \in \mathbb{R}$ and $i = \sqrt{-1}$.

### Complex Numbers

Numbers that extend the real number system using 'imaginary' number $i = \sqrt{-1}$. Can be used to represent two dimensional rotations on the complex plane. Usually represented as $z = a+bi$ where $a,b \in \mathbb{R}$ and $i = \sqrt{-1}$.

* **Complex plane** — Plane formed by the perpendicular real number line and imaginary number line.
* **Argument** — The angle between the line joining the origin and the complex number, and the positive real axis, denoted by $\arg(z)$.
* **Absolute Value** — The magnitude or distance of a complex number from the origin, denoted by $\left|z\right|$.
* **Complex Conjugate** — The reflection of complex number across the real axis, denoted by $\overline{z}$.

![image showing a complex number on the complex plane, its argument, magnitude or absolute value, and its complex conjugate](complexnumbers.png)

When complex numbers are multiplied, the product has the argument that is sum of the argument of the operands; and the magnitude of the product is the product of the magnitude of the operands.

![Rotations](complexrotation.png)

## Functions

* Maps each element from an input set $X$ to *exactly* one element from output set $Y$.
* The input set is called the domain; the output set is called the codomain.
* The output of the function of an element is called its image. Images can also refer to:
	* Image of an element.
	* Image of a subset — The image, in this context, refers to the set of images of a subset of elements from the domain.
	* Image of a function — The image, in this context, is the image of its entire domain. It is also called the range.
* The input (or set of all the possible inputs) that maps to an output is called the preimage of the output.
* Can be denoted as $f: X \rightarrow Y$ where $X$ is the domain, $Y$ is the codomain.
* Individual element mappings can be denoted as $f(x) = y$ where $x \in X$ and $y \in Y$ of $f: X \rightarrow Y$.

![image showing input and output sets, the domain, codomain, range, preimage](functionsbasics.png)

* A function is injective if there is a one-to-one mapping between the domain and codomain.
* A function is surjective if the codomain of the function is the range.
* A function is bijective if it is both injective and surjective.

![image showing injection, surjection and bijection](functionmapping.png)

* For a function, $f: X \rightarrow Y$, its inverse $f^{-1}: Y \rightarrow X$ undoes the operation $f$.
* $f^{-1}: Y \rightarrow X$ maps $y \in Y$ to $x \in X$ such that $f(x) = y$.
* Inverse of a function exists $\iff$ a function is is bijective.

![image showing inverse function](inversefunction.png)

* Domain and range need not be defined everywhere. E.g. $\log(x)$ is not defined in $\mathbb{R}$ for $x < 0$.
* Functions can be nested — $g(f(x))$ denotes performing function $f$ on $x$ and then performing $g$ on the output of $f(x)$.
* Generally, inner/right functions are evaluated before the outer/left.

## Logarithm

* Inverse of the exponentiation function.
* If $b^{a} = x$, then $\log_b(x) = a$.
* Log with base is 10 —  $\log_{10}(x)$, it called common logarithm.
* Log with base is $e$ — $\log_{e}(x)$, is called natural logarithm, sometimes denotes as $\ln(x)$.
* Logarithm with base 2 — $log_{2}(x)$, called binary logarithm, is mostly prevalent in computer science.

### Logarithmic Identities

* $\log_{b}(x \cdot y) = \log_{b}(x) + \log_{b}(y)$, where $b, x, y > 0$ and $b \neq 1$.
* $\log_{b}(\tfrac{x}{y}) = \log_{b}(x) - \log_{b}(y)$
* $\log_{b}(x^{p}) = p \cdot \log_{b}(x)$
* $\log_{b}(\sqrt[p]{x}) = \tfrac{\log_{b}(x)}{p}$
* $\log(x+y) \approx \log(\max(x, y))$
* $\log_{b}(x) = \tfrac{\log_{k}(x)}{\log_{k}(b)}$
* $\log_{k}(x) = \log_{k}(b) \cdot \log_{b}(x)$
* If $\log_{b}(x) = y$, then $\log_{x}(b) = \tfrac{1}{y}$

![showing exponentiation to show indentities intuitvely](logchangebase.png)

* For $y = \log(x)$ where $x < 0$, then  $y = \log(|x|) +k \cdot i\pi$ , where $k = 2n + 1, n \in \mathbb{N}$. Can be [derived](https://www.youtube.com/watch?v=SYxyemNSSm8) using Euler's formula.

## Trigonometry

* Branch of mathematics concerned with relationships between angles and ratios of side lengths of right triangles.
* $\sin(x)$ returns the ratio of the lengths of the side opposite that angle to the hypotenuse of a right triangle for a given angle $x$.
* $\cos(x)$ returns the ratio of the lengths of the side adjacent that angle to the hypotenuse of a right triangle.

![image of sin and cos using a right triangle](trigometrictriangle.png)

* $\sin(x)$ and $\cos(x)$ are defined as $f: \mathbb{R} \rightarrow [-1,1]$.
* Other trigonometric functions are defined as:
	* $\tan(x) = \tfrac{\sin(x)}{\cos(x)}$
	* $\cot(x) = \tfrac{\cos(x)}{\sin(x)}$
	* $\sec(x) = \tfrac{1}{\cos(x)}$
	* $\csc(x) = \tfrac{1}{\sin(x)}$
* If $\sin(x) = y$, then $\arcsin(y) = x$, ie. $\arcsin()$ is the inverse of the $\sin()$ function.
* $\arccos()$ and $\arctan()$ is the inverse of the $\cos()$ and $\tan()$ functions respectively.
* Trigonometric functions are usually defined in the context of a unit circle.

![unit circle with trig identities](unitcircletrig.png)

### Trigonometric Identities

* $\sin^{2} \theta + \cos^{2} \theta = 1$
* $\sin \theta = \pm \sqrt{1 - \cos^{2} \theta}$
* $\cos \theta = \pm \sqrt{1 - \sin^{2} \theta}$
* $1 + \tan^{2} \theta = \sec^{2} \theta$
* $1 + \cot^{2} \theta = \csc^{2} \theta$
* $sec^{2} \theta + \csc^{2} \theta = \sec^{2} \theta \cdot \csc^{2} \theta$

* $\sin(\theta \pm \tfrac{\pi}{2}) = \pm \cos \theta$
* $\cos(\theta \pm \tfrac{\pi}{2}) = \mp \sin \theta$
* $\tan(\theta \pm \tfrac{\pi}{4}) = \tfrac{\tan \theta \pm 1}{1 \mp \tan \theta}$
* $\cot(\theta \pm \tfrac{\pi}{4}) = \tfrac{\cot \theta \mp 1}{1 \pm \cot \theta}$
* $\sin(-\theta) = -\sin \theta$
* $\cos(-\theta) = + \cos \theta$

![trigonometric identity sign change due to shifts](trigonometrysigns.png)

* $\sin(\alpha \pm \beta) = \sin(\alpha)\cos(\beta) \pm \cos(\alpha) \sin(\beta)$
* $\cos(\alpha + \beta) = \sin(\alpha)\sin(\beta) \mp \cos(\alpha) \cos(\beta)$
* $\tan(\alpha + \beta) = \tfrac{\tan(\alpha) \pm \tan(\beta)}{1 \mp \tan(\alpha) \tan(\beta)}$

---

This page is a part of [Home](/index).