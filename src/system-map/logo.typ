#import "fonts.typ"


#let line-logo(num, color, text-color: white) = {
  set text(size: if "-" in num { 2.5em } else { 3em })
  show: box.with(width: 0.5em * num.len(), height: 1.0em, fill: color)
  set align(center + horizon)
  show: box.with(width: 1em * num.len(), height: 100%)
  show: scale.with(x: 85%, y: 100%, reflow: true)
  show "S": box(scale(x: 80%, y: 95%, reflow: true, text(baseline: -0.0em)[S]))
  set text(font: fonts.logo, fill: text-color, baseline: -0.1em)
  num
}
