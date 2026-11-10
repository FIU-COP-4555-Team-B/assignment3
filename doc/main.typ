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

For this assignment, the languages chosen were: Ada, C++, Scheme, and C\#.

= Ada pass-by-value-result

Marcelo Hernandez

#image("screenshots/ada-src.png", width: 16cm)

Here I declare X and Y, and have a function which adds 1 to X and multiplies Y
by 2. The function waits 1 second after doing so, so that we can print the
values _while_ the function is running, showcasing the fact that the value has
not been copied out yet.

#image("screenshots/ada-out.png", width: 11cm)

#pagebreak()

= C++ pass-by-reference

Marcelo Hernandez

#image("screenshots/cpp-src.png", width: 17cm)

Here, much like in the Ada example I have a function which takes in x and y,
then mutates them. However, these are passed-by-reference instead, so we modify
the variables in addOneMult2 on another thread, wait 100ms (to avoid racing
with the thread's startup time) and print x and y, seeing that they've mutated
instantly. We then wait until t finishes to print them (which should have no
effect, save for a cosmic bit flip.)

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

#pagebreak()

= C\# pass-by-result (`out` mode)

Shirina Daniel

C\# `out` parameters provide an output-only parameter mode: the caller's
initial values are not inputs to the subprogram, and the subprogram must assign
each parameter before it can return. C\# implements `out` using reference
semantics, rather than a separate copy-out operation. Here, `AddOneAndDouble`
produces the two output values, which the caller observes after the call.

#image("screenshots/csharp-src.png", width: 16cm)

Before the call, `x` and `y` are 1 and 4. Inside the subprogram, the `out`
parameters are assigned and printed as 2 and 8. After it returns, `x` and `y`
hold those output values.

Execution output:

#image("screenshots/csharp-out.png", width: 13cm)
