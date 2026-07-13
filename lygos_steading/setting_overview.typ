#import "@preview/bookletic:0.3.2"
#import "../playbook_lib.typ": *
#import "../stonetop_style.typ": *
#import "lygosi_data.typ": *

#show: stonetop_style
#set grid(column-gutter: 1em, row-gutter: 1em)
#set columns(gutter: 1em)
#set block(spacing: 0.5em)

#let placeholder_circle = circle(stroke: black, radius: 2em)
#let character_overview(body, img: none) = (
  if (img == none) {placeholder_circle} else {image(img)},
  body,
)

#let setting_overview = (
  [
    #set text(size: 9pt)
    #biggest_line()
    #grungetext[#title[Setting Overview]]
    #v(1em)
    #columns(2)[
    = The Premise

    You play the heroes of *#steading_name*, a cultic community on the edge of Lygos.
    Adventures focus on dealing with threats to the neighborhood, seizing opportunities for the neighborhood, or pursuing personal goals.
    Weeks or months might pass between adventures.

    = The Neighborhood Itself

    *...is home to around 300 folks.* It's a nice place, though poor.
    People look out for each other here, more than in the rest of Lygos, at least.

    *...is built around a massive bronze statue of #names.deity*, carved with faint runes.
    Nobody remembers who built it.

    *...stands at the northern edge of the city.*
    Folks sometimes leave the safety of the walls to hunt and trap, but the North is a barbarian land of magic and mystery, best avoided by civilized folk.

    = Neighbors

    *#names.gordins-delve Quarter* is the neighborhood where the brigands, ruffians, and thieves tend to gather, though nowhere in the city is truly "safe".
    // Violence reigns as competing bosses, gangs, and other unsavory folks vie for power.

    *#names.cloud-district* is where the wealthiest and most influential live.
    // The ruler(s) of Lygos live here in an opulent palace, attended by a vast army of servants.
    We don't tend to get up there very often; private companies or even armies guard their sprawling estates.

    *#names.sparta* is the closest city-state to Lygos, several days to the southeast; stoic, grim, and unwelcoming.

    *#names.carthage* is a sizable city across the Sea to our south.

    *#names.persia* is a city to the east, across a narrow land bridge, a glittering jewel of the #names.achaemenid, an empire unimaginably vast even to us civilized folk.

    Horrid little *barbarians* also lurk to the North.
    They've grown bolder and more numerous lately.

    #colbreak()
    = Lygos
    Our neighborhood is part of *Lygos*, a multi-ethnic city-state defined by the contrast between the decadent wealthy and the downtrodden poor.

    = Wait, we're a cult?
    Everyone's in a cult!
    Each community in Lygos is based around their own set of religious beliefs and rituals.
    Inside a big city, religion unifies your neighborhood and creates a strong sense of community across family lines.

    Our goal is to play Stonetop in a more urban setting, without sacrificing the sense of community or falling back on tropes based on our modern, more isolated experiences of urban living.
    Centering the cultic community helps to *portray a rich and mysterious world*.

    = Other things of note
    *The PCs are all human.*
    Strange peoples are known of but poorly understood.

    *Magic is not common, nor easy, nor safe.*
    It is studied by scholars and antiquarians, and can be borrowed or wrested from those who follow the Old Ways in the North.
    But it is not to be trifled with.

    *Iron* is the most common metal. Good *steel* is not hard to find, but can be expensive.
    *Bronze* tools and weapons are uncommon, old-fashioned and dripping with superstition

    = Compared to Stonetop
    #steading_name is a pretty different experience despite trying to roughly map onto vanilla Stonetop.
    Things will scale harder/faster here than in a remote rural village.
    Steading wide actions like *Muster* or *Deploy* may require more to achieve, but they'll also have more impact with access to a wider community.

    
    Legs of an intra-city expedition for *Chart a Course* may involve more political intrigue, trying to gain access, etc than navigating the wilderness.
  ]],
  [
    #set text(size: 9pt)
    #big_line()
    #grid(columns: (1fr, 1fr),
    [
      = The Characters
      You'll play a local hero, someone with deep ties to #steading_name.
      You might be...
      #v(1em)
      #grid(columns: 2,
        align: horizon,
        ..character_overview()[
          *The Witch* (medium complexity): wandering magician, speaker to spirits.
          Studier of the arcane and esoteric.
          Distrusted and viewed with suspicion by high society.
        ],
        ..character_overview()[
          *The Fox* (low complexity): clever, quick, and skillfull.
          Not above bending the rules or fighting dirty.
          Can be quite the charmer, too.
        ],
        ..character_overview()[
          *The Hoplite* (low/medium complexity): not just a violet individual---_our_ violent individual.
          A champion, yes, but a bit of a liability, too.
        ],
        ..character_overview()[
          *The Judge* (low complexity): settler of disputes, chronicler, and divine bulwark against chaos.
          Insightful, tough, not necessarily persuasive.
        ],
        ..character_overview()[
          *The Lightbearer* (high complexity): invokes divine power via flame and candle.
          Beacon of hope, charity, and mercy.
          Fiery foe of the dark.
        ],
        ..character_overview()[
          *The Marshal* (high complexity): leads the neighborhood's militia, plus a crew of followers.
          Makes choices about who lives and who dies.
        ],
        ..character_overview()[
          *The Adventurer* (low complexity): a wandering murder hobo, the one you want with you when you travel.
          A resourceful guide.
        ],
        ..character_overview()[
          *The Antiquarian* (high complexity): collector of lost lore and power, with potent artifacts that might well lead to their ruin.
        ],
        ..character_overview()[
          *The Would-Be-Hero* (medium complexity): They're in over their head and full of fear and anger, but they just might outshine us all.
        ],
      )
    ],
    [
      = Your agenda
      As a player, your chief goals should be to...
      #v(1em)
      - Portray a compelling character
      - Engage with the fictional world
      - Play to find out what happens

      = Your principles
      This game works best if you...
      #v(1em)
      - *Begin and end with the fiction.* Tell us how you do what you do, what it looks like.
      - *Connect with the other PCs.* Explore your relationships. Play out scenes together. 
      - *Show us what's important to you.* Who and what will your character fight for?
      - *Have goals and pursue them.* Don't just react to threats that the GM presents
      - *Be bold, take risks.* If you don't act like a hero, who will?
      - *Embrace difficulty, setback, and failure.* Show us how your character deals with it.
      - *Participate in worldbuilding.* Answer the GM's questions with color and life.
      - *Build on what others have said.* Let yourself be inspired by your fellow players.
      - *Give others a chance to shine.* Don't hog the spotlight. Set others up for greatness!
      - *Participate in the conversation.* Pay attention, ask questions, offer suggestions.

      = Content
      By default, this game features:
      #v(1em)

      - Fairly graphic violence
      - Kidnapping, abductions, families in danger
      - Bigotry, racial tensions
      - Horror elements, mind control, possession
      - Personal corruption (esp. for the Seeker)
      - Starvation (or the threat thereof)

      #v(1em)
      Other disturbing and emotional topics are certainly possible. Talk to your group about any topics that you wish to exclude, veil, or handle in a specific way.
    ])

  ],
)

#set page(flipped: true, paper: "us-letter", margin: (top: 0.25in, bottom: 0.25in, left: 0.25in, right: 0.25in))

#bookletic.sig(
  page-margin-binding: 0.25in,
  page-border: none,
  draft: true,
  pad-content: 10pt,
  contents: setting_overview,
)
