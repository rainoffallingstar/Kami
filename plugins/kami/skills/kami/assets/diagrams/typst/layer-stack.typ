#import "kami-diagram.typ": *

#diagram-page("{{Layered system}}", [
  #align(center)[
    #stack(
      spacing: 3pt,
      block(width: 160mm, fill: brand, radius: 3pt, inset: 9pt)[#text(size: 13pt, weight: "medium", fill: parchment)[Experience layer] #h(8pt) #text(size: 9pt, fill: parchment)[{{interfaces and channels}}]],
      block(width: 160mm, fill: brand-tint, stroke: (paint: brand, thickness: 0.6pt), radius: 3pt, inset: 9pt)[#text(size: 13pt, weight: "medium")[Application layer] #h(8pt) #text(size: 9pt, fill: olive)[{{workflows and policies}}]],
      block(width: 160mm, fill: ivory, stroke: (paint: border, thickness: 0.6pt), radius: 3pt, inset: 9pt)[#text(size: 13pt, weight: "medium")[Service layer] #h(8pt) #text(size: 9pt, fill: olive)[{{capabilities and integration}}]],
      block(width: 160mm, fill: ivory, stroke: (paint: border, thickness: 0.6pt), radius: 3pt, inset: 9pt)[#text(size: 13pt, weight: "medium")[Data layer] #h(8pt) #text(size: 9pt, fill: olive)[{{records and events}}]],
      block(width: 160mm, fill: border-soft, radius: 3pt, inset: 9pt)[#text(size: 13pt, weight: "medium")[Foundation] #h(8pt) #text(size: 9pt, fill: olive)[{{infrastructure and controls}}]],
    )
  ]
  #caption[Use a layer stack to explain abstraction boundaries, not runtime sequence.]
], eyebrow-text: "LAYER STACK", width: 230mm, height: 185mm)
