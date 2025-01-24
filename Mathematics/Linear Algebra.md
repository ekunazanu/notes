Branch of mathematics concerned with the behavior of linear equations — $a_1x_1 + a_2x_2 + \ldots + a_nx_n = b$. It initially started out as the study of systems of linear equations. However a more abstract view (via vector spaces) which preserves its properties and can be better generalized is more commonly used presently.

A **vector** is a set of elements from a [field](Mathematics/Mathematics%20Overview.md#Fields) such that it satisfies the vector axioms. E.g. $v = (a, b, c)$ where $a, b, c$ are elements from a set in field $F$ satisfying all the vector axioms. A **scalar** is any element from the same field $F$. For example, $a$ and $b$ are scalars. The vector axioms are defined below:

## Vector Spaces

A vector space $(V,F,+,\cdot)$ is a set of elements $V$ called vectors over a [field](Mathematics/Mathematics%20Overview.md#Fields) $F$, with a binary operation on $V$ called vector addition $<+>$, and another binary operation on $V$ with a scalar $a \in F$ called scalar multiplication $<\cdot>$ such that it satisfies vector axioms:

* $V$ is an [abelian group](Mathematics/Mathematics%20Overview.md#Groups) under vector addition:
	* **Associativity of addition** — For $u,v,w \in V$, $(u + v) + w = u + (v + w)$.
	* **Identity element of addition** —  For $v \in V$, $v + 0 = 0 + v = v$, where $0 \in V$ is called the zero vector.
	* **Inverse elements of addition** — For all $v \in V$, there $-v$ such that $v + (-v) = 0$, where $0$ is the zero vector.
	* **Commutativity of  addition** — For $u,v \in V$, $u + v = v + u$.
* Scalar multiplication is distributed over vector addition — For $a \in F$ and $u, v \in V$, $a(u+v) = au + av$.
* Scalar multiplication is distributed over field addition — For $a,b \in F$ and $v \in V$, $(a+b)v = av + bv$.
* Scalar multiplication and field multiplication are compatible — For $a,b \in F$ and $v \in V$, $a(bv) = (ab)v$.
* Identity element of scalar multiplication — For $v \in V$ $1v = v$,  where $1 \in F$ is the multiplication identity of $F$.
* E.g. the euclidean space is an $n$ dimensional vector space over $\mathbb{R}^{n}$.

Vector spaces can be visualized as an n-dimensional geometric space where vectors are arrows or points in that space, and vector operations transform the vectors (and the space itself). Scalar multiplication scales the vector arrows, while vector addition follows parallelogram vector addition.

![geometric analogue of vector addition and multiplication](vector-addition-multiplication.png)

## Basis vectors

* **Span** — The entire space spanned by the linear combination of a set of (basis) vectors.

![two vectors spanning the entire R2 vector space](vectorspan.png)
* **Linearly independent** — Two or more vectors that cannot be written as a linear combination of the others are linearly independent. That is, vectors that span different vector spaces are linearly independent.

![three vectors spanning R2 vs three vectors spanning R3](vectorspancomparison.png)

* In a vector space $V$, a set of $B$ vectors is called a basis vector if every element of $V$ can be written using a linear combination of $B$. Simply put, basis vectors $B$ must span the entire space of $V$. As such $B$ must include a set of linearly independent vectors. Since basis vectors span an entire vector space, they can act as coordinate system via which all vectors in that space can be represented.
* E.g. $B = \{ v_{1} = (1, 0, 0), v_{2} = (0, 1, 0), v_{3} = (0, 0, 1) \}$ is the basis for the space $\mathbb{R}^{3}$, 
* As evident, basis vectors must be a linearly independent spanning set to be able to span an entire vector space.

![same point represented using different basis vectors](basisvectors.png)


## Linear Transformations

* **Linear map** — Mapping between two vector spaces $T: V_{1} \rightarrow V_{2}$ such that the mapping preserves vector additions and scalar multiplication. Also called a linear transformation in the context of linear algebra.
	* **Vector addition**: $T(u+v) = T(u)+T(v)$ where $u,v$ are vectors.
	* **Scalar multiplication**: $T(k \cdot v) = k \cdot T(v)$, where $v$ is a vector and $k$ is a scalar in a [field](Mathematics/Mathematics%20Overview.md#Fields).
* **Matrices** — A way to represent linear transformations.
	* Each row of a matrix corresponds to the linear combination of the input vectors for the following row in the output vector (or matrix). Each column in the input vector (or matrix) corresponds to the row in the output vector (or matrix). That is:
	$$
	\begin{bmatrix}
	a & b & c \\
	d & e & f \\
	... & ... & ... \\
	... & ... & ...
	\end{bmatrix}
	\begin{bmatrix}
	x & p \\
	y & q \\
	z & r
	\end{bmatrix}
	=
	\begin{bmatrix}
	ax + by + cz & ap + bq + cr \\
	dx + ey + fz & ap + bq + cr \\
	... & ... \\
	... & ...
	\end{bmatrix}	
	$$
	* Can be composed with one another to create a resulting product matrix. Operations are performed from right to left. E.g. the composition of matrices $ABC$ implies first multiplying matrix $B$ with $C$ and then multiplying the product with $A$. Matrix multiplication is associative: $A(BC) = (AB)C$. It is not commutative however — for matrices $A$ and $B$, $AB \neq BA$.
	* Non-square matrices transform vectors (or matrices) to a higher or lower dimensional space — depending on the number of rows and columns of the transformation matrix and its rank.
	* Geometrically, linear transformations preserve the origin (zero vector is unaffected) and parallel lines (all vectors are scaled linearly). Linear transformations can be visualized as scaling the geometric space with a linear combination of the row vectors of the transformation matrix.

![graphic to show matrix multiplication geometrically](matrix-transformation.png)

## Matrix Properties

* **Rank** — The number of dimensions of the vector space spanned by the column (or row) vectors of a matrix. The row rank of matrix is equal to the column rank of a matrix.

![example of linearly dependent vectors in a matrix](rank.png)

* **Determinant** — The 'scaling factor' of a linear transformation (a matrix), from a geometric perspective. A matrix will transform the space such that the parallelotope (n-dimensional parallelogram/parallelepiped) covered by any vector is scaled by some factor — the (signed) factor is the determinant. A matrix with zero determinant implies the reduction of rank. Since higher dimensional information is condensed into lower dimensions, information is lost and it is impossible to invert the transformation — ie. a matrix with zero determinant is non-invertible; it does not have an inverse.

![geometric analogue of determinant](determinant-matrix-animation.png)

* **Inverse matrices** — The linear transformation which undoes a linear transformation. That is, for a matrix $A$, its inverse $A^{-1}$ will undo the transformation of $A$. In essence, applying $A^{-1}A$ is the same as applying the identity transform $A^{-1}A = I$ where, $I$ is the idenentity matrix.
* **Identity matrix** — Matrix with on the main diagonal and zeros elsewhere. Applying the identity transformation on a vector or matrix returns the same vector or matrix  — it is analogous to an identity element.
* **Transpose** — The matrix obtained after reflecting the elements of a matrix along its main diagonal. The transpose of a matrix (or a vector) $A$ is represented as $A^{T}$.

$$
	\begin{bmatrix}
	a & b \\
	p & q \\
	x & y
	\end{bmatrix}^T
	=
	\begin{bmatrix}
	a & p & x \\
	b & q & y
	\end{bmatrix}
$$

* **Null space** — The vector space which gets mapped to the zero vector $0$ after some given linear transform $A$. That is null space is $\{v \in V \mid Av = 0 \}$.
* **Cross product** — The 3-dimensional vector that is orthogonal to two other 3-dimensional vectors, scaled by the area of the parallelogram formed by the two 3-dimensional vectors. That is, $v \times u = ||v|| \cdot ||u|| \cdot \sin{\theta} \cdot n$ where $\theta$ is the angle between the two vectors $v$ and $u$, and $n$ is the unit vector perpendicular to both the vectors. Cross products are anti-commutative $v \times u = −u \times v$. Lie algebra defines the generalized cross product in higher dimensions.
* **Dot product** — Point-wise product of two vectors. Geometrically, the dot product represents the projection of one vector on another vector, scaled by the the product of the magnitude of both the vectors. In a way, it measures the angle of two vectors — the dot product is analogous to the cosine function in higher dimensions (but also scaled by the product of the magnitude of the two vectors). It can be written as $v \cdot u$ or $v^{T}u$.

$$
	\begin{bmatrix}
	a \\
	b \\
	c \\
	...
	\end{bmatrix}
	\cdot
	\begin{bmatrix}
	x \\
	y \\
	z \\
	...
	\end{bmatrix}
	=
	\begin{bmatrix}
	ax \\
	by \\
	cz \\
	...
	\end{bmatrix}
$$

![geometric visualization of the dot product](dot-product.png)

* **Duality** — A dot product can be alternatively defined as $v^{T}u$ because of duality. The *dual of a vector* is a linear transformation that maps vectors to a scalar. E.g. in physics, velocity can be represented as a vector $v$ in a vector space $V$, and its dual can act as a transformation to return a scalar displacement.
* **Eigenvectors** — Some linear transformations may not change (or may reverse) the direction of a few certain vectors, and may only change its magnitude. That is, for a non-identity transformation matrix $A$, there may exist vectors $v$ such that $Av = \lambda v$ where $\lambda$ is a scalar. Then the vector $v$ is an eigenvector for the matrix $A$ and the scalar $\lambda$ is one of the eigenvalues.

## Affine Transformation

Affine transformations are similar to linear transformations, but do not necessarily preserve the zero vector. Geometrically, affine transformations preserve parallel lines (since vectors are still scaled linearly) but do not preserve the origin (zero vector) — the transformation acts as a linear transformation with a 'translation' transformation.

---

## References

* Grant Sanderson — [Essence of linear algebra](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab)

---

This page is a part of [Mathematics](Mathematics/Mathematics%20Overview.md).