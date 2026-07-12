// Simple line starting with checkbox:
#import "stonetop_style.typ": style_options

#let check(body, hspace: 0.75em, checked: false, count: 1) = [
  #show math.equation: set text(size: 12pt)
  #box[
    #for i in range(count) {
      if i > 0 {" "}
        box(width: 6pt, height: 6pt, radius: (rest: 1.5pt), stroke: 0.5pt)[#if checked {
        place(center + horizon, text(size: 12pt)[$#sym.checkmark.heavy$], dy: -2pt, dx: 1pt)
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
#let fill_in_the_blanks(n) = for i in range(n) {
  set text(size: 14pt)
  [~#fill_in_the_blank\ ]
}

// Unique grunge based on position of element on the page
#let grunge = context {
  place(left + top, [#image("img/grunged.svg", height: page.width, width: page.height)], dx: -here().position().at("x"), dy: -here().position().at("y"))
}

// Heading with normal text after it
#let choose_heading(body, desc: "(Choose 1)") = context[
  #let body-style = (font: text.font, size: text.size, weight: text.weight)
  = #body #text(..body-style)[#desc]
]

#let thin_line = line(length: 100%, stroke: 0.4pt)

// Line above, checkbox, heading, and body
#let checkblock(body, checked: false, count: 1, condense: false, is_child: false, num_uses: 0, skip_line: false) = [
  #show heading.where(level: 2): it => {
    set text(..style_options.heading2)
    check([#upper[#it.body] #h(1fr) #if num_uses > 0 {uses(num_uses)}], checked: checked, count: count)
    if not condense {parbreak()} else {linebreak()}
  }
  #let child_aware_line = if not is_child {thin_line} else {line(length: 100%, stroke: (thickness: 0.4pt, dash: "densely-dotted"))}
  #if not skip_line {
    child_aware_line
  }
  #body
]

#let is_higher_than_previous_label(lab, loc) = {
  let previous_moves = query(selector(label(lab)).before(loc))
  if previous_moves.len() > 1 {
    let previous_move = previous_moves.at(-2)
    let previous_y = previous_move.location().position().at("y")
    let current_y = loc.position().at("y")

    return previous_y < current_y
  }
  return false
}

#let format_move(move, is_child: false, skip_line: false) = block(breakable: false, inset: if is_child {(left: 1em)} else {0em})[
  #checkblock(checked: move.checked, count: move.num_checkboxes, condense: true, is_child: is_child, num_uses: move.stock, skip_line: skip_line)[
    == #move.name
  ]<move>
  #if move.requires != "" {[(Requires #move.requires)#linebreak()]}
  #move.body
  #if move.children != none {
    for child in move.children {
      format_move(child, is_child: true)
    }
  }
]

// Big line with grunge
#let big_line(vspace: 0em) = [#block(width: 100%, height: 0.25em, clip: true, fill: black, grunge) #v(vspace)]

// Same but it stretches across the sheet
#let biggest_line(vspace: 0em, multiplier: 1) = context[#block(width: (page.height - page.margin * 3) * multiplier, height: 0.25em, clip: true, fill: black, grunge) #v(vspace)]

#let grungebox(body, ..args) = block(outset: 0.5em, clip: true, box(..args.named())[
  #grunge

  #body
])

#let grungetext(body) = block(outset: 1em, clip: true)[
  #body
  #grunge
]

// end is inclusive
#let range_checklist(start, end) = checklist[
  #for i in range(start, end + 1) {
    [- #if i >= 0 {"+" + str(i)} else {i}]
}]

// For laying stuff across pages
#let edge_and_count_aware(idx, lab, body, also_add_label: true) = context {
  let count = counter(label(lab)).get().at(0)
  let didnt_do_yet = idx >= count
  let wont_go_off_edge = not here().position().at("y") + measure(body).height > (page.width - page.margin).length

  if didnt_do_yet and wont_go_off_edge {
    [#body #if also_add_label {label(lab)}]
  }
}
