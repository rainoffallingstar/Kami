#import "kami-diagram.typ": *

#diagram-page("{{Revenue bridge}}", [
  #grid(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr),
    gutter: 9pt,
    align: bottom + center,
    [#label("BASE")#v(4pt)#box(height: 24mm, width: 100%, fill: olive, radius: 2pt)#v(3pt)#text(size: 9pt)[100]],
    [#label("+ EXPAND")#v(4pt)#box(height: 12mm, width: 100%, fill: brand, radius: 2pt)#v(3pt)#text(size: 9pt, fill: brand)[+24]],
    [#label("- CHURN")#v(4pt)#box(height: 7mm, width: 100%, fill: stone, radius: 2pt)#v(3pt)#text(size: 9pt)[-11]],
    [#label("+ PRICE")#v(4pt)#box(height: 9mm, width: 100%, fill: brand, radius: 2pt)#v(3pt)#text(size: 9pt, fill: brand)[+15]],
    [#label("TOTAL")#v(4pt)#box(height: 35mm, width: 100%, fill: brand, radius: 2pt)#v(3pt)#text(size: 9pt, fill: brand)[128]],
  )
  #caption[Every intermediate mark must reconcile to the total. A waterfall is an accounting explanation, not a decorative bar sequence.]
], eyebrow-text: "WATERFALL", width: 230mm, height: 165mm)
