#import "../deps.typ": radishom
#import radishom: *

#import "lines.typ": lines


#let nj-metro = metro(
  lines,
  features: (
    "phase-1": ("L:1", "L:2", "L:3", "L:4", "L:10", "L:S1", "L:S8"),
    "phase-2": (
      "L1-N",
      "L2-W",
      "L:5",
      "L:6",
      "L:7",
      "L:9",
      "L:11",
      "L:S2",
      "L:S3",
      "L:S4",
      "L:S5",
      "L:S6",
      "L:S7",
      "L:S9",
    ),
    "phase-3": ("L2-EE",),
    "built": ("phase-1", "L1-N", "L2-W", "L:5", "L:6", "L:7", "L7-full", "L:S3", "L:S4", "L:S6", "L:S7", "L:S9"),
    "progress": ("L:6", "L:9", "L:11"),
    "futures": (),
  ),
  default-features: ("phase-1", "phase-2"),
)
