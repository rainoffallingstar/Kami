#import "kami-diagram.typ": *

#diagram-page("{{Roadmap}}", [
  #grid(
    columns: (1fr, 1fr, 1fr, 1fr),
    gutter: 10pt,
    [#label("PHASE 01")#v(5pt)#node("Discover", detail: "{{date or gate}}", accent: true)],
    [#label("PHASE 02")#v(5pt)#node("Build", detail: "{{date or gate}}")],
    [#label("PHASE 03")#v(5pt)#node("Launch", detail: "{{date or gate}}")],
    [#label("PHASE 04")#v(5pt)#node("Scale", detail: "{{date or gate}}")],
  )
  #v(10pt)
  #hairline()
  #v(7pt)
  #grid(columns: (1fr, 1fr, 1fr, 1fr), gutter: 10pt, "{{decision}}", "{{evidence}}", "{{release}}", "{{measure}}")
  #caption[Each stage gets one boundary and one proof point. Dates without a decision or measurable outcome do not form a roadmap.]
], eyebrow-text: "TIMELINE", width: 260mm, height: 155mm)
