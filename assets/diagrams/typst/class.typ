#import "kami-diagram.typ": *

#diagram-page("{{Domain classes}}", [
  #grid(
    columns: (1fr, 16mm, 1fr, 16mm, 1fr),
    column-gutter: 4pt,
    align: horizon,
    [#node("Account", detail: "+ id\n+ status\n+ profile")],
    flow_arrow(label-text: "OWNS"),
    [#node("Workspace", detail: "+ id\n+ members\n+ settings", accent: true)],
    flow_arrow(label-text: "CONTAINS"),
    [#node("Project", detail: "+ id\n+ state\n+ milestones")],
  )
  #v(12pt)
  #grid(columns: (1fr, 1fr), gutter: 10pt, node("Policy", detail: "{{authorization rules}}"), node("Event", detail: "{{domain history}}"))
  #caption[Classes should express stable domain concepts and their relationships. Do not use this form for service topology.]
], eyebrow-text: "CLASS DIAGRAM", width: 260mm, height: 165mm)
