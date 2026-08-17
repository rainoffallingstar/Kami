#import "kami-diagram.typ": *

#diagram-page("{{System name}} in production", [
  #grid(
    columns: (1fr, 16mm, 1fr, 16mm, 1.2fr, 16mm, 1fr),
    column-gutter: 4pt,
    align: horizon,
    node("Reader", detail: "browser"),
    flow_arrow(label-text: "HTTPS"),
    node("CDN", detail: "cache and TLS"),
    flow_arrow(label-text: "SSR"),
    node("App Server", detail: "render and route", accent: true),
    flow_arrow(label-text: "READ / QUERY"),
    stack(
      spacing: 12pt,
      node("Content", detail: "MDX and assets"),
      node("Database", detail: "Postgres and vectors"),
    ),
  )
  #legend(((brand-tint, "Primary path"), (ivory, "Supporting service"), (border, "External boundary")))
  #caption[One ink-blue node carries the central system claim. All other services remain warm neutrals so the focal path stays obvious.]
], eyebrow-text: "ARCHITECTURE")
