#import "../playbook_lib.typ": *
#import "lygosi_data.typ": *

#let info = (
  title: "The Hoplite",
  description: [These are good people. Hard-working, honest. They look out for each other. But Lygos isn't a safe place. The vulnerable need someone to stick up for them. Someone who's not afraid to get a little bloody. To get heavy. Yeah, someone like you.],
  image_path: "lygos_steading/img/hoplite.png",
  max_hp: 20,
  stat_scores: [+2, +1, +1, +0, +0, -1],
  damage_die: "d10",
  starting_moves: "Dangerous, Hard to Kill, and Armored",
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
    == Constable
    You keep order in #steading and protect it from other factions and outside threats.
    It might not be anything official, but everyone knows you've got a cool head and the weight to back up your words.

    When you *_back an order or warning,_* roll +CHA: *on a 7+*, they must choose 1:
    - Do what you say
    - Dig in/take cover/flee
    - Attack you

    On a 10+, you can sense which one they're about to do and act first if you like; gain advantage if you do.
  ],
  [
    == Blood-Soaked Veteran
    You've fought in countless battles, learning how to kill ruthlessly and efficiently.
    When you came back to #steading, you were a changed person.

    When you *_Persuade using violence or threats against someone who knows your black reputation_*, you can roll +STR instead of +CHA. Also, if you take the Formidable move, you can choose to roll +CON instead of +CHA.

    When you *_fight to kill without mercy or hesitation_*, you deal +1d4 damage.
  ],
  [
    == Storm-Marked
    You've been touched by Zios (the Sky Father) and bear runic, tree-like markings coursing up and down your skin.
    When did the marks manifest? Are they a symbol of your strength, speed, and courage? Or their source?

    You  start with the Storm Markings major arcanum. Mark one of the boxes on the front of the Storm Markings sheet, and describe here the time you were struck by lightning and walked away unharmed:
  ],
)

#let instincts = (
  [
    == Peace
    To avoid (further) bloodshed or violence.
  ],
  [
    == Pride
    To maintain your dignity, to demand respect.
  ],
  [
    == Recklessness
    To act without thought to the consequences.
  ],
  [
    == Trouble
    To stick your nose in where it's unwelcome.
  ],
  [
    == Violence
    To solve problems by force.
  ],
  [
    == ~
    #linebreak()
  ],
)

#let appearances = (
  ("young & brash", "in my prime", "old & leathery"),
  ("gravelly voice", "hearty voice", "soft spoken"),
  ("giant frame", "just ripped", "stocky", "wiry"),
  ("distinctive scars", "oft-broken nose", "missing bits"),
)

#let origins_and_names = [
  - *Lygos*: Pick a name from any list
  - *#names.sparta*: Adamantios, Alexandra, Chrysanthe, Kleon, Heroides, Leonidas, or Xanthos
  - *#names.carthage*: Abdastartus, Djedefre, Haniba, Pumayyaton, Ramessu, or Sapanba
  - *#names.persia*: Arsaka, Darius, Darayavun, Marduniya, or Xsayarsa
  - *The North*: Aerona, Arthfael, Flann, Mael, Maela, Quinn, or Wiland
]

// These will have their checkboxes checked
// Set to none to not have any default possessions
#let default_special_possessions = none

// Unchecked checkboxes
#let special_possessions = [
  - *Distillery*: skins of fine whisky (#uses(2) uses, grants advantage to Persuade), copper tubes, malt, #uses(2) firkins, stills, barrels, etc.
  - *Chirugeon's tools*: catgut, straps, bandages, tubes, poultices, willow bark, #inv bonesaws, etc.
  - *Husbandry tools*: brushes, muzzles, collars, feed, #inv whips, #inv bridles, etc. Gain advantage to Persuade domestic beasts (livestock, dogs, etc.).
  - *Smithy* (or access to it):  iron goods, ingots, thick gloves, #inv tongs, #inv bellows, an anvil, etc.
  #colbreak()
  - *Stoneworker's tools*: chisels, drills, #inv prybars, #inv spikes, #inv block & tackles, wheelbarrow, etc.
  - Weapons of war: Choose up to 3 (now or later):
    - #inv *Sword*, steel (_close_, +1 damage, 1 piercing)
    - #inv *Battleaxe*, steel (_close, messy_)
    - #inv *Warhammer*, steel (_close_, 2 piercing)
    - #inv *Mace* or *flail*, steel (_close, forceful_, 1 piercing)
    - #inv *Crossbow* (_far_, +1 damage, _reload_, _x_ piercing, #uses(1) low ammo, #uses(1) all out)
  - #fill_in_the_blank (discuss with GM)
]

#let moves = (
  new_move(
    name: "Armored",
    checked: true,
    body: [
      When you carry a shield, mark only #check(checked: true, inline: true)[]~(instead of #check(checked: true, inline: true, count: 2)[]).
      Also, you can ignore the _cumbersome_ tag on any armor you wear.
      If you take this move at the start of play, add an #invs(2) iron hauberk, #invs(2) bronze cuirass, or #invs(2) scale coat to your inventory (all are 2 armor, _warm_, _cumbersome_).
    ]
  ),
  new_move(
    name: "Battle Joy",
    body: [
      When you *_spill blood---yours or another's---and lose yourself in battle,_* you ignore fear, pain, mind-control, and the effects of debilities as long as you keep fighting.

      When *_the action stops,_* roll +CON: *on a 10+*, that was a rush, regain 1d4 HP;
      *On a 7-9,* you're winded and out of it, but you'll be fine within a few minutes' rest;
      *On a 6-,* mark a debility but don't mark XP.
    ],
    children: 
    (new_move(
      name: "Berserker",
      requires: "Battle Joy",
      body: [
        While *_in your Battle Joy_*, add the _area_ tag to your melee attacks, lashing out at anyone nearby (friend and foe alike). Roll damage separately for each target.
      ]
    ),),
  ),
  new_move(
    name: "Carved Out of Wood",
    body: [
      Increase your max HP by 4.
    ]
  ),
  new_move(
    name: "Dance of Death",
    body: [
      When you *_wield a shield and an offensive weapon with grace and agility_*, you can spend 1 Readiness to both halve an attack's effects/damage and strike back at the attacker (deal your damage with disadvantage) instead of spending 1 Readiness for each.
    ]
  ),
  new_move(
    name: [Dangerous],
    checked: true,
    requires: "the Heavy",
    body: [
      When you *_deal your damage_*, you have advantage.
    ]
  ),
  new_move(
    name: "Formidable",
    body: [
      When you wade into battle, you can choose to roll +CHA:
      *on a 10+*, both;
      *on a 7-9*, pick 1:
      
      - Lesser foes will quail, hesitate, or flee before you.
      - Doughty foes will focus on you, seeing you as the greatest threat.

      *On a 6-*, pick 1 but ask the GM what you've missed.
    ]
  ),
  new_move(
    name: "Frosty",
    body: [
      When you *_Defy Danger by keeping calm and carrying on_*, *on a 10+* you can also ask the GM a question that you could ask when Seeking Insight.
      You have advantage on your next move to act on the answer.
    ]
  ),
  new_move(
    name: "Guardian",
    body: [
      When you *_Defend_*, hold 1 extra Readiness. Even on a 6-, hold 1 Readiness (plus whatever the GM says).
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
    name: "Intimidating",
    body: [
      When you *_Persuade using violence or threats_*, you have advantage.
    ]
  ),
  new_move(
    name: "Hard to kill",
    checked: true,
    body: [
      When you *_are at Death's Door_*, you can roll +CON or +nothing (your choice).
      *On a 7-9*, you can mark a debility of your choice to regain 1 HP.
    ],
    children: (
      new_move(
        name: "Unstoppable",
        stock: 5,
        requires: "Hard to Kill",
        body: [
          When you *_are reduced to 0 HP in battle_*, you can keep fighting.
          Each time you take damage while at 0 HP, mark 1.
          If you would regain HP while fighting, clear one mark instead.
          
          When you *_stop fighting_*, roll for Death's Door with a -1 penalty for each circle marked. If you survive, clear all your circles.
        ]
      ),
    )
  ),
  new_move(
    name: "Musclebound",
    requires: "Strength +2 or higher",
    body: [
      When you *_make a hand-to-hand or thrown attack,_* it's _forceful_ and _messy_.
      If it would already be _forceful_ and/or _messy_, it's even more so.
    ]
  ),
  new_move(
    name: "Payback",
    body: [
      When you deal *_damage to a foe that has harmed you or one of your allies,_* deal +1d4 damage
    ]
  ),
  new_move(
    name: "Relentless",
    body: [
      When you *_Clash and your foe survives_*, you gain advantage the next time you Clash with them.
    ]
  ),
  new_move(
    name: "Seasoned Warrior",
    num_checkboxes: 3,
    requires: "level 2+ and the Heavy",
    body: [
      Take a move from the Alley Cat, Marshal, Merchant, or Scholar playbooks, for which you otherwise qualify. You can pick from a different playbook each time. (You can't pick Improved Stat or Superior Stat.)
    ]
  ),
  new_move(
    name: "Situational Awareness",
    body: [
      When you Seek Insight, add the following to the list of questions you can ask:
      #questions[
        - Who or what here is the biggest threat?
        - What is my enemy's true position?
        - What here can I use as a weapon?
      ]
      When *_a fight breaks out_*, ask the GM 1 question that you could ask when Seeking Insight.
    ]
  ),
  
  new_move(
    name: "Unfettered",
    body: [
      When you *_are subject to physical or mental restraint,_* you may mark a debility to immediately break free of that restraint.
    ]
  ),
  new_move(
    name: "Terror on the Field",
    body: [
      When you *_reduce a foe to 0 HP,_* describe how you take them out. If you fell them in a particularly  brutal or impressive manner, their allies are impressed, dismayed, or frightened and respond accordingly.
    ]
  ),
  new_move(
    name: "Bringer of Ruin",
    requires: "level 6+",
    body: [
      When you *_roll a 12+ to Clash and your foe survives,_* name something they possess (like their sword, their position, a limb, their dignity, etc.), but nothing that would kill them outright.
      Whatever you name, it is broken, shattered, lost.
      Tell us how. 
    ]
  ),
  new_move(
    name: "Cut from Granite",
    requires: "level 6+ and Carved Out of Wood",
    body: [
      Gain +1 armor (stacks with other sources) and increase your max HP by another 2 (+6 HP total).
    ]
  ),
  new_move(
    name: "Mighty Thews",
    requires: "level 6+ and Musclebound",
    body: [
      When you *_perform a feat of extraordinary strength (bursting chains, smashing through a wall, heaving a boulder, etc.),_* you do it (OH YEAH!) but pick 1:
      - It takes a while
      - You cause unwanted damage or harm
      - It takes a toll (mark a debility)
    ]
  ),
  new_move(
    name: "Nemesis",
    requires: "level 6+ and Relentless",
    body: [
      When you *_Clash and your foe survives,_* all of your future attacks against them do +1d6 damage.
    ]
  ),
  new_move(
    name: "Steadfast Guardian",
    requires: "level 6+ and Guardian",
    body: [
      While you *_hold Readiness (from Defend),_* you can always suffer the damage/effects of an attack instead of your ward; no need to spend Readiness, you can just do it.
    ]
  ),
  new_move(
    name: "Stone Cold",
    requires: "level 6+ and Frosty",
    body: [
      When you *_Defy Danger (or Struggle as One) by keeping calm and carrying on,_* treat a 6- as a 7-9.
    ]
  ),
  new_move(
    name: "Superior Stat",
    requires: "level 6+",
    body: [Increase one of your stats by +1 (to a max of +3).]
  )
)

#let character_question_sections = (
  [
    = A history of violence
    Just about everyone here talks about the time you... (pick 1 or 2)
    #checklist[
      - ...drove off a thunder drake that got too close to the city.
      - ...killed that corrupt tax collector, and somehow got away with it.
      - ...slew a half-dozen barbarians in one battle.
      - ...tossed those alley cutthroats out of town.
      - ...bested Iago, the scariest bandit in #names.brennan's gang, the #names.claws.
      - ...dragged yourself (and another?) into the neighborhood, bleeding from a dozen wounds.
      - ...were struck by lightning and woke up covered in these marks.
    ]
    #v(1em)
    But folks are less keen to discuss... (pick 1 or 2)
    #checklist[
      - ...the look in your eye when you spilled all that blood.
      - ...those hard cases who showed up looking for you.
      - ...the shouting matches between you and your love(s).
      - ...the time you spend as one of #names.brennan's #names.claws.
      - ...what happened to Urvanta, even if he did have it coming.
      - ...your uncontrollable seizures, where you claw those weird marks in the dirt.
      - ...your time spent as a soldier in the army of the ruler(s) of Lygos
    ]
    #v(1em)
    What keeps you up at night? (pick 1 or 2)
    #checklist[
      - That thrice-damned temper of yours.
      - Terrible dreams of the atrocities of war.
      - The worry that someone's coming after you.
      - The feeling that the barbarians are getting bolder.
      - Wondering what #names.brennan is up to, now that he's the King of #names.gordins-delve.
      - Dark visions of things moving in the earth, restless, whispering, and hungry.
      - The question of who'll look after your family when you get yourself killed.
      - The worry that they'll learn all the truth about you, sooner or later.
    ]
  ],
)

#let introductions = (
  "2": [On your second turn, describe your special possessions, how you make a living, and how you contribute to the neighborhood.],
  "3": [On your third turn, *tell us about your history of violence,* and what keeps you up at night.],
  "4": [
    On your next turn, *answer one of the following*, naming one or more NPCs who live in #steading.

    #checklist[
      - Who is your closest kin?
      #blank
      - Whos is your lover/spouse/betrothed?
      #blank
      - Who most needs/deserves your protection?
      #blank
      - Whose forgiveness do you strive to earn?
      #blank
    ]
  ],
  "6": [
    On your next turn, *ask your fellow PCs one of these*. When others ask you, answer as you like.
    #checklist[
      - Which one of you once dragged me home, bleeding and unconscious?
      #blank
      - Which one of you can I always trust to have my back?
      #blank
      - Which of you has stayed my hand?
      #blank
      - Which one of you has traded blows with me?
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
