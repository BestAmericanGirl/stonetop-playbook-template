#import "../playbook_lib.typ": *
#import "lygosi_data.typ": *

#let info = (
  title: "The Blessed",
  description: [#deity, the Mother Goddess, provides. We need only learn her secrets: the runes we inscribe on protective tablets; the mark made with redberry juice to ward off impure spirits; the language of the spirits. A thousand such secrets #deity keeps, to share with only her true children. Her Blessed.],
  image_path: "lygos_steading/img/blessed_lygos.png",
  max_hp: 18,
  stat_scores: [+2, +1, +1, +0, +0, -1],
  damage_die: "d6",
  starting_moves: "Spirit Tongue, Call the Spirits, 1 from your Background, and 1 of your choice",
  num_special_possessions: "Pick 2, in addition to your sacred pouch",
  steading_name: steading,
)

#let stats = (
  Strength: "(STR)",
  Dexterity: "(DEX)",
  Intelligence: "(INT)",
  Wisdom: "(WIS)",
  Constitution: "(CON)",
  Charisma: "(CHA)",
)

#let backgrounds = (
  [
    == Initiate
    #steading has long been home to a sacred order, keepers of our ancestral ways and speakers for #deity. You are one such initiate, the most gifted in generations. You gain the Rites of the Mother move.

    There are other initiates in #steading, serving the goddess and the village. They aid you as followers--- see the Initiates of #deity insert. Who are they?

    Choose 2 or 3:

    #checklist[
      - *Reyhaneh*, your acolyte, beloved by birds
      - *Adel*, strange and barbaric
      - *Zendaya*, your mentor, a talented healer
      - *Safa*, your anointed lover, seer of fates
      - *Samira the Eldest*, wise and hard as winter
    ]
  ],
  [
    == Raised by Wolves
    Maybe not by _wolves_, but you grew up in the wild. Beasts of land and air were your siblings. The sighing wind taught you language. The trees and rocks were your home. Were you one of the barbarians? Abandoned or orphaned? Lured into the Wood?

    Regardless, you get the Trackless Step move (go mark it now). Also, when you *_Forage_*, you have advantage.

    For some reason, you've made yourself known to #steading and perhaps you even call it home. But the ways of humans are still strange to you. Once per session, when *_your wild ways offend or alienate you from someone_*, mark XP.
  ],
  [
    == Vessel
    A seed of #deity's power has taken root in your soul. Perhaps it has always been there and only recently sprouted. Or maybe it was planted in you during some portentous event.

    Regardless, your dreams have been haunted by strange markings and symbols, especially when you sleep in a holy place of #deity. You feel the mystic power in the stones and dirt. And you've felt the growing wrath of the Mother Goddess as foul things begin to move about. Take the #deity's Grasp move (go mark it now).

    #deity's power flows through you, but at great cost. When you *_would spend 1 Stock from your sacred pouch_*, you may choose to lose 2d4 HP instead.
  ],
)

#let instincts = (
  [
    == Delight
    To find beauty, even in the ugliest things.
  ],
  [
    == Detachment
    To remain unmoved, to be cold as winter.
  ],
  [
    == Mother
    To protect and nurture others.
  ],
  [
    == Preservation
    To carry on the legacy of our ancestors.
  ],
  [
    == Reverence
    To honor the spirits and give them their due.
  ],
  [
    == ~
    #linebreak()
  ],
)

#let appearances = (
  ("fresh-faced", "hale & hearty", "gray & wizened"),
  ("imperious voice", "raspy voice", "soothing voice"),
  ("curvy", "strapping", "rail-thin", "solid", "willowy"),
  ("ceremonial robes", "furs, leather", "work clothes"),
)

#let origins_and_names = [
  - *Lygos*: Pick a name from any list
  - *#names.sparta*: Aglaia, Babis, Charis, Eleni, Nymphe, Ophelia, Sophia, or Tyche
  - *#names.carthage*: Ahmose, Iahmesu, Khafra, Irv, Meritites, or Seti
  - *#names.persia*: Atrpata, Bagadata, Haaxa, Kurus, or Utautha
  - *The North*: Alagh, Bora, Decla, Franza, Elin, Fion, Nainsi, Naiclas, or Wynn
]

// These will have their checkboxes checked
// Set to none to not have any default possessions
#let default_special_possessions = [
  - *Sacred pouch* #tags("magical"): see back page.\ Stock: #uses(3)
]

// Unchecked checkboxes
#let special_possessions = [
  - *Apiary*: beeswax, candles (_close, area_, lasts \~1 hr), honey, #inv bee smokers, #inv hat & veils, etc.
  - *Collected Offerings* (#uses(3) uses): Expend a use to produce something valuable to a spirit of the wild. Restore 1 use each season.
  - *Goat herd*: milk, cheese, pelts, meat, blood, horn, wool, etc. Each season, 1 in 4 chance of having a bezoar (swallow it to cure poison).
  - *Herb garden*: shears, mortars & pestles, herbs, seeds, remedies, mild poisons, #inv spades, etc. Each spring, d4 uses of bendis root (_reach, area_, burns \~1 hr, fumes repel perversions of nature).
  - *Mastiffs*, 2-3 followers (_alert, keen-nosed, fierce, overprotective_); *HP* 6; *Damage* d6 (_hand, grabby_); *Instinct* to bark & threaten; *Cost* affection
  - #fill_in_the_blank (discuss with GM)
]

#let moves = (
  new_move(
    name: "Amulets & Talismans",
    body: [
      When you *_craft a protective charm for someone_*, spend 1 Stock and name a source of harm (fire, stabbing, etc.). When *_they would suffer such harm while bearing your charm_*, roll +INT: *on a 10+*, they ignore the harm entirely; *on a 7-9*, they suffer only half the damage or effect; *on a 6-*, they suffer the harm normally. One can benefit from only 1 charm at a time, and it loses its potency after 1 use.
    ]
  ),
  new_move(
    name: "Barkskin",
    body: [
      When you *_are touching the earth_*, you have 2 armor. When you *_mark another with 1 Stock_*, they gain this benefit so long as the mark remains.
    ]
  ),
  new_move(
    name: "Big Magic",
    num_checkboxes: 2,
    body: [
      Each time you take this move, choose an additional remarkable trait for your sacred pouch and increase your max Stock by 2.
    ]
  ),
  new_move(
    name: [#deity's Grasp],
    body: [
      When you *_call on the world itself to bind a spirit or a perversion of nature_*, spend 1 Stock and roll +WIS: *on a 7+*, roots, vines, and earth pull at them, and they pick 1; *on a 10+*, as a 7-9, but both apply.
      - They're restrained, unable to act freely until your focus slips or they tear their way free
      - They take 2d4 damage (ignores armor)
      If this brings them to 0 HP, they are pulled into the earth and bound in rune-etched stone.
    ]
  ),
  new_move(
    name: "Healer's Arts",
    body: [
      When *_someone Recovers under your care_*, they recover (extra) HP equal to your WIS. If you *_also spend 1 Stock_*, they heal an extra 5 HP and their wounds/injuries are stabilized.
    ]
  ),
  new_move(
    name: "Heed my Words",
    body: [
      When you *_Persuade by talking sense or warning against foolishness_*, you have advantage.
    ]
  ),
  new_move(
    name: "Improved Stat",
    num_checkboxes: 3,
    body: [
      Each time you take this move, increase one of your stats by 1 (to a max of +2).
    ]
  ),
  new_move(
    name: "Into the Lion's Den",
    body: [
      When you *_approach a beast calmly and show no fear_*, it will not harm you (though it may threaten you and test your nerve). When you *_lay your hand gently upon a beast_*, it calms to your touch.
    ]
  ),
  new_move(
    name: "Lightning Rod",
    body: [
      When you *_Defend while touching the earth_*, you can spend 1 Readiness to intercept a nearby magical attack and redirect it harmlessly into the ground.
    ]
  ),
  new_move(
    name: "Rites of the Mother",
    stock: 4,
    body: [
      Once per season, when you *_oversee the sacred rites_*, hold 1 Favor. If you also sacrifice 1 Surplus, hold 4 Favor instead. Spend Favor in lieu of Stock, 1-for-1.

      When you *_publicly sacrifice something or someone much-loved_*, either clear a steading debility or gain advantage when the steading next rolls +Fortunes.
    ]
  ),
  new_move(
    name: "Spirit Tongue",
    checked: true,
    body: [
      You can speak with beasts and spirits. You can always ask the GM, “What spirits are active here?” and get an honest answer.
    ],
    children: (
      new_move(
        name: "Borrow Power",
        requires: "Spirit Tongue",
        body: [
          When *_a spirit or beast loans you power_*, ask the GM for one of its tags or moves. Store it in your pouch in place of 1 Stock. When you *_use the borrowed tag or move_*, roll +WIS: *on a 10+*, you do it and can use the power again; *on a 7-9*, you do it, but lose the power.
        ]
      ),
      new_move(
        name: "Call the Spirits",
        requires: "Spirit Tongue",
        checked: true,
        body: [
          When you *_spend 1 Stock and perform a short rite_*, the spirit(s) of a place or object manifest and hear you out. What they do next is up to them.
        ]
      )
    )
  ),
  new_move(
    name: "Trackless Step",
    body: [
      When you *_spend 1 Stock and perform a short rite_*, you can manifest a thick patch of moss of *area* size *near* on the ground beneath your feet. You make no sound, leave no trace and can ignore any hindering or treacherous terrain (briars, mire, scree, etc.) while walking on the moss. The growth will follow you as long as you remain in similar terrain, unless your concentration is interupted.
    ]
  ),
  new_move(
    name: "Veil",
    body: [
      When you *_wrap yourself or another in a subtle veil_*, spend 1 Stock and choose 1:
      - A type of being you name (including “people”) will tend to ignore your presence
      - People will perceive you as someone else, though you must wear something of an individual's in order to impersonate them
      When your *_deception comes under scrutiny_*, roll +INT: *on a 10+*, the veil holds, and no one is the wiser; *on a 7-9*, the veil holds, but there is further scrutiny or a complication (GM's choice).
    ]
  ),
  new_move(
    name: "Wards & Bindings",
    body: [
      When you *_mark a boundary with sacred signs_*, spend 1 Stock and describe who or what they affect (using no more words than your level). Also, choose whether the affected beings are repelled or trapped by the signs.

      When *_your wards or bindings are first tested_*, roll +INT: *on 10+*, they will hold as long as the signs remain unmarred (and the affected creature can do nothing to affect them directly); *on a 7-9*, they hold for now but may be overcome through might or will.
    ]
  ),
  new_move(
    name: "Proselytizing Soul",
    requires: "level 2+ and the Blessed",
    num_checkboxes: 2,
    body: [
      Each time you take this move, gain a Merchant move of your choice for which you qualify. You can't pick Improved Stat or Superior Stat.
    ]
  ),
  new_move(
    name: "Mother's Wrath",
    requires: [level 6+ and #deity's Grasp],
    body: [
      #deity's Grasp gains the _area_ tag and can affect any creature. A mortal reduced to 0 HP is subdued or killed (your choice) rather than bound in stone.
    ]
  ),
  new_move(
    name: "Potent Workings",
    requires: "level 6+ and Amulets & Talismans",
    body: [
      When you *_craft a protective charm_*, you may spend 1 additional Stock to choose 1:
      - Name an additional type of harm
      - One a 10+, the charm retains its potency
    ]
  ),
  new_move(
    name: "Shared Souls",
    requires: "level 6+ and Amulets & Talismans",
    body: [
      When you *_craft a protective charm_*, you may spend 1 additional Stock to choose 1:
      - Name an additional type of harm
      - One a 10+, the charm retains its potency
    ]
  ),
  new_move(
    name: "Suck the Poison Out",
    requires: "level 6+ and Healer's Arts",
    body: [
      When you *_draw a malady from a patient's body, mind, or soul_*, spend 1 Stock and roll +WIS: *on a 10+*, you remove the malady and can safely discard it or store it in your sacred pouch (taking the space of 1 Stock) to study or inflict on another; *on a 7-9*, you remove it, but choose 1
      - Your patient suffers lingering harm or trauma
      - You suffer some of the malady's effects
      - It will be harmful and dangerous to discard
    ]
  ),
  new_move(
    name: "Superior Stat",
    requires: "level 6+",
    body: [
      Increase one of your stats by +1 (to a max of +3).
    ]
  ),
  new_move(
    name: "Voice of the Mother",
    requires: "level 6+ and Spirit Tongue",
    body: [
      When you *_speak on behalf of #(deity)_*, natural beasts and spirits of the wild respect your authority. All but the most headstrong will do as you command, even against their instincts.
    ]
  ),
)

#let character_question_sections = (
  [
    = Sacred Pouch
    Your sacred pouch (_magical_) doesn't take up space in your inventory. It can hold up to 3 Stock (sacred herbs, powders, stones, pigments, chalks, clay, and so forth). Each time you gain an even-numbered level, your pouch can hold +1 Stock. When *_anyone but you looks inside your sacred pouch and touches the materials therein_*, the Stock is ruined.

    When you *_have a few days of downtime in familiar terrain_*, you may replenish your Stock.

    When you *_Forage_*, you can produce Stock instead of provisions.

    Your sacred pouch is... (choose 1 on each line)

    #choose_one_each_line(
      ("an heirloom", "made just for you", "your own work"),
      ("fur", "drakescale", "leather", "woven", "demonflesh"),
      ("unadorned", "beadwork", "rich dyes", "runes"),
    )

    What remarkable trait does it possess? (choose 1)

    #checklist[
      - It cannot be cut, torn, or burned by any natural means.
      - Unless someone is specifically searching for your pouch, they will ignore its presence.
      - So long as the pouch is sealed, nothing within can be detected or found by magic, nor can anything within escape or affect the outside world.
      - Unnatural and unclean creatures cannot bear to touch it.
    ]
  ],
  [
    = The Mother Goddess
    In the distant past, #steading was built around a statue of #deity, though she's never the only god worshipped here.
    Our statue of #deity is... (choose 1)

    #checklist[
      - ... loved, well-used, dripping with offerings and petitions.
      - ... little more than a nice decoration, for her holy places are anywhere but here.
      - ... given wide berth by most, and approached only with care and propitiation.
      - ... neglected and all but forgotten, except by a few.
    ]

    What do the folk of #steading leave as offerings? (choose 2-3)

    #two_columns_checklist[
      - fruits of harvest
      - figurines/effigies
      - whisky/spirits
      - salt/crystals
      - pure rain water
      - metal nails/tools
      - blood/burnt flesh
      - incense/sage bark
    ]
  ],
)

#let introductions = (
  "2": [On your second turn, describe your special possessions and how you contribute to the neighborhood.],
  "3": [On your third turn, *describe your sacred pouch* and its remarkable trait. Then, *tell us about #deity's shrine* in #steading and how she is worshipped.],
  "4": [
    On your next turn, *answer one of the following*, naming one or more NPCs who live in #steading.

    #checklist[
      - Who is your closest kin?
      #blank
      - Whose heart and soul is entwined with yours?
      #blank
      - Who taught you the secret ways?
      #blank
      - Who is beloved by the goddess, your charge to nurture/protect/guide/heal?
      #blank
    ]
  ],
  "6": [
    On your next turn, *ask your fellow PCs one of these*. When others ask you, answer as you like.
    #checklist[
      - Which one of you do the spirits whisper of?
      #blank
      - Which one of you has joined me in a sacred rite?
      #blank
      - Which of you has made a blood-oath with me?
      #blank
      - Which one of you doubts the power of #deity?
      #blank
    ]
  ]
)

#let playbook = (
  info: info,
  stats: stats,
  backgrounds: backgrounds,
  instincts: instincts,
  appearances: appearances,
  origins_and_names: origins_and_names,
  default_special_possessions: default_special_possessions,
  special_possessions: special_possessions,
  moves: moves,
  character_question_sections: character_question_sections,
  introductions: introductions,
)

#import "../stonetop_style.typ": stonetop_style

#show: stonetop_style

#make_playbook(..playbook)
