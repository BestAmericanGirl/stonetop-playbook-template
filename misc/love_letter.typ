#import "../stonetop_style.typ": stonetop_style
#import "../playbook_lib.typ": *

#show: stonetop_style

#set page(flipped: true, width: 11in, height: 8.5in, margin: (top: 0.5in, bottom: 0.5in, left: 0.5in, right: 0.5in))
#set par(leading: 0.65em, spacing: 0.95em, justify: false)
#set block(spacing: 1em)
#set text(size: 8.5pt)

#let halfpage(body) = block(width: 50%)[
  #body
]

#let result_table = table.with(columns: 2, stroke: none)
#let left_column = "Revolution"
#let right_column = "Reckoning"
//#show: halfpage
#big_line()
#show title: set text(size: 0.5em)

//#grungetext([#title("You say you want a revolution?")])

//#thin_line
#text(font: "Crafty Girls")[
Dear Aneirin, Jak, Pons, and Tesni/Arash,]

Things in Gordin's Delve are coming to a boil and you've got an artifact to steal.
How does it all go down? What is *the human cost* to those in the Delve?

Your pool is *4d6* by default for the #left_column column, and *4d6* by default for the #right_column column.
See the *A Thunderous Prelude to Slaughter* addendum for ways you can add dice to the pool.

You can *transfer a die from one pool to the other* by explaining how you use your time and/or resources to assist in either effort at the cost of the other. When *_all preparations have been made,_* roll the dice and allocate one die to each result table. If you can't allocate a die to an entry, take the lowest option.


#grid(columns: (1fr, 1fr), column-gutter: 1em,
  [
    = #left_column
    #thin_line
    Odo Thriceborn is forced from power, but *what does it cost the people of Gordin's Delve?*

    Reduce the population modifier and prosperity modifier of Gordin's Delve by 1.
    The Delve's mining industry is significantly disrupted by the loss of human life.

    #dotted_line
    Thanks to Jahalim, Pinon now has a massive, black iron maul, with a matching set of armor.
    And what his cult lacks in combat skills, they make up for in devotion to Aratis.
    *How does their faith fare against fire and steel?*
    
    #result_table(
      [5-6], [Pinon's cult achieves supremacy over all the other bosses. All wrongdoers will face the wrath of their justice! Praise Aratis!],
      [3-4], [Pinon fills the power vacuum left by Odo (and/or the other bosses), but his cult is roughly equal in power to the others.],
      [1-2], [Pinon is martyred in battle, but this only strengthens the will of his believers.]
    )

    #dotted_line

    Jahalim saw where things were going, and threw his support behind Pinon. *What happens to Jahalim and his cult?*
    #result_table(
      [5-6], [Jahalim's people fight fiercely and prove themselves as capable in a fight as at the forge. The Foundry continues to operate as best it can, given the circumstances.],
      [3-4], [Jahalim survives, but it will take 1d4 years to rebuild.],
      [1-2], [Jahalim falls in battle, bravely leading his Proletarian Guard from the front. His people are slaughtered as they rout upon witnessing his death. Gordin's Delve loses its smithing and tinkering industries.]
    )

    #dotted_line
    Aderyn convinced Mutra the Teeth to support the attack on Odo. *What happened to them?*
    #result_table(
      [5-6], [Aderyn slays many in battle, bringing further glory to himself, and earning himself a place as Mutra's right hand.],
      [3-4], [Aderyn falls in battle, but Mutra survives. Whether she still has a place in the Delve, though, is a separate question.],
      [1-2], [Aderyn falls in battle, and Mutra falls to treachery. Did Jahalim choose to backstab her or was it a bloodthirsty Pinonite? We may never know. Mining in Gordin's Delve completely shuts down for 1d4 years.]
    )

    #dotted_line

    Owain, having had a taste of battle, desperately wants more. *What is his fate?*
    #result_table(
      [5-6], [Owain charges fearlessly into battle, felling many enemies. Henceforth, his signature battle-cry "Owaiiiin Stonetop!" will make anyone in the Delve quake in their boots.],
      [3-4], [You manage to remind him of his obligations, and he reluctantly stays out of the battle. ],
      [1-2], [Owain charges fearlessly into battle, felling many enemies. His overconfidence gets the better of him, though, and he is slain by Adamantios in a duel for the ages. The sky crackles as Tor rumbles his approval. Reduce Odo's favor by 1.]
    )

  ],
  [
    = #right_column
    #thin_line

    In the chaos of the battle, you manage to slip into Odo's compound again, and, knowing your way around the servants' passageways, you steal his Forge Lord artifact. But *what did it cost you?*

    #dotted_line
    Having discovered your trespasses on his property and your theft of his concubines, Odo has heightened the security of his compound. *What happens to your party?*
    #result_table(
      [5-6], [The party escapes unscathed.],
      [3-4], [A PC or NPC in the party is maimed.],
      [1-2], [A PC or NPC in the party is killed and sacrificed to Tor.]
    )

    #dotted_line

    Last we left Comyna, she was alone without her friends in Odo's compound. *What is her ultimate fate?*
    #result_table(
      [5-6], [She survives the entire ordeal unscathed. When you find her, she's obliviously working on a new shower system.],
      [3-4], [Knowing Odo's propensity for pre-battle human sacrifice, she flees Gordin's Delve.],
      [1-2], [She is burned alive by Odo as he sacrifices all non-combat personnel to Tor for good fortune in battle]
    )

    #dotted_line

    *What happens to Odo?*
    #result_table(
      [5-6], [You catch Odo all by himself in his bedroom. He is at your mercy. Play out the scene.],
      [3-4], [From the servants' passageway, you see Odo in his bedroom, but in his paranoia, he's kept Adamantios close to him. If you choose to enter anyways, play out the scene.],
      [1-2], [He's gone before you even get there. He kidnaps Zohara and Smiling Ffransis on his way out of Gordin's Delve, to make up for the loss of his concubines.]
    )

    #dotted_line

    The party left Kai's body rotting in his house. *What happens to Kai?*
    #result_table(
      [5-6], [You manage to find the time to give him a proper send-off through the Last Door. Play out his funeral, if you'd like. Mouse-Kai almost seems to smile as he passes through the Door.],
      [3-4], [Odo's men get to his body first, and they sacrifice his body for the favor of Tor before the battle. Kai's ghost is incensed and he takes on a much scarier form.],
      [1-2], [By the time you get around to it, it's too late. Kai's body has turned into a Pyped. It's seen fleeing out Sorrow's Gate.]
    )
  ],
)
#place(bottom+left,
text(font: "Crafty Girls")[
XOXO,\
Zalea
]
)
