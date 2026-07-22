#import "../stonetop_style.typ": stonetop_style
#import "../playbook_lib.typ": *

#show: stonetop_style

#set page(flipped: false, width: 4in, height: 6in, margin: (top: 0.5in, bottom: 0.5in, left: 0.5in, right: 0.5in))
#set par(leading: 0.65em, spacing: 0.95em, justify: false)
#set block(spacing: 1em)
#set text(size: 9pt)

#make_npc(img: image("../img/jimothy.png", width: 60%), name: "Jimothy", tags: [Solitary, cautious, tiny, adorable, cryptid])[
  #make_statblock(
    HP: 10, armor: [1 (_tiny_)],
    damage: [claws, bite, scratch 1d4 (_hand_, _close_)],
    // special_qualities: [Test],
    instinct: [to scamper about, looking for tasty morsels]
  )

  #movelist()[
    - Unintentionally charm all around him
    - Move faster than you'd expect
    - Be a beacon of hope to those in despair
  ]

  On a clear sunny day, if you are blessed by Danu herself, you may spot this wholesome little critter scurrying about in the grass, using his dextrous front paws to search for food.

  *Something Interesting*: It is said that anyone who threatens harm to this creature risks the wrath of the gods, for none are immune to Jimothy's charms.
]
