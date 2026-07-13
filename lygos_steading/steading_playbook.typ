#import "@preview/bookletic:0.3.2"
#import "../playbook_lib.typ": *
#import "../stonetop_style.typ": *
#import "lygosi_data.typ": *

#show: stonetop_style
#set grid(column-gutter: 1em, row-gutter: 1em)
#set columns(gutter: 1em)
#set block(spacing: 0.5em)

#let SPREADS = true
#let stop_state = state("stop", false)
#let rendered_improvements = counter("improvements")

#let steading_stats_page = [
  #block(clip: true, outset: 1em, [#title[#steading_name] #grunge])
  #v(1em)
  #grid(
    columns: (auto, auto, 1fr),
    rows: (6cm),
    column-gutter: 1em,
    row-gutter: 1em,
    grungebox(stroke: black, inset: 1em, radius: 1em)[
      #set align(center)
      = Fortunes
      Starts at +1
      #range_checklist(-1, 3)
    ],
    grungebox(height: 100%, stroke: black, inset: 1em, radius: 1em)[
      #set align(center)
      = Surplus
      Starts at +1
    ],
    grungebox(stroke: black, inset: 1em, radius: 1em)[
      = Size/Influence
      Starts at Neighborhood
      #checklist[
        - Sanctuary (\<50 people)
        - Neighborhood (150-350 people)
        - College (cross-neighborhood influence)
        - Institution (integration into/becoming the state)
      ]

      = Population
      Starts at +0
      #range_checklist(-1, 3)
    ],
  )
  #grid(
    columns: (3fr, 3fr, 2fr),
    column-gutter: 1em,
    row-gutter: 1em,
    grid.cell(colspan: 2)[
      #grungebox(stroke: black, inset: 1em, radius: 1em)[
        #grid(
          columns: (auto, auto),
          column-gutter: 1em,
          [
            = Prosperity
            #range_checklist(-1, 3)
          ],
          [
            = Resources
            - Hunting/trapping (fur, meat hides)
            - Distilling
            - Public well (filled with water)
            - Tradesfolk (midwife, potter, publican, smith, tanner, woodworker, weaver, etc)
            - Trade: With the rest of Lygos
            - A decent amount of copper and silver coins in most homes.
            - #fill_in_the_blank
            - #fill_in_the_blank
            - #fill_in_the_blank
            - #fill_in_the_blank
            - #fill_in_the_blank
          ]
      )]
    ],
    grid.cell(rowspan: 2)[
      #grungebox(stroke: black, inset: 1em, radius: 1em)[
        #set list(marker: $circle.stroked$)
        = Debilities
        - _diminished_, by injury/sickness/ doubt ( disadvantage to Deploy, Muster, or Pull Together)
        - _lacking_, due to shortages/hoarding /distrust (treat Prosperity as if it's 1 lower than it is)
        - _malcontent_, from fear/anger/despair ( Fortunes reset to +0 each season, not +1; folks need Persuading more often than usual)
      ]
    ],
    
    grid.cell(colspan: 2)[
      #grungebox(stroke: black, inset: 1em, radius: 1em)[
        = Defenses
            - Village militia
            - The Wall (stone)
            - 3 watchtowers
            - Spears & shields in most homes
            - Some bows, javelins, and swords
            - #fill_in_the_blank
            - #fill_in_the_blank
            - #fill_in_the_blank
            - #fill_in_the_blank
            - #fill_in_the_blank
            - #fill_in_the_blank
    ]]
  )
]

#let steading_map_page = [
  #grungebox(width: 100%, height: 50%, stroke: black, inset: 1em, radius: 1em)[
    Map goes here
  ]

  #grid(
    rows: (13em, auto),
    [
      #set enum(numbering: n => [
        #place(horizon + center, circle(width: 1.7em, fill: black))
        #set text(fill: white, weight: "bold")
        = #numbering("A", n)~
      ])
      #set par(leading: 0.75em)
      = Places of Interest
      #columns(3)[
        + The Statue
        + The Agora
        + The Bath
        + Public Well
        + The Crossroads
        + Council House
        + #fill_in_the_blank
        + #fill_in_the_blank
        + #fill_in_the_blank
        + #fill_in_the_blank
        + #fill_in_the_blank
        + #fill_in_the_blank
        + #fill_in_the_blank
        + #fill_in_the_blank
        + #fill_in_the_blank
        + #fill_in_the_blank
        + #fill_in_the_blank
        + #fill_in_the_blank
      ]
    ],
    grungebox(width: 100%, height: 5.5cm, stroke: black, inset: 1em, radius: 1em)[
      = Notes
      #set text(font: "Crafty Girls", size: 6.7pt)
      The Lygosian steading is based on the idea of the cultic community in ancient Greco-Roman cities.
      #v(-1em)
      #set quote(block: true)
      #quote(attribution: [Peachin, M. (Ed.). (2011). _The Oxford handbook of social relations in the Roman world_ (p. 542). Oxford University Press.])[
        If we move out of the familial community, we find that every individual belonged to one or another subdivision of the city, which again involved participation in a particular cultic group, or groups. He or she resided in a quarter ( _vicus_ ), perhaps in a housing complex ( _insula_ ), or beyond the city limits in one of the rural districts. Each of these subdivisions of the population had its own cultic identity. The quarter in Roman cities included places of collective cult worship, located at the crossroads ( _compita_ ), where the neighborhood community would meet on specific dates to perform sacrifices, and would even hold collective games in honor of their patron deities. These rites of the Compitalia are well known; and it is by participation in these cults that the inhabitants of a quarter acquired their local identity.
      ]
    ]
  )
]

#let steading_improvements = (
  [
    == Additional Housing
    It's getting crowded! We need more room to live.

    *Requires* either one of these:
    #checklist[
      - An _exceptional_ engineer/foreman, to design much roomier houses on the current land
      - Negotiating and/or bartering with city authorities/neighbors to construct outside of your territory
    ]

    And then:

    #check(count: 5)[pulling together 5 times, each requiring 1 season, 1 Surplus, and a wagonload of stone and other supplies (Value 2), to (re) build homes.]

    When you *_meet the requirements_*, increase Fortunes by 1 and add any new homes to the map.
    Henceforth, when when you consume Surplus in winter, consider Population to be 1 lower than it is.
  ],
  [
    == Temple
    The Crossroads shrine offers a common place for the community to gather for rituals and festivities, but it's hardly a proper temple.

    *Requires* all of the following, in order:
    #checklist[
      - A designated building site
      - A competent engineer/foreman
      - Furnishings, equipment, and material (Value 3)
      #check(count:2)[Pulling together 2 times, each requiring 1 season, 1 Surplus, and stone/supplies (Value 2)]
      - A small, devoted staff (priestesses, custodians, guards, etc.)
    ]

    When you *_meet the requirements_*, increase Fortunes by 1. Name the Temple, add it to both the Resources list and map.

    Henceforth, when *_the seasons change_*, whoever is friendliest rolls +Fortunes: *on a 10+*, ask the GM 3 questions about the wider world; *on a 7-9*, ask 1 question; *on a 6-*, ask 1 question, but the GM describes some trouble that stems from the temple or its guests.

    Once per season, when you *_expend 1 Surplus and bring folks together at the temple_* (to talk, to celebrate, to recuperate), clear one of the steading's debilities.
  ],
  [
    == Mandate of Heaven
    Few have heard of our cult. Yet.

    *Requires* any 3 of the following:#checklist[
    - Impressing a neighboring community
    - Saving many lives of a neighboring community
    - Impressing or conquering one of the barbarian communities in the North
    - Possessing a valuable treasure or relic in your temple
    - Hiring many minstrels to tell your tales (Value 3)
    ]
    When you *_meet the requirements_*, gain the following move:

    When you *_first meet someone from beyond #steading_name _*, roll +Fortunes: *on a 10+*, say what they've heard about you or #steading_name, and gain advantage on your next move against them; *on a 7-9*, say what they've heard; *on a 6-*, the GM decides what they've heard.
  ],
  [
    == Gymnasium
    We could use a place to exercise outdoors, practice fighting, and throw javelins and stuff without endangering our neighbors.
  ],
  [
    == Theatre
    #lorem(80)
  ],
  [
    == Amphiteatre
    We've got bread but we still need circuses!

    *Requires* all of the following:
    #checklist[
      - A building location in a wide open area
      - Furnishings, equipment, and a massive amount of stone (Value 4)
      - Pulling together and stuff
      - A regular source of gladiators (those barbarians to the North, perhaps?)
    ]

    When you *_meet and maintain the requirements_*, increase Prosperity by 1.
  ],
  [
    == Expanded Agora
    #lorem(80)
  ],
  [
    == Neighborhood Watch
    We have easy access to weapons, and we'll band together to defend ourselves if needed, but some full-time guards would make us all safer, no?

    #lorem(40)
  ],
  [
    == Brothel
    Our citizens often have unmet needs, and what better way to draw more people into our part of town?

    #lorem(60)
  ],
  [
    == Well-Trained Militia
    Lygosians, what is your profession? If we cultivate a citizen-soldier culture, we can better exert our influence.
  ],
  [
    == Better Walls
    #lorem(20)
  ]
)

#let more_improvements = (
  [
    == Greater Harvest
    We can exploit our status on the edge of the city and grow our own food, making the rest of the city more dependent on us.

    #lorem(30)

  ],
  [
    == Fancier Baths
    Our public bath works, but we can make a bathouse that will be the envy of all Lygos, with masseuses, musicians, water pourers, courtesans, etc.

    #lorem(40)
  ],
  [
    == Legion
    We're tired of being bullied by other Lygosian armies.
    The only thing that can stop a bad guy with an army is a good guy with an army.

    *Requires* College level or higher, and all of the following:
    #checklist[
      - A veteran warrior, able to command a legion.
    ]

    #lorem(30)
  ],
  [
    == Forum
    Our Council House is nice, but we're big enough now that we need a more organized way to mete out justice to wrongdoers and make decisions as a community.

    *Requires* College level or higher, and all of the following:
    #checklist[
      - A learned legal scholar, willing to act as magistrate
      - A nice open space outdoors so all can participate
    ]
    
    #lorem(30)

    #lorem(40)
  ],
  [
    == Acropolis
    *Requires* Temple, the Mandate of Heaven, and a size/influence of College or higher.

    All of Lygos will revolve around our grand citadel!

    *Requires*:#checklist[
    - A designated building site in an elevated location
    - An *exceptional* team of architects and engineers
    - Furnishings, equipment, and a massive amount of marble (Value 4)
    - Pulling together and stuff
    - A large staff
    ]

    When you *_meet the requirements_*, give the Acropolis a name and add it to the map and defenses.
    
    #lorem(40)
  ],
  [
    == Regime Change
    The ruler(s) of Lygos suck. Let's take our destiny into our own hands.

    *Requires* all of the following:
    #checklist[
      - Significant political instability in Lygos
      - Seizing the royal palace
      - Neutralization or support of the patricians of #names.cloud-district
      - Consolidation of political power in #steading_name
    ]

    As long as you *_retain a monopoly on violence in Lygos_*, you don't have to give up any of your surplus as taxes when *_Seasons Change_*.
  ],
)

#let format_improvements(improvements, lab: "improvement") = {
  for (idx, improvement) in improvements.enumerate() {
    edge_and_count_aware(idx, lab, checkblock(improvement), stop_state: stop_state)
  }
  stop_state.update(false)
}

#let veils_and_improvements = [
  #grid(
    columns: (1fr, 1fr),
    [
      #big_line(vspace: -1em)
      = Content
      #thin_line

      Keep this in sync with the GM playbook. Review it at the start of each session.

      When *_anyone calls "time out,"_* play stops. Step out of character, check in with each other, maybe take a break. Discuss what's wrong, player-to-player.

      If *_content was included that shouldn't have been_*, acknowledge the mistake, fix the fiction, and move on.

      If *_someone realizes they need content to be excluded, veiled, or handled in a particular way_*, then update the lists. Clarify specifics, now or later, but don't ask reasons. Fix the fiction. Check in with the player(s). When everyone is ready, move on.

      #thin_line
      = Excluded content
      (Not part of the game, on-camera or off)

      #fill_in_the_blanks(7)

      #thin_line

      = Veiled content
      (Part of the fiction, but only off-camera)

      #fill_in_the_blanks(7)

      #thin_line
      = Special handling
      #fill_in_the_blanks(7)
    ],
    [
      #biggest_line(vspace: -1em, multiplier: 0.5)
      = Steading Improvements
      Known, available improvements you can make to Stonetop. The GM may present others.
      #format_improvements(steading_improvements)
    ]
  )
]

#let improvements_pages = (
  [
    #big_line() <hydaelyn>
    #columns(2, 
      format_improvements(steading_improvements)
    )
  ],
  [
    #biggest_line(vspace: -1em)
    = More steading improvements
    Known, available improvements you can make to #steading_name. The GM may present others in the course of play.
    #thin_line <hydaelyn>
    #columns(2)[
      #format_improvements(more_improvements, lab: "more_improvement")
    ]
  ],
  [
    #big_line() <hydaelyn>
    #columns(2)[
      #format_improvements(more_improvements, lab: "more_improvement")
    ]
  ],
)

#let cover_page = [#set align(center + horizon); #grungetext[#title[#steading_name]]]
#let back_page = [Back Page]

#let contents = (
  steading_stats_page,
  steading_map_page,
  veils_and_improvements,
  ..improvements_pages,
)

#if not SPREADS {
  contents = (cover_page,) + contents + (back_page,)
}

#set page(flipped: true, paper: "us-letter", margin: (top: 0.25in, bottom: 0.25in, left: 0.25in, right: 0.25in))

#bookletic.sig(
  page-margin-binding: 0.25in,
  page-border: none,
  draft: SPREADS,
  pad-content: 10pt,
  contents: contents,
)
