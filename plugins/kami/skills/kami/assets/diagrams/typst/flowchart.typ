#import "kami-diagram.typ": *

#diagram-page("{{Decision flow}}", [
  #align(center)[
    #stack(
      spacing: 5pt,
      small-node("Start", detail: "{{trigger}}", accent: true),
      down_arrow(label-text: "INPUT"),
      small-node("Assess", detail: "{{condition or evidence}}"),
      down_arrow(label-text: "YES"),
      small-node("Act", detail: "{{primary action}}", accent: true),
      down_arrow(label-text: "OUTPUT"),
      small-node("Complete", detail: "{{result}}"),
    )
  ]
  #caption[Place one decision or validation at each step. Branching detail belongs in the label, not a dense paragraph inside the node.]
], eyebrow-text: "FLOWCHART", width: 180mm, height: 220mm)
