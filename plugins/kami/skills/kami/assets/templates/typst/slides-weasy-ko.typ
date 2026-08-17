#import "kami.typ": parchment, near-black, fallback-serif
#import "themes.typ": slides
#set document(title: "{{발표 제목}}", author: "{{발표자}}")
#set page(width: 280mm, height: 158mm, margin: (top: 16mm, right: 20mm, bottom: 16mm, left: 20mm), fill: parchment)
#set text(font: fallback-serif("ko"), size: 13pt, fill: near-black)
#set par(leading: 0.58em)
#slides("ko")
