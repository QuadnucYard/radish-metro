#import "../deps.typ": radishom
#import radishom: *
#import core: vec

#import "config.typ"
#import "fonts.typ"
#import "logo.typ": line-logo

#import config: desc-date

#let (N, S, W, E, NW, NE, SW, SE) = dirs


#let line-stroke(line, sec, thickness: 6pt) = {
  let is-operating = (
    "open-date" in line.metadata
      and line.metadata.open-date != none
      and line.metadata.open-date <= desc-date
      and (
        "open-date" not in sec.metadata
          or sec.metadata.open-date == auto
          or sec.metadata.open-date != none and sec.metadata.open-date <= desc-date
      )
  )
  let is-constructed = (
    "start-date" in line.metadata
      and line.metadata.start-date != none
      and line.metadata.start-date <= desc-date
      and (
        "start-date" not in sec.metadata
          or sec.metadata.start-date == auto
          or sec.metadata.start-date != none and sec.metadata.start-date <= desc-date
      )
  )
  let paint = if is-constructed or not config.show-started-only {
    line.color
  } else {
    gray
  }
  let dash = if is-constructed and is-operating or not config.show-opened-only {
    none
  } else {
    (12pt, 4pt)
  }
  stroke(
    paint: paint,
    thickness: thickness,
    // cap: "round",
    join: "round",
    dash: dash,
  )
}

#let label-renderer(station) = {
  show: block.with(inset: (x: 0.5em, y: 0.5em))
  set par(spacing: 0.2em)
  set smartquote(enabled: false)

  [
    #text(font: fonts.zh, station.name)

    #text(size: 0.45em, font: fonts.en, station.metadata.at(0))
  ]
}

#let draw-line-logo(line, station) = {
  let metadata = station.metadata.named()
  if "terminal" in station and "logo-anchor" in metadata and metadata.logo-anchor != none {
    let logo-pos = station.pos
    let logo-offset = metadata.at("logo-offset", default: none)
    if logo-offset != none {
      logo-pos = vec.add(logo-pos, logo-offset)
    }
    let payload = (
      body: box(inset: 1em, line-logo(line.id, line.color)),
      pos: logo-pos,
      anchor: metadata.logo-anchor,
    )
    payload
  }
}
