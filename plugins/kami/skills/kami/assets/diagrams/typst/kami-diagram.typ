// Shared native Typst diagram primitives for Kami.
// Imports the canonical palette and typography from the document Typst layer.

#import "../../templates/typst/kami.typ": *

#let diagram-page(title, body, eyebrow-text: "KAMI DIAGRAM", width: 260mm, height: 175mm) = {
  set document(title: title)
  kami-document(
    [
      #label(eyebrow-text)
      #v(4pt)
      #text(size: 22pt, weight: "medium")[#title]
      #v(9pt)
      #hairline()
      #v(12pt)
      #body
    ],
    locale: "en",
    page-width: width,
    page-height: height,
    margin: (top: 14mm, right: 16mm, bottom: 14mm, left: 16mm),
    body-size: 10pt,
    leading: 0.45em,
  )
}

#let node(title, detail: none, accent: false, width: auto) = block(
  width: width,
  fill: if accent { brand-tint } else { ivory },
  stroke: (paint: if accent { brand } else { border }, thickness: if accent { 1pt } else { 0.6pt }),
  radius: 3pt,
  inset: (x: 9pt, y: 7pt),
)[
  #text(size: 7.5pt, weight: "medium", fill: if accent { brand } else { stone }, tracking: 0.8pt)[NODE]
  #v(3pt)
  #text(size: 12pt, weight: "medium")[#title]
  #if detail != none [#v(2pt)#text(size: 8.5pt, fill: olive)[#detail]]
]

#let small-node(title, detail: none, accent: false) = block(
  fill: if accent { brand-tint } else { ivory },
  stroke: (paint: if accent { brand } else { border }, thickness: if accent { 1pt } else { 0.6pt }),
  radius: 3pt,
  inset: (x: 6pt, y: 5pt),
)[
  #text(size: 10pt, weight: "medium")[#title]
  #if detail != none [#linebreak()#text(size: 7.5pt, fill: olive)[#detail]]
]

#let flow_arrow(label-text: none) = align(center + horizon)[
  #if label-text != none [#label(label-text)#v(2pt)]
  #text(size: 16pt, fill: if label-text != none { brand } else { olive })[#sym.arrow.r]
]

#let down_arrow(label-text: none) = align(center)[
  #if label-text != none [#label(label-text)#v(2pt)]
  #text(size: 13pt, weight: "medium", fill: if label-text != none { brand } else { olive })[v]
]

#let caption(body) = block(above: 9pt)[
  #text(size: 9pt, fill: olive)[#body]
]

#let legend(items) = block(above: 8pt, inset: (top: 6pt), stroke: (top: (paint: border, thickness: 0.5pt)))[
  #grid(
    columns: items.len(),
    column-gutter: 14pt,
    ..items.map(item => [#box(width: 7pt, height: 7pt, radius: 1.5pt, fill: item.at(0)) #h(4pt) #text(size: 8pt, fill: olive)[#item.at(1)]]),
  )
]

#let bar(value, max: 100, label-text: "", color: brand) = {
  let portion = calc.min(1, value / max)
  grid(
    columns: (28mm, 1fr, 12mm),
    column-gutter: 5pt,
    align: (left + horizon, left + horizon, right + horizon),
    text(size: 8.5pt, fill: olive)[#label-text],
    box(width: 100%, height: 8pt, fill: border-soft, radius: 2pt)[
      #box(width: 100% * portion, height: 8pt, fill: color, radius: 2pt)
    ],
    text(size: 8.5pt, weight: "medium")[#str(value)],
  )
}
