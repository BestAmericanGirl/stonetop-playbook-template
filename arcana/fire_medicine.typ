#import "../stonetop_style.typ": stonetop_style
#import "../playbook_lib.typ": *

#show: stonetop_style

#set page(flipped: false, width: 4in, height: 6in, margin: (top: 0.25in, bottom: 0.25in, left: 0.4in, right: 0.4in))

#make_minor_arcanum(
  name: [A fire clay tablet],
  arcanum_tags: [#inv],
  decoration: emoji.fire,
  img: "arcana/huo_yao.png",
)[
  A small tablet that would be unremarkable if not for its sturdy, time-tested construction.
  Its pale beige surface suggests it was crafted from fire clay, and the runes etched onto it are of Maker origin.
  Clearly, it must be a relic of the Forge Lords.
  You can *learn a recipe for fire medicine* from the tablet, but you must...

  #checklist[
    - ...translate the Forge Lord script on the tablet.
    - ...find a source of brimstone.
    - ...find a source of saltpeter.
    - ...risk burning yourself or hurting yourself in an explosion when mixing it for the first time.
  ]
]

#pagebreak()
#make_minor_arcanum(
  front: false,
  name: [A recipe for fire medicine],
  arcanum_tags: [#inv],
  decoration: emoji.fire,
)[
  When you *_have access to a sufficient supply of brimstone, saltpeter, charcoal, and a place to craft,_* you can now spend time to make a #inv pouch of fire medicine by mixing the aforementioned ingredients. You can then spend time to construct a casing and load it with a #inv pouch of fire medicine to construct a fire lance charge.

  #thin_line

  #make_item(
    name: [A fire lance charge],
    icon: "icons/explode.png",
    item_tags: [#inv, attachment, flammable, single-use, dangerous]
  )[
    Can be strapped to the top of the shaft of a spear or other polearm. You may also load it with ceramic shards or similar objects that would make for good projectiles.

    When the charge is attached to a weapon and *_you light it up right before striking_*, it explodes in a few seconds and the attack gains _hot, terrifying, forceful, loud,_ and +1 damage. If you previously loaded it with ceramic shards or other projectiles, it also gains _messy_ and 1d4 damage.
  ]
]
