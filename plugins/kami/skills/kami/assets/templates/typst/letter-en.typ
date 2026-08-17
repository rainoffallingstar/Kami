#import "kami.typ": kami-document
#import "themes.typ": letter
#set document(title: "{{LETTER SUBJECT}}", author: "{{AUTHOR}}")
#show: body => kami-document(body, locale: "en", margin: (top: 20mm, right: 22mm, bottom: 20mm, left: 22mm), body-size: 10.5pt, leading: 0.55em)
#letter("en")
