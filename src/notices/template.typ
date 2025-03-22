#import "/packages/notice/lib.typ": notice


#let operation-notice(line-id, section-left, section-right, kind: "suspend") = {
  import "/src/system-map/fonts.typ"
  import "/src/system-map/lines.typ": lines
  import "/src/system-map/logo.typ": line-logo


  let bilin(zh, en, align: center) = {
    show: move.with(dy: 0.25em)
    set std.align(align)
    [#zh #v(0.3em, weak: true) #text(size: 0.4em, en)]
  }

  show: notice.with(flipped: true)

  set text(font: "Microsoft YaHei")

  let line = lines.find(line => line.id == line-id)
  let station-left = line.stations.at(line.station-indexer.at(section-left))
  let station-right = line.stations.at(line.station-indexer.at(section-right))

  let logo = line-logo(line.id, line.color, text-color: if line.id == "5" { rgb("#003A70") } else { white })

  stack(
    dir: ltr,
    text(24pt, logo),
    h(4pt),
    text(size: 36pt, bilin(align: left)[号线][#h(0.2em)Line #line.id]),
    h(45pt),
    text(size: 36pt, bilin(station-left.name, station-left.metadata.at(0))),
    h(12pt),
    text(size: 36pt, sym.arrows.lr),
    h(12pt),
    text(size: 36pt, bilin(station-right.name, station-right.metadata.at(0))),
  )
  v(48pt, weak: true)
  text(
    72pt,
    if kind == "suspend" {
      bilin[暂停运营][Suspend operations]
    } else if kind == "open" {
      bilin[正式开通][Officially opened]
    },
  )
}
