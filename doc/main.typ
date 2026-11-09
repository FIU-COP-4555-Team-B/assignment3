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

For this assignment, the languages chosen were: Ada, C++, Scheme, and TBD.

= Ada pass-by-value-result

Marcelo Hernandez

#image("screenshots/ada-src.png", width: 16cm)
#image("screenshots/ada-out.png", width: 11cm)

#pagebreak()

= C++ pass-by-reference

Marcelo Hernandez

#image("screenshots/cpp-src.png", width: 17cm)
#image("screenshots/cpp-out.png", width: 9cm)

#pagebreak()

= Scheme pass-by-value

#image("screenshots/scm-src.png", width: 80%)

The subprogram here, like Marcelo's, adds one to its first parameter and doubles
its second. In pass-by-value, each formal parameter is initialized with a copy
of the acutal parameter's value when the call is made, and nothing is copied
back when the call returns (in mode). As seen in the output below, inside the
subprogram, `to-add` and `to-mult` are changed to 2 and 8, but those are the
subprogram's own local copies, and the caller's `x` and `y` remain untouched, so
after the call they still hold 1 and 4.

#image("screenshots/scm-out.png", width: 80%)
