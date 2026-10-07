#import "../template.typ": template, canvas, draw
#show: template

Study of behavior of structures following certain rules. The most fundamental rules or truths are assumptions, called axioms --- taken as truth; no proofs. Axioms are used as a starting point for reasoning.

== Algebraic Structures <algebraic-structures>

Mathematical operations are not limited to numbers. Algebraic structures provide a way to formalize behavior of operations performed on abstract entities --- to generalize operations on numbers to operations on more abstract structures. Algebraic structures are defined based on certain chosen axioms, each with their own properties and behavior resulting from the axioms. More generic structures include more entities, but may have lesser specific properties or behavior. More specific or restrictive structures include fewer entities but may have more specific properties.

The abstract entities can be represented as collections of different things called *sets* and the individual entities are called *elements* of the set. The entities when operated on, *may* result in a well defined output. The operations on the entities (called operands or arguments, in this context) and their outputs are usually denoted as $omega: X_1 times X_2 times dots times X_n arrow Y$ where $omega$ represents the operation, and $X_1, X_2, dots, X_n$ represents the operands, and $Y$ is the output.

For example, *unary* functions ($X_1 arrow Y$) like `-x`, `!x`, `x++` etc, or *binary* functions ($X_1 times X_2 arrow Y$) like `a + b`, `a * b` etc, or *ternary* functions ($X_1 times X_2 times X_3 arrow Y$) like `a ? b : c`.

=== Groups <groups>

- Set of elements $G$ and one binary operation $lr(chevron.l dot chevron.r)$.
- Satisfies group axioms:
  - *Associativity* --- For all $a, b, c in G$, $(a dot b) dot c = a dot (b dot c)$.
  - *Identity element* --- For all $a in G$, there exists a unique element $e in G$ such that $e dot a = a dot e = a$.
  - *Inverse element* --- For all $a in G$, there exists $b in G$ such that $a dot b = b dot a = e$. For each $a$, the element $b$ is unique. Inverse of $a$ is denoted by $a^(-1)$.
- An *abelian group* is a group satisfying the group axioms as well as *commutativity* --- that is $a dot b = b dot a$.
- E.g. $(ZZ, plus)$ is an abelian group, $(RR, times)$ is an abelian group, but $(ZZ, minus)$ is *not* a group since subtraction is not associative.

=== Rings <rings>

- Set of elements $R$ and two binary operations $lr(chevron.l plus, dot chevron.r)$ analogous to those of addition and multiplication of integers.
- Satisfies ring axioms:
  - $R$ is an abelian group under addition:
    - *Associativity* --- For all $a, b, c in R$, $(a + b) + c = a + (b + c)$.
    - *Identity element* --- For all $a in R$, there exists a unique element $e in R$ such that $e + a = a + e = a$.
    - *Inverse element* --- For all $a in R$, there exists $b in R$ such that $a + b = b + a = e$. For each $a$, the element $b$ is unique. Additive inverse of $a$ is denoted by $-a$.
    - *Commutative* --- For all $a, b in R$, $a + b = b + a$
  - $R$ is a monoid under multiplication:
    - *Associativity* --- For all $a, b, c in R$, $(a dot b) dot c = a dot (b dot c)$
    - *Identity element* --- For all $a in R$, there exists a unique element $e in R$ such that $e dot a = a dot e = a$.
  - Multiplication is distributed over addition:
    - *Left distributivity* --- $a dot (b + c) = (a dot b) + (a dot c)$ for all $a, b, c in R$.
    - *Right distributivity* --- $(b + c) dot a = (b dot a) + (c dot a)$ for all $a, b, c in R$.
- E.g. $(ZZ, plus, times)$ is a ring, $(ZZ_n, plus, times)$ is a ring, etc.

=== Fields <fields>

- Set of elements $F$ and two binary operations $lr(chevron.l plus, dot chevron.r)$ analogous to those of addition and multiplication of integers.
- Satisfies field axioms:
  - *Associativity* --- For all $a, b, c in F$, $(a + b) + c = a + (b + c)$, and $(a dot b) dot c = a dot (b dot c)$.
  - *Commutative* --- For all $a, b in F$, $a + b = b + a$ and $a dot b = b dot a$.
  - *Identity element* --- For all $a in F$, there exists a unique element $e in R$ such that $0 + a = a + 0 = a$ and $1 dot a = a dot 1 = a$, then $0$ and $1$ are the additive and multiplicative identity respectively.
  - *Additive Inverse* --- For all $a in F$, there exists an element in $F$ denoted by $-a$ such that $a + (-a) = (-a) + a = 0$ where $0$ is the additive identity.
  - *Multiplicative Inverse* --- For all $a in F$, there exists an element in $F$ denoted by $a^(-1)$ such that $a dot a^(-1) = 1$ where $1$ is the multiplicative identity.
  - Multiplication is distributed over addition:
    - *Left distributivity* --- $a dot (b + c) = (a dot b) + (a dot c)$ for all $a, b, c in F$.
    - *Right distributivity* --- $(b + c) dot a = (b dot a) + (c dot a)$ for all $a, b, c in F$.
- In short, a field is a commutative ring where $0 eq.not 1$ and all non $0$ elements are invertible under multiplication.
- E.g. $(RR, plus, dot)$ is a field, so is $(QQ, plus, dot)$ and $(CC, plus, dot)$, but $(ZZ, plus, dot)$ is *not* a field since multiplicative inverse does not exist for all elements of $ZZ$.

Every field is a ring, and every ring is a group. The above are common algebraic structures, but #link("https://en.wikipedia.org/wiki/Algebraic_structure#Common_algebraic_structures")[others algebraic structures] exist too.

== Number Systems <number-systems>

- $NN$ --- Natural numbers: Numbers $1, 2, 3 dots$ . Can sometimes include 0 ($NN_0$) or exclude it ($NN_1$).
- $ZZ$ --- Integers: Numbers $dots, -2, -1, 0, 1, 2, 3, dots$.
- $QQ$ --- Rational numbers: $a / b$ where $a, b$ are integers, and $b eq.not 0$.
- $RR$ --- Real numbers: Numbers that include rational numbers, algebraic irrational numbers like $sqrt(2)$, $root(3, 17)$, and transcendental numbers like $pi$, $e$, etc.
- $CC$ --- Complex numbers: Numbers $a + b i$ where $a, b in RR$ and $i = sqrt(-1)$.

=== Complex Numbers <complex-numbers>

Numbers that extend the real number system using 'imaginary' number $i = sqrt(-1)$. Can be used to represent two dimensional rotations on the complex plane. Usually represented as $z = a + b i$ where $a, b in RR$ and $i = sqrt(-1)$.

- *Complex plane* --- Plane formed by the perpendicular real number line and imaginary number line.
- *Argument* --- The angle between the line joining the origin and the complex number, and the positive real axis, denoted by $arg(z)$.
- *Absolute Value* --- The magnitude or distance of a complex number from the origin, denoted by $abs(z)$.
- *Complex Conjugate* --- The reflection of complex number across the real axis, denoted by $overline(z)$.

#figure(
    canvas(length: 2cm, {
    import draw: *

    scale(0.5)
    set-style(stroke: (thickness: 0.5pt), content: (padding: 5pt))
    grid((-5, -3), (5, 3), step: 1, stroke: gray + 0.2pt)
    line((-5, 0), (5, 0))
    line((0, 0), (4, 2), mark: (end: "circle", fill: black), name: "original")
    content(("original.start", 50%, "original.end"), $z$, anchor: "south")
    line((0.1, -0.1), (4.1, 1.9), mark: (start: "triangle", end: "triangle", scale: 1.5, fill: black), name: "magnitude")
    content(("magnitude.start", 75%, "magnitude.end"), $abs(z)$, anchor: "north-west")
    line((0, 0), (4, -2), mark: (end: "circle", fill: black), name: "conjugate")
    content((1.5, 0), $arg(z)$, anchor: "south-west")
    arc((1.5, 0), start: 0deg, stop: calc.atan(1/2), radius: 1.5)
    content(("conjugate.start", 50%, "conjugate.end"), $overline(z)$, anchor: "north")
  }),
  caption: [Argument, magnitude, conjugate of a complex number]
)

When complex numbers are multiplied, the product has the argument that is sum of the argument of the operands; and the magnitude of the product is the product of the magnitude of the operands.

#figure(
    canvas(length: 2cm, {
    import draw: *

    scale(0.5)
    set-style(stroke: (thickness: 0.5pt), content: (padding: 5pt))
    content((1, 0), $times 2i$, anchor: "west")
    grid((-5, -3), (5, 3), step: 1, stroke: gray + 0.2pt)
    line((0, 0), (1, -2), mark: (end: "circle", fill: black), name: "original")
    content(("original.start", 50%, "original.end"), $1 - 2i$, anchor: "north-east")
    line((0, 0), (4, 2), mark: (end: "circle", fill: black), name: "transformed")
    content(("transformed.start", 50%, "transformed.end"), $4 + 2i$, anchor: "south-east")
    arc-through((0.5, -1), (1, 0), (1, 0.5), mark: (end: "triangle", fill: black))
  }),
  caption: [Complex multiplication scales and rotates numbers]
)


== Functions <functions>

- Maps each element from an input set $X$ to *exactly* one element from output set $Y$.
- The input set is called the *domain*; the output set is called the *codomain*.
- The output of the function of an element is called its *image*. Images can also refer to:
  - Image of an element.
  - Image of a subset --- The image, in this context, refers to the set of images of a subset of elements from the domain.
  - Image of a function --- The image, in this context, is the image of its entire domain. It is also called the *range*.
- The input (or set of all the possible inputs) that maps to an output is called the *preimage* of the output.
- Can be denoted as $f: X arrow Y$ where $X$ is the domain, $Y$ is the codomain.
- Individual element mappings can be denoted as $f(x) = y$ where $x in X$ and $y in Y$ for $f: X arrow Y$.

#figure(
    canvas(length: 2cm, {
    import draw: *

    set-style(stroke: (thickness: 0.5pt))

    circle((-1, 0), radius: (0.5, 0.75))
    circle((1, 0), radius: (0.5, 0.75))
    circle((1, 0.28), radius: (0.35, 0.3))
    content((-1, 0), stack($x_1$, $x_2$, $x_3$, $x_4$, spacing: 0.3em))
    content((1, 0), stack($y_1$, $y_2$, $y_3$, $y_4$, $y_5$, spacing: 0.3em))
    content((-1, -1), $X "(Domain)"$)
    content((1, -1), $Y "(Codomain)"$)
    content((2, 0.3), $R "(Range)"$)
    bezier((-0.85, 0.35), (0.85, 0.45), (0, 0.3), mark: (end: "triangle", fill: black))
    bezier((-0.85, 0.15), (0.85, 0.25), (0, 0.2), mark: (end: "triangle", fill: black))
    bezier((-0.85, -0.05), (0.85, 0.1), (0, -0.1), mark: (end: "triangle", fill: black))
    bezier((-0.85, -0.25), (0.85, 0.1), (0, -0.1), mark: (end: "triangle", fill: black))
    content((0, 0.5), $f$, anchor: "south")
  }),
  caption: [Function, domain, codomain, range]
)

- A function is *injective* if there is a *one-to-one* mapping between the domain and codomain.
- A function is *surjective* if the *codomain* of the function *is the range*.
- A function is *bijective* if it is *both injective and surjective*.

#grid(
  columns: (1fr, 1fr),
  figure(
      canvas(length: 2cm, {
      import draw: *
  
      set-style(stroke: (thickness: 0.5pt))
  
      circle((-1, 0), radius: (0.5, 0.75))
      circle((1, 0), radius: (0.5, 0.75))
      content((-1, 0), stack($x_1$, $x_2$, $x_3$, $x_4$, spacing: 0.3em))
      content((1, 0), stack($y_1$, $y_2$, $y_3$, $y_4$, $y_5$, spacing: 0.3em))
      content((-1, -1), $X$)
      content((1, -1), $Y$)
      bezier((-0.85, 0.35), (0.85, 0.45), (0, 0.3), mark: (end: "triangle", fill: black), name: "forward")
      bezier((-0.85, 0.15), (0.85, 0.25), (0, 0.2), mark: (end: "triangle", fill: black), name: "forward")
      bezier((-0.85, -0.05), (0.85, -0.25), (0, 0.3), mark: (end: "triangle", fill: black), name: "forward")
      bezier((-0.85, -0.25), (0.85, -0.25), (0, 0.3), mark: (end: "triangle", fill: black), name: "forward")
      content((0, 0.5), $f$, anchor: "south")
    }),
    caption: [A function]
  ),
  figure(
      canvas(length: 2cm, {
      import draw: *
  
      set-style(stroke: (thickness: 0.5pt))
  
      circle((-1, 0), radius: (0.5, 0.75))
      circle((1, 0), radius: (0.5, 0.75))
      content((-1, 0), stack($x_1$, $x_2$, $x_3$, $x_4$, spacing: 0.3em))
      content((1, 0), stack($y_1$, $y_2$, $y_3$, $y_4$, $y_5$, spacing: 0.3em))
      content((-1, -1), $X$)
      content((1, -1), $Y$)
      bezier((-0.85, 0.35), (0.85, 0.45), (0, 0.3), mark: (end: "triangle", fill: black), name: "forward")
      bezier((-0.85, 0.15), (0.85, 0.25), (0, 0.2), mark: (end: "triangle", fill: black), name: "forward")
      bezier((-0.85, -0.05), (0.85, -0.1), (0, 0.2), mark: (end: "triangle", fill: black), name: "forward")
      bezier((-0.85, -0.25), (0.85, -0.3), (0, 0.1), mark: (end: "triangle", fill: black), name: "forward")
      content((0, 0.5), $f$, anchor: "south")
    }),
    caption: [An injective function]
  ),
    figure(
      canvas(length: 2cm, {
      import draw: *
  
      set-style(stroke: (thickness: 0.5pt))
  
      circle((-1, 0), radius: (0.5, 0.75))
      circle((1, 0), radius: (0.5, 0.75))
      content((-1, 0), stack($x_1$, $x_2$, $x_3$, $x_4$, spacing: 0.3em))
      content((1, 0), stack($y_1$, $y_2$, $y_3$, spacing: 0.3em))
      content((-1, -1), $X$)
      content((1, -1), $Y$)
      bezier((-0.85, 0.35), (0.85, 0.25), (0, 0.3), mark: (end: "triangle", fill: black), name: "forward")
      bezier((-0.85, 0.15), (0.85, 0.05), (0, 0.2), mark: (end: "triangle", fill: black), name: "forward")
      bezier((-0.85, -0.05), (0.85, -0.15), (0, 0.1), mark: (end: "triangle", fill: black), name: "forward")
      bezier((-0.85, -0.25), (0.85, -0.15), (0, 0.1), mark: (end: "triangle", fill: black), name: "forward")
      content((0, 0.5), $f$, anchor: "south")
    }),
    caption: [A surjective function]
  ),
    figure(
      canvas(length: 2cm, {
      import draw: *
  
      set-style(stroke: (thickness: 0.5pt))
  
      circle((-1, 0), radius: (0.5, 0.75))
      circle((1, 0), radius: (0.5, 0.75))
      content((-1, 0), stack($x_1$, $x_2$, $x_3$, $x_4$, spacing: 0.3em))
      content((1, 0), stack($y_1$, $y_2$, $y_3$, $y_4$, spacing: 0.3em))
      content((-1, -1), $X$)
      content((1, -1), $Y$)
      bezier((-0.85, 0.35), (0.85, 0.35), (0, 0.3), mark: (end: "triangle", fill: black), name: "forward")
      bezier((-0.85, 0.15), (0.85, 0.15), (0, 0.2), mark: (end: "triangle", fill: black), name: "forward")
      bezier((-0.85, -0.05), (0.85, -0.05), (0, 0.1), mark: (end: "triangle", fill: black), name: "forward")
      bezier((-0.85, -0.25), (0.85, -0.2), (0, 0), mark: (end: "triangle", fill: black), name: "forward")
      content((0, 0.5), $f$, anchor: "south")
    }),
    caption: [A bijective function]
  )
)

- For a function, $f: X arrow Y$, its inverse $f^(-1): Y arrow X$ undoes the operation $f$.
- So, $f^(-1): Y arrow X$ maps $y in Y$ to $x in X$ such that $f(x) = y$.

#figure(
    canvas(length: 2cm, {
    import draw: *

    set-style(
      stroke: (thickness: 0.5pt),
      content: (padding: 5pt)
    )

    circle((-1.5, 0), radius: (0.5, 0.75))
    circle((1.5, 0), radius: (0.5, 0.75))
    content((-1.5, 0), $x$)
    content((1.5, 0), $y$)
    content((-1.5, -1), $X$)
    content((1.5, -1), $Y$)
    bezier((-1.5, 0.1), (1.5, 0.1), (0, 1), mark: (end: "triangle", fill: black), name: "forward")
    bezier((1.5, -0.15), (-1.5, -0.15), (0, -1), mark: (end: "triangle", fill: black), name: "inverse")
    content((0, 0.6), $f$, anchor: "south")
    content((0, -0.6), $f^(-1)$, anchor: "north")
  }),
  caption: [Inverse of a function]
)

- A function is bijective $arrow.l.r.double$ A function is invertible.
- Domain and range need not be defined everywhere. E.g. $log(x)$ is not defined in $RR$ for $x < 0$.
- Functions can be nested or *composed* --- $f(g(x))$ denotes performing function $g$ on $x$, and then performing $f$ on the output of $g(x)$.
- Generally, the inner/right functions are evaluated before the outer/left.
- Function compositions are denoted as $(f compose g)(x)$ --- $g(x)$ is evalualted first, and then $f$ is performed on the output of $g(x)$.

== Logarithm <logarithm>

- Inverse of the exponentiation function, ie. if $b^a = x$, then $log_b (x)= a$.
- Log with base 10 --- $log_10 (x)$, is called common logarithm.
- Log with base $e$ --- $log_e (x)$, is called natural logarithm, and sometimes denoted as $ln (x)$.
- Log with base 2 --- $log_2 (x)$, is called binary logarithm, and is mostly prevalent in computer science.

=== Logarithmic Identities <logarithmic-identities>

- $log_b (x dot y) = log_b (x) + log_b (y)$, where $b, x, y > 0$ and $b eq.not 1$.
- $log_b (x / y) = log_b (x)- log_b (y)$
- $log_b (x^p) = p dot log_b (x)$
- $log_b (root(p, x))= frac(log_b (x), p)$
- $log(x + y) approx log(max(x, y))$
- $log_b (x) = frac(log_k (x), log_k (b))$
- $log_k (x) = log_k (b) dot log_b (x)$
- If $log_b (x) = y$, then $log_x (b) = 1 / y$
- For $y = log(x)$ where $x < 0$, then $y = log(abs(x)) + k dot i pi$, where $k = 2 n + 1, n in NN$. Can be #link("https://www.youtube.com/watch?v=SYxyemNSSm8")[derived] using Euler's formula.

== Trigonometry <trigonometry>

- Branch of mathematics concerned with relationships between angles and ratios of side lengths of right triangles.
- $sin(x)$ returns the ratio of the lengths of the side opposite that angle to the hypotenuse of a right triangle for a given angle $x$.
- $cos(x)$ returns the ratio of the lengths of the side adjacent that angle to the hypotenuse of a right triangle.

#figure(
  canvas(length: 3.5cm, {
    import draw: *
    import angle: *
  
    let varAngle = 60deg

    set-style(
      stroke: (thickness: 0.5pt),
      content: (padding: 5pt)
    )

    grid((-3, -2), (3, 2), step: 1, stroke: gray + 0.2pt)
    circle((0,0), radius: 1)
    line((-2, 0), (2.5, 0), mark: (end: "triangle", fill: black))
    line((0, -1.5), (0, 1.5), mark: (end: "triangle", fill: black))

    content((0, 1), anchor: "east", $1$)
    content((1, 0), anchor: "north", $1$)

    line((0, 0), (varAngle, 1), name: "hypotenuse")
    content(("hypotenuse.start", 50%, "hypotenuse.end"), "Normalized\nhypotenuse", anchor: "east")

    set-style(stroke: (thickness: 1.5pt))
    arc((0.2, 0), start: 0deg, stop: varAngle, radius: 0.2, name: "arc")
    content((varAngle / 2, 0.3), $alpha$)
    line((varAngle, 1), (calc.cos(varAngle), 0), name: "sin")
    content(("sin.start", 50%, "sin.end"), $sin(alpha)$, anchor: "west")
    line((0, 0), (calc.cos(varAngle), 0), name: "cos")
    content(("cos.start", 50%, "cos.end"), $cos(alpha)$, anchor: "north")
  }),
  caption: [Sine and cosine functions]
)

- $sin(x)$ and $cos(x)$ are defined as $f: RR arrow [-1, 1]$.
- Other trigonometric functions are defined as:
  - $tan(x)= frac(sin(x), cos(x))$
  - $cot(x)= frac(cos(x), sin(x))$
  - $sec(x)= frac(1, cos(x))$
  - $csc(x)= frac(1, sin(x))$
- If $sin(x)= y$, then $arcsin(y)= x$, ie. $arcsin()$ is the inverse of the $sin()$ function.
- $arccos()$ and $arctan()$ is the inverse of the $cos()$ and $tan()$ functions respectively.
- Trigonometric functions are usually defined in the context of a unit circle.

#figure(
  canvas(length: 3cm, {
    import draw: *
  
    let varAngle = 60deg

    set-style(
      stroke: (thickness: 0.5pt),
      content: (padding: 5pt)
    )

    grid((-3, -2), (3, 2), step: 1, stroke: gray + 0.2pt)
    circle((0,0), radius: 1)
    line((-2, 0), (2.5, 0), mark: (end: "triangle", fill: black))
    line((0, -1.5), (0, 1.5), mark: (end: "triangle", fill: black))

    content((0, 1), anchor: "east", $1$)
    content((0, -1), anchor: "east", $-1$)
    content((-1, 0), anchor: "north", $-1$)

    line((0, 0), (varAngle, 1))

    set-style(stroke: (thickness: 1.5pt))
    arc((0.2, 0), start: 0deg, stop: varAngle, radius: 0.2, name: "arc")
    content((varAngle / 2, 0.3), $alpha$)
    line((varAngle, 1), (calc.cos(varAngle), 0), name: "sin")
    content(("sin.start", 50%, "sin.end"), $sin(alpha)$, anchor: "west")
    line((0, 0), (calc.cos(varAngle), 0), name: "cos")
    content(("cos.start", 50%, "cos.end"), $cos(alpha)$, anchor: "north")
    line((varAngle, 1), (1 / calc.cos(varAngle), 0), name: "tan")
    content(("tan.start", 50%, "tan.end"), $tan(alpha)$, anchor: "south-west")
    line((varAngle, 1), (0, 1 / calc.sin(varAngle)), name: "cot")
    content(("cot.start", 50%, "cot.end"), $cot(alpha)$, anchor: "south-west")
    line((0, 0), (0, 1 / calc.sin(varAngle)), name: "csc")
    content(("csc.start", 50%, "csc.end"), $csc(alpha)$, anchor: "east")
    line((0, 0), (1 / calc.cos(varAngle), 0), name: "sec")
    content(("sec.start", 50%, "sec.end"), $sec(alpha)$, anchor: "north")
  }),
  caption: [Trignometric functions on the unit circle]
)

=== Trigonometric Identities <trigonometric-identities>

- $sin^2(theta) + cos^2(theta) = 1$
- $sin(theta) = plus.minus sqrt(1 - cos^2(theta))$
- $cos(theta) = plus.minus sqrt(1 - sin^2(theta))$
- $sin(theta plus.minus pi / 2) = plus.minus cos(theta)$
- $cos(theta plus.minus pi / 2) = minus.plus sin(theta)$
- $sin(-theta) = - sin(theta)$
- $cos(-theta) = + cos(theta)$
- $sin(alpha plus.minus beta) = sin(alpha) dot cos(beta) plus.minus cos(alpha) dot sin(beta)$
- $cos(alpha + beta) = sin(alpha) dot sin(beta) minus.plus cos(alpha) dot cos(beta)$
- $tan(theta plus.minus pi / 4) = frac(tan theta plus.minus 1, 1 minus.plus tan theta)$
- $cot(theta plus.minus pi / 4) = frac(cot theta minus.plus 1, 1 plus.minus cot theta)$
- $tan(alpha + beta) = frac(tan(alpha) plus.minus tan(beta), 1 minus.plus tan(alpha) dot tan(beta))$
