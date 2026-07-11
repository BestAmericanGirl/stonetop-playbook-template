// Simple line starting with checkbox:
#let check(body, hspace: 0.75em, checked: false, count: 1) = [
  #box[
    #for i in range(count) {
      if i > 0 {" "}
        box(width: 6pt, height: 6pt, radius: (rest: 1.5pt), stroke: 0.5pt)[#if checked {
        place(center + horizon, text(size: 12pt)[#sym.checkmark.heavy], dy: -2pt, dx: 1pt)
      }]
    }
    #h(hspace)
    #body
  ]
]

#let new_move(body: "", name: "", checked: false, num_checkboxes: 1, stock: 0, requires: "", children: none) = (
    name: name,
    checked: checked,
    num_checkboxes: num_checkboxes,
    stock: stock,
    requires: requires,
    children: children,
    body: body,
  )

#let inv = $diamond.stroked$

#let invs(n) = for i in range(n) {inv}

#let uses(count) = $#(for i in range(count) {
  sym.circle.stroked
})$

#let tags(..args) = [(_#(args.pos().join(", "))_)]

#let checklist(body, checked: false, condense: false) = [
  #set list(marker: check(hspace: 0em, checked: checked)[])
  #if not condense {v(0.5em)}
  #for child in body.fields().children {
    block(breakable: false, spacing: 0.25em)[#child]
  }
]

#let choose_one_each_line(..option_lines) = for option_line in option_lines.pos() {
  box(width: 120%)[
    #for option in option_line {
      check(option + " ", hspace: 0em)
    }
  ]
  linebreak()
}

// Two column checklist for checklists with very short items
#let two_columns_checklist(body) = columns(2, gutter: 1em)[
  #let items = body.fields().children
  #let first_half = int(items.len() / 2)
  #checklist()[#items.slice(0, first_half).join()]
  #colbreak()
  #checklist()[#items.slice(first_half).join()]
]

// To give space for players to write
#let blank = v(1.1em)
#let fill_in_the_blank = box(width: 1fr)[#line(length: 100%, stroke: (thickness: 0.2pt, dash: "densely-dotted"))]

#let grunge = context { place(right + horizon, image("img/grunge.svg", width: 300%), dx: here().position().at("y") / 3 + here().position().at("x") / 8)}

// Better for statboxes
#let vgrunge = context {place(center + horizon, image("img/grunge.svg", height: 600%, width: 800%), dx: here().position().at("x") / 4)}