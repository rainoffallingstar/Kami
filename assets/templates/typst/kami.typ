// Shared Kami design primitives for Typst document templates.
// This module mirrors references/tokens.json and keeps every Typst theme
// on the same parchment, ink-blue, serif-led system as the HTML templates.

#let parchment = rgb("#f5f4ed")
#let ivory = rgb("#faf9f5")
#let border = rgb("#e8e6dc")
#let border-soft = rgb("#e5e3d8")
#let brand = rgb("#1B365D")
#let brand-tint = rgb("#EEF2F7")
#let near-black = rgb("#141413")
#let dark-warm = rgb("#3d3d3a")
#let olive = rgb("#504e49")
#let stone = rgb("#6b6a64")

#let serif(locale) = {
  if locale == "cn" {
    "TsangerJinKai02"
  } else if locale == "ko" {
    "Source Han Serif K"
  } else {
    "Charter"
  }
}

#let fallback-serif(locale) = {
  if locale == "cn" {
    ("TsangerJinKai02 W04", "TsangerJinKai02 W05", "Georgia")
  } else if locale == "ko" {
    ("Source Han Serif KR", "Georgia")
  } else {
    ("Charter", "Georgia", "Palatino", "Times New Roman")
  }
}

// Typst does not consume the repository's WOFF2 asset as a font-path input;
// keep a stable installed monospace fallback for labels and code.
#let mono = ("DejaVu Sans Mono",)

#let kami-document(
  body,
  locale: "en",
  page-size: "a4",
  page-width: none,
  page-height: none,
  margin: (top: 16mm, right: 18mm, bottom: 18mm, left: 18mm),
  body-size: 10pt,
  leading: 0.5em,
) = {
  if page-width != none and page-height != none {
    set page(width: page-width, height: page-height, margin: margin, fill: parchment)
  } else {
    set page(paper: page-size, margin: margin, fill: parchment)
  }
  set text(font: fallback-serif(locale), size: body-size, fill: near-black)
  set par(leading: leading)
  body
}

#let label(body) = text(
  font: mono,
  size: 8pt,
  weight: "medium",
  fill: stone,
  tracking: 1pt,
)[#body]

#let eyebrow(body) = {
  box(width: 8pt, height: 1.5pt, radius: 0.75pt, fill: brand)
  h(7pt)
  text(font: fallback-serif("en"), size: 9pt, weight: "medium", fill: brand, tracking: 1.5pt)[#body]
}

#let hairline() = line(length: 100%, stroke: (paint: border, thickness: 0.5pt))

#let section-title(title, subtitle: none) = block(above: 18pt, below: 6pt, breakable: false)[
  #text(size: 16pt, weight: "medium")[#title]
  #if subtitle != none [#h(6pt)#text(size: 9pt, fill: stone)[#subtitle]]
]

#let metric(value, label-text) = stack(
  spacing: 2pt,
  text(size: 18pt, weight: "medium", fill: brand)[#value],
  text(size: 9pt, fill: olive)[#label-text],
)

#let callout(body) = block(
  fill: ivory,
  inset: (x: 10pt, y: 8pt),
  radius: 3pt,
  stroke: (left: (paint: brand, thickness: 2pt)),
)[#text(fill: dark-warm)[#body]]

#let kami-table(columns, header, rows, widths: auto) = table(
  columns: columns,
  stroke: none,
  inset: (x: 6pt, y: 4pt),
  align: (left + horizon, left + horizon, right + horizon),
  table.header(..header.map(cell => table.cell(
    fill: none,
    stroke: (bottom: (paint: border, thickness: 0.8pt)),
    text(weight: "medium", fill: dark-warm)[#cell],
  ))),
  ..rows.flatten().map(cell => table.cell(
    stroke: (bottom: (paint: border-soft, thickness: 0.3pt)),
  )[ #cell ]),
)

#let page-footer(mark) = context place(
  bottom + center,
  dx: 0pt,
  dy: -7mm,
  text(size: 8pt, fill: stone)[#counter(page).display("1") #h(4pt) · #h(4pt) #mark],
)
