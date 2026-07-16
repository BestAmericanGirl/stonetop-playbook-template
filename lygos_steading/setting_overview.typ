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
    #set text(size: 8.9pt)
    #biggest_line_left()
    #grungetext[#title[Setting Overview]]
    #v(1em)
    #columns(2)[
    = The Premise

    You play the heroes of *#steading*, a cultic community on the edge of Lygos.
    Adventures focus on dealing with threats to the neighborhood, seizing opportunities for the neighborhood, or pursuing personal goals.
    Weeks or months might pass between adventures.

    = The Neighborhood Itself

    *...is home to around 300 folks.* It's a nice place, though poor.
    People look out for each other here, more than in the rest of Lygos, at least.

    *...is built around a massive bronze statue of #deity*, exquisitely carved.
    Nobody remembers who built it.

    *...stands at the northern edge of the city.*
    Folks sometimes leave the safety of the walls to hunt and trap, but the North is a barbarian land of magic and mystery, best avoided by civilized folk.

    = Neighbors

    *#names.gordins-delve* is the neighborhood where the brigands, ruffians, and thieves tend to gather.
    Whether they're misunderstood delinquents or hardened criminals depends on your point of view.
    // Violence reigns as competing bosses, gangs, and other unsavory folks vie for power.

    *#names.cloud-district* is where the wealthiest and most influential live, including our ruler(s).
    // The ruler(s) of Lygos live here in an opulent palace, attended by a vast army of servants.
    We don't tend to get up there very often; private companies or even armies guard their sprawling estates.

    *#names.sparta* is the closest city-state to Lygos, several days to the southeast; stoic, grim, and unwelcoming.

    *#names.carthage* is a sizable city across the Sea to our south, founded only several decades ago.

    *#names.persia* is a city, east across a narrow land bridge. A glittering jewel of the #names.achaemenid, an empire unimaginably vast even to us civilized folk.

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
    #steading is a pretty different experience despite trying to roughly map onto vanilla Stonetop.
    Things will scale harder/faster here than in a remote rural village.
    Steading wide actions like *Muster* or *Deploy* may require more to achieve, but they'll also have more impact with access to a wider community.

    
    Legs of an intra-city expedition for *Chart a Course* may involve more political intrigue, trying to gain access, etc than navigating the wilderness.
  ]],
  [
    #set text(size: 9pt)
    #biggest_line_right()
    #grid(columns: (1fr, 1fr),
    [
      = The Characters
      You'll play a local hero, someone with deep ties to #steading.
      You might be...
      #v(1em)
      #grid(columns: (1fr, 3fr),
        align: horizon,
        ..character_overview(img: "img/blessed_lygos.png")[
          *The Blessed* (medium complexity): speaker to spirits and representative of Isida.
          Works subtle magics via sacred markings and materials.
        ],
        ..character_overview()[
          *The Alley Cat* (low complexity): at home in the darkest crevices of the city.
          Not above bending the rules or fighting dirty.
        ],
        ..character_overview(img: "img/hoplite.png")[
          *The Hoplite* (low/medium complexity): not just a violet individual---_our_ violent individual.
          A champion, yes, but a bit of a liability, too.
        ],
        ..character_overview()[
          *The Magistrate* (low complexity): settler of disputes, chronicler, and divine bulwark against chaos.
          Insightful, tough, not necessarily persuasive.
        ],
        ..character_overview()[
          *The Witch* (high complexity): beggar-priest, vagabond, amateur medicant.
          Beacon of hope, charity, and mercy.
          Viewed with suspicion by high society.
        ],
        ..character_overview()[
          *The Marshal* (high complexity): leads the neighborhood's militia, plus a crew of followers.
          Makes choices about who lives and who dies.
        ],
        ..character_overview()[
          *The Merchant* (low complexity): a consummate trader, the one you want with you when you travel.
          Will charm all the coin off you if you're not careful.
        ],
        ..character_overview()[
          *The Scholar* (high complexity): collector of lost lore and power, with potent artifacts that might well lead to their ruin.
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
  [
    #set text(size: 8.9pt)
    #biggest_line_left()
    #grungetext[#title[Lygos]]
    = The city in which #steading sits
    #thin_line
    #columns(1)[
      The city-state of Lygos is home to around 200,000 souls.
      Like almost everywhere else, Lygos is a heavily religious place.
      Everyone is part of one *cultic community* or the other, worshipping multiple overlapping gods or interpretations of them.
      There is no official religion; the ruler(s) of Lygos have their own cult, of course, but for most people, their daily lives are more defined by those closest to them.

      = Politics of Lygos
      _"Political power grows from the tip of the spear."_ --- #names.brennan of the #names.claws, King of #names.gordins-delve

      Lygos has a central government, but how strong that central government is is up to your table.
      Violence is endemic in Lygos; *#names.gordins-delve* happens to be worse than the rest of the city, but nowhere is truly safe.
      Think Gordin's Delve, except on a much larger scale.

      Hold onto your sweet rolls, because the state *doesn't have anything resembling a modern police force*.
      The ruler(s) of Lygos may have an army or two, but there's no social expectation that the state uses its (relative) monopoly on violence to keep order, solve crimes, etc, unless there's something in it for them.
      The state, however, will happily use its power to enrich itself, like when it takes taxes from you every year.

      While the ruler(s) of Lygos are, by definition, the most powerful cult in Lygos, below them, the power structures can be quite multi-polar.
      Crime bosses, patricians, merchants, the downtrodden masses, all strive with and against each other.
      Just remember that *even a "secular" community like a gang will have a common set of religious beliefs and rituals*.

      The wealthiest patricians live in *#names.cloud-district*, where the Royal Palace is also located.
      They'll have their own agendas and possibly even armies, and they won't ask for permission to use them. 

      = Questions for your group
      Some questions for your table to think about as you fill out playbooks:
      #questions[
        - What kind of government does Lygos have?
          - If it's some form of *despotism*, how do they hang onto power? How long have they been in power? How is succession decided?
          - If it's an early form of *democracy*, voting is privilege, not a right. How many years do you have to pay in taxes, or what other things do you have to give up to have a voice?
        - What gets you *thrown to the (either literal or metaphorical) lions* in the amphitheatre by those in power?
        - How monetized is *the economy* in Lygos? Farmers would probably turn their taxes in in the form of crops, but what about everyone else?
        - What's the *urban landscape* like? Neatly gridded streets, or winding paths from years of unplanned urban development?
        - People have strong ties to their individual communities, but how attached are they to the concept of *being Lygosi as an identity*?
      ]
    ]
  ],
  [
    #set text(size: 8.9pt)
    #biggest_line_right()
    = Cultic community
    A cultic community can range in size from a *single sanctuary to a whole city* (think Athens, a cult of Athena).
    Your character will start as a member of a neighborhood cult, but as you grow and make steading improvements, more people will be interested in your cult, and it might grow along physical or ideological lines.
    *Your character can also be in multiple cults.*
    For example, you could be a part of a guild or a gang, or the ruler(s) of Lygos might ask/force you to participate in city-wide rituals honoring their preferred gods.

    = Using history as source of inspiration
    Because there isn't a book 2 for this setting, I'll recommend some historical references that could be useful to help flesh things out a bit.
    
    In my research for the structure of the cultic community itself, I relied heavily on "Graeco-Roman Cultic Societies" by John Scheid from _The Oxford Handbook of Social Relations in the Roman World_.
    For details inspired by the *Greek Poleis*, I used _The Oxford Handbook of Hellenic Studies_.

    Other Mediterranean civilizations besides classical Greek city-states like *Carthage, ancient Egypt,* and the *Achaemenid Empire* are useful starting points.

    Keep in mind that when using history, it should inspire something cool or constrain you in a way that makes the game more interesting, helping to *portray a rich and myseterious world.*

    So, nitpicking that potatoes weren't around in Ancient Athens? Probably not that interesting unless you want to get into the specific mechanics of crop rotations or whatever.
    That literacy was rare, on the other hand, _is_ interesting because it encourages us to leave behind the 21st century mindset of universal literacy and explore how different communication would be without it.


    = Thoughts on playing in Lygos
    One of the strengths of Stonetop is that because you're playing as the "barbarians," it's more difficult to fall into the usual TTRPG tropes of becoming murder hobo super cops that conquer everything they see.
    #steading is on the margins of Lygos, but it's still closer to the Iron Age equivalent of the "imperial core" than Stonetop is.

    And while that's not necessarily bad, it's important to consider whether your table is equipped for "scab picking"#footnote[Sandifer, E. (2022, January 16th). _Hugboxing vs Scab-Picking_. Eruditorum Press. https://www.eruditorumpress.com/blog/four-tiny-essays-on-sf-f] topics like slavery, marginalization of women, and other stuff that was pretty common in the Greco-Roman cities that inspired this interpretation of Lygos.
    When in doubt, leave out those topics; there's more than enough misery and oppression in Lygos to go around!
    *Take extra care when using safety tools*, both during Session 0 and the rest of the game.
    #v(1fr)
    #image("img/Acropolis2.svg")
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
