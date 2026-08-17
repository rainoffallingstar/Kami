// Kami's optional Touying presentation path.
// Requires @preview/touying:0.6.1. Keep slides-weasy-typst*.typ as the
// zero-package PDF path for offline and minimal installations.

#import "@preview/touying:0.6.1": *
#import themes.simple: *
#import "kami.typ": parchment, ivory, brand, dark-warm, near-black, olive, stone, fallback-serif, mono

#let pick(locale, cn, en, ko) = if locale == "cn" {
  cn
} else if locale == "ko" {
  ko
} else {
  en
}

// Latin deck labels use the compact mono face. CJK labels deliberately use the
// document serif instead, so a mixed CJK deck never falls through to a system sans.
#let label-font(locale) = if locale == "en" { mono } else { fallback-serif(locale) }

#let kami-touying-theme(locale, deck-title, footer-mark) = simple-theme.with(
  aspect-ratio: "16-9",
  primary: brand,
  header: none,
  header-right: none,
  footer: text(font: label-font(locale), size: 8pt, fill: stone, tracking: 1pt)[#footer-mark],
  footer-right: context text(font: label-font(locale), size: 8pt, fill: stone)[#utils.slide-counter.display() / #utils.last-slide-number],
  config-page(fill: parchment, margin: (top: 13mm, right: 18mm, bottom: 14mm, left: 18mm)),
  config-methods(
    init: (self: none, body) => {
      set text(font: fallback-serif(locale), size: 19pt, fill: near-black)
      set par(leading: 0.48em)
      body
    },
  ),
)

#let touying-deck(locale) = [
  #title-slide[
    #align(left)[
      #v(20mm)
      #text(font: label-font(locale), size: 9pt, weight: "medium", fill: brand, tracking: 1.5pt)[#pick(locale, "演示文稿", "PRESENTATION", "프레젠테이션")]
      #v(12pt)
      #text(size: 35pt, weight: "medium")[#pick(locale, "{{演示标题}}", "{{PRESENTATION TITLE}}", "{{발표 제목}}")]
      #v(10pt)
      #text(size: 17pt, fill: olive)[#pick(locale, "{{一句清晰的论点或副标题。}}", "{{One clear assertion or subtitle.}}", "{{한 줄의 명확한 주장 또는 부제.}}")]
      #v(35mm)
      #text(font: label-font(locale), size: 9pt, fill: stone)[#pick(locale, "{{演讲者}} · {{日期}}", "{{SPEAKER}} · {{DATE}}", "{{발표자}} · {{날짜}}")]
    ]
  ]

  #slide[
    #text(font: label-font(locale), size: 9pt, weight: "medium", fill: stone, tracking: 1pt)[#pick(locale, "01 · 论点", "01 · ASSERTION", "01 · 주장")]
    #v(7pt)
    #text(size: 27pt, weight: "medium")[#pick(locale, "{{这一页标题本身就是完整结论。}}", "{{The slide title is a complete conclusion.}}", "{{슬라이드 제목 자체가 완전한 결론입니다.}}")]
    #v(18pt)
    #grid(
      columns: (1fr, 1fr),
      gutter: 20pt,
      [#text(size: 17pt, weight: "medium", fill: brand)[{{01}}] #v(6pt) #pick(locale, "{{证据、事实或用户观察。}}", "{{Evidence, fact, or user observation.}}", "{{근거, 사실 또는 사용자 관찰.}}")],
      [#text(size: 17pt, weight: "medium", fill: brand)[{{02}}] #v(6pt) #pick(locale, "{{证据、事实或用户观察。}}", "{{Evidence, fact, or user observation.}}", "{{근거, 사실 또는 사용자 관찰.}}")],
    )
    #v(18pt)
    #block(fill: ivory, radius: 4pt, stroke: (left: (paint: brand, thickness: 2pt)), inset: 10pt)[#text(fill: dark-warm)[#pick(locale, "{{这一页应留给观众的关键推论。}}", "{{The inference this slide should leave with the audience.}}", "{{이 슬라이드가 청중에게 남겨야 할 핵심 추론.}}")]]
  ]

  #slide[
    #text(font: label-font(locale), size: 9pt, weight: "medium", fill: stone, tracking: 1pt)[#pick(locale, "02 · 证据", "02 · EVIDENCE", "02 · 근거")]
    #v(7pt)
    #text(size: 27pt, weight: "medium")[#pick(locale, "{{一张图或一张表应该说明一件事。}}", "{{One chart or table should establish one thing.}}", "{{하나의 차트 또는 표는 하나의 사실을 보여야 합니다.}}")]
    #v(18pt)
    #rect(width: 100%, height: 66mm, fill: ivory, radius: 4pt, stroke: (paint: brand, thickness: 0.6pt), inset: 12pt)[
      #align(center + horizon)[#text(size: 13pt, fill: stone)[#pick(locale, "{{图表 / 截图 / 代码证据}}", "{{CHART / SCREENSHOT / CODE EVIDENCE}}", "{{차트 / 스크린샷 / 코드 근거}}")]]
    ]
  ]
]
