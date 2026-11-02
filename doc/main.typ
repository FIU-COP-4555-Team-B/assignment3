#set page(paper: "us-letter", margin: 1.5cm)

#set text(
  font: (
    "Libertinus Serif",
    "Times New Roman",
  ),
  size: 11pt,
)

#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.1")

#align(center)[
  #text(size: 16pt, weight: "bold")[Subprograms Parameter Passing Models]

  #smallcaps[ Principles of Programming Languages  ] \
  Shirina Daniel, Gabriel Garcia, Marcelo Hernandez \
  #datetime.today().display()
]

Languages chosen: Ada, TBD.

= Ada pass-by-value-result

Marcelo Hernandez

#image("screenshots/ada-src.png", width: 16cm)
#image("screenshots/ada-out.png", width: 11cm)

#pagebreak()

= C++ pass-by-reference

Marcelo Hernandez

#image("screenshots/cpp-src.png", width: 17cm)
#image("screenshots/cpp-out.png", width: 9cm)
