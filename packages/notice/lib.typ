
/// Create a notice page.
#let notice(body) = {
  set page(width: 640pt, height: 480pt, margin: 0pt, fill: white)

  let lump = block(width: 100%, height: 100%, fill: rgb("#01479d"))

  let logo = scale(116%, image("/assets/nanjing-metro-logo.png"))

  grid(
    columns: 1,
    rows: (22.5pt, 37.5pt, 1fr, 50pt),
    [],
    grid(
      columns: (50pt, 175pt, 1fr),
      rows: (37.5pt * 30%, 37.5pt * 20%, 37.5pt * 50%),
      lump, grid.cell(rowspan: 3, align: horizon + center, logo), lump,
      [], [], lump, lump,
    ),

    align(horizon + center, body),
    lump,
  )
}
