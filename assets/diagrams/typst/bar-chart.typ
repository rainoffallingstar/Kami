#import "kami-diagram.typ": *

#diagram-page("{{Chart title}}", [
  #bar(44, label-text: "2021", color: olive)
  #v(8pt)
  #bar(60, label-text: "2022", color: olive)
  #v(8pt)
  #bar(72, label-text: "2023", color: brand)
  #v(8pt)
  #bar(88, label-text: "2024", color: olive)
  #legend(((brand, "Focal period"), (olive, "Comparison period")))
  #caption[The ink-blue bar carries the claim. State why it matters in the caption rather than repeating the title.]
], eyebrow-text: "BAR CHART", width: 220mm, height: 160mm)
