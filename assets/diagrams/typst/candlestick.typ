#import "kami-diagram.typ": *

#diagram-page("{{Price history}}", [
  #grid(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr),
    gutter: 8pt,
    align: bottom + center,
    [#label("MON")#v(3pt)#box(height: 18mm, width: 10mm, fill: olive, radius: 1pt)#v(3pt)#text(size: 8pt)[102]],
    [#label("TUE")#v(3pt)#box(height: 28mm, width: 10mm, fill: brand, radius: 1pt)#v(3pt)#text(size: 8pt, fill: brand)[108]],
    [#label("WED")#v(3pt)#box(height: 20mm, width: 10mm, fill: olive, radius: 1pt)#v(3pt)#text(size: 8pt)[105]],
    [#label("THU")#v(3pt)#box(height: 38mm, width: 10mm, fill: brand, radius: 1pt)#v(3pt)#text(size: 8pt, fill: brand)[116]],
    [#label("FRI")#v(3pt)#box(height: 32mm, width: 10mm, fill: brand, radius: 1pt)#v(3pt)#text(size: 8pt, fill: brand)[112]],
  )
  #v(10pt)
  #kami-table(5, ("Date", "Open", "High", "Low", "Close"), (("Mon", "98", "106", "96", "102"), ("Tue", "102", "110", "100", "108"), ("Wed", "108", "109", "102", "105")))
  #caption[Use open, high, low, and close values when the range matters, not merely the direction of a time series.]
], eyebrow-text: "CANDLESTICK", width: 230mm, height: 180mm)
