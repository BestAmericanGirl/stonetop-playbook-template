#import "playbook_data_blessed.typ": *
#import "@preview/bookletic:0.3.2"
#import "playbook_lib.typ": *
#import "stonetop_style.typ": *

#show: stonetop_style

// Statbox with handwritten content
#let statbox(body, above: "", below: "") = block(outset: 0.5em, clip: true, box(radius: (rest: 8pt), stroke: (black + 2pt), width: 100%, height: 5em, inset: 5pt)[
  #set text(weight: "bold", size: 7.5pt)
  #grunge
  // #block(height: 110%, clip: true, vgrunge)
  #if above != "" {place(top + center, box(fill: white, outset: (left: 1.5pt, right: 1.5pt))[#above], dy: -1em)}

  #align(center + horizon)[#set text(font: style_options.font_handwriting, size: 18pt); #body]

  #if below != "" {place(bottom + center, box(fill: white, outset: 1.5pt)[#below], dy: 1em)}
])

#let debility(body) = $ underbrace(#box(width: 100%, height: 1em)[#place(bottom + center, circle(radius: 2pt, fill: white, stroke: black), dy: 4pt)], italic(body)) $

#let intro_step(num, body) = block()[
  #thin_line
  #if introductions.at(num, default: none) != none {
    body = introductions.at(num)
  }
  #stack(dir: ltr, spacing: 0.5em,
    [#v(-0.75em) #box[ #image("img/intro_bg.svg") #place(top + center, text(fill: white)[= #num], dy: 2pt)]],
    body
  )
]

#let page1 = [
  /* Headers */
  #grid(
    columns: (6.2fr, 1fr),
    rows: (auto, auto),
    row-gutter: 1em,
    align: top,
    gutter: (0pt),
    block(clip: true, [#title[#playbook.title] #grunge]),
    grid.cell(rowspan: 2, image(playbook.image_path, width: 100%,)),
    text[_ #playbook.description _],
  )

  #big_line()

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1em,
    [
      /* Backgrounds */
      #choose_heading[Background]
      #for background in backgrounds {
        checkable_block(background.name, background.body, condense: true)
      }
    ],
    /* Instincts */
    [
      #choose_heading[Instinct]
      #for instinct in instincts {
        checkable_block(instinct.name, instinct.body, condense: true)
      }

      #big_line(vspace: -1em)
      = Appearance
      Choose 1 on each line, or make something up:

      #choose_one_each_line(..appearances)

      #big_line(vspace: -1em)
      = Place of origin and name
      Stonetop is your home, or close enough, but where are you (or your family) from originally? Pick 1 and a name to match (or make up something similar).

      #checklist[#origins_and_names]

      #block(clip: true, outset: 0.5em, box(radius: (rest: 4pt), stroke: (black + 2pt), width: 100%, inset: 5pt)[
        #grunge
        I am\
        called...
      ])
    ]
  )
]

#let page2 = [
  #show math.equation: set text(size: 10pt)
  #big_line(vspace: -1em)
  #choose_heading(desc: [Assign these scores: #playbook.stat_scores. When a debility is marked, you roll with disadvantage.])[Stats]

  #grid(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    rows: (auto, auto),
    column-gutter: 0.5em,
    ..stats.pairs().map(((stat, st)) => statbox(above: stat, below: st)[]),
    grid.cell(colspan: 2)[#debility("weakened")],
    grid.cell(colspan: 2)[#debility("dazed")],
    grid.cell(colspan: 2)[#debility("miserable")]
  )
  #grid(
    columns: (1fr, 2fr, 1fr, 2fr, 1fr),
    column-gutter: 0.5em,
    statbox(below: "Damage")[#playbook.damage_die],
    statbox(below: [HP (max #playbook.max_hp)])[],
    statbox(below: "Armor")[],
    statbox(below: "XP")[],
    statbox(below: "Level")[]
  )

  #v(1em)
  #biggest_line(vspace: -1em)

  #choose_heading(desc: [You start with #playbook.starting_moves.])[Moves]
  #thin_line
  #columns(2, gutter: 1em)[
    #set text(size: 8pt)
    #for (idx, move) in moves.slice(0, format_options.num_page1_moves).enumerate() {
      [#format_move(move, is_move: true)]
    }
  ]
]

#let page3 = [
  #set text(size: 8pt)
  #stack(dir: ttb, 
  block(height: 25.6%)[#big_line(vspace: -1em)
  #choose_heading(desc: [(#playbook.num_special_possessions)])[Special Possessions]

  #thin_line
  /* Special Possessions */
  #columns(2, gutter: 1em)[
    #if default_special_possessions != none {
      checklist(default_special_possessions, checked: true, condense: true)
    }
    #checklist(special_possessions, condense: true)
  ]
  ],
  v(1em),
  columns(2, gutter: 1em)[
    #for move in moves.slice(format_options.num_page1_moves) {
      format_move(move, is_move: true)
    }
  ])
]

#let page4 = [
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1em,
    [
      #for section in character_question_sections {
        big_line(vspace: -1em)
        [= #section.name]
        section.body
      }
    ],
    [
      #set block(spacing: 0.75em)
      #big_line(vspace: -1em)
      = Introductions
      Wait here for everyone else. When everyone's ready, take turns introducing your characters. When *_someone reveals something and you want to know more_*, ask them about it. When *_someone asks you a question_*, answer it truthfully.

      #intro_step("1")[On your first turn, *introduce yourself* by name, pronouns, background, origin, and appearance.]

      #intro_step("2")[On your second turn, *describe your special possessions* and how you contribute to the village (beyond working the fields).]
      #intro_step("3")[]
      #intro_step("4")[]
      #intro_step("5")[Go around again. Answer another question from 4, or pass. When everyone has passed, go on.]
      #intro_step("6")[]
      #intro_step("7")[Go around again. Ask another question from 6, or pass. When everyone has passed, go on.]
      #intro_step("8")[
        Add your home to the steading playbook.\
        When everyone is done, let spring break forth!
      ]
    ]
  )
]

#set page(flipped: true, paper: "us-letter", margin: (top: 0.25in, bottom: 0.25in, left: 0.25in, right: 0.25in))
#bookletic.sig(
  page-margin-binding: 0.25in,
  page-border: none,
  draft: false,
  pad-content: 10pt,
  contents: (
    page1,
    page2,
    page3,
    page4,
  ),
)

