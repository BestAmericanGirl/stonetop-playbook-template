#import "../stonetop_style.typ": stonetop_style
#import "../playbook_lib.typ": *

#show: stonetop_style

#set page(flipped: false, width: 4in, height: 6in, margin: (top: 0.5in, bottom: 0.5in, left: 0.5in, right: 0.5in))
#set par(leading: 0.65em, spacing: 0.95em, justify: false)
#set block(spacing: 1em)
#set text(size: 9pt)


#big_line()
#show title: set text(size: 0.75em)

#grungetext([#title("Combat Disposition Table")])

#thin_line

When you *_want to add some texture to combat_*, so that there's individual variance among, say, a pack of pack drakes or a group of alley cutthroats, roll on the table below.
Most of the time, they'll align with their instinct, but sometimes, one will be more or less aggressive than the other.
Feel free to ask your player to paint a detail on how they can tell!

#roll_table("2d6", "Combat Disposition",
  [2], [as cowardly or conservative as the circumstances allow],
  [3], [heavily prioritizes own safety over following instinct or orders],
  [4], [tank: prefers preventing harm to self or comrades, if possible],
  [5], [lets conscience or caution interfere with instinct],
  [6-8], [follows instinct or orders, more or less],
  [9], [notably more vicious but not notably more bloodthirsty],
  [10], [notably more vicious and bloodthirsty],
  [11], [arrogant/reckless],
  [12], [overconfident to the point of asking to be insidiously killed],
)
