#import "kami-diagram.typ": *

#diagram-page("{{Hierarchy}}", [
  #align(center)[#node("{{Root concept}}", detail: "one organizing idea", accent: true, width: 60mm)]
  #v(5pt)
  #align(center)[#down_arrow()]
  #v(5pt)
  #grid(
    columns: (1fr, 1fr, 1fr),
    gutter: 12pt,
    [#node("Branch A", detail: "{{first grouping}}")#v(7pt)#small-node("Leaf A1")#v(4pt)#small-node("Leaf A2")],
    [#node("Branch B", detail: "{{second grouping}}")#v(7pt)#small-node("Leaf B1")#v(4pt)#small-node("Leaf B2")],
    [#node("Branch C", detail: "{{third grouping}}")#v(7pt)#small-node("Leaf C1")#v(4pt)#small-node("Leaf C2")],
  )
  #caption[Keep hierarchy depth shallow enough that relationships can be understood in one scan.]
], eyebrow-text: "TREE", width: 250mm, height: 185mm)
