
/// Create a notice page.
#let notice(body, flipped: false) = {
  if not flipped {
    set page(paper: "a6", margin: 0pt, fill: white, background: image("ref.png"))

    let lump = block(width: 100%, height: 100%, fill: rgb("#01479d"))

    let logo = scale(130%, image("/assets/nanjing-metro-logo.png"))

    grid(
      columns: 1,
      rows: (0.7cm, 0.52cm, 1fr, 15pt),
      [],
      grid(
        columns: (25.5pt, 78pt, 1fr),
        rows: (100% / 6, 100% / 6, 1fr),
        lump, grid.cell(rowspan: 3, align: horizon + center, logo), lump,
        [], [], lump, lump,
      ),

      align(horizon + center, body),
      lump,
    )
  } else {
    set page(width: 640pt, height: 480pt, margin: 0pt, fill: white)

    let lump = block(width: 100%, height: 100%, fill: rgb("#01479d"))

    let logo = scale(116%, image("/assets/nanjing-metro-logo.png"))

    grid(
      columns: 1,
      rows: (22.5pt, 37.5pt, 1fr, 50pt),
      [],
      grid(
        columns: (50pt, 175pt, 1fr),
        rows: (30%, 20%, 50%),
        lump, grid.cell(rowspan: 3, align: horizon + center, logo), lump,
        [], [], lump, lump,
      ),

      align(horizon + center, body),
      lump,
    )
  }
}
