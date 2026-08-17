#import "kami.typ": kami-document
#import "themes.typ": long-doc
#set document(title: "{{DOCUMENT TITLE}}", author: "{{AUTHOR}}")
#show: body => kami-document(body, locale: "en", margin: (top: 20mm, right: 22mm, bottom: 22mm, left: 22mm), body-size: 10.5pt, leading: 0.55em)
#long-doc("en")
