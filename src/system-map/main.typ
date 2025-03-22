#import "../deps.typ": radishom
#import radishom: *

#import "background.typ"
#import "components.typ": *
#import "config.typ"
#import "fonts.typ"
#import "legend.typ": *
#import "radish.typ": nj-radish


#set page(width: auto, height: auto, margin: 0pt)

#let fg = {
  if config.show-title { (title,) }
  if config.show-legend { (legend,) }
}

#radishom(
  nj-radish,
  backend: "std",
  unit-length: 2.0cm,
  grid: none,
  foreground: fg,
  background-color: background.land-fill,
  background: background.all,
  line-stroker: line-stroke,
  label-renderer: if config.show-labels { label-renderer },
  station-plugins: (draw-line-logo,),
  draw-disabled: config.show-disabled,
)

#place(bottom + right)[
  #set text(font: fonts.zh)
  #show: block.with(inset: 1em)
  #set par(spacing: 0.5em)
  #text(gray)[
    本图线路使用 Typst #sys.version 制作

    仅供学习交流，未经允许不得使用

    https://github.com/QuadnucYard/radish-metro
  ]
]
