#set page(flipped: false, width: 4in, height: 6in, margin: 0in)

#let followers = ("blodwen.png", "bryn.png", "caradoc.png", "celyn.png", "dylan.png", "euron.png", "nia.png", "owain.png")

#for follower in followers {
  place(image(follower, width: 100%))
  pagebreak()
}

#place(center+horizon, rotate(90deg, image("pyramid.png", width: 140%)))
