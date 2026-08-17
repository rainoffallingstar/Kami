#import "kami-diagram.typ": *

#diagram-page("{{Shared attributes}}", [
  #grid(
    columns: (1fr, 1fr, 1fr),
    gutter: 5pt,
    [#block(fill: brand-tint, radius: 30pt, inset: 13pt)[#label("GROUP A")#v(5pt)#text(size: 14pt, weight: "medium", fill: brand)[{{Audience}}]#v(4pt){{Attributes unique to A.}}]],
    [#block(fill: ivory, radius: 30pt, inset: 13pt, stroke: (paint: brand, thickness: 0.8pt))[#label("SHARED")#v(5pt)#text(size: 14pt, weight: "medium")[{{Overlap}}]#v(4pt){{What connects the sets.}}]],
    [#block(fill: border-soft, radius: 30pt, inset: 13pt)[#label("GROUP B")#v(5pt)#text(size: 14pt, weight: "medium")[{{Capability}}]#v(4pt){{Attributes unique to B.}}]],
  )
  #v(10pt)
  #callout[{{A + B}}: make the overlap a concrete common property, not a vague statement that the two groups are related.]
  #caption[This native Typst variant prioritizes readable set membership in print, where literal overlapping circles often obscure the labels.]
], eyebrow-text: "VENN", width: 240mm, height: 155mm)
