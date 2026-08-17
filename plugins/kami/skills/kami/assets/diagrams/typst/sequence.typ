#import "kami-diagram.typ": *

#diagram-page("{{Interaction sequence}}", [
  #grid(
    columns: (1fr, 1fr, 1fr, 1fr),
    gutter: 8pt,
    [#node("Client", detail: "initiator", accent: true)],
    [#node("Gateway", detail: "edge")],
    [#node("Service", detail: "application")],
    [#node("Store", detail: "persistence")],
  )
  #v(10pt)
  #grid(
    columns: (1fr, 22mm, 1fr, 22mm, 1fr),
    column-gutter: 4pt,
    node("1. Request", detail: "{{intent}}"), flow_arrow(label-text: "ROUTE"), node("2. Resolve", detail: "{{policy}}", accent: true), flow_arrow(label-text: "QUERY"), node("3. Respond", detail: "{{result}}"),
  )
  #v(10pt)
  #callout[{{Latency or ownership note}}: describe the interaction boundary that changes the design decision.]
  #caption[Sequence diagrams explain an exchange over time. Keep each message verb-led and specific.]
], eyebrow-text: "SEQUENCE", width: 260mm, height: 170mm)
