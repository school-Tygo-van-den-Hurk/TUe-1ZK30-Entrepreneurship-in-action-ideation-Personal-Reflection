#import "@preview/charged-ieee:0.1.3": ieee

#set text(font: "Linux Biolinum O", size: 11pt)

#show: ieee.with(
  title: [Reflection and Personal Development], authors: (
    (
      name: "Tygo van den Hurk", department: [Computer Science and Engineering], organization: [Technical University Eindhoven], location: box(
        inset: 0pt, outset: 0pt,
      )[
        #link(
          "https://orcid.org/0009-0003-4182-5076", block(inset: 0pt, outset: 0pt)[
            #box(image("images/orcid.svg"))
            0009-0003-4182-5076
          ],
        )
      ], email: link(
        "mailto:t.j.f.h.v.d.hurk@student.tue.nl", "t.j.f.h.v.d.hurk@student.tue.nl",
      ),
    ),
  ),
)
