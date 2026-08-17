#import "kami-diagram.typ": *

#diagram-page("{{Platform}} architecture board", [
  #grid(
    columns: (1fr, 1fr, 1fr),
    gutter: 10pt,
    node("Experience", detail: "web, mobile, partner", accent: true),
    node("Control plane", detail: "identity, policy, routing"),
    node("Data plane", detail: "events, storage, compute"),
  )
  #v(10pt)
  #grid(
    columns: (1fr, 1fr, 1fr),
    gutter: 10pt,
    node("Owners", detail: "product and operations"),
    node("Reliability", detail: "monitoring and recovery", accent: true),
    node("Roadmap", detail: "now, next, later"),
  )
  #legend(((brand-tint, "Focal system"), (ivory, "Supporting system"), (border, "Boundary")))
  #caption[Use this board to hold architecture, ownership, operational risk, and delivery sequence in one scan.]
], eyebrow-text: "ARCHITECTURE BOARD", width: 280mm, height: 190mm)
