#import "@preview/cetz:0.3.4": canvas, draw, angle

#let math-font = "New Computer Modern Math"
#let code-font = "JetBrains Mono"

#let template(body) = {
  set text(font: math-font)
  show raw: set text(font: code-font)

  show figure: it => pad(
    top: 1em,
    bottom: 1em,
  )[#it]
  show figure.caption: it => pad(
    top: 0.5em,
  )[#it]

  body
}
