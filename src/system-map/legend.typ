#import "../deps.typ": radishom
#import radishom: *

#import "config.typ"
#import "fonts.typ"
#import "logo.typ": line-logo
#import "radish.typ": nj-radish


#let (N, S, W, E, NW, NE, SW, SE) = dirs

// Only well-displayed in full map
#let title-body = {
  set text(font: fonts.zh, size: 0.8em)
  set align(center)

  text(size: 12em, weight: "bold")[南京地铁运营线路图]
  v(-12em)
  text(font: fonts.en, size: 8em)[Nanjing Metro System Map]
  v(-6em)
  text(size: 6em)[（实际走向拓扑图）]
}

#let legend-body = {
  let logo = image("/assets/nanjing-metro-logo.svg")

  let primary-color = rgb("112653")
  set text(font: fonts.zh, fill: primary-color)

  let header(body) = {
    block(height: 1.8em)[
      #std.polygon(
        fill: primary-color,
        (0%, 0%),
        (0%, 100%),
        (100% - 0.5em, 100%),
        (100%, 100% - 0.5em),
        (100%, 0%),
      )
      #place(center + horizon)[
        #text(0.8em, white, body)
      ]
    ]
  }

  show: block.with(width: 12em)
  set block(spacing: 0em)
  set align(center)

  // header
  block(width: 100%, height: 4.5em, fill: primary-color)

  show: block.with(
    width: 100%,
    fill: rgb("#f2fafd"),
    inset: (top: 0.5em, bottom: 2em, x: 2em),
  )

  v(-2.5em)

  scale(25%, reflow: true, logo)

  v(0.6em)

  [
    #text(size: 1.2em)[南京地铁]
    #v(-1.1em)
    #text(size: 0.55em)[NANJING METRO]
  ]

  v(1.5em)

  [
    #circle(radius: 1.5em, stroke: primary-color + 1.5pt)[
      #set align(horizon)
      #text(1.2em)[Map]
    ]
    #v(0.3em)
    #stack(
      dir: ltr,
      rotate(90deg, reflow: true)[
        #text(0.75em)[System Map]
      ],
      h(0.5em),
      block(width: 1em)[
        #set par(leading: 0.25em)
        #text(1.5em)[运营线路图]
      ],
    )
  ]

  v(2em)

  header[地铁线路号]

  v(1em)

  block(inset: (x: 0.5em))[
    #grid(
      columns: 3,
      column-gutter: (1.5em, 0.2em),
      row-gutter: 0.3em,
      align: center + horizon,
      ..for line in nj-radish.lines.values() {
        if line.id.len() > 2 or line.disabled and not config.show-disabled { continue }
        (
          {
            std.line(start: (0%, 0em), end: (100%, 0em), stroke: (paint: line.color, thickness: 0.4em, cap: "round"))
            place(center + horizon, circle(radius: 0.15em, fill: white, stroke: none))
          },
          text(0.35em, line-logo(line.id, line.color)),
          text(0.75em, black)[号线],
        )
      }
    )
  ]

  v(2em)

  header[图#h(3em)标]

  v(1em)

  {
    let std-comp = components.use("std")

    set text(0.75em, black)
    grid(
      columns: 2,
      column-gutter: 2em,
      row-gutter: 0.5em,
      align: (horizon + center, horizon + left),
      scale(80%, reflow: true, std-comp.circle-marker), [换乘枢纽],
      std-comp.capsule-marker, [换乘站],
    )
  }
}


#let title = (pos: (9, 20), body: title-body)

#let legend = (pos: (25, -25), anchor: SW, body: scale(200%, reflow: true, legend-body))
