#import "../stonetop_style.typ": stonetop_style
#import "../playbook_lib.typ": *

#show: stonetop_style

#set page(flipped: false, width: 4in, height: 6in, margin: (top: 0.25in, bottom: 0.25in, left: 0.4in, right: 0.4in))

#make_minor_arcanum(
  name: [A fire clay tablet],
  arcanum_tags: [#inv],
  img: "arcana/huo_yao.png",

)[#lorem(50)]
/*
#set par(leading: 0.65em, spacing: 0.95em, justify: false)
#set block(spacing: 1em)
#set text(size: 10pt)

#show heading.where(level: 1): set align(center)
#show heading.where(level: 1): set text(size: 14pt)

#let decoration = [#set text(size: 4pt, baseline: -0.25em); #emoji.fire]
#let arcanum_tags = [#inv]

#set par(leading: 0.65em, spacing: 1em, justify: false)
#set block(spacing: 1em)


#place(center+horizon, image("minor_arcana_frame.png", width: 100%))
#place(top+center, 
  box(fill: white, outset: 0.5em)[#set text(size: 7pt, font: "Avara") 
  #decoration MINOR ARCANUM #decoration
  ],
  dy: 0.5em,
)

#place(bottom+center, circle(fill: white, radius: 1em, stroke: black+0.5pt)[])
#place(bottom+center, [#set text(size: 5pt, font: "Avara"); FRONT], dy: -2.5em)

#block(inset: (top: 3em, rest: 2.5em))[
  #align(center)[#pad(x: 0.3em)[
      = A Fire Clay Tablet
      _#(arcanum_tags)_
    ]
  ]

  #align(center)[#image("huo_yao.png", width: 100%)]

  A small tablet that would be unremarkable if not for its sturdy, time-tested construction.
  Its pale beige surface suggests it was crafted from fire clay, and the runes etched onto it are of Maker origin.
  Clearly, it must be a relic of the Forge Lords.
  You can *learn a recipe for fire medicine* from the tablet, but you must...

  #checklist[
    - ...translate it or find someone to help you do so.
    - ...find a source of brimstone.
    - ...find a source of saltpeter.
    - ...risk burning yourself or hurting yourself in an explosion when mixing it for the first time.
  ]
]
*/