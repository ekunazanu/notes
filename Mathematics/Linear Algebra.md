Branch of mathematics concerning linear equations — $a_1x_1 + a_2x_2 + \ldots + a_nx_n = b$. It initially started out as a study of system of linear equations, and using matrices to represent them. However a more abstract view (via vector spaces) which preserves its properties and can be better generalised is more commonly used presently.

## Vector Spaces

A vector space $(V,F,+,\cdot)$ is a set of elements $V$ called vectors over a [field](Mathematics/Mathematics%20Overview.md#Fields) $F$, with a binary operation on $V$ called vector addition $<+>$, and another binary operation on $V$ and scalar $a \in F$ called scalar multiplication $<\cdot>$ such that it satisfies vector axioms:

* $V$ is an [abelian group](Mathematics/Mathematics%20Overview.md#Groups) under vector addition:
	* **Associativity of addition** — For $u,v,w \in V$, $(u + v) + w = u + (v + w)$.
	* **Identity element of addition** —  For $v \in V$, $v + 0 = 0 + v = v$, where $0 \in V$ is called the zero vector.
	* **Inverse elements of addition** — For all $v \in V$, there $-v$ such that $v + (-v) = 0$, where $0$ is the zero vector.
	* **Commutativity of  addition** — For $u,v \in V$, $u + v = v + u$.
* Scalar multiplication is distributed over vector addition — For $a \in F$ and $u, v \in V$, $a(u+v) = au + av$.
* Scalar multiplication is distributed over field addition — For $a,b \in F$ and $v \in V$, $(a+b)v = av + bv$.
* Scalar multiplication and field multiplication are compatible — For $a,b \in F$ and $v \in V$, $a(bv) = (ab)v$.
* Identity element of scalar multiplication — For $v \in V$ $1v = v$,  where $1 \in F$ is the multiplication identity of $F$.

* **Vectors** —
	* Set of elements from a [field](Mathematics/Mathematics%20Overview.md#Fields) such that it satisfies the vector axioms.
	* Often usually represented as a set of real numbers representing arrows or points in an n-dimensional space.
	* Scalar multiplication scales all the elements of the vector, while vector addition acts in a pointwise-like manner.
	* Visually, scalar multiplication scales vectors while vector addition follows parallelogram vector addition:

![vector addition, subtraction, scalar multiplication shown using both the number representation and visual analogues etc](vectoroperations.png)

* **Basis vectors** —
	* In a vector space $V$, a set of $B$ vectors is called a basis vector is every element of $V$ can be written using a linear combination of $B$.
	* Simply put, a basis vector $B$ is like a coordinate system via which other vectors are defined.
	* It must be a linearly independent subset of $V$ that spans $V$, ie. AAAA

![same point represented using different basis vectors](basisvectors.png)

* **Span** — The space spanned by a set of vectors.

![two vectors spanning the entire R2 vector space](vectorspan.png)
* Linearly independent
* Spanning set

## Linear Transformations

* **Linear map** — Mapping between two vector spaces $T: V \rightarrow W$ such that the mapping preserves vector additions and scalar multiplication. Also called a linear transformation in the context of linear algebra.
	* **Vector addition**: $T(u+v) = T(u)+T(v)$ where $u,v$ are vectors. Translates vectors points.
	* **Scalar multiplication**: $T(k \cdot v) = k \cdot T(v)$, where $v$ is a vector and $k$ is a scalar in a [field](Mathematics/Mathematics%20Overview.md#Fields).
	* $f(x) = ax+b$ is a linear map or a linear function since $f(x+y) = f(x)+f(y)$ and $f(k \cdot x) = k \cdot f(x)$.
	* Visually, linear mapping preserves the origin, and parallel lines. 
* **Matrices** — A way to represent linear transformations.
	* A
	* Can be composed one top of one another
	* Non-square Matrices
* **Determinant** —
	* a
* **Rank** —
* **Inverse matrices** —
* **Null space** —

* Dot product — a
* Cross product — a
* Dual — 
* **Eigen vectors** —
* **Eigen values** —

* [Fantastic Ref](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab)