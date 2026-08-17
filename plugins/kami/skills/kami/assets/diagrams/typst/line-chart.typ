#import "kami-diagram.typ": *

#diagram-page("{{Trend title}}", [
  #grid(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr),
    gutter: 8pt,
    align: bottom + center,
    [#box(height: 22mm, width: 100%, fill: border-soft, radius: 2pt)#v(3pt)#label("Q1")#linebreak()#text(size: 10pt)[32]],
    [#box(height: 34mm, width: 100%, fill: border-soft, radius: 2pt)#v(3pt)#label("Q2")#linebreak()#text(size: 10pt)[46]],
    [#box(height: 48mm, width: 100%, fill: brand-tint, radius: 2pt)#v(3pt)#label("Q3")#linebreak()#text(size: 10pt, fill: brand)[61]],
    [#box(height: 42mm, width: 100%, fill: border-soft, radius: 2pt)#v(3pt)#label("Q4")#linebreak()#text(size: 10pt)[55]],
    [#box(height: 58mm, width: 100%, fill: brand, radius: 2pt)#v(3pt)#label("Q5")#linebreak()#text(size: 10pt, fill: brand)[74]],
  )
  #caption[Read the successive marks as one series. Highlight the latest or most decision-relevant observation, not every point.]
], eyebrow-text: "TREND", width: 220mm, height: 165mm)
