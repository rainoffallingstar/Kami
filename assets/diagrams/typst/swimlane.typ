#import "kami-diagram.typ": *

#diagram-page("{{Cross-team flow}}", [
  #grid(
    columns: (30mm, 1fr, 1fr, 1fr),
    rows: (auto, auto, auto, auto),
    gutter: 1pt,
    fill: border,
    inset: 0pt,
    [#block(fill: parchment, inset: 6pt)[#label("OWNER")]], [#block(fill: parchment, inset: 6pt)[#label("INTAKE")]], [#block(fill: parchment, inset: 6pt)[#label("DECISION")]], [#block(fill: parchment, inset: 6pt)[#label("DELIVERY")]],
    [#block(fill: brand-tint, inset: 7pt)[Product]], [#block(fill: ivory, inset: 7pt)[{{Frame request}}]], [#block(fill: ivory, inset: 7pt)[{{Set priority}}]], [#block(fill: ivory, inset: 7pt)[{{Confirm outcome}}]],
    [#block(fill: brand-tint, inset: 7pt)[Engineering]], [#block(fill: ivory, inset: 7pt)[{{Assess feasibility}}]], [#block(fill: ivory, inset: 7pt)[{{Plan implementation}}]], [#block(fill: ivory, inset: 7pt)[{{Ship and observe}}]],
    [#block(fill: brand-tint, inset: 7pt)[Operations]], [#block(fill: ivory, inset: 7pt)[{{Check controls}}]], [#block(fill: ivory, inset: 7pt)[{{Approve change}}]], [#block(fill: ivory, inset: 7pt)[{{Runbook update}}]],
  )
  #caption[Use lanes only when handoffs change ownership. A process with one owner should be a flowchart.]
], eyebrow-text: "SWIMLANE", width: 260mm, height: 170mm)
