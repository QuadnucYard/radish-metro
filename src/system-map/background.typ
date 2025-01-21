#import "../deps.typ": radishom
#import radishom: *

#import "fonts.typ"


#let land-fill = rgb("#f6f6f6")
#let water-fill = rgb("#c3ddf4")
#let water-stroke = stroke(paint: rgb("#c5d6ea"), thickness: 2pt, cap: "round", join: "round")
#let mountain-fill = rgb("#bfe0d7")

#let bg-label(name, name-en, text-size: 1em) = {
  show: place.with(center + horizon)
  set par(spacing: 0.25em)
  set align(center)
  set text(fill: white, size: text-size)

  text(font: fonts.zh, 0.8em, name)
  parbreak()
  text(font: fonts.en, 0.3em, name-en)
}

#let polygon = polygon.with(corner-radius: 0.25)

#let changjiang = polygon(
  fill: water-fill,
  stroke: water-stroke,
  label: bg-label([长江], [CHANGJIANG], text-size: 1.2em),
  label-pos: (9.0, 12.5),
  (-18, -26), // bottom-right
  (-18, -14),
  (-11.0, -7.),
  (-10.5, -7.),
  (-7.5, -4.0),
  (-7.5, -1.0),
  (-5.5, 1),
  (-5.5, 6),
  (-2.5, 9),
  (-1.5, 9),
  (1., 11.5),
  (6.5, 11.5),
  (7.0, 12.0),
  (20, 12.0),
  (21, 13),
  (30, 13), // bottom-right
  (30, 14), // top-right
  (20.5, 14),
  (19.5, 13),
  (8, 13),
  (8, 17),
  (-2, 17),
  (-2, 11.5),
  (-10, 3.5),
  (-10, 2),
  (-13, -1),
  (-13, -6),
  (-20, -13),
  (-20, -26), // bottom-left
)

#let baguazhou = polygon(
  fill: land-fill,
  stroke: water-stroke,
  (7., 13.5), // bottom-right
  (7., 16.),
  (-1., 16.),
  (-1., 11.75),
  (-2.25, 10.5),
  (-1.5, 10.5),
  (0.5, 12.5),
  (6, 12.5), // bottom-left
)
#let jiangxinzhou = polygon(
  fill: land-fill,
  stroke: water-stroke,
  (-6, 4.0), // top-right
  (-6, 1.25),
  (-8.0, -0.75),
  (-8.0, -3.75),
  (-10.75, -6.5), // bottom-right
  (-11, -6.5), // bottom-left
  (-11, -1),
  (-7.5, 2.5),
)
#let qianzhou = polygon(
  fill: land-fill,
  stroke: water-stroke,
  (-6, 5), // bottom-right
  (-6, 6),
  (-8, 4),
  (-8, 3),
)
#let xuanwuhu = polygon(
  fill: water-fill,
  stroke: water-stroke,
  label: bg-label([玄武湖], [XUANWU LAKE]),
  label-pos: (1.25, 3.5),
  (0.75, 2.5), // bottom-left
  (2.5, 2.5),
  (2.5, 3.25),
  (1.75, 4.0),
  (1.75, 4.25),
  (0.75, 5.25),
  (0.25, 4.75),
  (0.25, 3.0),
)
#let shijiuhu = polygon(
  fill: water-fill,
  stroke: water-stroke,
  label: bg-label([石臼湖], [SHIJIU LAKE]),
  label-pos: (0.1, -23),
  (2.0, -22.25), // top-right
  (-1.5, -22.25),
  (-1.5, -23.75),
  (2.0, -23.75), // bottom-right
)

#let rw = 1 / 16
#let rw2 = rw / 2
#let qinhuaihe = polygon(
  fill: water-fill,
  stroke: water-stroke,
  corner-radius: 1 / 8,
  // start from sanchahe
  (-5.5, 3.5 - rw),
  (-4.0 - rw, 3.5 - rw),
  (-4.0 - rw, 1.5 - rw2),
  (-1.5 - rw, -1.0 - rw2),
  (-1.5 - rw, -3.5 - rw),
  (1.75 + rw, -3.5 - rw),
  (1.75 + rw, -3.25 - rw),
  (5.5 - rw, -3.25 - rw),
  (5.5 - rw, -7.75 + rw2),
  (3.75 - rw, -9.25 + rw2),
  (3.75 - rw, -9.75 + rw), // turn near hedingqiao
  (0.75 + rw2, -9.75 + rw),
  (0.0 + rw2, -9.0 + rw),
  (-5.5 + rw2, -9.0 + rw), // turn near youfangqiao
  (-6.0 + rw2, -8.5 + rw),
  (-10.5 + rw2, -8.5 + rw),
  (-11.5 + rw2, -7.5 + rw),
  // at yuzui
  (-11.5 - rw2, -7.5 - rw),
  (-10.5 - rw2, -8.5 - rw),
  (-6.0 - rw2, -8.5 - rw), // turn near youfangqiao
  (-5.5 - rw2, -9.0 - rw),
  (0.0 - rw2, -9.0 - rw),
  (0.75 - rw2, -9.75 - rw),
  (3.75 - rw, -9.75 - rw),
  (3.75 - rw, -14.0 - rw2),
  (4.25 - rw, -14.5 - rw2),
  (4.25 - rw, -18.0),
  // back from shangqinhuai
  (4.25 + rw, -18.0),
  (4.25 + rw, -14.5 + rw2),
  (3.75 + rw, -14.0 + rw2),
  (3.75 + rw, -9.25 - rw2),
  (5.5 + rw, -7.75 - rw2),
  (5.5 + rw, -3.25 + rw),
  (1.75 - rw, -3.25 + rw), // turn near wudingmen
  (1.75 - rw, -3.5 + rw),
  (-1.5 + rw, -3.5 + rw),
  (-1.5 + rw, -1.0 + rw2),
  (-4.0 + rw, 1.5 + rw2),
  (-4.0 + rw, 3.5 + rw),
  (-5.5, 3.5 + rw),
  // back to sanchahe
)

#let zijinshan = polygon(
  fill: mountain-fill,
  label: bg-label([紫金山], [ZIJIN MOUNTAIN]),
  label-pos: (6.75, 2.5),
  (3.75, 3.0), // top-left
  (5.5, 4.75),
  (8.0, 4.75),
  (9.75, 3.0),
  (9.75, 1.5),
  (8.5, 0.25),
  (5.0, 0.25),
  (3.75, 1.5), // bottom-left
)

#let all = (changjiang, baguazhou, jiangxinzhou, qianzhou, xuanwuhu, shijiuhu, qinhuaihe, zijinshan)
