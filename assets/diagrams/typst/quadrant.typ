#import "kami-diagram.typ": *

#diagram-page("{{Priority matrix}}", [
  #grid(
    columns: (1fr, 1fr),
    rows: (1fr, 1fr),
    gutter: 1.2pt,
    fill: border,
    inset: 0pt,
    [#block(fill: ivory, inset: 13pt)[#label("HIGH IMPACT / LOW EFFORT")#v(5pt)#text(size: 14pt, weight: "medium", fill: brand)[Do now]#v(4pt){{Items that compound progress quickly.}}]],
    [#block(fill: ivory, inset: 13pt)[#label("HIGH IMPACT / HIGH EFFORT")#v(5pt)#text(size: 14pt, weight: "medium")[Invest]#v(4pt){{Initiatives needing deliberate sequencing.}}]],
    [#block(fill: ivory, inset: 13pt)[#label("LOW IMPACT / LOW EFFORT")#v(5pt)#text(size: 14pt, weight: "medium")[Delegate]#v(4pt){{Small work that should not consume focus.}}]],
    [#block(fill: ivory, inset: 13pt)[#label("LOW IMPACT / HIGH EFFORT")#v(5pt)#text(size: 14pt, weight: "medium")[Avoid]#v(4pt){{Work with poor strategic return.}}]],
  )
  #caption[The axes should encode an actual decision. Avoid using a quadrant as decoration for four unrelated ideas.]
], eyebrow-text: "QUADRANT", width: 240mm, height: 180mm)
