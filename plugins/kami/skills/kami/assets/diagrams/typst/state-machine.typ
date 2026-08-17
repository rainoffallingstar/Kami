#import "kami-diagram.typ": *

#diagram-page("{{Lifecycle}}", [
  #grid(
    columns: (1fr, 15mm, 1fr, 15mm, 1fr, 15mm, 1fr),
    column-gutter: 4pt,
    align: horizon,
    node("Draft", detail: "created"),
    flow_arrow(label-text: "SUBMIT"),
    node("Review", detail: "validated", accent: true),
    flow_arrow(label-text: "APPROVE"),
    node("Active", detail: "in service"),
    flow_arrow(label-text: "CLOSE"),
    node("Archived", detail: "retained"),
  )
  #v(12pt)
  #callout[{{Exception transition}}: return an item to review only when its state change has a distinct owner and audit meaning.]
  #caption[State diagrams describe durable conditions, not a generic checklist of actions.]
], eyebrow-text: "STATE MACHINE", width: 260mm, height: 155mm)
