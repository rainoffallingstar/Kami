#import "kami-diagram.typ": *

#diagram-page("{{Distribution title}}", [
  #grid(
    columns: (1fr, 1fr),
    gutter: 18pt,
    [
      #text(size: 36pt, weight: "medium", fill: brand)[46%]
      #v(2pt)
      #text(size: 11pt, fill: olive)[{{Primary share}}]
      #v(10pt)
      #bar(46, label-text: "Primary", color: brand)
      #v(5pt)
      #bar(28, label-text: "Secondary", color: olive)
      #v(5pt)
      #bar(16, label-text: "Tertiary", color: stone)
      #v(5pt)
      #bar(10, label-text: "Other", color: border)
    ],
    [
      #node("Primary segment", detail: "{{what the leading share means}}", accent: true)
      #v(8pt)
      #node("Composition", detail: "Four or fewer meaningful categories make the distribution legible.")
    ],
  )
  #caption[The Typst version keeps the distribution exact and print-readable without relying on an external chart package.]
], eyebrow-text: "DISTRIBUTION", width: 230mm, height: 160mm)
