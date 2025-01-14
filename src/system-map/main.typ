#import "../deps.typ": radishom
#import radishom: *

#import "background.typ"
#import "components.typ": *
#import "fonts.typ"
#import "radish.typ": nj-radish


#set page(width: auto, height: auto, margin: 0pt)

#radishom(
  nj-radish,
  backend: "std",
  unit-length: 2.0cm,
  grid: none,
  foreground: (title, legend),
  background-color: background.land-fill,
  background: background.all,
  label-renderer: label-renderer,
  station-plugins: (draw-line-logo,),
  draw-disabled: true,
)

#place(bottom + right)[
  #set text(font: fonts.zh)
  #show: block.with(inset: 1em)
  #set par(spacing: 0.5em)
  #text(gray)[
    本图线路使用 Typst #sys.version 制作

    仅供学习交流，未经允许不得使用

    https://github.com/QuadnucYard/radishom
  ]
]
