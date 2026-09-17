#import "../stonetop_style.typ": stonetop_style
#import "../playbook_lib.typ": *

#show: stonetop_style

#set page(flipped: false, paper: "us-letter", margin: (top: 0.5in, bottom: 0.5in, left: 0.5in, right: 0.5in))
#set par(leading: 0.65em, spacing: 0.95em, justify: false)
#set block(spacing: 1em)
#set text(size: 10pt)
#let twocolumns(body) = columns(2, body)

#big_line()
#grungetext[#title[Running a Stonetop One-shot]]
#twocolumns()[
= Get ready (5 minutes)
Go over any information required by the convention. Then, introduce everyone's irl personalities with names and pronouns.

Make sure that everyone is on board with
the concept of Stonetop: that they'll play
the heroes of a small, isolated Iron Age village.

Set the expectation that the first session
will usually involve creating characters and
the village itself. It's still play, and quite
fun, but we do an abbreviated version for the con.

= Review the setting (15 minutes)
Review the relevant parts of the Setting Overview.

When everyone's done, *ask the group
what questions they have*. Answer to the
best of your ability, inviting others to help.
Note that some questions (like, “Where
did the Forest Folk go?”) are mysteries that
can only be answered in play.

= Set expectations (5 minutes)
Refer to the first page of the Setting Overview. Ask everyone if they're comfortable
with the players' agenda and principles.
Clarify and answer questions. Emphasize
the importance of collaboration.

Explain that you have an agenda and principles, too. Specifically, your agenda is to:
- Portray a rich and mysterious world
- Punctuate their lives with adventure
- Play to find out what happens

Make it clear that you'll be fleshing out
the world together. There are no “official”
answers to many of the questions raised by
the Setting Overview. There are many
blanks to fill in. You (the GM) have a
setting guide, but it's mostly filled with
ideas rather than truths.

Remind players that they can help with editing scenes, and that while I'll pace the adventure aggressively, if the players want to, we can go slower, at the cost of not reaching a "climax."
Let the players know that we won't be finishing the whole adventure; rather we'll end on a high point of tension to finish with a cliffhanger.

= Discuss tone and content (5 minutes)
Talk to your group about *tone*: Stonetop
takes itself seriously, grounding itself in
human concerns. The PCs are exceptional,
but they aren't super-human. Violence has
consequences. Monsters are scary. Magic is
strange and dangerous. People matter.

*Let everyone know that they can call for
new content to be excluded or veiled at
any time and offer the ability to stop at any time for any reason*.

= Create the characters (10 minutes)
Pick a pregen character and review the choices. You can update your name, appearance, and pronouns if you'd like.
You can also change your initial ability allocation if you are already familiar with the game, but if not, I'd recommend leaving it be so we don't get bogged down in move selection.

#block(breakable: false)[= Intro the PCs (20 minutes)
Ask questions!

We will do an abbreviated intro where we'll talk about our names, pronouns, backgrounds, instinct, NPC connection, and do one round of PC connections.
]
= Explain how to play the game (10 minutes)
- The conversation and how it works
- The flow of play
- Explain how a pbta move works, and how we all watch for move triggers

= The setup (10 minutes)
- Ask setup questions about the Crinwin, deep water, and the Great Wood
- Force the characters on the adventure; ask them why they're joining

= Chart a course (10 minutes)
We'll be encountering a few landmarks along the way:
- Leaving the village itself
- Crossing the little stream
- Transition into the Great Wood

Possible dangers:
- Crinwin
- Beasts
- Deep water
- Whatever got the previous expedition

= Outfit (10 minutes)
Ask questions and use this time to do little vignettes in the village with their loved ones.

= The Journey (1 hour)

= The Site (1 hour)

= Ending the Adventure (20 minutes)
Leave at least 20 minutes at the end to do End of Session moves and aftercare.
]

#pagebreak()
#big_line()
#grungetext[#title([The Villagers of Stonetop])]
// #thin_line
_Unless otherwise noted, villagers contribute most of their labor to farming. Stonetop has limited full-time tradesfolk: a smith, a tanner, a midwife, a publican, and a potter. Other crafts—thatching, carpentry, weaving, apprenticeships, and so forth—are done on the side._

#thin_line
#let make_npc = make_item.with(icon: "icons/npc.png")
#show: twocolumns

#make_npc(
  name: [Blodwen],
  item_tags: [Refuses to marry]
)[The village midwife. Middle sister to Celyn and Nia. When not taking care of mothers and newborn, she takes care of the sick and injured.]

#make_npc(
  name: [Bryn],
  item_tags: [Head-in-clouds]
)[The midwife's apprentice. Half-sister to Tesni and has a crush on Owain.]

#make_npc(
  name: [Caradoc],
  item_tags: [Has a big heart]
)[The village tanner. Likes to go out hunting himself sometimes, too.]

#make_npc(
  name: [Celyn],
  item_tags: [Loyal friend]
)[Youngest sister to Blodwen and Nia. Likes to dream of adventure and play with her slingshot.]

#make_npc(
  name: [Doe],
  item_tags: [Has an herb garden]
)[Most recent immigrant to Stonetop. Grew up in the wilds and is at home in nature. Some whisper she talks to the crows.]

#make_npc(
  name: [Dylan],
  item_tags: [Loyal friend]
)[Youngest sister to Blodwen and Nia. Likes to dream of adventure and play with her slingshot.]

#make_npc(
  name: [Eiran],
  item_tags: [Braved the ruined tower]
)[The village potter. Father of Tesni. Kind but also perpetually disorganized.]

#make_npc(
  name: [Iona],
  item_tags: [Investigator of mysteries]
)[An antiquarian from the distant, "civilized" lands of the South. Here to study the Stone and other artifacts in Stonetop, or so she says.]

#make_npc(
  name: [Laurl],
  item_tags: [Very strong]
)[The village Smith. Moved here from Gordin's Delve years ago, but she doesn't like to talk about her past.]

#make_npc(
  name: [Macsen],
  item_tags: [Beloved by everyone]
)[Oldest sister to Celyn and Blodwen. Blames Danu for the Forest Folk disappearing and the resurgence of the crinwin. Her son Bran was taken by them.]

#make_npc(
  name: [Nia],
  item_tags: [Distrusts Danu]
)[Oldest sister to Celyn and Blodwen. Blames Danu for the Forest Folk disappearing and the resurgence of the crinwin. Her son Bran was taken by them.]

#make_npc(
  name: [Ofydd],
  item_tags: [Tends to the Gods' Pavilion]
)[An older man with a big beard. Good at making buckets and tends to show a little favoritism towards Tor, the Rain-Maker.]

#make_npc(
  name: [Owain],
  item_tags: [Craves recognition]
)[The tanner's apprentice. Was involved in some nasty business in Gordin's Delve once, and likes to boast of his exploits in battle. Has a crush on Bryn.]

#make_npc(
  name: [Parry],
  item_tags: [Slew a bunch of crinwin]
)[Likes to drill the village militia. A little overprotective of her youngest daughter, Celyn.]

#make_npc(
  name: [Tesni],
  item_tags: [Well-traveled]
)[Half-sister to Bryn. Has been to the South and knows much of their customs. Joined a southern cult of Helior.]

#make_npc(
  name: [Pons],
  item_tags: [Gets the best deals]
)[Daughter of the publican. Assists with recordkeeping at the public house and has some basic reading and writing skills.]
